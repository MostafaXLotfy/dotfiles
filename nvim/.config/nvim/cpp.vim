function! _makeClass(className)
    let option = "--makeClass"
    execute "!~/.config/nvim/cppVim" shellescape(option)  shellescape(a:className) 
endfunction

function! _removeClass(className)
    let option = "--removeClass"
    execute "!~/.config/nvim/cppVim" shellescape(option) shellescape(a:className) 
endfunction

    let g:cpp_class_scope_highlight = 1
    let g:cpp_member_variable_highlight = 1
    let g:cpp_class_decl_highlight = 1
    let g:cpp_posix_standard = 1
    let g:cpp_experimental_simple_template_highlight = 1
    let g:cpp_experimental_template_highlight = 1
    let g:cpp_concepts_highlight = 1
    autocmd FileType cpp command! -narg=1 MakeClass call _makeClass(<f-args>)
    autocmd FileType cpp command! -narg=1 RemoveClass call _removeClass(<f-args>)
    autocmd FileType cpp nnoremap<nowait><leader>mc :MakeClass 
    autocmd FileType cpp nnoremap<nowait><leader>rc :RemoveClass 
    autocmd FileType cpp nnoremap<silent><leader>s :CocCommand clangd.switchSourceHeader<CR>
    autocmd BufWritePost *.cpp :Format
