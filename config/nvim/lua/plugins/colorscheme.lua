return {
  -- 1. Disable the default tokyonight plugin
  { "folke/tokyonight.nvim", enabled = false },

  -- 2. Configure LazyVim to use the base16 colorscheme by default
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "base16-colorscheme", -- This matches the RRethy plugin setup
    },
  },
}
