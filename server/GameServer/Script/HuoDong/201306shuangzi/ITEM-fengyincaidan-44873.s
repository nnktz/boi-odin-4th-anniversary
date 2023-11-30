	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013/05/07
	//		Author:??
	//		TaskName:ITEM-fengyincaidan-44873.s
	//		TaskID:??????-?????
	//
	//****************************************
	//****************************************
	function OnUseItem(){
		$map_id = GetPlayerInfo( -1, "mapid" )
		$x = GetPlayerInfo( -1, "mapposx" )
		$y = GetPlayerInfo( -1, "mapposy" )
		$xset = $x / 2
		$yset = $y / 2
		$posx = SetPlayerVar( -1, 3583, $xset )
		$posy = SetPlayerVar( -1, 3584, $yset )
	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You do not have enough space in your Bag." )
			return
		endif
		if $map_id != 86
			BC( "messagebox", "player", -1, "Please go to the Sea of Atlantis to open!" )
			return
		endif
		//????
		$del_count = SubPlayerInfo( -1, "item", 44873, 1 )
		//????????
		if $del_count == 0
			$result = AddMonsterByFloat( 32551, 1, $map_id, $x, $y, 1,-1 )
			BC( "screen", "player", -1, "Summoned a Dim Easter Egg!" )
		endif
	

		
	}
