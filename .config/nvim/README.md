# TODO: continue
Inspired by:
- [ThePrimeagen - 0 to LSP : Neovim RC From Scratch.](https://www.youtube.com/watch?v=w7i4amO_zaE)
- [Andrew Courter - Migrate from Packer to lazy.nvim](https://www.youtube.com/watch?v=cGZdvEIeiSg)
- [Andrew Courter - Leveraging lazy.nvim Structural Features after Migrating from Packer](https://www.youtube.com/watch?v=idIVVAvMSbM)
- [VonHeikemen - You might not need lsp-zero](https://lsp-zero.netlify.app/v3.x/blog/you-might-not-need-lsp-zero.html)

# Managing plugins
Neovim plugins are managed with [lazy.nvim](https://github.com/folke/lazy.nvim).\
To add a new plugin, create a new `.lua` file in `plugins/` ([examples](https://github.com/folke/lazy.nvim?tab=readme-ov-file#examples)).\
To delete a plugin, delete the correspondning `.lua` file in `plugins/`.\
Run `:Lazy` in Normal Mode to manage plugins.

# Commonly Used Keymaps
## Netrw
- Moving fileddirectory: `R`
- Delete file/directory: `D`
- Create new file: `%`
- Create new directory: `d`
Complete list: `:h netrw-quickmap*`

## General Normal Mode
- Leader key: `Space`
- Move highlighted block up/down: `J/K`
- Search string within current buffer: `/`
- Yank to system clipboard (can be pasted outside Neovim): `<leader>y`
- Keep pasting the current thing in clipboard: `<leader>p`
- Replace all occurences of string on current cursor: `<leader>s`
- Make current file executable (`chmod +x`): `<leader>x`
- Source current file: `<leader><leader>`

## Neovim-Tmux Navigation (Navigating through Neovim Splits and  Tmux Panes)
- Move between Split/Pane: `Ctrl-h/j/k/l`
- Jump to last active Split/Pane: `Ctrl-/`

## Harpoon (Buffer management)
- Open Harpoon list: `Ctrl-e`
- Mark a buffer in harpoon: `<leader>a`.
- Go to buffer j: `<leader>1`
- Go to buffer 2: `<leader>2`
- Go to buffer 3: `<leader>4`

## Telescope (File finder)
- Search file in current directory: `<leader>pf`
- Search for string in all files in current directory: `<leader>ps`

## Language Server Protocols Functionalities (LSP Zero)
LSP servers are managed by [mason.nvim](https://github.com/williamboman/mason.nvim)
- Open Mason: `:Mason`.
- vim.lsp.buf.definition(): `gd`
- vim.lsp.buf.hover(): `K`
- vim.lsp.buf.format(): `<leader>f"`
- vim.lsp.buf.workspace_symbol(): `<leader>vws`
- vim.diagnostic.open_float(): `<leader>vd`
- vim.diagnostic.goto_next(): `[d`
- vim.diagnostic.goto_prev(): `]d`
- vim.lsp.buf.code_action(): `<leader>vca`
- vim.lsp.buf.references(): `<leader>vrr`
- vim.lsp.buf.rename(): `<leader>vrn`
- vim.lsp.buf.signature_help(): `<C-h>`
Run `:h lsp.buf` to know what those LSP functionalities do.
