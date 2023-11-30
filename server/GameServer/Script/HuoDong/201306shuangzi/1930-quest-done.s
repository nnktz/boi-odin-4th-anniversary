	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013.5.8
	//		Author:???
	//		TaskName:1930-quest-done.s
	//		TaskID:
	//****************************************
	function OnTaskAccept(){
		}
	function OnTaskDone(){
		}
	function OnTaskFailedDone(){

		$var = GetPlayerVar(-1,3580)
		if $var < 2
			BC( "screen", "player", -1, "Sorry, the Glorious Darkness you have captured is too little, you can't get extra reward.")	
			return
		endif
		if $var >= 2
			if $var < 8
				AcceptTask( -1 , 1935 )	
				BC( "screen", "player", -1, "You have captured",$var,"Glorious Darkness, visit Hermes to get your reward!")	
				return
			endif
		endif
		if $var >= 8
			if $var < 15
				AcceptTask( -1 , 1936 )	
				BC( "screen", "player", -1, "You have captured",$var,"Glorious Darkness, visit Hermes to get your reward!")	
				return
			endif
		endif
		if $var >= 15
			if $var < 30
				AcceptTask( -1 , 1937 )	
				BC( "screen", "player", -1, "You have captured",$var,"Glorious Darkness, visit Hermes to get your reward!")	
				return
			endif
		endif
		if $var >= 30
				AcceptTask( -1 , 1938 )	
				BC( "screen", "player", -1, "You have captured",$var,"Glorious Darkness, visit Hermes to get your reward!")	
				return
		endif
			
//		//??????
//		
//		$history = GetGlobalVar( 970 )
//		$history = $history + 1
//		SetGlobalVar( 970 , $history )
	}