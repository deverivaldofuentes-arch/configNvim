return {
  -- LSP para Java
  {
    "mfussenegger/nvim-jdtls",
    ft = "java",
    config = function()
      local config = {
        cmd = { vim.fn.expand("~/.local/share/nvim/mason/bin/jdtls") },
        root_dir = vim.fs.dirname(vim.fs.find({ "gradlew", ".git", "mvnw", "pom.xml" }, { upward = true })[1]),
      }
      require("jdtls").start_or_attach(config)
    end,
  },

  -- Treesitter para Java
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if opts.ensure_installed then
        vim.list_extend(opts.ensure_installed, { "java" })
      end
    end,
  },

  -- ToggleTerm para terminal flotante
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      open_mapping = [[<c-\>]],
      direction = "float",
      float_opts = {
        border = "curved",
        width = function()
          return math.floor(vim.o.columns * 0.8)
        end,
        height = function()
          return math.floor(vim.o.lines * 0.8)
        end,
      },
    },
    config = function(_, opts)
      require("toggleterm").setup(opts)

      -- Funciones para Java
      local function get_java_config()
        local file_path = vim.fn.expand("%:p")
        local file_name = vim.fn.expand("%:t:r")
        local file_dir = vim.fn.expand("%:p:h")

        local build_files = vim.fs.find({ "pom.xml", "build.gradle", "build.gradle.kts" }, {
          upward = true,
          path = file_dir,
        })

        return {
          file_path = file_path,
          file_name = file_name,
          file_dir = file_dir,
          is_project = #build_files > 0,
          build_file = #build_files > 0 and build_files[1] or nil,
        }
      end

      local function compile_java()
        local config = get_java_config()
        local cmd = string.format("cd %s && javac %s", config.file_dir, vim.fn.expand("%:t"))

        local Terminal = require("toggleterm.terminal").Terminal
        local term = Terminal:new({
          cmd = cmd,
          dir = config.file_dir,
          direction = "float",
          close_on_exit = false,
        })
        term:toggle()
      end

      local function run_java()
        local config = get_java_config()

        if config.is_project then
          local build_cmd = "java"
          if config.build_file:match("pom.xml") then
            build_cmd = "mvn exec:java -Dexec.mainClass=" .. config.file_name
          elseif config.build_file:match("build.gradle") then
            build_cmd = "./gradlew run"
          end

          local cmd = string.format("cd %s && %s", config.file_dir, build_cmd)
          local Terminal = require("toggleterm.terminal").Terminal
          local term = Terminal:new({
            cmd = cmd,
            dir = config.file_dir,
            direction = "float",
            close_on_exit = false,
          })
          term:toggle()
        else
          local class_file = string.format("%s/%s.class", config.file_dir, config.file_name)
          if vim.fn.filereadable(class_file) == 0 then
            compile_java()
            vim.defer_fn(function()
              local cmd = string.format("cd %s && java %s", config.file_dir, config.file_name)
              local Terminal = require("toggleterm.terminal").Terminal
              local term = Terminal:new({
                cmd = cmd,
                dir = config.file_dir,
                direction = "float",
                close_on_exit = false,
              })
              term:toggle()
            end, 500)
          else
            local cmd = string.format("cd %s && java %s", config.file_dir, config.file_name)
            local Terminal = require("toggleterm.terminal").Terminal
            local term = Terminal:new({
              cmd = cmd,
              dir = config.file_dir,
              direction = "float",
              close_on_exit = false,
            })
            term:toggle()
          end
        end
      end

      local function compile_and_run_java()
        local config = get_java_config()

        if config.is_project then
          run_java()
        else
          local cmd =
            string.format("cd %s && javac %s && java %s", config.file_dir, vim.fn.expand("%:t"), config.file_name)

          local Terminal = require("toggleterm.terminal").Terminal
          local term = Terminal:new({
            cmd = cmd,
            dir = config.file_dir,
            direction = "float",
            close_on_exit = false,
          })
          term:toggle()
        end
      end

      -- Configurar keymaps cuando se abre un archivo Java
      vim.api.nvim_create_autocmd("FileType", {
        pattern = "java",
        callback = function()
          vim.keymap.set("n", "<leader>jc", compile_java, { buffer = true, desc = "Compilar Java" })
          vim.keymap.set("n", "<leader>jr", run_java, { buffer = true, desc = "Ejecutar Java" })
          vim.keymap.set("n", "<leader>je", compile_and_run_java, { buffer = true, desc = "Compilar y Ejecutar Java" })
          vim.keymap.set("n", "<space>je", compile_and_run_java, { buffer = true, desc = "Compilar y Ejecutar Java" })
        end,
      })
    end,
  },
}
