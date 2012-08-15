let g:Powerline#Segments#vimfiler#segments = Pl#Segment#Init(['vimfiler',
	\ (exists('g:loaded_vimfiler') && g:loaded_vimfiler == 1),
	\
	\ Pl#Segment#Create('name', '%{Powerline#Functions#vimfiler#GetName()}')
\ ])
