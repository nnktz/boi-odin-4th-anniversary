	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/21
	//		Author:???(??,??,??)
	//		TaskName:7?????????60???
	//		TaskID:Tequan-17173-lv60-44014.s
	//
	//****************************************

function OnUseItem(){

  //??????,???60????????
  $level = GetPlayerInfo( -1, "level" )
  if $level < 60
     BC( "screen", "player", -1, "You must have reached LV60 before you can obtain an Eastern Treasure." )
     BC( "chat", "player", -1, "You must have reached LV60 before you can obtain an Eastern Treasure." )
     return
  endif
  
  //???????,60?????1??,?????????1
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 1
		 BC( "screen", "player", -1, "You do not have enough space in your bag." )
     BC( "chat", "player", -1, "You do not have enough space in your bag." )
     return
  endif

  //???????
  $del_count = SubPlayerInfo( -1, "item", 44014, 1 )
  //??????????,????????
  if $del_count != 0
     return
  endif

  //?????????
  
  //????,??????Buff
  PlayEffect(-1, "common\Yanhua\tx_Logo\tx_Logo_DuoWan.ini" )
  AddStatus(-1, 7583, 1 )
  
  //????????
  BC( "screen", "player", -1, "N/A???????????,???????,??????!" )

  AddPlayerInfo(-1, "item", 59772, 1 )

}