	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013/03/12
	//		Author:???
	//		TaskName:
	//		TaskID:ITEM-44725.s
	//
	//****************************************
	
	//??????????
	//??ID:86
	//??:163,65??

	
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
			if $x > 161
				if $x < 165
					if $y > 63
						if $y < 67
							$resule = SubPlayerInfo(-1,"item",44725,1)
							if $resule == 0
								DropMonsterItems(-1,90271)
								return
							endif
						else
							BC("screen","player",-1,"The Cornucopia shows the coordinates (163, 65) in the Sea of Atlantis with unbelievable treasure.")
						endif
					else
						BC("screen","player",-1,"The Cornucopia shows the coordinates (163, 65) in the Sea of Atlantis with unbelievable treasure.")
					endif
				else
					BC("screen","player",-1,"The Cornucopia shows the coordinates (163, 65) in the Sea of Atlantis with unbelievable treasure.")
				endif
			else
				BC("screen","player",-1,"The Cornucopia shows the coordinates (163, 65) in the Sea of Atlantis with unbelievable treasure.")
			endif
		endif
		
		
		
	}
			
		
		
		