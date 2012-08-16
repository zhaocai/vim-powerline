let g:Powerline#Segments#unite#segments = Pl#Segment#Init(['unite',
	\ (exists('g:loaded_unite') && g:loaded_unite == 1),
	\
	\ Pl#Segment#Create('nr_curr_candidates', '%{Powerline#Functions#unite#GetNrCurrCandidates()}'),
	\ Pl#Segment#Create('nr_candidates', '%{Powerline#Functions#unite#GetNrCandidates()}'),
	\ Pl#Segment#Create('buffer', '%{Powerline#Functions#unite#GetBufName()}'),
\ ])
