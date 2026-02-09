-- M.default = {
--   none = "NONE",
--   bg_dark = "#1f2335",
--   bg = "#24283b",
--   bg_highlight = "#292e42",
--   terminal_black = "#414868",
--   fg = "#c0caf5",
--   fg_dark = "#a9b1d6",
--   fg_gutter = "#3b4261",
--   dark3 = "#545c7e",
--   comment = "#565f89",
--   dark5 = "#737aa2",
--   blue0 = "#3d59a1",
--   blue = "#7aa2f7",
--   cyan = "#7dcfff",
--   blue1 = "#2ac3de",
--   blue2 = "#0db9d7",
--   blue5 = "#89ddff",
--   blue6 = "#b4f9f8",
--   blue7 = "#394b70",
--   magenta = "#bb9af7",
--   magenta2 = "#ff007c",
--   purple = "#9d7cd8",
--   orange = "#ff9e64",
--   yellow = "#e0af68",
--   green = "#9ece6a",
--   green1 = "#73daca",
--   green2 = "#41a6b5",
--   teal = "#1abc9c",
--   red = "#f7768e",
--   red1 = "#db4b4b",
-- }

local on_colors = function(colors)
  local util = require("tokyonight.util")

  colors.comment = util.lighten(colors.blue0, 0.7)
end

local on_highlights = function(highlights, colors)
  local util = require("tokyonight.util")

  local create_color_highlight = function(color, lighter, darker)
    return {
      fg = util.lighten(color, lighter),
      bg = util.darken(color, darker),
    }
  end

  highlights.FlashLabel = { fg = colors.magenta2, bg = colors.bg, bold = true }

  highlights.HighlightUndo = create_color_highlight(colors.purple, 0.3, 0.6)

  highlights.YankyPut = create_color_highlight(colors.blue, 0.3, 0.6)
  highlights.YankyYanked = create_color_highlight(colors.orange, 0.3, 0.6)

  -- Todo comments
  highlights.TodoCommentError = { fg = util.lighten(colors.error, 0.93) } -- #de5858
  highlights.TodoCommentWarn = { fg = colors.warning }
  highlights.TodoCommentInfo = { fg = colors.info }
  highlights.TodoCommentHint = { fg = colors.hint }
  highlights.TodoCommentTodo = { fg = colors.todo }
  highlights.TodoCommentNote = { fg = colors.green2 }
  highlights.TodoCommentTest = { fg = colors.magenta }
  highlights.TodoCommentPerf = { fg = colors.purple }
  highlights.TodoCommentDefault = { fg = colors.purple }

  -- Mason
  highlights.MasonHeading = { fg = colors.fg, bold = true }
  highlights.MasonHeader = { fg = colors.bg, bg = colors.orange }
  highlights.MasonHeaderSecondary = { fg = colors.bg, bg = colors.orange }
  highlights.MasonHighlight = { fg = colors.blue5 }
  highlights.MasonHighlightSecondary = { fg = colors.blue5 }
  highlights.MasonHighlightBlock = { fg = colors.bg, bg = colors.magenta2 }
  highlights.MasonHighlightBlockBold = { fg = colors.bg, bg = colors.blue5, bold = true }
  highlights.MasonHighlightBlockSecondary = { fg = colors.fg, bg = colors.bg_highlight }
  highlights.MasonHighlightBlockBoldSecondary = { fg = colors.fg, bg = colors.bg_highlight, bold = true }
  highlights.MasonMuted = { fg = colors.comment }
  highlights.MasonMutedBlock = { fg = colors.fg, bg = colors.bg_highlight }
  highlights.MasonMutedBlockBold = { fg = colors.fg, bg = colors.bg_highlight, bold = true }
  highlights.MasonError = { fg = colors.red }
  highlights.MasonWarning = { fg = colors.yellow }

  -- Rainbow
  highlights.Rainbow1 = { fg = colors.rainbow[1], nocombine = true }
  highlights.Rainbow2 = { fg = colors.rainbow[2], nocombine = true }
  highlights.Rainbow3 = { fg = colors.rainbow[3], nocombine = true }
  highlights.Rainbow4 = { fg = colors.rainbow[4], nocombine = true }
  highlights.Rainbow5 = { fg = colors.rainbow[5], nocombine = true }
  highlights.Rainbow6 = { fg = colors.rainbow[6], nocombine = true }
  highlights.Rainbow7 = { fg = colors.rainbow[7], nocombine = true }
  highlights.Rainbow8 = { fg = colors.rainbow[8], nocombine = true }

  -- Snacks indent
  highlights.SnacksIndent1 = highlights.Rainbow1
  highlights.SnacksIndent2 = highlights.Rainbow2
  highlights.SnacksIndent3 = highlights.Rainbow3
  highlights.SnacksIndent4 = highlights.Rainbow4
  highlights.SnacksIndent5 = highlights.Rainbow5
  highlights.SnacksIndent6 = highlights.Rainbow6
  highlights.SnacksIndent7 = highlights.Rainbow7
  highlights.SnacksIndent8 = highlights.Rainbow8
end

return {
  "folke/tokyonight.nvim",
  version = false,
  lazy = false, -- load colorscheme during startup
  priority = 1000, -- load colorscheme first
  init = function()
    vim.cmd("colorscheme tokyonight")
    vim.cmd("set pumblend=0")
    -- vim.cmd.hi("Comment gui=none")
  end,
  opts = {
    style = "night",
    transparent = false,
    terminal_colors = true,
    hide_inactive_statusline = true,
    dim_inactive = false,
    lualine_bold = true,
    styles = {
      comments = { bold = false, italic = true },
      keywords = { bold = true, italic = false },
      functions = { bold = true, italic = true },
      variables = { bold = false, italic = false },
      sidebars = "dark",
      floats = "dark",
    },
    on_colors = on_colors,
    on_highlights = on_highlights,
  },
}
