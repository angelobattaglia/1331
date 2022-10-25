" That's it. That's all my .vimrc ...
autocmd filetype python nnoremap <F9> :w <bar> exec '!python3 '.shellescape('%')<CR>
autocmd filetype cpp nnoremap <F9> :w <bar> exec '!g++ '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd filetype c nnoremap <F9> :w <CR>:!gcc % -o %:r && ./%:r<CR>
