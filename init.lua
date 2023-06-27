-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

local function set_keymap(...)
  vim.api.nvim_set_keymap(...)
end
local opts = { noremap = true, silent = true }

-- # General
set_keymap("n", "<C-g>", "<Esc>", opts)
set_keymap("v", "<C-g>", "<Esc>gV", opts)
set_keymap("o", "<C-g>", "<Esc>", opts)
set_keymap("c", "<C-g>", "<C-c><Esc>", opts)
set_keymap("i", "<C-g>", "<Esc>", opts)

set_keymap("n", "<C-t>", "<cmd>terminal<CR>", opts)

-- # Terminal:
set_keymap("t", "<Esc>", "<C-\\><C-n>", opts)
set_keymap("t", "<C-v><Esc>", "<Esc>", opts)

-- # Telescope bindings:
set_keymap("n", "<CR>", "<cmd>Telescope find_files prompt_prefix=🔍<CR>", opts)
set_keymap("n", "<C-x><C-f>", "<cmd>Telescope find_files prompt_prefix=🔍<CR>", opts)
