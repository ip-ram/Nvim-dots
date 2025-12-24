return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("tokyonight").setup({
        style = "night",
        transparent = false,
        terminal_colors = true,
        styles = {
          comments = { italic = true },
          keywords = { italic = false },
        },
        on_colors = function(colors)
          colors.bg = "#2b2b2b" -- основной фон
          colors.bg_dark = "#242424" -- фон сплитов / sidebar
          colors.bg_float = "#2b2b2b"
        end,
        on_highlights = function(hl, c)
          hl.LineNrAbove = { fg = "#7aa2f7" }
          hl.LineNrBelow = { fg = "#7aa2f7" }
        end,
      })

      vim.cmd.colorscheme("tokyonight")
    end,
  },
}
