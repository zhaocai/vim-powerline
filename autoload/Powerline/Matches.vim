let g:Powerline#Matches#matches = {
	\ 'command_t'       : Pl#Match#Add('bufname("%")', 'GoToFile'),
	\ 'bt_help'         : Pl#Match#Add('&bt'         , 'help'),
	\ 'ft_man'          : Pl#Match#Add('&ft'         , 'man'),
	\ 'ft_qf'           : Pl#Match#Add('&ft'         , 'qf'),
	\ 'ft_vimpager'     : Pl#Match#Add('&ft'         , 'vimpager'),
	\ 'gundo_preview'   : Pl#Match#Add('bufname("%")', '__Gundo_Preview__'),
	\ 'gundo_tree'      : Pl#Match#Add('bufname("%")', '__Gundo__'),
	\ 'undotree'        : Pl#Match#Add('&ft'         , 'undotree'),
	\ 'undotree_preview': Pl#Match#Add('bufname("%")', '^diffpanel_'),
	\ 'lustyexplorer'   : Pl#Match#Add('bufname("%")', '\[LustyExplorer-Buffers\]'),
	\ 'minibufexplorer' : Pl#Match#Add('bufname("%")', '\-MiniBufExplorer\-'),
	\ 'tagbar'          : Pl#Match#Add('&ft'         , 'tagbar'),
	\ 'nerdtree'        : Pl#Match#Add('&ft'         , 'nerdtree'),
	\ 'vimshell'        : Pl#Match#Add('&ft'         , '(vimshell|int-\w+|term-\w+)'),
	\ 'vimfiler'        : Pl#Match#Add('&ft'         , 'vimfiler'),
	\ 'voom'            : Pl#Match#Add('&ft'         , 'voomtree'),
	\ 'tabman'          : Pl#Match#Add('&ft'         , 'tabman'),
	\ 'unite'           : Pl#Match#Add('&ft'         , 'unite'),
\ }
