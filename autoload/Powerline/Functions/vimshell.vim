function! Powerline#Functions#vimshell#GetCurrentDir() " {{{
        if &ft == 'vimshell' && exists('b:vimshell')
                return b:vimshell.current_dir
        else
                return ''
        endif
endfunction " }}}
function! Powerline#Functions#vimshell#GetName() " {{{
        if &ft == 'vimshell'
                let context = vimshell#get_context()
                if has_key(context, 'buffer_name')
                        return context.buffer_name
                else
                        return ''
                endif
        elseif &ft =~ '\v(int-\w+|term-\w+)'
                return &ft
        else
                return ''
        endif
endfunction " }}}
