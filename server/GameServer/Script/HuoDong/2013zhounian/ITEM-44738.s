	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013/03/12
	//		Author:???
	//		TaskName:
	//		TaskID:ITEM-44738.s
	//
	//****************************************
	
	//????????
	//??ID:13
	//??:265,146??

	
	function OnUseItem(){
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		$bag_count2 = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif
		
		$map = GetPlayerInfo(-1,"mapid")
		if $map != 13
			BC("screen","player",-1,"The Cornucopia shows somewhere in King's Gorge hides unbelievable treasure!")
			return
		endif
		
		$x = GetPlayerInfo(-1,"mapposx")
		$y = GetPlayerInfo(-1,"mapposy")
		if $map == 13
			if $x > 263
				if $x < 267
					if $y > 144
						if $y < 148
							$resule = SubPlayerInfo(-1,"item",44738,1)
							if $resule == 0
								DropMonsterItems(-1,90271)
								return
							endif
						else
							BC("screen","player",-1,"The Cornucopia shows the coordinates (265, 146) in King's Gorge with unbelievable treasure!")
						endif
					else
						BC("screen","player",-1,"The Cornucopia shows the coordinates (265, 146) in King's Gorge with unbelievable treasure!")
					endif
				else
					BC("screen","player",-1,"The Cornucopia shows the coordinates (265, 146) in King's Gorge with unbelievable treasure!")
				endif
			else
				BC("screen","player",-1,"The Cornucopia shows the coordinates (265, 146) in King's Gorge with unbelievable treasure!")
			endif
		endif
		
		
		
	}
			
		
		
		