return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = function(_, opts)
    opts.default_component_configs = opts.default_component_configs or {}
    opts.commands = opts.commands or {}
    opts.commands.expand_all_nodes = function(state, toggle_directory)
      if toggle_directory == nil then
        toggle_directory = function(_, node)
          node:expand()
        end
      end
      local tree = state.tree
      for _, node in ipairs(tree.nodes) do
        if node.type == "directory" and not node.is_expanded then
          toggle_directory(state, node)
        end
      end
    end

    -- Add the mapping to expand all nodes
    opts.window = opts.window or {}
    opts.window.mappings = opts.window.mappings or {}
    opts.window.mappings["E"] = "expand_all_nodes"
  end,
}
