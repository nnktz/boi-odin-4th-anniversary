	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/26
	//		Author:???
	//		TaskName:ITEM-59143.s
	//		TaskID:?????
	//
	//****************************************
	
	
	function OnUseItem(){
	
		//????
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
	
		if $bag_count < 5
			BC( "screen", "player", -1, "You do not have enough space in your bag." )
			return
		endif
		
		//????
		$revalue = SubPlayerInfo( -1, "item", 59143, 1)
		if $revalue == 0
			$pro = GetPlayerInfo( -1, "profession" )
		//1:??
		//2:??
		//3:??
		//4:??
		//5:??
			if $pro == 1
				AddPlayerInfo( -1, "item", 53078, 1 )
				//BC( "screen", "player", -1, "GUID:06702000001" )
				AddPlayerInfo( -1, "item", 2452, 1 )
				//BC( "screen", "player", -1, "GUID:06702000002" )
				AddPlayerInfo( -1, "item", 2453, 1 )
				//BC( "screen", "player", -1, "GUID:06702000003" )
				AddPlayerInfo( -1, "item", 2454, 1 )
				//BC( "screen", "player", -1, "GUID:06702000004" )
				return
			endif
			if $pro == 2
				AddPlayerInfo( -1, "item", 53084, 1 )
				//BC( "screen", "player", -1, "GUID:06702000005" )
				AddPlayerInfo( -1, "item", 2452, 1 )
				//BC( "screen", "player", -1, "GUID:06702000006" )
				AddPlayerInfo( -1, "item", 2453, 1 )
				//BC( "screen", "player", -1, "GUID:06702000007" )
				AddPlayerInfo( -1, "item", 2454, 1 )
				//BC( "screen", "player", -1, "GUID:06702000008" )
				return
			endif
			if $pro == 3
				AddPlayerInfo( -1, "item", 53090, 1 )
				//BC( "screen", "player", -1, "GUID:06702000009" )
				AddPlayerInfo( -1, "item", 2452, 1 )
				//BC( "screen", "player", -1, "GUID:06702000010" )
				AddPlayerInfo( -1, "item", 2453, 1 )
				//BC( "screen", "player", -1, "GUID:06702000011" )
				AddPlayerInfo( -1, "item", 2454, 1 )
				//BC( "screen", "player", -1, "GUID:06702000012" )
				return
			endif
			if $pro == 4
				AddPlayerInfo( -1, "item", 53081, 1 )
				//BC( "screen", "player", -1, "GUID:06702000013" )
				AddPlayerInfo( -1, "item", 2452, 1 )
				//BC( "screen", "player", -1, "GUID:06702000014" )
				AddPlayerInfo( -1, "item", 2453, 1 )
				//BC( "screen", "player", -1, "GUID:06702000015" )
				AddPlayerInfo( -1, "item", 2454, 1 )
				//BC( "screen", "player", -1, "GUID:06702000016" )
				return
			endif
			if $pro == 5
				AddPlayerInfo( -1, "item", 53087, 1 )
				//BC( "screen", "player", -1, "GUID:06702000017" )
				AddPlayerInfo( -1, "item", 2452, 1 )
				//BC( "screen", "player", -1, "GUID:06702000018" )
				AddPlayerInfo( -1, "item", 2453, 1 )
				//BC( "screen", "player", -1, "GUID:06702000019" )
				AddPlayerInfo( -1, "item", 2454, 1 )
				//BC( "screen", "player", -1, "GUID:06702000020" )
				return
			endif	
			if $pro == 6
				AddPlayerInfo( -1, "item", 53081, 1 )
				//BC( "screen", "player", -1, "GUID:06702000021" )
				AddPlayerInfo( -1, "item", 2452, 1 )
				//BC( "screen", "player", -1, "GUID:06702000022" )
				AddPlayerInfo( -1, "item", 2453, 1 )
				//BC( "screen", "player", -1, "GUID:06702000023" )
				AddPlayerInfo( -1, "item", 2454, 1 )
				//BC( "screen", "player", -1, "GUID:06702000024" )
				return
			endif
		endif

						
	}