-- return {
--   "rjshkhr/shadow.nvim",
--   priority = 1000,
--   config = function()
--     vim.opt.termguicolors = true
--     vim.cmd.colorscheme("shadow")
--   end
-- }

return {
  { "ficcdaf/ashen.nvim" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "ashen",
    },
  },
}
