function! Powerline#Functions#vimshell#GetCurrentDir() " {{{
        if exists('b:vimshell')
                return b:vimshell.current_dir
        else
                return ''
        endif
endfunction " }}}
function! Powerline#Functions#vimshell#GetBufName() " {{{
        let context = vimshell#get_context()
        if has_key(context, 'buffer_name')
                return context.buffer_name
        else
                return ''
        endif
endfunction " }}}
