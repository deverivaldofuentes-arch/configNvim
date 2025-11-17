return {
  {
    "fatih/vim-go",
    ft = "go",
    config = function()
      -- Configuración mejorada de vim-go
      vim.g.go_highlight_types = true
      vim.g.go_highlight_functions = true
      vim.g.go_highlight_function_calls = true
      vim.g.go_highlight_operators = true
      vim.g.go_highlight_build_constraints = true
      vim.g.go_highlight_extra_types = true
      vim.g.go_highlight_fields = true
      vim.g.go_highlight_methods = true
      vim.g.go_highlight_structs = true
      vim.g.go_highlight_interfaces = true
      vim.g.go_highlight_operators = true
      vim.g.go_highlight_build_constraints = true
      vim.g.go_fmt_command = "goimports" -- Usa goimports en vez de gofmt
      vim.g.go_fmt_autosave = 1
      vim.g.go_imports_autosave = 1
      vim.g.go_mod_fmt_autosave = 1
      vim.g.go_asmfmt_autosave = 1

      -- Mejorar la experiencia de testing
      vim.g.go_test_timeout = "10s"
      vim.g.go_test_show_name = 1
    end,
  },
  {
    "leoluz/nvim-dap-go",
    ft = "go",
    dependencies = "mfussenegger/nvim-dap",
    config = function(_, opts)
      require("dap-go").setup({
        -- Configuración mejorada para debugging
        delve = {
          path = "dlv",
          initialize_timeout_sec = 20,
          launch_timeout_sec = 20,
        },
      })
    end,
  },
}
