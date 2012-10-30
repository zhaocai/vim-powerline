" Authors:
"   @skwp
"
" This colorscheme is based on Solarized-dark colors, combined
" with Powerline native colors
call Pl#Hi#Allocate({
	\ 'black'          : 16,
	\ 'white'          : 231,
	\
	\ 'darkestgreen'   : 22,
	\ 'darkgreen'      : 28,
	\ 'mediumgreen'    : 70,
	\ 'brightgreen'    : 148,
	\
	\ 'darkestcyan'    : 23,
	\ 'mediumcyan'     : 117,
	\
	\ 'darkestblue'    : 24,
	\ 'darkblue'       : 31,
	\
	\ 'darkestred'     : 52,
	\ 'darkred'        : 88,
	\ 'mediumred'      : 124,
	\ 'brightred'      : 160,
	\ 'brightestred'   : 196,
	\
	\ 'darkestpurple'  : 55,
	\ 'mediumpurple'   : 98,
	\ 'brightpurple'   : 189,
	\
	\ 'brightorange'   : 208,
	\ 'brightestorange': 214,
	\
	\ 'gray0'          : 233,
	\ 'gray1'          : 235,
	\ 'gray2'          : 236,
	\ 'gray3'          : 239,
	\ 'gray4'          : 240,
	\ 'gray5'          : 241,
	\ 'gray6'          : 244,
	\ 'gray7'          : 245,
	\ 'gray8'          : 247,
	\ 'gray9'          : 250,
	\ 'gray10'         : 252,
	\
	\ 'base03'         : [234, 0x002b36],
	\ 'base02'         : [235, 0x073642],
	\ 'base01'         : [240, 0x586e75],
	\ 'base00'         : [241, 0x657b83],
	\ 'base0'          : [244, 0x839496],
	\ 'base1'          : [245, 0x93a1a1],
	\ 'base2'          : [254, 0xeee8d5],
	\ 'base3'          : [230, 0xfdf6e3],
	\ 'yellow'         : [136, 0xb58900],
	\ 'orange'         : [166, 0xcb4b16],
	\ 'red'            : [160, 0xdc322f],
	\ 'magenta'        : [125, 0xd33682],
	\ 'violet'         : [61, 0x6c71c4],
	\ 'blue'           : [33, 0x268bd2],
	\ 'cyan'           : [37, 0x2aa198],
	\ 'green'          : [64, 0x859900],
	\ })

let g:Powerline#Colorschemes#solarized#colorscheme = Pl#Colorscheme#Init([
	\ Pl#Hi#Segments(['SPLIT'], {
		\ 'n': ['base3', 'base03'],
		\ 'N': ['base3', 'base03'],
		\ 'i': ['base3', 'base2'],
		\ }),
	\
	\ Pl#Hi#Segments(['mode_indicator'], {
		\ 'n': ['base2', 'blue', ['bold']],
		\ 'i': ['base2', 'orange', ['bold']],
		\ 'v': ['base3', 'violet', ['bold']],
		\ 'r': ['base3', 'magenta', ['bold']],
		\ 's': ['base3', 'yellow', ['bold']],
		\ }),
	\
	\ Pl#Hi#Segments(['branch', 'scrollpercent', 'raw', 'filesize'], {
		\ 'n': ['gray7', 'gray2'],
		\ 'N': ['base2', 'base02'],
		\ }),
	\
	\ Pl#Hi#Segments(['fileinfo', 'filename', 'vimshell:current_dir'], {
		\ 'n': ['base2', 'base01', ['bold']],
		\ 'N': ['base1', 'base02', ['bold']],
		\ 'i': ['base3', 'base1', ['bold']],
		\ }),
	\
	\ Pl#Hi#Segments(['fileinfo.filepath'], {
		\ 'n': ['base1'],
		\ 'N': ['base1'],
		\ 'i': ['base01'],
		\ }),
	\
	\ Pl#Hi#Segments(['static_str', 'rbenv:statusline', 'rvm:string', 'rvm:statusline', ], {
		\ 'n': ['base3', 'green'],
		\ 'N': ['base02', 'base01'],
		\ 'i': ['base3', 'blue'],
		\ }),
	\
	\ Pl#Hi#Segments(['fileinfo.flags', ], {
		\ 'n': ['brightestorange', ['bold']],
		\ 'N': ['brightestorange'],
		\ 'i': ['red', ['bold']],
		\ }),
	\
	\ Pl#Hi#Segments(['currenttag', 'fileformat', 'fileencoding', 'pwd', 'filetype',  'charcode', ], {
		\ 'n': ['gray5', 'gray2'],
		\ 'i': ['base01', 'base2'],
		\ }),
	\
	\ Pl#Hi#Segments(['currhigroup',  ], {
		\ 'n': ['blue', 'gray2'],
		\ 'i': ['red', 'base2'],
		\ }),
	\
	\ Pl#Hi#Segments(['lineinfo', 'unite:nr_curr_candidates', ], {
		\ 'n': ['base2', 'base1', ['bold']],
		\ 'N': ['base02', 'base00', ['bold']],
		\ 'i': ['base2', 'base00', ['bold']],
		\ }),
	\
	\ Pl#Hi#Segments(['errors'], {
		\ 'n': ['red', 'base03', ['bold']],
		\ 'i': ['red', 'base2', ['bold']],
		\ }),
	\
	\ Pl#Hi#Segments(['lineinfo.line.tot', 'unite:nr_candidates'], {
		\ 'n': ['base3'],
		\ 'N': ['base02'],
		\ 'i': ['base3'],
		\ }),
	\
	\ Pl#Hi#Segments(['paste_indicator', 'ws_marker'], {
		\ 'n': ['base3', 'violet', ['bold']],
		\ }),
	\
	\ Pl#Hi#Segments(['gundo:static_str.name', 'undotree:static_str.name', 'command_t:static_str.name', 'virtualenv:statusline', ], {
		\ 'n': ['base3', 'red', ['bold']],
		\ 'N': ['base02', 'base01', ['bold']],
		\ }),
	\
	\ Pl#Hi#Segments(['gundo:static_str.buffer', 'undotree:static_str.buffer', 'command_t:raw.line'], {
		\ 'n': ['base3', 'base00'],
		\ 'N': ['base0', 'base02'],
		\ }),
	\
	\ Pl#Hi#Segments(['gundo:SPLIT', 'undotree:SPLIT', 'command_t:SPLIT'], {
		\ 'n': ['base3', 'base02'],
		\ 'N': ['base0', 'base03'],
		\ }),
	\
	\ Pl#Hi#Segments(['lustyexplorer:static_str.name', 'minibufexplorer:static_str.name', 'nerdtree:raw.name', 'tagbar:static_str.name', 'tabman:static_str.name', 'voom:static_str.name'], {
		\ 'n': ['base2', 'green', ['bold']],
		\ 'N': ['base02', 'base00', ['bold']],
		\ }),
	\
	\ Pl#Hi#Segments(['lustyexplorer:static_str.buffer', 'tagbar:static_str.buffer', 'vimshell:name', 'vimfiler:buffer', 'unite:buffer'], {
		\ 'n': ['base3', 'base01'],
		\ 'N': ['base02', 'base2'],
		\ }),
	\
	\ Pl#Hi#Segments(['lustyexplorer:SPLIT', 'minibufexplorer:SPLIT', 'nerdtree:SPLIT', 'tagbar:SPLIT'], {
		\ 'n': ['base2', 'base02'],
		\ 'N': ['base2', 'base03'],
		\ }),
	\
	\ Pl#Hi#Segments(['ctrlp:focus', 'ctrlp:byfname'], {
		\ 'n': ['base03', 'base01'],
		\ }),
	\
	\ Pl#Hi#Segments(['ctrlp:prev', 'ctrlp:next', 'ctrlp:pwd'], {
		\ 'n': ['base3', 'base00'],
		\ }),
	\
	\ Pl#Hi#Segments(['ctrlp:item'], {
		\ 'n': ['base3', 'violet', ['bold']],
		\ }),
	\
	\ Pl#Hi#Segments(['ctrlp:marked'], {
		\ 'n': ['base1', 'base01', ['bold']],
		\ }),
	\
	\ Pl#Hi#Segments(['ctrlp:count'], {
		\ 'n': ['base3', 'violet'],
		\ }),
	\
	\ Pl#Hi#Segments(['ctrlp:SPLIT'], {
		\ 'n': ['base3', 'base03'],
		\ }),
	\ ])
