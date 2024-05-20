local map = LazyVim.safe_keymap_set

map({ "n" }, "<leader>bd", LazyVim.ui.bufremove, { desc = "Close Buffer" })
map({ "n", "x", "t", "i" }, "<M-f>", "<cmd>2 ToggleTerm direction=float<cr>", { desc = "ToggleTerm float" })
map({ "n", "t", "i" }, "<M-v>", "<cmd>3 ToggleTerm size=80 direction=vertical<cr>", { desc = "ToggleTerm vertical" })
map(
  { "n", "t", "i" },
  "<M-h>",
  "<cmd>3 ToggleTerm size=10 direction=horizontal<cr>",
  { desc = "ToggleTerm horizontal" }
)
