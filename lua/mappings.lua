local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Tabs Navigation
map('n', '<C-w>', ':BDelete this<CR>', opts)
map('n', 'L', ':BufferLineMoveNext<Cr>', opts)
map('n', 'H', ':BufferLineMovePrev<Cr>', opts)
map('n', 'K', ':BufferLineCycleNext<Cr>', opts)
map('n', 'J', ':BufferLineCyclePrev<Cr>', opts)

-- Nvim Tree
map('n', '<C-e>', ':NvimTreeToggle<CR>', opts)

-- Window Navigation
map('n', '<C-l>', '<C-w>l', opts)
map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-k>', '<C-w>k', opts)
map('n', '<C-j>', '<C-w>k', opts)

-- Move a block of code
map('v', '<C-k>', ":m '<-2<CR>gv=gv", opts)
map('v', '<C-j>', ":m '>+1<CR>gv=gv", opts)

-- Telescope
map('n', '<leader>ff', ':Telescope find_files<cr>', opts)
map('n', '<leader>fg', ':Telescope live_grep<cr>', opts)
map('n', '<leader>fb', ':Telescope buffers<cr>', opts)
map('n', '<leader>fh', ':Telescope help_tags<cr> ', opts)

-- Lsp
map('n', 'gD', ':lua vim.lsp.buf.declaration()<CR>', opts)
map('n', 'gd', ':lua vim.lsp.buf.definition()<CR>', opts)
map('n', 'Z', 	':lua vim.lsp.buf.hover()<CR>', opts)
map('n', 'gi', ':lua vim.lsp.buf.implementation()<CR>', opts)
map('n', 'D', ':lua vim.lsp.buf.type_definition()<CR>', opts)
map('n', '<leader>rn', ':lua vim.lsp.buf.rename()<CR>', opts)
map('n', '<leader>ca', ':Telescope lsp_code_actions<CR>', opts)
map('n', 'gr', ':Telescope lsp_references<CR>', opts)
map('n', 'ge', ':lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
map('n', '<leader>fm', ':lua vim.lsp.buf.formatting()<CR>', opts)


-- Others
map('n', '<leader><leader>', ':noh<CR>', opts)
map('n', '<C-n>', ':Neogit kind=floating<CR>', opts)
map('n', 'n', 'nzzzv', opts)
map('n', 'N', 'Nzzzv', opts)
map('n', '<leader>j', 'mzJ`z', opts)
