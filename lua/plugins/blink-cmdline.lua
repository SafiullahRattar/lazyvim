return {
  "saghen/blink.cmp",
  opts = function(_, opts)
    opts.completion.ghost_text.enabled = false
    opts.keymap["<Tab>"] = { "select_and_accept", "fallback" }
    opts.keymap["<CR>"] = { "fallback" }
    opts.sources = {
      per_filetype = {
        codecompanion = { "codecompanion" },
      },
    }
    return opts
  end,
}
