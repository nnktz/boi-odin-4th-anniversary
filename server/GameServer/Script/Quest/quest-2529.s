	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/1/21
	//		Author:??
	//		TaskName:quest-2529.s
	//		TaskID:???
	//
	//****************************************

	function OnTaskAccept(){
		AddDart(-1 , 32181 , 1 , 2 )
		
	}
		
	function OnTaskDone(){
		AddPlayerInfo( -1 , "godvalue" , 344 )
			BC( "chat", "player", -1, "Your Deity is increased by 344!" )
	
	}