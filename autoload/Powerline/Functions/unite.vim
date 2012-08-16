function! Powerline#Functions#unite#GetNrCurrCandidates() " {{{
        return len(unite#get_current_unite().current_candidates)
endfunction " }}}
function! Powerline#Functions#unite#GetNrCandidates() " {{{
        let unite = unite#get_current_unite()
        return len(unite.candidates)
endfunction " }}}
function! Powerline#Functions#unite#GetBufName() " {{{
        return unite#get_current_unite().buffer_name
endfunction " }}}
