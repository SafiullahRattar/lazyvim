-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- A function to find directories and cd into them.
function _G.find_and_cd_directory_from_root()
  require("fzf-lua").fzf_exec(
    -- Use 'fd' to search starting at '/' for directories only
    "fd --type d --hidden --exclude .git '' /",
    {
      prompt = "Directories> ",
      actions = {
        ["default"] = function(selected)
          local dir = selected[1]
          -- Convert to an absolute path (in case 'fd' returns relative paths, usually not needed if we pass `/`)
          -- local abs_dir = vim.fn.fnamemodify(dir, ":p")
          vim.cmd("cd " .. dir)
          print("Changed directory to " .. dir)
        end,
      },
    }
  )
end

-- Keymap: <leader>fd
vim.keymap.set("n", "<leader>fd", function()
  find_and_cd_directory_from_root()
end, { desc = "FZF: find directory (from root) and cd", noremap = true })
