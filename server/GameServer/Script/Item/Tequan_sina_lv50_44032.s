	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/21
	//		Author:???(??,??,??)
	//		TaskName:7?????????50???
	//		TaskID:Tequan-sina-lv50-44032.s
	//
	//****************************************

function OnUseItem(){

  //??????,???50????????
  $level = GetPlayerInfo( -1, "level" )
  if $level < 50
     BC( "screen", "player", -1, "You must have reached LV50 before you can obtain an Eastern Treasure." )
     BC( "chat", "player", -1, "You must have reached LV50 before you can obtain an Eastern Treasure." )
     return
  endif
  
  //???????,50?????2??,?????????2
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 2
		 BC( "screen", "player", -1, "You do not have enough space in your bag." )
     BC( "chat", "player", -1, "You do not have enough space in your bag." )
     return
  endif

  //???????
  $del_count = SubPlayerInfo( -1, "item", 44032, 1 )
  //??????????,????????
  if $del_count != 0
     return
  endif

  //?????????
  
  //????,??????Buff
  PlayEffect(-1, "common\Yanhua\tx_Logo\tx_Logo_Sina.ini" )
  AddStatus(-1, 7583, 1 )
  
  //????????
  BC( "screen", "player", -1, "N/A?????????,???????,??????!" )
  AddPlayerInfo(-1, "item", 59771, 1 )
  AddPlayerInfo(-1, "item", 64402, 2 )

}