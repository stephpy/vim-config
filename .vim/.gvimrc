if has("gui_macvim")
    " Command-T for CommandT (unset Tab key on macvim)
    macmenu &File.New\ Tab key=<nop>
    " Fullscreen takes up entire screen
    set fuoptions=maxhorz,maxvert

    " Fullscreen mode for <cmd + enter>
    " Command-Shift-F for Ack
    macmenu Window.Toggle\ Full\ Screen\ Mode key=<nop>
    map <D-CR> :set invfu<CR>
    " Start without the toolbar
    set guioptions-=T
endif
