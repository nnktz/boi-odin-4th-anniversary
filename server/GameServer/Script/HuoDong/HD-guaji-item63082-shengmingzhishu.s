	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/10/28
	//		Author:??
	//		TaskName:HD-item63082-shengmingzhishu.s
	//		TaskID:???????????
	//
	//****************************************
	
	function OnUseItem(){
			
		//??????????,?????????????,????
		$count = GetPlayerInfo( -1, "item", 63082 )
		if $count == 0
			return 
		endif
		$level = GetPlayerInfo( -1, "level" )
		//????
		if $level < 20
			BC( "chat", "player", -1, "You can use the item above level 20." )
			return
		endif
		
		$mapid = GetPlayerInfo( -1, "mapid" )
		if $mapid != 113
			BC( "chat", "player", -1, "You must use the item in Tree of Life." )
			return
		endif
			
		//?????????
		$result = AddStatus( -1, 11908 , 1)
		if $result == 0

			//??????
			SubPlayerInfo( -1, "item", 63082, 1 )
		endif

	}