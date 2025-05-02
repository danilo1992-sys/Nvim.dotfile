return {
  "craftzdog/solarized-osaka.nvim",
  priority = 1000,
  config = function()

  require("solarized-osaka").setup({
    transparent = true,
    terminal_color = true,
    styles={
        comments={italic = true},
        keywords={italic = true},
        sidebar = "dark",
        floats =  "dark",
      }
  })
  vim.cmd("colorscheme solarized-osaka")
      end
    }


