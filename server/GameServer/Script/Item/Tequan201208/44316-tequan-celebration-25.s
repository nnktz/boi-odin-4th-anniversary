	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/13
	//		Author:???(??,??,??)
	//		TaskName:8???????????25???????
	//		TaskID:44316-tequan-celebration-25.s
	//
	//****************************************

function OnUseItem(){

  //??????,???25????????
  $level = GetPlayerInfo( -1, "level" )
  if $level < 25
     BC( "screen", "player", -1, "You have to be at least LV25 to use that Fate Prestige Card!" )
     BC( "chat", "player", -1, "You have to be at least LV25 to use that Fate Prestige Card!" )
     return
  endif
  
  //???????,25??????????,?????????1
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 1
		 BC( "screen", "player", -1, "You need to clear some space in your bag before you can use that Fate Prestige Card!" )
     BC( "chat", "player", -1, "You need to clear some space in your bag before you can use that Fate Prestige Card!" )
     return
  endif

  //???????
  $del_count = SubPlayerInfo( -1, "item", 44316, 1 )
  //??????????,????????
  if $del_count != 0
     return
  endif

  //------?????????----------
  
  //?????????
  AddPlayerInfo(-1, "item", 44317, 1 ) 
  
  //????,??????Buff
  PlayEffect(-1, "common\Yanhua\tx_liuxingyu\tx_liuxingyu.ini" )
  AddStatus(-1, 7583, 1 )
  
  //????????
  AddPlayerInfo(-1, "item",62570 , 1 )


}