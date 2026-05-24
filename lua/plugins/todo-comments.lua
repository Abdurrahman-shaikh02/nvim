return {
  "folke/todo-comments.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },

  opts = {
    signs = true,

    keywords = {
      IMPORTANT = {
        icon = " ",
        color = "error",
        alt = { "IMP" },
      },

      WHY = {
        icon = " ",
        color = "info",
      },

      QUESTION = {
        icon = " ",
        color = "warning",
        alt = { "Q" },
      },

      TODO = {
        icon = " ",
        color = "hint",
      },

      NOTE = {
        icon = "󰎚 ",
        color = "test",
      },

      HACK = {
        icon = " ",
        color = "error",
      },

      PERF = {
        icon = "󰅒 ",
        color = "default",
      },
    },

    gui_style = {
      fg = "NONE",
      bg = "BOLD",
    },

    merge_keywords = true,

    highlight = {
      multiline = true,
      multiline_pattern = "^.",
      multiline_context = 10,

      before = "",
      keyword = "wide",
      after = "fg",

      pattern = [[.*<(KEYWORDS)\s*:]],

      comments_only = true,
      max_line_len = 400,
      exclude = {},
    },

    search = {
      command = "rg",
      args = {
        "--color=never",
        "--no-heading",
        "--with-filename",
        "--line-number",
        "--column",
      },

      pattern = [[\b(KEYWORDS):]],
    },
  },
}
