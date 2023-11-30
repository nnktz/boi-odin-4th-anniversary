	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013/03/12
	//		Author:???
	//		TaskName:
	//		TaskID:ITEM-44752.s
	//
	//****************************************
	
	//????
	//?????????
	//??ID:88
	//??:55,140??

	
	function OnUseItem(){
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		$bag_count2 = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif
		
		$map = GetPlayerInfo(-1,"mapid")
		if $map != 88
			BC("screen","player",-1,"The Cornucopia shows somewhere in Angkor Jungle hides unbelievable treasure!")
			return
		endif
		
		$x = GetPlayerInfo(-1,"mapposx")
		$y = GetPlayerInfo(-1,"mapposy")
		if $map == 88
			if $x > 53
				if $x < 57
					if $y > 138
						if $y < 142
							$resule = SubPlayerInfo(-1,"item",44752,1)
							if $resule == 0
								DropMonsterItems(-1,90272)
								return
							endif
						else
							BC("screen","player",-1,"The Cornucopia shows the coordinates (55, 140) in Angkor Jungle with unbelievable treasure!")
						endif
					else
						BC("screen","player",-1,"The Cornucopia shows the coordinates (55, 140) in Angkor Jungle with unbelievable treasure!")
					endif
				else
					BC("screen","player",-1,"The Cornucopia shows the coordinates (55, 140) in Angkor Jungle with unbelievable treasure!")
				endif
			else
				BC("screen","player",-1,"The Cornucopia shows the coordinates (55, 140) in Angkor Jungle with unbelievable treasure!")
			endif
		endif
		
		
		
	}
			
		
		
		