	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/06/05
	//		Author:???
	//		TaskName:SY-Item-63389.s
	//		TaskID:???????
	//
	//****************************************
	
	function OnUseItem(){		
		$Item = GetPlayerInfo( -1, "item", 63389 )
		if $Item < 1
			return
		endif
		
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		$map = GetPlayerInfo( -1, "mapid" )
		if $map < 26621
			BC( "screen", "player", -1, "Can only dig in the Pyramid." )
			return
		endif
		if $map > 26626
			BC( "screen", "player", -1, "Can only dig in the Pyramid." )
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 63389, 1 )
		if $SubItem != 0
			return
		endif
		
		$ServerVar = GetServerVar( 98 )
		$shenyusuipian = GetServerVar( 96 )
		
		
		$Random = RandomNumber( 1, 700 )
			if $Random == 700
				if $shenyusuipian <= 29
					DropMonsterItems( -1, 90107 )
					$shenyusuipian = $shenyusuipian + 1
					SetServerVar( 96, $shenyusuipian )
					return
				else
					DropMonsterItems( -1, 60300 )
					return
				endif			
			else
				DropMonsterItems( -1, 60300 )
				return
			endif
		endif
			
	}