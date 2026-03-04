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
        -- "omnisharp",            -- Solo si no viene con el pack de C#
        "html-lsp",
        "css-lsp",
        "emmet-ls",
        -- "jdtls",                -- Comentado si no usas Java
        -- "java-debug-adapter",   -- Comentado si no usas Java
        -- "java-test",            -- Comentado si no usas Java
        -- "intelephense",         -- Comentado si no usas PHP
        -- "php-cs-fixer",         -- Comentado si no usas PHP
        -- "blade-formatter",      -- Comentado si no usas PHP
        -- install formatters
        "stylua",
        -- "csharpier",            -- Solo si formateas C#
        "prettier",

        -- install debuggers
        -- "netcoredbg",           -- Solo si depuras C#
        -- install any other package
        -- "tree-sitter-cli",      -- no es necesario según recomendación
      },
    },
  },
}
