	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013/03/12
	//		Author:???
	//		TaskName:
	//		TaskID:ITEM-44736.s
	//
	//****************************************
	
	//????????
	//??ID:7
	//??:254,275??

	
	function OnUseItem(){
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		$bag_count2 = GetPlayerInfo( -1, "nullitem", 1 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif
		
		$map = GetPlayerInfo(-1,"mapid")
		if $map != 7
			BC("screen","player",-1,"The Cornucopia shows somewhere in the Bermuda Islands hides unbelievable treasure!")
			return
		endif
		
		$x = GetPlayerInfo(-1,"mapposx")
		$y = GetPlayerInfo(-1,"mapposy")
		if $map == 7
			if $x > 252
				if $x < 277
					if $y > 273
						if $y < 277
							$resule = SubPlayerInfo(-1,"item",44736,1)
							if $resule == 0
								DropMonsterItems(-1,90271)
								return
							endif
						else
							BC("screen","player",-1,"The Cornucopia shows the coordinates (254, 275) in Bermuda Islands with unbelievable treasure!")
						endif
					else
						BC("screen","player",-1,"The Cornucopia shows the coordinates (254, 275) in Bermuda Islands with unbelievable treasure!")
					endif
				else
					BC("screen","player",-1,"The Cornucopia shows the coordinates (254, 275) in Bermuda Islands with unbelievable treasure!")
				endif
			else
				BC("screen","player",-1,"The Cornucopia shows the coordinates (254, 275) in Bermuda Islands with unbelievable treasure!")
			endif
		endif
		
		
		
	}
			
		
		
		