return {
  "xeluxee/competitest.nvim",
  dependencies = "MunifTanjim/nui.nvim",
  config = function()
    require("competitest").setup({
      evaluate_template_modifiers = true,
      template_file = "~/templates-comp/template.$(FEXT)",
    })
  end,
}
