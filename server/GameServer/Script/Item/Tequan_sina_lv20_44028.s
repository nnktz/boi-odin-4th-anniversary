	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/21
	//		Author:???(??,??,??)
	//		TaskName:7?????????20???
	//		TaskID:Tequan-sina-lv20-44028.s
	//
	//****************************************


function OnUseItem(){

          
  //??????,???20????????
  $level = GetPlayerInfo( -1, "level" )
  if $level < 20
     BC( "screen", "player", -1, "You must have reached LV20 before you can obtain an Eastern Treasure." )
     BC( "chat", "player", -1, "You must have reached LV20 before you can obtain an Eastern Treasure." )
     return
  endif
  
  //???????,20??????????,?????????1
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 1
		 BC( "screen", "player", -1, "You do not have enough space in your bag." )
     BC( "chat", "player", -1, "You do not have enough space in your bag." )
     return
  endif

  //???????
  $del_count = SubPlayerInfo( -1, "item", 44028, 1 )
  //??????????,????????
  if $del_count != 0
     return
  endif

  //?????????
  
  //?????????
  AddPlayerInfo(-1, "item", 44029, 1 ) 
  
  //????,??????Buff
  PlayEffect(-1, "common\Yanhua\tx_Logo\tx_Logo_Sina.ini" )
  AddStatus(-1, 7583, 1 )
  
  //??????,??????,0??,1??
	BC( "screen", "player", -1, "N/A???????????,???????,??????!" )
  $gender = GetPlayerInfo( -1, "sex" )
  if $gender == 0
     AddPlayerInfo(-1, "item", 36685, 1)
  else 
     AddPlayerInfo(-1, "item", 36684, 1)
  endif

}