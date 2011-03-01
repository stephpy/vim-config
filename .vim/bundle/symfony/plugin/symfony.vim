if !exists("g:php_path")
	let g:php_path="php"
endif

function! s:Symfony(args)
    redraw
    exec "!".g:php_path." symfony ".a:args
    redraw!
endfunction

command! -bang -nargs=* -complete=file Symfony call s:Symfony(<q-args>)

map \s :Symfony<SPACE>
