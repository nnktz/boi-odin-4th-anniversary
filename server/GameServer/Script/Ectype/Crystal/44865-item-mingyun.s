///****************************  
///  Copyright:PERFECT WORLD  
///  Modified:2013.2.25  
///  Author:???  
///  TaskName: 44865 ????
///****************************   
	
function OnUseItem(){

	  //???????
	  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
	  if $bag_count < 4
	     BC( "chat", "player", -1, "You do not have enough space in your Bag." )
	     return
	  endif	
	  
	  $mat_count = GetPlayerInfo( -1, "nullitem", 1 )
	  if $bag_count < 1
	     BC( "chat", "player", -1, "You do not have enough space in your Materials Bag." )
	     return
	  endif		  	

	  //???????
	  $del_count = SubPlayerInfo( -1, "item", 44865, 1 )
	  //??????????,????????
	  if $del_count != 0
	     return
	  endif

  	//----------?????????-----------
  	//????? 12417 18   ??????  63722 10   ????  4682 4    ????  44439 1

		AddPlayerInfo(-1, "item", 12417, 10)
		AddPlayerInfo(-1, "item", 63722, 4)	
		AddPlayerInfo(-1, "item", 4682, 4)
		
		//???????????,??????? ????(??????)
		$Have = GetPlayerVar(-1,241)
		if $Have == 0
			AddPlayerInfo(-1, "item", 44439, 1)	
		endif		
		
		//???? ????????? ?????
		$Have1 = GetPlayerVar(-1, 3319)
		if $Have1 < 4
			AddPlayerInfo(-1,"item",64479,1)
		endif

}