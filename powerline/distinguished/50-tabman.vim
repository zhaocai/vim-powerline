call Pl#Statusline(
	\ Pl#Match('&ft', 'tabman'),
	\
	\ Pl#Segment(' %{"TabMan"} ',
		\ Pl#HiCurrent(   Pl#FG(247), Pl#BG(240), Pl#Attr('bold')),
		\ Pl#HiInsert(    Pl#FG(117), Pl#BG( 31), Pl#Attr('bold')),
		\ Pl#HiNonCurrent(Pl#FG(244), Pl#BG(234), Pl#Attr('bold'))
		\ ),
	\
	\ Pl#Segment('%< %{tabpagenr()}',
		\ Pl#HiCurrent(   Pl#FG( 40), Pl#BG(240), Pl#Attr('bold')),
		\ Pl#HiInsert(    Pl#FG(231), Pl#BG( 31), Pl#Attr('bold')),
		\ Pl#HiNonCurrent(Pl#FG(162), Pl#BG(234), Pl#Attr('bold'))
		\ ),
	\
	\ Pl#Split(
		\ Pl#HiCurrent(   Pl#BG(236)),
		\ Pl#HiInsert(    Pl#BG( 24)),
		\ Pl#HiNonCurrent(Pl#BG(234))
		\ ),
	\ )
