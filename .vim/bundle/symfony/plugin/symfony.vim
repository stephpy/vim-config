function! s:Symfony(args)
    redraw
    exec "!php symfony ".a:args
    redraw!
endfunction

command! -bang -nargs=* -complete=file Symfony call s:Symfony(<q-args>)

map \s :Symfony<SPACE>
