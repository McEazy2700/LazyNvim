local wk = require("which-key")
wk.register({
  o = {
    name = "[O]pen/close",
    e = {"<cmd>Neotree toggle<cr>", "Explorer"},
    b = {"<cmd>Neotree toggle buffers<cr>", "[O]pen [Buffers]"},
    g = {"<cmd>Neotree float toggle git_status<cr>", "[O]pen [G]it_status"},
    t = {function()
      vim.ui.input({ promt = "Term Number: "}, function (input)
        local term = ("<cmd>ToggleTerm %s<cr>").format(input)
        vim.cmd(term)
      end)
    end, "[T]erminal"
    }
  },
  s = {
    name = "[S]earch",
  },
  c = {
    name = "[C]ode"
  },
  b = {
    name = "[B]uffer",
    l = {"<cmd>BufferNext<cr>", "NextBuffer"},
    h = {"<cmd>BufferPrevious<cr>", "PreviousBuffer"},
    L = {"<cmd>BufferMoveNext<cr>", "MoveRight"},
    H = {"<cmd>BufferMovePrevious<cr>", "MoveLeft"},
    p = {"<cmd>BufferPin<cr>", "[P]in"},
    d = {"<cmd>BufferDelete<cr>", "[D]elete"},
    c = {
      name = "[C]lose",
      c = {"<cmd>BufferClose<cr>", "[C]urrent"},
      o = {"<cmd>BufferCloseAllButCurrent<cr>", "All [O]ther Buffers"},
      v = {"<cmd>BufferCloseAllButVissible<cr>", "All but [V]issible"},
      p = {"<cmd>BufferCloseAllButPinned<cr>", "All but [P]inned"},
      l = {"<cmd>BufferCloseBuffersRight<cr>", "All to the right"},
      h = {"<cmd>BufferCloseBuffersLeft<cr>", "All to the left"}
    }
  }
}, { prefix = "<leader>" })
