	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/21
	//		Author:???(??,??,??)
	//		TaskName:7?????????40???
	//		TaskID:Tequan-duowan-lv40-44012.s
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
  $del_count = SubPlayerInfo( -1, "item", 44012, 1 )
  //??????????,????????
  if $del_count != 0
     return
  endif

  //?????????
  
  //?????????
  AddPlayerInfo(-1, "item", 44013, 1 ) 
  
  //????,??????Buff
  PlayEffect(-1, "common\Yanhua\tx_Logo\tx_Logo_DuoWan.ini" )
  AddStatus(-1, 7583, 1 )
  
  //????????
  BC( "screen", "player", -1, "N/A???????????,???????,??????!" )
  AddPlayerInfo(-1, "item", 6060, 1 )
  AddPlayerInfo(-1, "item", 59770, 10 )
  AddPlayerInfo(-1, "item", 59838, 1 )

}