-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      -- Lenguajes Activos
      "lua",
      "vim",
      "c_sharp",   -- Habilitado para C# (.NET)
      
      -- WEB Frontend / Backend
      "html", "css", "javascript", -- Recomendado tener el trío web básico
      -- "typescript", "tsx",        -- Web: React y JS fuertemente tipado
      -- "php", "blade",             -- Web Backend: Servidores y Laravel

      -- Otros lenguajes (Descomentar para usar)
      -- "java",      -- Java puro (Spring/Android)
      -- "go", "gomod", "gowork", "gosum", -- Go: Necesitas todos estos para soporte completo en módulos
      -- "cpp", "c",  -- C y C++ (Motores y sistemas)
      -- "rust",      -- Rust puro
    },
  },
}
