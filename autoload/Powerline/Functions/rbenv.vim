function! Powerline#Functions#rbenv#StatusLine() " {{{
    if !exists('$RBENV_VERSION')
        let $RBENV_VERSION = substitute(
                    \   system('rbenv version 2> /dev/null'),
                    \   '[ \t].*$', '', ''
                    \ )
    endif
    return $RBENV_VERSION
endfunction " }}}
