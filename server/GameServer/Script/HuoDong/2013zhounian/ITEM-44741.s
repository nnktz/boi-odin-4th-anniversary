	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013/03/12
	//		Author:???
	//		TaskName:
	//		TaskID:ITEM-44741.s
	//
	//****************************************
	
	//???????
	//??ID:20
	//??:142,176??

	
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
			if $x > 140
				if $x < 144
					if $y > 174
						if $y < 178
							$resule = SubPlayerInfo(-1,"item",44741,1)
							if $resule == 0
								DropMonsterItems(-1,90271)
								return
							endif
						else
							BC("screen","player",-1,"The Cornucopia shows the coordinates (142, 176) in Dwarves' Forest with unbelievable treasure!")
						endif
					else
						BC("screen","player",-1,"The Cornucopia shows the coordinates (142, 176) in Dwarves' Forest with unbelievable treasure!")
					endif
				else
					BC("screen","player",-1,"The Cornucopia shows the coordinates (142, 176) in Dwarves' Forest with unbelievable treasure!")
				endif
			else
				BC("screen","player",-1,"The Cornucopia shows the coordinates (142, 176) in Dwarves' Forest with unbelievable treasure!")
			endif
		endif
		
		
		
	}
			
		
		
		