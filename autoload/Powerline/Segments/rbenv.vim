let g:Powerline#Segments#rbenv#segments = Pl#Segment#Init(['rbenv',
	\ executable('rbenv'),
	\
	\ Pl#Segment#Create('statusline', '%{Powerline#Functions#rbenv#StatusLine()}')
\ ])
