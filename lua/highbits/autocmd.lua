vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
  callback = function()
    vim.cmd "set formatoptions-=cro"
  end,
})

vim.api.nvim_create_autocmd({ "BufWrite" }, {
    callback = function ()
        vim.lsp.buf.format()
    end
})
