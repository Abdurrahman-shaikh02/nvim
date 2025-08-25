-- ~/.config/nvim/lua/colortheme.lua

return {
  "bluz71/vim-moonfly-colors",
  name = "moonfly",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("moonfly")

    -- Function to toggle transparent background
    local function toggle_transparent()
      if vim.g.transparent_enabled then
        -- restore normal background
        vim.cmd("hi Normal guibg=#080808")
        vim.cmd("hi NormalNC guibg=#080808")
        vim.g.transparent_enabled = false
      else
        -- make background transparent
        vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
        vim.cmd("hi NormalNC guibg=NONE ctermbg=NONE")
        vim.g.transparent_enabled = true
      end
    end

    -- Map <leader>bg to toggle transparency
    vim.keymap.set("n", "<leader>bg", toggle_transparent, { desc = "Toggle transparent background" })
  end,
}

