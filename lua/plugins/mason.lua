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
        -- ==== LSPs (Motor de autocompletado e inteligencia) ====
        "lua-language-server",
        "omnisharp",            -- C#: Backend y Avalonia
        
        -- DESARROLLO WEB
        "html-lsp",             -- HTML: Autocompletado de etiquetas base
        "css-lsp",              -- CSS: Autocompletado de estilos base
        "emmet-ls",             -- WEB: Snippets ultrarrápidos de HTML (h1>p*3)
        -- "ts_ls",                -- Frontend: TypeScript y JavaScript (React/Angular/Vue/Node)
        -- "intelephense",         -- PHP (Backend Web)
        -- "lemminx",              -- XML (Útil para frontend de Avalonia .axaml y Android)

        -- OTROS LENGUAJES (Descomentar para usar)
        -- "jdtls",                -- JAVA: Autocompletado (Enterprise/Spring)
        -- "gopls",                -- GO: Autocompletado y herramientas
        -- "clangd",               -- C/C++: Autocompletado y macros
        -- "rust_analyzer",        -- RUST: Autocompletado hiper inteligente y seguro

        -- ==== LINTERS Y FORMATEADORES (Orden visual del código) ====
        "stylua",
        "csharpier",            -- C#: Formateador estándar de código
        "prettier",             -- WEB: El estándar de oro para dar formato a TS, JS, HTML, CSS, JSON
        
        -- "php-cs-fixer",         -- PHP: Formateador
        -- "blade-formatter",      -- PHP: Formateador de plantillas Laravel
        -- "google-java-format",   -- JAVA: Formateador oficial de Google
        -- "gofumpt",              -- GO: Formateador estricto (mejor que gofmt)
        -- "clang-format",         -- C/C++: Formateador oficial


        -- ==== DEPURADORES (Poner breakpoints y ver variables) ====
        "netcoredbg",           -- C#: Depurador para .NET core (indispensable)
        -- "java-debug-adapter",   -- JAVA: Depurador principal
        -- "java-test",            -- JAVA: Corredor de pruebas unitarias
        -- "delve",                -- GO: El depurador oficial de Go
        -- "codelldb",             -- C/C++/RUST: Depurador moderno de alto rendimiento (LLVM)
      },
    },
  },
}
