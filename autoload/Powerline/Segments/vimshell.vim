let g:Powerline#Segments#vimshell#segments = Pl#Segment#Init(['vimshell',
	\ (exists('g:loaded_vimshell') && g:loaded_vimshell == 1),
	\
	\ Pl#Segment#Create('current_dir', '%{Powerline#Functions#vimshell#GetCurrentDir()}'),
	\ Pl#Segment#Create('buffer', '%{Powerline#Functions#vimshell#GetBufName()}'),
\ ])
