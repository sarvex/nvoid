vim.g.term_buf = 0
vim.g.term_win = 0
vim.cmd([[
  function! TermToggle(height)
      if win_gotoid(g:term_win)
          hide
      else
          botright new
          exec "resize " . a:height
          try
              exec "buffer " . g:term_buf
          catch
              call termopen($SHELL, {"detach": 0})
              set nonumber
              set norelativenumber
              set signcolumn=no
          endtry
          startinsert!
          let g:term_win = win_getid()
      endif
  endfunction
]])
-- Float Term
map("n", "<C-t>", '<CMD>lua require("FTerm").toggle()<CR>', opts)
map("t", "<C-t>", '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', opts)
-- Term
map("n", "<A-t>", ":ToggleTerm<CR>", opts)
map("i", "<A-t>", "<Esc>:ToggleTerm<CR>", opts)
map("t", "<A-t>", "<C-\\><C-n>:ToggleTerm<CR>", opts)
