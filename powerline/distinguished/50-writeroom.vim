call Pl#Statusline(
	\ Pl#Match('exists("b:pl_writeroom")', '1'),
	\
	\ Pl#Segment(' %{Stl_GetWordCount()} words ',
		\ Pl#HiCurrent(   Pl#FG(250), Pl#BG(240)),
		\ Pl#HiInsert(    Pl#FG(250), Pl#BG(240)),
		\ Pl#HiNonCurrent(Pl#FG(239), Pl#BG(235))
		\ ),
	\
	\ Pl#Split(
		\ Pl#HiCurrent(   Pl#BG(236)),
		\ Pl#HiInsert(    Pl#BG(236)),
		\ Pl#HiNonCurrent(Pl#BG(233))
		\ )
	\ )

