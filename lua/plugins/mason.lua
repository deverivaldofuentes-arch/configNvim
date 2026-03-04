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
        "omnisharp",            -- Necesario para backend de C# / .NET
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
        "csharpier",            -- Formateador estándar para C#
        "prettier",

        -- install debuggers
        "netcoredbg",           -- Depurador para .NET core (indispensable)
        -- install any other package
        -- "tree-sitter-cli",      -- no es necesario según recomendación
      },
    },
  },
}
