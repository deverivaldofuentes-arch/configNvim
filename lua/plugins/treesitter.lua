-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      -- "c_sharp",   -- si no programas en C#
      -- "java",      -- si no programas en Java
      -- "php",       -- si no programas en PHP
      -- "blade",     -- si no programas en Blade
      -- add more arguments for adding more treesitter parsers
    },
  },
}
