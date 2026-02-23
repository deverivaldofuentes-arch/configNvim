-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "c_sharp",
      "java",
      "php",
      "blade",
      -- add more arguments for adding more treesitter parsers
    },
  },
}
