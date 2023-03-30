local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then
    print("treesitter is not installed")
    return
end

ts.setup {
    highlight = {
        enable = true,
    },
    ensure_installed = {
        "cpp",
        "rust",
        "javascript",
        "python",
        "css",
        "html",
        "lua"
    },
    sync_install = false,
    auto_install = true,
}

