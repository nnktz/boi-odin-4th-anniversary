	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013/03/12
	//		Author:???
	//		TaskName:
	//		TaskID:ITEM-44742.s
	//
	//****************************************
	
	//???????
	//??ID:20
	//??:228,163??

	
	function OnUseItem(){
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		$bag_count2 = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif
		
		$map = GetPlayerInfo(-1,"mapid")
		if $map != 20
			BC("screen","player",-1,"The Cornucopia shows somewhere in Dwarves' Forest hides unbelievable treasure!")
			return
		endif
		
		$x = GetPlayerInfo(-1,"mapposx")
		$y = GetPlayerInfo(-1,"mapposy")
		if $map == 20
			if $x > 226
				if $x < 230
					if $y > 161
						if $y < 165
							$resule = SubPlayerInfo(-1,"item",44742,1)
							if $resule == 0
								DropMonsterItems(-1,90271)
								return
							endif
						else
							BC("screen","player",-1,"The Cornucopia shows the coordinates (228, 163) in Dwarves' Forest with unbelievable treasure!")
						endif
					else
						BC("screen","player",-1,"The Cornucopia shows the coordinates (228, 163) in Dwarves' Forest with unbelievable treasure!")
					endif
				else
					BC("screen","player",-1,"The Cornucopia shows the coordinates (228, 163) in Dwarves' Forest with unbelievable treasure!")
				endif
			else
				BC("screen","player",-1,"The Cornucopia shows the coordinates (228, 163) in Dwarves' Forest with unbelievable treasure!")
			endif
		endif
		
		
		
	}
			
		
		
		