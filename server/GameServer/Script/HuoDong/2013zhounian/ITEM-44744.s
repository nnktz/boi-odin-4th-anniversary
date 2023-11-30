	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013/03/12
	//		Author:???
	//		TaskName:
	//		TaskID:ITEM-44744.s
	//
	//****************************************
	
	//????
	//??????????
	//??ID:90
	//??:142,263??

	
	function OnUseItem(){
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		$bag_count2 = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif
		
		$map = GetPlayerInfo(-1,"mapid")
		if $map != 90
			BC("screen","player",-1,"The Cornucopia shows somewhere in Nile River West hides unbelievable treasure!")
			return
		endif
		
		$x = GetPlayerInfo(-1,"mapposx")
		$y = GetPlayerInfo(-1,"mapposy")
		if $map == 90
			if $x > 140
				if $x < 144
					if $y > 261
						if $y < 265
							$resule = SubPlayerInfo(-1,"item",44744,1)
							if $resule == 0
								DropMonsterItems(-1,90272)
								return
							endif
						else
							BC("screen","player",-1,"The Cornucopia shows the coordinates (142, 263) in Nile River West with unbelievable treasure!")
						endif
					else
						BC("screen","player",-1,"The Cornucopia shows the coordinates (142, 263) in Nile River West with unbelievable treasure!")
					endif
				else
					BC("screen","player",-1,"The Cornucopia shows the coordinates (142, 263) in Nile River West with unbelievable treasure!")
				endif
			else
				BC("screen","player",-1,"The Cornucopia shows the coordinates (142, 263) in Nile River West with unbelievable treasure!")
			endif
		endif
		
		
		
	}
			
		
		
		