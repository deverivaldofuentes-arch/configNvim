-- You can also add or configure plugins by creating files in this `plugins/` folder
-- PLEASE REMOVE THE EXAMPLES YOU HAVE NO INTEREST IN BEFORE ENABLING THIS FILE
-- Here are some examples:

---@type LazySpec
return {

  -- == Examples of Adding Plugins ==

  {
    "dgox16/oldworld.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      variant = "oled", -- Mejor para transparencia
      transparent = true,
    },
  },

  -- Optimización de nvim-cmp (Autocompletado) para hardware modesto:
  -- Reducimos los tiempos de espera y limitamos fuentes lentas para que el menú
  -- de sugerencias se sienta instantáneo.
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      opts.performance = {
        debounce = 20,          -- (Por defecto 60) Espera menos tiempo al teclear antes de buscar sugerencias
        throttle = 10,          -- (Por defecto 30) Frecuencia de actualización más agresiva
        fetching_timeout = 200, -- (Por defecto 500) Si el LSP tarda más de 200ms, muestra lo que tenga y cancela la espera para no trabar el editor
      }

      -- Limitar cuántas sugerencias se muestran a la vez ahorra muchísimo renderizado
      if not opts.window then opts.window = {} end
      opts.window.completion = require("cmp").config.window.bordered({
        max_height = 10,      -- Mostrar solo 10 sugerencias a la vez (menos uso de CPU al mover la lista)
        max_width = 50,       -- Evitar que las cajas de sugerencias sean gigantes
      })
      opts.window.documentation = require("cmp").config.window.bordered({
        max_height = 10,
        max_width = 50,
      })

      return opts
    end,
  },

  -- "andweeb/presence.nvim", -- Disabled for performance
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function() require("lsp_signature").setup() end,
  -- }, -- Disabled for performance, as it causes stuttering on old hardware

  -- == Examples of Overriding Plugins ==

  -- customize dashboard options
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          header = table.concat({
            " ██╗  ██╗ ██████╗ ██╗      █████╗ ",
            " ██║  ██║██╔═══██╗██║     ██╔══██╗",
            " ███████║██║   ██║██║     ███████║",
            " ██╔══██║██║   ██║██║     ██╔══██║",
            " ██║  ██║╚██████╔╝███████╗██║  ██║",
            " ╚═╝  ╚═╝ ╚═════╝ ╚══════╝╚═╝  ╚═╝",
            "                                  ",
            "██╗   ██╗███████╗██╗   ██╗ █████╗ ██████╗ ██╗ ██████╗ ",
            "██║   ██║██╔════╝██║   ██║██╔══██╗██╔══██╗██║██╔═══██╗",
            "██║   ██║███████╗██║   ██║███████║██████╔╝██║██║   ██║",
            "██║   ██║╚════██║██║   ██║██╔══██║██╔══██╗██║██║   ██║",
            "╚██████╔╝███████║╚██████╔╝██║  ██║██║  ██║██║╚██████╔╝",
            " ╚═════╝ ╚══════╝ ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝ ╚═════╝ ",
          }, "\n"),
        },
      },
    },
  },

  -- You can disable default plugins as follows:
  { "max397574/better-escape.nvim", enabled = false },
  
  -- Opcional: desactivar which-key o snacks (dashboard) si no son prioritarios
  -- { "folke/which-key.nvim", enabled = false },   -- Descomentar si prefieres prescindir de él
  -- { "folke/snacks.nvim", enabled = false },      -- Descomentar si el dashboard no es prioritario


  -- You can also easily customize additional setup of plugins that is outside of the plugin's setup call
  {
    "L3MON4D3/LuaSnip",
    config = function(plugin, opts)
      require "astronvim.plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
      -- add more custom luasnip configuration such as filetype extend or custom snippets
      local luasnip = require "luasnip"
      luasnip.filetype_extend("javascript", { "javascriptreact" })
    end,
  },

  {
    "windwp/nvim-autopairs",
    config = function(plugin, opts)
      require "astronvim.plugins.configs.nvim-autopairs"(plugin, opts) -- include the default astronvim config that calls the setup call
      -- add more custom autopairs configuration such as custom rules
      local npairs = require "nvim-autopairs"
      local Rule = require "nvim-autopairs.rule"
      local cond = require "nvim-autopairs.conds"
      npairs.add_rules(
        {
          Rule("$", "$", { "tex", "latex" })
            -- don't add a pair if the next character is %
            :with_pair(cond.not_after_regex "%%")
            -- don't add a pair if  the previous character is xxx
            :with_pair(
              cond.not_before_regex("xxx", 3)
            )
            -- don't move right when repeat character
            :with_move(cond.none())
            -- don't delete if the next character is xx
            :with_del(cond.not_after_regex "xx")
            -- disable adding a newline when you press <cr>
            :with_cr(cond.none()),
        },
        -- disable for .vim files, but it work for another filetypes
        Rule("a", "a", "-vim")
      )
    end,
  },
}
