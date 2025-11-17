-- Agrega esto en la configuración existente de nvim-dap:

-- Configuración específica para Go debugging
local dap = require("dap")

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
} -- Agrega esto en la configuración existente de nvim-dap:

-- Configuración específica para Go debugging
local dap = require("dap")

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
