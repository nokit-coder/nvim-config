return {
	"mfussenegger/nvim-dap",
	event = "VeryLazy",
	config = function()
		local dap = require("dap")
		-- vscode-cpptools
		dap.adapters.cppdbg = {
			id = "cppdbg",
			type = "executable",
			command = vim.fn.stdpath("data") .. "/mason/packages/cpptools/extension/debugAdapters/bin/OpenDebugAD7",
			options = {
				detached = false,
			}
		}

		dap.configurations.cpp = {
			{
				name = "Launch executable",
				type = "cppdbg",
				request = "launch",

				program = function()
					return vim.fn.input(
						"Executable: ",
						vim.fn.getcwd() .. "/",
						"file"
					)
				end,

				cwd = "${workspaceFolder}",
				stopAtEntry = false,

				MIMode = "gdb",
				miDebuggerPath = "gdb",

				setupCommands = {
					{
						description = "Enable pretty-printing",
						text = "-enable-pretty-printing",
						ignoreFailures = true,
					},
				},
			},
		}

		dap.configurations.c = dap.configurations.cpp
	end,
}
