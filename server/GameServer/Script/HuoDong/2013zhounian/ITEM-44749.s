	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013/03/12
	//		Author:???
	//		TaskName:
	//		TaskID:ITEM-44749.s
	//
	//****************************************
	
	//????
	//??????????
	//??ID:106
	//??:61,110??

	
	function OnUseItem(){
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		$bag_count2 = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif
		
		$map = GetPlayerInfo(-1,"mapid")
		if $map != 106
			BC("screen","player",-1,"The Cornucopia shows somewhere in Easter Island South hides unbelievable treasure!")
			return
		endif
		
		$x = GetPlayerInfo(-1,"mapposx")
		$y = GetPlayerInfo(-1,"mapposy")
		if $map == 106
			if $x > 59
				if $x < 63
					if $y > 108
						if $y < 112
							$resule = SubPlayerInfo(-1,"item",44749,1)
							if $resule == 0
								DropMonsterItems(-1,90272)
								return
							endif
						else
							BC("screen","player",-1,"The Cornucopia shows the coordinates (61, 110) in Easter Island South with unbelievable treasure!")
						endif
					else
						BC("screen","player",-1,"The Cornucopia shows the coordinates (61, 110) in Easter Island South with unbelievable treasure!")
					endif
				else
					BC("screen","player",-1,"The Cornucopia shows the coordinates (61, 110) in Easter Island South with unbelievable treasure!")
				endif
			else
				BC("screen","player",-1,"The Cornucopia shows the coordinates (61, 110) in Easter Island South with unbelievable treasure!")
			endif
		endif
		
		
		
	}
			
		
		
		