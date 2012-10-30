function! Powerline#Functions#unite#GetNrCurrCandidates() " {{{
        return len(filter(
                    \ copy(unite#get_current_unite().current_candidates),
                    \ "has_key(v:val, 'is_dummy') ? v:val['is_dummy'] == 0 : 1"
                \ ))
endfunction " }}}
function! Powerline#Functions#unite#GetNrCandidates() " {{{
        return len(filter(
                \ copy(unite#get_current_unite().candidates),
                \ "has_key(v:val, 'is_dummy') ? v:val['is_dummy'] == 0 : 1"
            \ ))
endfunction " }}}
function! Powerline#Functions#unite#StatusLine() " {{{
    return join(filter(unite#loaded_source_names_with_args(), "
                \ match(v:val, '(\\d\\+\\/\\d\\+)$') != -1
                \ "), ', ')
endfunction " }}}
function! Powerline#Functions#unite#GetBufName() " {{{
        return unite#get_current_unite().buffer_name
endfunction " }}}


