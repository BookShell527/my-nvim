local m = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }

-- Tabs Navigation
m('n', '<C-w>', ':BDelete this<CR>', opt)
m('n', 'L', ':BufferLineMoveNext<Cr>', opt)
m('n', 'H', ':BufferLineMovePrev<Cr>', opt)
m('n', 'K', ':BufferLineCycleNext<Cr>', opt)
m('n', 'J', ':BufferLineCyclePrev<Cr>', opt)

-- Nvim Tree
m('n', '<C-e>', ':NvimTreeToggle<CR>', opt)

-- Window Navigation
m('n', '<C-l>', '<C-w>l', opt)
m('n', '<C-h>', '<C-w>h', opt)
m('n', '<C-k>', '<C-w>k', opt)
m('n', '<C-j>', '<C-w>k', opt)

-- Move a block of code
m('v', '<C-k>', ":m '<-2<CR>gv=gv", opt)
m('v', '<C-j>', ":m '>+1<CR>gv=gv", opt)

-- Telescope
m('n', '<leader>ff', ':Telescope find_files<cr>', opt)
m('n', '<leader>fg', ':Telescope live_grep<cr>', opt)
m('n', '<leader>fb', ':Telescope buffers<cr>', opt)
m('n', '<leader>fh', ':Telescope help_tags<cr> ', opt)

-- Lsp
m('n', 'gD', ':lua vim.lsp.buf.declaration()<CR>', opt)
m('n', 'gd', ':lua vim.lsp.buf.definition()<CR>', opt)
m('n', 'Z', 	':lua vim.lsp.buf.hover()<CR>', opt)
m('n', 'gi', ':lua vim.lsp.buf.implementation()<CR>', opt)
m('n', 'gt', ':lua vim.lsp.buf.type_definition()<CR>', opt)
m('n', '<leader>rn', ':lua vim.lsp.buf.rename()<CR>', opt)
m('n', '<leader>ca', ':Telescope lsp_code_actions<CR>', opt)
m('n', 'gr', ':Telescope lsp_references<CR>', opt)
m('n', 'ge', ':lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opt)
m('n', '<leader>fm', ':lua vim.lsp.buf.formatting()<CR>', opt)

-- Others
m('n', '<leader><leader>', ':noh<CR>', opt)
m('n', '<C-n>', ':Neogit kind=floating<CR>', opt)
m('n', 'n', 'nzzzv', opt)
m('n', 'N', 'Nzzzv', opt)
m('n', '<leader>j', 'mzJ`z', opt)
