		//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2010/03/06
	//		Author:??
	//		TaskName:Item-63734.s
	//		TaskID:????x18
	//****************************************
 
	
	//??????
	function OnUseItem(){
	$level = GetPlayerInfo( -1 , "level" )
	//????
	$nullitem = GetPlayerInfo( -1, "nullitem", 0 )
	if $level < 90
		BC( "screen", "player", -1, "You can't open this before reaching LV90." )
		return
	endif
	
	if $nullitem < 1
		BC( "screen", "player", -1, "You need at least 1 open Bag slot." )
		return
	endif
	
	//????
	
	$sub = SubPlayerInfo( -1 , "item" , 63734 , 1 )
	if $sub != 0
		return
	endif
	
	//?????
	AddPlayerInfo(-1, "item", 59241, 18 )
	
}