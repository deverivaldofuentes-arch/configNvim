return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Configuración para gopls
        gopls = {
          settings = {
            gopls = {
              analyses = {
                unusedparams = true,
                fieldalignment = true,
                nilness = true,
                unusedwrite = true,
                useany = true,
              },
              staticcheck = true,
              gofumpt = true,
              completeUnimported = true,
              usePlaceholders = true,
              semanticTokens = true,
              hints = {
                assignVariableTypes = true,
                compositeLiteralFields = true,
                compositeLiteralTypes = true,
                constantValues = true,
                functionTypeParameters = true,
                parameterNames = true,
                rangeVariableTypes = true,
              },
            },
          },
        },
        -- Servidores para desarrollo web
        html = {
          filetypes = { "html", "htmldjango" },
        },
        cssls = {},
        tsserver = {},
        emmet_ls = {
          filetypes = { "html", "css", "javascript", "javascriptreact", "typescript", "typescriptreact", "htmldjango" },
        },
        tailwindcss = {
          filetypes = { "html", "css", "javascript", "javascriptreact", "typescript", "typescriptreact", "htmldjango" },
          init_options = {
            userLanguages = {
              html = "html",
              css = "css",
              javascript = "javascript",
              javascriptreact = "javascriptreact",
              typescript = "typescript",
              typescriptreact = "typescriptreact",
            },
          },
        },
      },
    },
  },
}
