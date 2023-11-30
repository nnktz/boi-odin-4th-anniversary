//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/04/15
	//		Author:??
	//		TaskName:NPC-main-chunjie-2388.s
	//		TaskID:2010??????
	//
	//****************************************
	
	function OnRequest(){
	
	}
	
	
	function OnOption0(){
		
	//???????????
		 $item = GetPlayerInfo( -1, "item", 59613 )
		 if $item < 1
		 	BC( "dialogbox", "player", -1, "You don't have a Chinese knot yet, so you can't draw in the Lottery.\n{#ff780000=Join the Fallen Darkness, Trial for the Brave, and Dragon Island Trial. You will have a chance to get a Chinese Knot. Draw 5 times a day for Lottery. #}" )
		 	return
		 endif
	
	//????????
		$Now_Yday = GetSystemTime( "yday" )
		$day = GetPlayerVar( -1, 4077 )
		$cishu = GetPlayerVar( -1, 3286 )
		
		if $day == $Now_Yday
			if $cishu >= 5
				BC( "dialogbox", "player", -1, "You have done the Lottery 5 times today!" )
		 		return
		 	else
		 		$lv = GetPlayerInfo( -1 , "level" )
				if $lv < 75
					$cishu = $cishu + 1
					SetPlayerVar(-1,3286,$cishu )
					ReqAward( -1 , 10 , 1 )
					//BC( "screen", "player", -1, "GUID:04918000002" )
				else
					$cishu = $cishu + 1
					SetPlayerVar(-1,3286,$cishu )
					ReqAward( -1 , 9 , 1 )
					//BC( "screen", "player", -1, "GUID:04918000003" )
				endif
			endif
		else
			SetPlayerVar(-1,4077,$Now_Yday )
			SetPlayerVar(-1,3286,0 )
			
			$lv = GetPlayerInfo( -1 , "level" )
			if $lv < 75
				$cishu = $cishu + 1
				SetPlayerVar(-1,3286,$cishu )
				ReqAward( -1 , 10 , 1 )
				//BC( "screen", "player", -1, "GUID:04918000004" )
			else
				$cishu = $cishu + 1
				SetPlayerVar(-1,3286,$cishu )
				ReqAward( -1 , 9 , 1 )
					//BC( "screen", "player", -1, "GUID:04918000005" )
			endif
		endif
			
		
	
}