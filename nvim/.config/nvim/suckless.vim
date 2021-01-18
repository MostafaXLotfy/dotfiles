augroup cpp_setting "{ 
    au!
    autocmd BufWritePost blocks.def.h execute '!cp blocks.def.h blocks.h'
augroup END "}
