return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
		"nvim-neotest/nvim-nio",
		"williamboman/mason.nvim",
		"jay-babu/mason-nvim-dap.nvim",
		"leoluz/nvim-dap-go",
		"mfussenegger/nvim-dap-python",
	},
	keys = function(_, keys)
		local dap = require("dap")
		local dapui = require("dapui")
		return {
			{ "dc", dap.continue, desc = "Debug: Start/Continue" },
			{ "<F1>", dap.step_into, desc = "Debug: Step Into" },
			{ "<F2>", dap.step_over, desc = "Debug: Step Over" },
			{ "<F3>", dap.step_out, desc = "Debug: Step Out" },
			{ "db", dap.toggle_breakpoint, desc = "Debug: Toggle Breakpoint" },
			{
				"<leader>B",
				function()
					dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
				end,
				desc = "Debug: Set Breakpoint",
			},
			{ "dt", dapui.toggle, desc = "Debug: See last session result." },
			unpack(keys),
		}
	end,
	config = function()
		local dap = require("dap")
		local dapui = require("dapui")
		dap.adapters.firefox = {
			type = "executable",
			command = vim.fn.exepath("firefox-debug-adapter"),
			-- args = { os.getenv 'HOME' .. '/path/to/vscode-firefox-debug/dist/adapter.bundle.js' },
		}
		dap.adapters.chrome = {
			type = "executable",
			command = vim.fn.exepath("js-debug-adapter"),
		}

		dap.configurations.typescriptreact = {
			{
				name = "Debug with Chrome",
				type = "chrome",
				request = "attach",
				reAttach = true,
				webRoot = "${workspaceFolder}",
				runtimeExecutable = "/usr/bin/chromium-browser",
				port = 9222,
				sourceMaps = true,
				protocol = "inspector",
				urlFilter = "http://localhost:3005*",
			},
		}

		dap.configurations.typescript = {
			{
				name = "Debug with Chrome",
				type = "chrome",
				request = "attach",
				reAttach = true,
				webRoot = "${workspaceFolder}",
				runtimeExecutable = "/usr/bin/chromium-browser",
				port = 9222,
				sourceMaps = true,
				protocol = "inspector",
				urlFilter = "http://localhost:3005*",
			},
		}
		dapui.setup({
			icons = { expanded = "▾", collapsed = "▸", current_frame = "*" },
			controls = {
				icons = {
					pause = "⏸",
					play = "▶",
					step_into = "⏎",
					step_over = "⏭",
					step_out = "⏮",
					step_back = "b",
					run_last = "▶▶",
					terminate = "⏹",
					disconnect = "⏏",
				},
			},
			layouts = {
				{
					elements = {
						{
							id = "scopes",
							size = 0.5,
						},
						{
							id = "breakpoints",
							size = 0.5,
						},
					},
					position = "left",
					size = 65,
				},
			},
		})

		dap.listeners.after.event_initialized["dapui_config"] = dapui.open
		dap.listeners.before.event_terminated["dapui_config"] = dapui.close
		dap.listeners.before.event_exited["dapui_config"] = dapui.close
		require("dap-python").setup("uv")
	end,
}
