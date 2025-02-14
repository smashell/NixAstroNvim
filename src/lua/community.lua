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
  -- { import = "astrocommunity.pack.java" },
  -- { import = "astrocommunity.pack.sql" },
  -- { import = "astrocommunity.pack.go" },
  -- { import = "astrocommunity.pack.clojure" },
  -- { import = "astrocommunity.pack.elm" },

  { import = "astrocommunity.colorscheme.nightfox-nvim" },
  { import = "astrocommunity.colorscheme.neofusion-nvim" },
  { import = "astrocommunity.colorscheme.eldritch-nvim" },
  { import = "astrocommunity.colorscheme.tokyonight-nvim" },
  { import = "astrocommunity.colorscheme.kanagawa-nvim" },
  { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.editing-support.vim-visual-multi" },

  { import = "plugins.copilotchat-nvim" },
  { import = "astrocommunity.editing-support.copilotchat-nvim" },

  { import = "astrocommunity.motion.hop-nvim" },
  { import = "astrocommunity.motion.nvim-surround" },
  -- { import = "astrocommunity.quickfix.quicker-nvim" },
  { import = "astrocommunity.utility.mason-tool-installer-nvim" },
  { import = "astrocommunity.bars-and-lines.scope-nvim" },
  -- { import = "astrocommunity.recipes.astrolsp-no-insert-inlay-hints" },

  -- { import = "astrocommunity.git.mini-diff" },
}
