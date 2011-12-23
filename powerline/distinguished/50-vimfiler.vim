call Pl#Statusline(
	\ Pl#Match('&ft', 'vimfiler'),
	\
	\ Pl#Segment(' %{"Vimfiler"} ',
		\ Pl#HiCurrent(   Pl#FG(231), Pl#BG( 70), Pl#Attr('bold')),
		\ Pl#HiInsert(    Pl#FG(231), Pl#BG( 31), Pl#Attr('bold')),
		\ Pl#HiNonCurrent(Pl#FG(255), Pl#BG( 92), Pl#Attr('bold'))
		\ ),
	\
	\ Pl#Segment('%< %{Stl_GetVimFiler()}',
		\ Pl#HiCurrent(   Pl#FG(148), Pl#BG( 22)),
		\ Pl#HiInsert(    Pl#FG(117), Pl#BG( 24)),
		\ Pl#HiNonCurrent(Pl#FG(255), Pl#BG(133))
		\ ),
	\
	\ Pl#Split(
		\ Pl#HiCurrent(   Pl#BG( 22)),
		\ Pl#HiInsert(    Pl#BG( 24)),
		\ Pl#HiNonCurrent(Pl#BG(133))
		\ )
	\ )
