// ?? ?? hotday 52153 ???

	function OnUseItem(){

		$nullitem = GetPlayerInfo( -1, "nullitem", 0 )

		$nullitem2 = GetPlayerInfo( -1, "nullitem", 1 )
		$lv = GetPlayerInfo( -1, "level" )
		#name = GetPlayerInfo(-1,"name")

		$a1 = $lv * $lv
		$a2 = $a1 * 10
		$b1 = $lv * 1200
		$c1 = $a2 + $b1

		$exp1 = $c1 * 2

		$a = $lv * $lv
		$a = $a * $lv
		$a = $a * 186
		$b = $lv * $lv
		$b = $b * 24421
		$c = $a - $b
		$a = 1075000 * $lv
		$c = $c + $a
		$c = $c - 15760000

		$exp2 = $c * 2

		$gift1 = 60057
		$gift2 = 63525
		$gift3 = 64402
		$gift4 = 63710
		$gift5 = 59101
		$gift6 = 59104
		$gift7 = 60510
		$gift8 = 20272
		$gift9 = 20273
		$gift10 = 52131
		$gift11 = 52130
		$gift12 = 64246
		$gift13 = 64247
		$gift14 = 2336
		$gift15 = 2360


		//??????????
		if $nullitem < 1
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif

		//????????????
		if $nullitem2 < 1
			BC( "screen", "player", -1, "You don't have enough room in your materials bag!" )
			return
		endif

		//???????
		$del = SubPlayerInfo( -1, "item", 52154, 1 )

		//??????????
		if $del == 0


		if $lv < 40

			AddPlayerInfo( -1 , "exp" , $exp1 )
			$n1 = RandomNumber(1, 5)

			if $n1 == 1
				AddPlayerInfo( -1, "item", 63525, 1 )
			endif
			if $n1 == 2
				AddPlayerInfo( -1, "item", 64402, 1 )
			endif
			if $n1 == 3
				AddPlayerInfo( -1, "item", 59218, 1 )
			endif
			if $n1 == 4
				AddPlayerInfo( -1, "item", 59080, 1 )
			endif
			if $n1 == 5
				AddPlayerInfo( -1, "item", 60510, 1 )
			endif

			return
		endif

			AddPlayerInfo( -1 , "exp" , $exp2 )

			$no = RandomNumber(1, 10000)

			if $no <= 800
				AddPlayerInfo( -1, "item", $gift1, 1 )
			endif

			if $no > 800
				if $no <= 1600
					AddPlayerInfo( -1, "item", $gift2, 1 )
				endif
			endif

			if $no > 1600
				if $no <= 2400
					AddPlayerInfo( -1, "item", $gift3, 1 )
				endif
			endif

			if $no > 2400
				if $no <= 3200
					AddPlayerInfo( -1, "item", $gift4, 1 )
				endif
			endif

			if $no > 3200
				if $no <= 4000
					AddPlayerInfo( -1, "item", $gift5, 1 )
				endif
			endif

			if $no > 4000
				if $no <= 4800
					AddPlayerInfo( -1, "item", $gift6, 1 )
				endif
			endif

			if $no > 4800
				if $no <= 5600
					AddPlayerInfo( -1, "item", $gift7, 1 )
				endif
			endif

			if $no > 5600
				if $no <= 6400
					AddPlayerInfo( -1, "item", $gift8, 1 )
				endif
			endif

			if $no > 6400
				if $no <= 7100
					AddPlayerInfo( -1, "item", $gift9, 1 )
				endif
			endif

			if $no > 7100
				if $no <= 7800
					AddPlayerInfo( -1, "item", $gift10, 1 )
				endif
			endif

			if $no > 7800
				if $no <= 8500
					AddPlayerInfo( -1, "item", $gift11, 1 )
				endif
			endif

			if $no > 8500
				if $no <= 9200
					AddPlayerInfo( -1, "item", $gift12, 1 )
				endif
			endif

			if $no > 9200
				if $no <= 9890
					AddPlayerInfo( -1, "item", $gift13, 1 )
				endif
			endif

			if $no > 9890
				if $no <= 9990
					AddPlayerInfo( -1, "item", $gift14, 1 )
					BC( "scrollbar", "server", -1, #name," opened a Small Gift, and was lucky enough to find a Hephaestus' Hammer +6." )

				endif
			endif

			if $no > 9990
					AddPlayerInfo( -1, "item", $gift15, 1 )
					BC( "scrollbar", "server", -1, #name," opened a Large Gift, and was lucky enough to find a Hephaestus' Hammer +10." )
			endif

		endif

	}
