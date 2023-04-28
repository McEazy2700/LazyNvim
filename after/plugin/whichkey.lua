local ts_builtins = require("telescope.builtin");
local wk = require("which-key");
local vim = vim;

wk.register({
	s = {
		name = "Search",
		f = {ts_builtins.find_files, "[s]earch [f]iles"},
		g = {ts_builtins.git_files, "[s]earch [g]it files"},
		t = {ts_builtins.live_grep, "[s]earch [t]ext"},
		b = {ts_builtins.buffers, "[s]earch [b]uffers"},
		o = {ts_builtins.oldfiles, "[s]earch [o]pened files"},
		c = {ts_builtins.colorscheme, "[s]earch [c]olorschemes"},
        d = {ts_builtins.diagnostics, "[s]earch [d]iagnostics"}
	},
	o = {
		name = "Open/Close",
		u = {"<cmd>UndotreeToggle<cr>", "[o]pen/close [u]ndotree"},
		g = {vim.cmd.Git, "[o]pen/close [g]it fugitive"},
        n = {vim.cmd.Ex, "[o]pen/close [n]etRW"},
        e = {"<cmd>NeoTreeFocusToggle<cr>", "[o]pen/close [e]xplorer"},
        t = {"<cmd>TroubleToggle<cr>", "[o]pen/close [t]rouble"}
	},
    b = {
        name = "Buffers",
        d = {"<cmd>bdelete<cr>", "[b]uffer [d]elete"},
        f = {"<cmd>bfirst<cr>", "[b]uffer [f]irst"},
        l = {"<cmd>BufferLineMoveNext<cr>", "[b]uffer move next"},
        h = {"<cmd>BufferLineMovePrev<cr>", "[b]uffer move previous"},
    },
    t = {
        name = "Terminal",
        h = {"<cmd>ToggleTerm 2 direction=horizontal<cr>", "[t]erminal [h]orizontal"},
        v = {"<cmd>ToggleTerm 3 size=50 direction=vertical<cr>", "[t]erminal [v]ertical"},
        a = {"<cmd>ToggleTermToggleAll<cr>", "[t]erminal toggle [a]ll"}
    }
}, { prefix = "<leader>" })
