return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  opts = {
    options = {
      mode = "tabs",
      numbers = function(opts)
        return string.format("%s", opts.ordinal)
      end,
      close_command = function(bufnr)
        require("mini.bufremove").delete(bufnr, false)
      end,
      right_mouse_command = function(bufnr)
        require("mini.bufremove").delete(bufnr, false)
      end,
      left_mouse_command = function(bufnr)
        require("mini.bufremove").delete(bufnr, false)
      end,
    },
  },
}
