return {
  "saghen/blink.cmp",
  opts = function(_, opts)
    opts.completion.ghost_text.enabled = false
    opts.keymap["<Tab>"] = { "select_and_accept", "fallback" }
    opts.keymap["<CR>"] = { "fallback" }
    return opts
  end,
}
