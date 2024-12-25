---@type LazySpec
return {
  {
    "sonarlint",
    url = "https://gitlab.com/schrieveslaach/sonarlint.nvim.git",
    -- lazy = false,
    -- init = function()
    --   require("sonarlint").setup {
    --     server = {
    --       cmd = {
    --         "sonarlint-language-server",
    --         -- Ensure that sonarlint-language-server uses stdio channel
    --         "-stdio",
    --         "-analyzers",
    --         -- paths to the analyzers you need, using those for python and java in this example
    --         vim.fn.expand "$MASON/share/sonarlint-analyzers/sonarpython.jar",
    --         vim.fn.expand "$MASON/share/sonarlint-analyzers/sonarcfamily.jar",
    --         -- vim.fn.expand "$MASON/share/sonarlint-analyzers/sonarjava.jar",
    --         vim.fn.expand "$MASON/share/sonarlint-analyzers/sonarjs.jar",
    --       },
    --     },
    --     filetypes = {
    --       -- Tested and working
    --       "python",
    --       "cpp",
    --       -- "java",
    --       "typescript",
    --       "typescriptreact",
    --     },
    --   }
    -- end,
  },
}
