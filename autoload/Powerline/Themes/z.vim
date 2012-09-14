let g:Powerline#Themes#z#theme = Pl#Theme#Create(
	\ Pl#Theme#Buffer(''
		\ , 'virtualenv:statusline'
		\ , 'mode_indicator'
		\ , 'fugitive:branch'
		\ , 'fileinfo'
		\ , 'syntastic:errors'
		\ , Pl#Segment#Truncate()
                \ , 'tagbar:currenttag'
		\ , 'currhigroup'
		\ , Pl#Segment#Split()
		\ , 'fileformat'
		\ , 'fileencoding'
		\ , 'filetype'
		\ , 'scrollpercent'
		\ , 'lineinfo'
	\ ),
	\
	\ Pl#Theme#Buffer('unite'
		\ , 'mode_indicator'
		\ , 'unite:buffer'
		\ , Pl#Segment#Truncate()
		\ , 'unite:nr_curr_candidates'
		\ , Pl#Segment#Split()
		\ , 'lineinfo'
	\ ),
	\
	\ Pl#Theme#Buffer('vimshell'
		\ , 'mode_indicator'
		\ , 'vimshell:buffer'
                \ , 'vimshell:current_dir'
		\ , Pl#Segment#Truncate()
		\ , Pl#Segment#Split()
		\ , 'lineinfo'
	\ ),
	\
	\ Pl#Theme#Buffer('gundo', Pl#Match#Any('gundo_tree')
		\ , ['static_str.name', 'Gundo']
		\ , ['static_str.buffer', 'Undo tree']
		\ , Pl#Segment#Truncate()
		\ , Pl#Segment#Split()
	\ ),
	\
	\ Pl#Theme#Buffer('gundo', Pl#Match#Any('gundo_preview')
		\ , ['static_str.name', 'Gundo']
		\ , ['static_str.buffer', 'Diff preview']
		\ , Pl#Segment#Truncate()
		\ , Pl#Segment#Split()
	\ ),
	\
	\ Pl#Theme#Buffer('undotree', Pl#Match#Any('undotree')
		\ , ['static_str.name', 'undotree']
		\ , ['static_str.buffer', 'Undo tree']
		\ , Pl#Segment#Truncate()
		\ , Pl#Segment#Split()
	\ ),
	\
	\ Pl#Theme#Buffer('undotree', Pl#Match#Any('undotree_preview')
		\ , ['static_str.name', 'undotree']
		\ , ['static_str.buffer', 'Diff preview']
		\ , Pl#Segment#Truncate()
		\ , Pl#Segment#Split()
	\ ),
	\
	\ Pl#Theme#Buffer('bt_help'
		\ , ['static_str.name', 'Help']
		\ , 'filename'
		\ , Pl#Segment#Truncate()
                \ , 'currhigroup'
		\ , Pl#Segment#Split()
		\ , 'scrollpercent'
	\ ),
	\
	\ Pl#Theme#Buffer('ft_vimpager'
		\ , ['static_str.name', 'Pager']
		\ , 'filename'
		\ , Pl#Segment#Truncate()
		\ , Pl#Segment#Split()
		\ , 'scrollpercent'
	\ ),
	\
	\ Pl#Theme#Buffer('ft_man'
		\ , ['static_str.name', 'Man page']
		\ , 'filename'
		\ , Pl#Segment#Truncate()
		\ , Pl#Segment#Split()
		\ , 'scrollpercent'
	\ ),
	\
	\ Pl#Theme#Buffer('ft_qf'
		\ , ['static_str.name', 'Quickfix']
		\ , Pl#Segment#Truncate()
		\ , Pl#Segment#Split()
	\ ),
	\
	\ Pl#Theme#Buffer('tagbar'
		\ , ['static_str.name', 'Tagbar']
		\ , ['static_str.buffer', 'Tree']
		\ , Pl#Segment#Truncate()
		\ , Pl#Segment#Split()
	\ ),
	\
	\ Pl#Theme#Buffer('voom'
		\ , ['static_str.name', 'VOoM']
		\ , ['static_str.buffer', 'Tree']
		\ , Pl#Segment#Truncate()
		\ , Pl#Segment#Split()
	\ ),
	\
	\ Pl#Theme#Buffer('tabman'
		\ , ['static_str.name', 'Tabman']
		\ , ['static_str.buffer', 'Tab']
		\ , Pl#Segment#Truncate()
		\ , Pl#Segment#Split()
	\ ),
	\
	\ Pl#Theme#Buffer('vimfiler'
		\ , ['static_str.name', 'Vimfiler']
		\ , 'vimfiler:buffer'
		\ , Pl#Segment#Truncate()
		\ , Pl#Segment#Split()
	\ ),
\ )
