-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "bash",
      "c_sharp",
      "rust",
      "typescript",
      "nu",
      -- add more arguments for adding more treesitter parsers
    },
  },
}
