return {
  -- Emmet para expansión de abreviaturas HTML/CSS
  {
    "mattn/emmet-vim",
    ft = { "html", "css", "javascript", "javascriptreact", "typescript", "typescriptreact", "htmldjango" },
    config = function()
      vim.g.user_emmet_install_global = 0
      vim.g.user_emmet_mode = "a"

      -- Keymaps para emmet
      vim.keymap.set("i", "<C-y>,", "<plug>(emmet-expand-abbr)", { noremap = false })
      vim.keymap.set("n", "<leader>ee", "<plug>(emmet-expand-abbr)", { desc = "Emmet Expand Abbreviation" })
    end,
  },

  -- Auto-closing de tags HTML
  {
    "windwp/nvim-ts-autotag",
    ft = { "html", "javascript", "javascriptreact", "typescript", "typescriptreact" },
    config = true,
  },

  -- Mejor soporte para CSS (incluyendo Tailwind)
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "roobert/tailwindcss-colorizer-cmp.nvim",
    },
    opts = function(_, opts)
      local format_kinds = opts.formatting.format
      opts.formatting.format = function(entry, item)
        format_kinds(entry, item)
        return require("tailwindcss-colorizer-cmp").formatter(entry, item)
      end
    end,
  },
}
