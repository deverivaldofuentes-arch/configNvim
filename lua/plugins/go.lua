return {
  {
    "fatih/vim-go",
    ft = "go",
    config = function()
      -- ... tu configuración existente ...
    end,
  },
  {
    "leoluz/nvim-dap-go",
    ft = "go",
    dependencies = "mfussenegger/nvim-dap",
    config = function(_, opts)
      require("dap-go").setup({
        delve = {
          path = "dlv",
          initialize_timeout_sec = 20,
          launch_timeout_sec = 20,
        },
      })
    end,
  },
  {
    "olexsmir/gopher.nvim",
    ft = "go",
    config = function(_, opts)
      require("gopher").setup({
        commands = {
          go = "go",
          gomodifytags = "gomodifytags",
          gotests = "gotests",
          impl = "impl",
          iferr = "iferr",
        },
      })
    end,
    build = function()
      vim.cmd([[silent! GoInstallDeps]])
    end,
  },
  -- Si tienes una sección para Mason aquí, actualízala:
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      if opts.ensure_installed then
        vim.list_extend(opts.ensure_installed, { "gopls", "delve", "goimports", "gofumpt" })
      end
    end,
  },
}
