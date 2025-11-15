🛠️ Neovim Configuration

This repository contains my personal Neovim configuration, written fully in Lua and organized into modular plugin files under lua/plugins/.

It is clean, minimal, and relies on separate modules for each major plugin or feature category.
This keeps configuration readable, maintainable, and easy to extend.

📁 Folder Structure
nvim/
  lua/
    plugins/
      init.lua
      <plugin-config files>.lua

lua/plugins/

This directory contains all plugin definitions and configurations.
Each .lua file configures one (or a related group of) plugins.

Example (your actual names may differ):

lsp.lua — LSP servers, autocomplete, diagnostics

treesitter.lua — syntax parsing and highlighting

telescope.lua — fuzzy finder setup

git.lua — Git integration

ui.lua — themes, statusline, UI plugins

completion.lua — nvim-cmp and sources

formatting.lua — formatters & linting

keymaps.lua — plugin-related key mappings

All plugin modules are required in plugins/init.lua.

🚀 Installation
1. Install Neovim (v0.9+ recommended)

Linux:

sudo apt install neovim


Or install latest from source if required.

2. Clone this config
git clone https://github.com/Abdurrahman-shaikh02/nvim ~/.config/nvim

3. Open Neovim
nvim


Your plugin manager (Lazy.nvim or Packer.nvim depending on config) will automatically install all plugins.

If you're using Packer, run:

:PackerSync


If you're using Lazy.nvim, nothing needed — it installs automatically.

🧩 How Plugin Loading Works

init.lua loads your plugin manager.

It imports all plugin configuration modules:

require("plugins.lsp")
require("plugins.telescope")
require("plugins.treesitter")
...


Each module:

Declares plugins

Sets up options

Defines keymaps

Configures dependencies

This modular approach keeps your setup clean and scalable.

🛠️ Adding New Plugins

Create a file under lua/plugins/
Example:

lua/plugins/harpoon.lua


Add plugin definition inside it:

return {
  "ThePrimeagen/harpoon",
  config = function()
    require("harpoon").setup()
  end
}


Import it in plugins/init.lua:

require("plugins.harpoon")


Restart Neovim — the plugin gets installed automatically.

📦 Recommended Plugins in This Config

(Adjust based on what you actually use.)

LSP & Completion:

nvim-lspconfig

nvim-cmp

mason.nvim

UI & Appearance:

tokyonight.nvim / catppuccin

lualine.nvim

bufferline.nvim

Navigation:

telescope.nvim

nvim-tree.lua or neo-tree

Syntax & Code Tools:

nvim-treesitter

null-ls.nvim / conform.nvim

Git:

gitsigns.nvim

✨ Author

Abdurrahman Shaikh
GitHub: https://github.com/Abdurrahman-shaikh02
