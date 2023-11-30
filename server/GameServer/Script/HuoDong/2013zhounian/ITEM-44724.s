	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013/03/12
	//		Author:???
	//		TaskName:
	//		TaskID:ITEM-44724.s
	//
	//****************************************
	
	//??????????
	//??ID:86
	//??:138,244??

	
	function OnUseItem(){
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		$bag_count2 = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif
		
		$map = GetPlayerInfo(-1,"mapid")
		if $map != 86
			BC("screen","player",-1,"The Cornucopia shows somewhere in the Sea of Atlantis hides unbelievable treasure!")
			return
		endif
		
		$x = GetPlayerInfo(-1,"mapposx")
		$y = GetPlayerInfo(-1,"mapposy")
		if $map == 86
			if $x > 136
				if $x < 140
					if $y > 242
						if $y < 246
							$resule = SubPlayerInfo(-1,"item",44724,1)
							if $resule == 0
								DropMonsterItems(-1,90271)
								return
							endif
						else
							BC("screen","player",-1,"The Cornucopia shows the coordinates (138, 244) in the Sea of Atlantis with unbelievable treasure.")
						endif
					else
						BC("screen","player",-1,"The Cornucopia shows the coordinates (138, 244) in the Sea of Atlantis with unbelievable treasure.")
					endif
				else
					BC("screen","player",-1,"The Cornucopia shows the coordinates (138, 244) in the Sea of Atlantis with unbelievable treasure.")
				endif
			else
				BC("screen","player",-1,"The Cornucopia shows the coordinates (138, 244) in the Sea of Atlantis with unbelievable treasure.")
			endif
		endif
		
		
		
	}
			
		
		
		