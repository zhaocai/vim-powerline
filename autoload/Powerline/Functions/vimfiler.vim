function! Powerline#Functions#vimfiler#GetName() " {{{
        try
            let buffer_name = vimfiler#get_context().buffer_name
        catch /E716:/
            let buffer_name = 'vimfiler'
        endtry
	return substitute(buffer_name,
                    \'\V*vimfiler* - ', '', '')

endfunction " }}}
