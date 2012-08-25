function! Powerline#Functions#ft_man#GetName() " {{{
        let header_line = 1
        while getline(header_line) =~ '^\s*$'
            let header_line += 1
        endwhile

        let header_pattern = '\v^([a-zA-Z_\.\-]+)\((\d+)\)'
	let matches = matchlist(getline(header_line), header_pattern)

	if ! len(matches)
		return 'n/a'
	endif

	let file = tolower(matches[1])
	let num = matches[2]

	return file
endfunction " }}}
