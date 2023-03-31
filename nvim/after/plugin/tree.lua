vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1


vim.opt.termguicolors = true
require("nvim-tree").setup({
    sort_by = "case_sensitive",
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = true,    
    },
})

-- Keymaps  
vim.keymap.set("n", "<leader>bb", vim.cmd.NvimTreeToggle)

local function open_nvim_tree()
    require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

