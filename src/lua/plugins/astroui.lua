-- AstroUI provides the basis for configuring the AstroNvim User Interface
-- Configuration documentation can be found with `:h astroui`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astroui",
  ---@type AstroUIOpts
  opts = {
    -- change colorscheme
    colorscheme = "terafox",
    highlights = {
      init = { -- this table overrides highlights in all themes
        -- MultipleCursorsCursor = { bg = "#fda47f", fg = "#1d3337" },
        -- MultipleCursorsVisual = { bg = "#ff8349", fg = "#1d3337" },
        -- MultipleCursorsLockedCursor = { bg = "#fda47f", fg = "#1d3337" },
        -- MultipleCursorsLockedVisual = { bg = "#fda47f", fg = "#1d3337" },
      },
      astrodark = { -- a table of overrides/changes when applying the astrotheme theme
        -- Normal = { bg = "#000000" },
      },
    },
    -- Icons can be configured throughout the interface
    icons = {
      -- configure the loading of the lsp in the status line
      LSPLoading1 = "⠋",
      LSPLoading2 = "⠙",
      LSPLoading3 = "⠹",
      LSPLoading4 = "⠸",
      LSPLoading5 = "⠼",
      LSPLoading6 = "⠴",
      LSPLoading7 = "⠦",
      LSPLoading8 = "⠧",
      LSPLoading9 = "⠇",
      LSPLoading10 = "⠏",
    },
  },
}

-- base00: "#152528"
-- base01: "#1d3337"
-- base02: "#254147"
-- base03: "#4e5157"
-- base04: "#587b7b"
-- base05: "#e6eaea"
-- base06: "#cbd9d8"
-- base07: "#eeeeee"
-- base08: "#e85c51"
-- base09: "#ff8349"
-- base0A: "#fda47f"
-- base0B: "#7aa4a1"
-- base0C: "#a1cdd8"
-- base0D: "#5a93aa"
-- base0E: "#ad5c7c"
-- base0F: "#cb7985"
