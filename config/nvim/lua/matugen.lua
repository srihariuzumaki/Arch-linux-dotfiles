local M = {}

function M.setup()
  require("base16-colorscheme").setup({
    -- Background tones
    base00 = "#121413", -- Default Background
    base01 = "#1f201f", -- Lighter Background (status bars)
    base02 = "#292a29", -- Selection Background
    base03 = "#8c928e", -- Comments, Invisibles
    -- Foreground tones
    base04 = "#c2c8c4", -- Dark Foreground (status bars)
    base05 = "#e3e2e0", -- Default Foreground
    base06 = "#e3e2e0", -- Light Foreground
    base07 = "#e3e2e0", -- Lightest Foreground
    -- Accent colors
    base08 = "#ffb4ab", -- Variables, XML Tags, Errors
    base09 = "#c1c6d9", -- Integers, Constants
    base0A = "#c0c8c3", -- Classes, Search Background
    base0B = "#b5ccc2", -- Strings, Diff Inserted
    base0C = "#c1c6d9", -- Regex, Escape Chars
    base0D = "#b5ccc2", -- Functions, Methods
    base0E = "#c0c8c3", -- Keywords, Storage
    base0F = "#93000a", -- Deprecated, Embedded Tags
  })
  vim.api.nvim_set_hl(0, "Normal", { bg = "NONE", ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "NormalNC", { bg = "NONE", ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "NonText", { bg = "NONE", ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "SignColumn", { bg = "NONE", ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "StatusLine", { bg = "NONE", ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "NONE", ctermbg = "NONE" })
end

-- Register a signal handler for SIGUSR1 (matugen updates)
local signal = vim.uv.new_signal()
signal:start(
  "sigusr1",
  vim.schedule_wrap(function()
    package.loaded["matugen"] = nil
    require("matugen").setup()
  end)
)

return M
