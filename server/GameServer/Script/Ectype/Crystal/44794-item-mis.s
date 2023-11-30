///****************************  
///  Copyright:PERFECT WORLD  
///  Modified:2013.2.25  
///  Author:???  
///  TaskName: 44794 ????
///****************************   
	function OnUseItem(){ 
  //???????,
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 1
     BC( "screen", "player", -1, "You do not have enough space in your Bag." )
     BC( "chat", "player", -1, "You do not have enough space in your Bag." )
     return
  endif
  //	$del_count = SubPlayerInfo( -1, "item", 44701, 1 )
	//	if $del_count != 0
  //   return
 	//	 endif
	//??
	//$global = GetGlobalVar(128)
	//$global += 1
	//SetGlobalVar(128,$global)
	//if $global == 10 
 //ReqAward(-1 ,41 ,1 )
 //else
  ReqAward(-1 ,40 ,1 )
 // endif
  
}