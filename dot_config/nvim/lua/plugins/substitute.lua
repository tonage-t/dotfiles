return {
  "gbprod/substitute.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local substitute = require("substitute")

    substitute.setup()

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "x", substitute.operator, { desc = "Substitute with motion" })
    keymap.set("n", "xx", substitute.line, { desc = "Substitute line" })
    keymap.set("n", "X", substitute.eol, { desc = "Substitute to end of line" })
    keymap.set("x", "x", substitute.visual, { desc = "Substitute in visual mode" })
  end,
}
