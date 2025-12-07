-- Agrega esto en la configuración existente de nvim-dap:

-- Configuración específica para Go debugging
return {
  {
    "mfussenegger/nvim-dap",
    config = function()
      local dap = require("dap")

      -- Configuración para Go
      dap.adapters.go = {
        type = "server",
        port = "${port}",
        executable = {
          command = "dlv",
          args = { "dap", "-l", "127.0.0.1:${port}" },
        },
      }

      dap.configurations.go = {
        {
          type = "go",
          name = "Debug",
          request = "launch",
          program = "${file}",
        },
        {
          type = "go",
          name = "Debug test",
          request = "launch",
          mode = "test",
          program = "${file}",
        },
        {
          type = "go",
          name = "Debug package",
          request = "launch",
          program = "${fileDirname}",
        },
      }

      -- Keymaps para debugging
      vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, { desc = "Toggle Breakpoint" })
      vim.keymap.set("n", "<leader>dc", dap.continue, { desc = "Continue" })
      vim.keymap.set("n", "<leader>do", dap.step_over, { desc = "Step Over" })
      vim.keymap.set("n", "<leader>di", dap.step_into, { desc = "Step Into" })
      vim.keymap.set("n", "<leader>dO", dap.step_out, { desc = "Step Out" })
    end,
  },
}
