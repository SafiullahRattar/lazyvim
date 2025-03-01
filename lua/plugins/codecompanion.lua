return {
  "olimorris/codecompanion.nvim",
  config = true,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },

  opts = function(_, opts)
    opts.adapters = {
      copilotclaude = function()
        return require("codecompanion.adapters").extend("copilot", {
          name = "copilotclaude",
          schema = {
            model = {
              default = "claude-3.5-sonnet",
            },
          },
        })
      end,
    }
    opts.strategies = {
      chat = {
        adapter = "copilotclaude",
      },
      inline = {
        adapter = "copilot",
      },
      agent = {
        adapter = "copilotclaude",
      },
    }
    opts.display = {
      chat = {
        show_settings = "true",
      },
    }
  end,
}
