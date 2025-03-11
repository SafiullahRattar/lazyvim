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
              default = "claude-3.7-sonnet",
            },
          },
        })
      end,
    }
    opts.strategies = {
      chat = {
        adapter = "copilotclaude",
        tools = {
          ["mcp"] = {
            callback = require("mcphub.extensions.codecompanion"),
            description = "Call tools and resources from the MCP Servers",
            opts = {
              requires_approval = true,
            },
          },
        },
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
