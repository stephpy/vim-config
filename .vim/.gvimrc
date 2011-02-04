if has("gui_macvim")
    " Command-T for CommandT (unset Tab key on macvim)
    macmenu &File.New\ Tab key=<nop>
    " Fullscreen takes up entire screen
    set fuoptions=maxhorz,maxvert
    " Fullscreen mode for F5
    map <F5> :set invfu<CR>
    " Start without the toolbar
    set guioptions-=T
endif
