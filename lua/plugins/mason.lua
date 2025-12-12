return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        -- Herramientas generales
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",

        -- Java
        "jdtls",

        -- Go
        "gopls",
        "delve",
        "goimports",
        "gofumpt",

        -- Web
        "html-lsp",
        "css-lsp",
        "typescript-language-server",
        "tailwindcss-language-server",
        "emmet-ls",
        "pyright",
      },
    },
    config = function(_, opts)
      require("mason").setup(opts)
    end,
  },
}
