if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

return {
  "brenton-leighton/multiple-cursors.nvim",
  opts = {
    pre_hook = function() require("nvim-autopairs").disable() end,
    post_hook = function() require("nvim-autopairs").enable() end,
  },
}
