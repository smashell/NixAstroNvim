-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.dart" },
  { import = "astrocommunity.pack.docker" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.terraform" },
  -- vtsls is a pos atm
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.python-ruff" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.nix" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.cs" },

  -- AI stuff
  { import = "astrocommunity.recipes.ai" },
  { import = "astrocommunity.recipes.heirline-vscode-winbar" },
  { import = "astrocommunity.recipes.picker-lsp-mappings" },
  { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.editing-support.copilotchat-nvim" },

  { import = "astrocommunity.git.diffview-nvim" },
  { import = "astrocommunity.editing-support.vim-visual-multi" },
  -- { import = "astrocommunity.editing-support.multiple-cursors-nvim" },
  { import = "astrocommunity.motion.hop-nvim" },
  { import = "astrocommunity.motion.nvim-surround" },
  { import = "astrocommunity.test.neotest" },
  { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" },

  { import = "astrocommunity.colorscheme.nightfox-nvim" },
  { import = "astrocommunity.colorscheme.neofusion-nvim" },
  { import = "astrocommunity.colorscheme.eldritch-nvim" },
  { import = "astrocommunity.colorscheme.tokyonight-nvim" },
  { import = "astrocommunity.colorscheme.kanagawa-nvim" },
}
