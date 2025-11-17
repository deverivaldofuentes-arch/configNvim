-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Agrega estas líneas en la sección de keymaps existente:

----- GO DEVELOPMENT -----
vim.keymap.set("n", "<leader>cg", "<cmd>GoGenerate<cr>", { desc = "Go Generate" })
vim.keymap.set("n", "<leader>cG", "<cmd>GoGenerate %<cr>", { desc = "Go Generate File" })
vim.keymap.set("n", "<leader>cf", "<cmd>GoFmt<cr>", { desc = "Go Format" })
vim.keymap.set("n", "<leader>cF", "<cmd>GoImports<cr>", { desc = "Go Imports" })
vim.keymap.set("n", "<leader>ct", "<cmd>GoTest<cr>", { desc = "Go Test" })
vim.keymap.set("n", "<leader>cT", "<cmd>GoTestFunc<cr>", { desc = "Go Test Function" })
vim.keymap.set("n", "<leader>cc", "<cmd>GoCoverage<cr>", { desc = "Go Coverage" })
vim.keymap.set("n", "<leader>cd", "<cmd>GoDoc<cr>", { desc = "Go Doc" })
vim.keymap.set("n", "<leader>cD", "<cmd>GoDocBrowser<cr>", { desc = "Go Doc Browser" })
vim.keymap.set("n", "<leader>cv", "<cmd>GoVet<cr>", { desc = "Go Vet" })
vim.keymap.set("n", "<leader>cR", "<cmd>GoRun<cr>", { desc = "Go Run" })
vim.keymap.set("n", "<leader>cB", "<cmd>GoBuild<cr>", { desc = "Go Build" })
vim.keymap.set("n", "<leader>cI", "<cmd>GoInstall<cr>", { desc = "Go Install" })

-- Debugging keymaps para Go
vim.keymap.set("n", "<leader>dG", function()
  require("dap-go").debug_test()
end, { desc = "Debug Go Test" })

vim.keymap.set("n", "<leader>dL", function()
  require("dap-go").debug_last()
end, { desc = "Debug Last Go Test" })
