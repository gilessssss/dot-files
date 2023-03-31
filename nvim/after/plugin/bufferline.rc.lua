vim.opt.termguicolors = true
require'bufferline'.setup({
    options = {
        offsets = {{filetype = "NvimTree", text = "Directory", text_align = "center"}},
        show_buffer_close_icons = false,
        show_close_icon = false,
    },
})


