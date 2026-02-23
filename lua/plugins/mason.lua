-- Customize Mason

---@type LazySpec
return {
  -- use mason-tool-installer for automatically installing Mason packages
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    -- overrides `require("mason-tool-installer").setup(...)`
    opts = {
      -- Make sure to use the names found in `:Mason`
      ensure_installed = {
        -- install language servers
        "lua-language-server",
        "omnisharp",
        "html-lsp",
        "css-lsp",
        "emmet-ls",
        "jdtls",
        "java-debug-adapter",
        "java-test",
        "intelephense",
        "php-cs-fixer",
        "blade-formatter",
        -- install formatters
        "stylua",
        "csharpier",
        "prettier",

        -- install debuggers
        "netcoredbg",
        -- install any other package
        "tree-sitter-cli",
      },
    },
  },
}
