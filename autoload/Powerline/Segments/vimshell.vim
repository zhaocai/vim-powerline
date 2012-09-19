let g:Powerline#Segments#vimshell#segments = Pl#Segment#Init(['vimshell',
	\ (exists('g:loaded_vimshell') && g:loaded_vimshell == 1),
	\
	\ Pl#Segment#Create('name', '%{Powerline#Functions#vimshell#GetName()}'),
	\ Pl#Segment#Create('current_dir', '%{Powerline#Functions#vimshell#GetCurrentDir()}'),
\ ])
