	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013/03/12
	//		Author:???
	//		TaskName:
	//		TaskID:ITEM-44731.s
	//
	//****************************************
	
	//??????
	//??ID:1
	//??:60,143??

	
	function OnUseItem(){
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		$bag_count2 = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif
		
		$map = GetPlayerInfo(-1,"mapid")
		if $map != 1
			BC("screen","player",-1,"The Cornucopia map shows somewhere in Atlantic Ocean hides unbelievable treasure!")
			return
		endif
		
		$x = GetPlayerInfo(-1,"mapposx")
		$y = GetPlayerInfo(-1,"mapposy")
		if $map == 1
			if $x > 58
				if $x < 62
					if $y > 141
						if $y < 145
							$resule = SubPlayerInfo(-1,"item",44731,1)
							if $resule == 0
								DropMonsterItems(-1,90271)
								return
							endif
						else
							BC("screen","player",-1,"The Cornucopia shows the coordinates (60, 143) in Atlantic Ocean with unbelievable treasure!")
						endif
					else
						BC("screen","player",-1,"The Cornucopia shows the coordinates (60, 143) in Atlantic Ocean with unbelievable treasure!")
					endif
				else
					BC("screen","player",-1,"The Cornucopia shows the coordinates (60, 143) in Atlantic Ocean with unbelievable treasure!")
				endif
			else
				BC("screen","player",-1,"The Cornucopia shows the coordinates (60, 143) in Atlantic Ocean with unbelievable treasure!")
			endif
		endif
		
		
		
	}
			
		
		
		