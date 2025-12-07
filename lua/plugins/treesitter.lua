return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "go",
        "gomod",
        "gowork",
        "gosum",

        -- Lenguajes web
        "html",
        "css",
        "javascript", -- ❌ CORREGIR: "javascritp" → "javascript"
        "typescript",
        "tsx",
        "json",
      },
    },
  },
}
