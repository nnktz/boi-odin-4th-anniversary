	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/21
	//		Author:???(??,??,??)
	//		TaskName:7??????163?40???
	//		TaskID:Tequan-163-lv40-44037.s
	//
	//****************************************

function OnUseItem(){

  //??????,???40????????
  $level = GetPlayerInfo( -1, "level" )
  if $level < 40
     BC( "screen", "player", -1, "You must have reached LV40 before you can obtain an Eastern Treasure." )
     BC( "chat", "player", -1, "You must have reached LV40 before you can obtain an Eastern Treasure." )
     return
  endif
  
  //???????,40?????2??,?????????2
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 2
		 BC( "screen", "player", -1, "You do not have enough space in your bag." )
     BC( "chat", "player", -1, "You do not have enough space in your bag." )
     return
  endif

  //???????
  $del_count = SubPlayerInfo( -1, "item", 44037, 1 )
  //??????????,????????
  if $del_count != 0
     return
  endif

  //?????????
  
  //?????????
  AddPlayerInfo(-1, "item", 44038, 1 ) 
  
  //????,??????Buff
  PlayEffect(-1, "common\Yanhua\tx_Logo\tx_Logo_17173.ini" )
  AddStatus(-1, 7583, 1 )
  
  //????????
  BC( "screen", "player", -1, "N/A?????17173????,???????,??????!" )
  AddPlayerInfo(-1, "item", 6060, 1 )
  AddPlayerInfo(-1, "item", 59770, 10 )
  AddPlayerInfo(-1, "item", 59838, 1 )

}