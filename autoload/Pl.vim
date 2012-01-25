" Powerline - The ultimate statusline utility
"
" Author: Kim Silkebækken <kim.silkebaekken+vim@gmail.com>
" Source repository: https://github.com/Lokaltog/vim-powerline

" Script resources {{{
	let s:symbols = {
		\ 'compatible': {
			\   'dividers': [ '', [0x2502], '', [0x2502] ]
			\ , 'symbols' : {
				\   'branch': 'BR:'
				\ , 'ro'    : 'RO'
				\ , 'ft'    : 'FT'
				\ , 'line'  : 'LN'
			\ }
		\ },
		\ 'unicode': {
			\   'dividers': [ [0x25b6], [0x276f], [0x25c0], [0x276e]  ]
			\ , 'symbols' : {
				\   'branch'  : [0x26a1]
				\ , 'ro'      : [0x2613]
				\ , 'ft'      : [0x2726]
				\ , 'line'    : [0x279C]
			\ },
		\ },
		\ 'fancy': {
			\   'dividers': [ [0x2b80], [0x2b81], [0x2b82], [0x2b83] ]
			\ , 'symbols' : {
				\   'branch'  : [0x2b60]
				\ , 'ro'      : [0x2b64]
				\ , 'ft'      : [0x2b62, 0x2b63]
				\ , 'line'    : [0x2b61]
			\ }
		\ }
	\ }

	let s:EMPTY = ['', 0]
	let s:HI_FALLBACK = { 'cterm': 0, 'gui': 0x000000 }
	let s:MODES = { 'current': '', 'insert': '', 'noncurrent': '' }

	let s:LEFT_SIDE = 0
	let s:RIGHT_SIDE = 2

	let s:HARD_DIVIDER = 0
	let s:SOFT_DIVIDER = 1

	" Cache revision, this must be incremented whenever the cache format is changed
	let s:CACHE_REVISION = 1
" }}}
" Script variables {{{
	let g:Pl#OLD_STL = ''
	let g:Pl#THEME = []
	let g:Pl#HL = []

	" Cache revision, this must be incremented whenever the cache format is changed
	let s:CACHE_REVISION = 2
" }}}
" Script initialization {{{
	function! Pl#LoadCache() " {{{
		if filereadable(g:Powerline_cache_file) && g:Powerline_cache_enabled
			exec 'source' escape(g:Powerline_cache_file, ' \')

			if ! exists('g:Powerline_cache_revision') || g:Powerline_cache_revision != s:CACHE_REVISION
				" Cache revision differs, cache is invalid
				unlet! g:Powerline_cache_revision

				return 0
			endif

			" Create highlighting groups
			for hi_cmd in g:Pl#HL
				exec hi_cmd
			endfor

			return 1
		endif

		return 0
	endfunction " }}}
	function! Pl#ClearCache() " {{{
		if filereadable(g:Powerline_cache_file)
			" Delete the cache file
			call delete(g:Powerline_cache_file)
		endif

		echo 'Powerline cache cleared. Please restart vim for the changes to take effect.'
	endfunction " }}}
	function! Pl#Load() " {{{
		if empty(g:Pl#OLD_STL)
			" Store old statusline
			let g:Pl#OLD_STL = &statusline
		endif

		if ! Pl#LoadCache()
			try
				" Autoload the theme dict first
				let raw_theme = g:Powerline#Themes#{g:Powerline_theme}#theme
			catch
				echoe 'Invalid Powerline theme! Please check your theme and colorscheme settings.'

				return
			endtry

			" Create list with parsed statuslines
			for buffer_statusline in raw_theme
				call add(g:Pl#THEME, {
					\ 'matches': buffer_statusline.matches,
					\ 'mode_statuslines': Pl#Parser#GetStatusline(buffer_statusline.segments)
					\ })
			endfor

			if ! g:Powerline_cache_enabled
				" Don't cache anything if caching is disabled or cache file isn't writeable
				return
			endif

			" Prepare commands and statuslines for caching
			let cache = [
				\ 'let g:Powerline_cache_revision = '. string(s:CACHE_REVISION),
				\ 'let g:Pl#HL = '. string(g:Pl#HL),
				\ 'let g:Pl#THEME  = '. string(g:Pl#THEME),
			\ ]

			call writefile(cache, g:Powerline_cache_file)
		endif
	endfunction " }}}
" }}}
" Statusline updater {{{
	function! Pl#Statusline(statuslines, current) " {{{
		let mode = mode()

		if ! a:current
			let mode = 'N' " Normal (non-current)
		elseif mode =~# '\v(v|V|)'
			let mode = 'v' " Visual mode
		elseif mode =~# '\v(s|S|)'
			let mode = 's' " Select mode
		elseif mode =~# '\vi'
			let mode = 'i' " Insert mode
		elseif mode =~# '\v(R|Rv)'
			let mode = 'r' " Replace mode
		else
			" Fallback to normal mode
			let mode = 'n' " Normal (current)
		endif

		return a:statuslines[mode]
	endfunction " }}}
	function! Pl#UpdateStatusline(current) " {{{
		if empty(g:Pl#THEME)
			" Load statuslines if they aren't loaded yet
			call Pl#Load()
		endif

		for buffer_statusline in g:Pl#THEME
			if Pl#Match#Validate(buffer_statusline.matches)
				" Update window-local statusline
				let &l:statusline = '%!Pl#Statusline('. string(buffer_statusline.mode_statuslines) .','. a:current .')'
			endif
		endfor
	endfunction " }}}
" }}}
