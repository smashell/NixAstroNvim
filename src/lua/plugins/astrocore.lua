-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    -- Configure core features of AstroNvim
    features = {
      large_buf = { size = 1024 * 500, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
      autopairs = true, -- enable autopairs at start
      cmp = true, -- enable completion at start
      diagnostics_mode = 3, -- diagnostic mode on start (0 = off, 1 = no signs/virtual text, 2 = no virtual text, 3 = on)
      highlighturl = true, -- highlight URLs at start
      notifications = true, -- enable notifications at start
    },
    -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
    diagnostics = {
      virtual_text = true,
      underline = true,
    },
    -- vim options can be configured here
    options = {
      opt = { -- vim.opt.<key>
        relativenumber = true, -- sets vim.opt.relativenumber
        number = true, -- sets vim.opt.number
        spell = false, -- sets vim.opt.spell
        signcolumn = "auto", -- sets vim.opt.signcolumn to auto
        wrap = true, -- sets vim.opt.wrap
      },
      g = { -- vim.g.<key>
        -- configure global vim variables (vim.g)
        -- NOTE: `mapleader` and `maplocalleader` must be set in the AstroNvim opts or before `lazy.setup`
        -- This can be found in the `lua/lazy_setup.lua` file

        copilot_chat_prefix = "<Leader>V",
      },
    },
    -- Mappings can be configured through AstroCore as well.
    -- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
    mappings = {
      -- first key is the mode
      n = {

        -- Git
        ["<Leader>gv"] = { "<cmd>DiffviewOpen<cr>", desc = "Show diffview of open changes" },
        ["<Leader>gm"] = {
          "<cmd>DiffviewOpen origin/main<cr>",
          desc = "Show diffview of branch compared to main",
        },
        ["<Leader>gM"] = {
          "<cmd>DiffviewOpen origin/main..HEAD<cr>",
          desc = "Show diffview of main to branch",
        },
        ["<Leader>gl"] = { "<cmd>ToggleBlame<cr>", desc = "Git Blame" },

        -- Telescope
        -- NOTE: Some keybindings are in `astrolsp`
        ["<Leader>fg"] = {
          "<cmd>lua require'telescope.builtin'.grep_string{ search = vim.fn.input('Search for: ') }<cr>",
          silent = true,
          desc = "Grep for string in all files and filter results",
        },
        ["<Leader>le"] = {
          function() require("telescope.builtin").lsp_definitions() end,
          desc = "Search definitions",
        },
        ["<Leader>lt"] = {
          function() require("telescope.builtin").lsp_type_definitions() end,
          desc = "Search type definitions",
        },
        ["<Leader>lW"] = {
          function() require("telescope.builtin").lsp_dynamic_workspace_symbols() end,
          desc = "Search dyn workspace symbols",
        },

        -- Movement
        ["<Leader>a"] = { "<cmd>lua require'hop'.hint_words()<cr>", desc = "Hop to word" },

        -- Debugging
        ["<Leader><Leader>"] = { function() require("dap").step_over() end, desc = "Step Over (F10)" },

        -- ["<C-q>"] = { function() end, desc = "Unmapped" },
        -- ["<Leader>q"] = { function() end, desc = "Unmapped" },
        ["]Q"] = { "<cmd>:cclose<cr>", desc = "Quickfix close" },
        ["]qq"] = { "<cmd>:cclose<cr>", desc = "Quickfix close" },
        ["]qn"] = { "<cmd>:cnext<cr>", desc = "Quickfix next" },
        ["[qp"] = { "<cmd>:cprev<cr>", desc = "Quickfix prev" },
        ["]]"] = { "<cmd>:cnext<cr>", desc = "Quickfix next" },
        ["[["] = { "<cmd>:cprev<cr>", desc = "Quickfix prev" },

        ["<Leader>1"] = { "<c-w>1w", desc = "Goto first win" },
        ["<Leader>2"] = { "<c-w>2w", desc = "Goto second win" },
        ["<Leader>3"] = { "<c-w>3w", desc = "Goto third win" },
        ["<Leader>4"] = { "<c-w>4w", desc = "Goto fourth win" },
        ["<Leader>5"] = { "<c-w>5w", desc = "Goto fifth win" },
        ["<Leader>6"] = { "<c-w>6w", desc = "Goto sixth win" },
        ["<Leader>7"] = { "<c-w>7w", desc = "Goto seventh win" },
        ["<Leader>8"] = { "<c-w>8w", desc = "Goto eighth win" },
        ["<Leader>9"] = { "<c-w>9w", desc = "Goto ninth win" },
      },
      t = {
        -- setting a mapping to false will disable it
        -- ["<esc>"] = false,
      },
    },
  },
}
