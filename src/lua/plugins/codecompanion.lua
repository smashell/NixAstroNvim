---@type LazySpec
return {
  {
    "olimorris/codecompanion.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    config = true,
  },
  {
    "AstroNvim/astrocore",
    opts = {
      mappings = {
        n = {
          ["<Leader>c"] = { false, desc = "Code Companion" },
          ["<Leader>cc"] = { "<cmd>CodeCompanionChat<cr>", desc = "Chat" },
          ["<Leader>cq"] = { "<cmd>CodeCompanion<cr>", desc = "Inline" },
          ["<Leader>cx"] = { "<cmd>CodeCompanion<cr>", desc = "Generate a command" },
          ["<Leader>ca"] = { "<cmd>CodeCompanion<cr>", desc = "Open actions palette" },
        },
      },
    },
  },
}
