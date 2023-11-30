	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/15
	//		Author:???(??,??,??)
	//		TaskName:2012?8?????????20???
	//		TaskID:44309-tequan-duowan-20.s
	//
	//****************************************


function OnUseItem(){

          
  //??????,???20????????
  $level = GetPlayerInfo( -1, "level" )
  if $level < 20
     BC( "screen", "player", -1, "You have to be at least LV20 to use that Fate Prestige Card!" )
     BC( "chat", "player", -1, "You have to be at least LV20 to use that Fate Prestige Card!" )
     return
  endif
  
  //???????,20??????????,?????????1
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 1
		 BC( "screen", "player", -1, "You need to clear some space in your bag before you can use that Fate Prestige Card!" )
     BC( "chat", "player", -1, "You need to clear some space in your bag before you can use that Fate Prestige Card!" )
     return
  endif

  //???????
  $del_count = SubPlayerInfo( -1, "item", 44309, 1 )
  //??????????,????????
  if $del_count != 0
     return
  endif

  //----------?????????-----------
  
  //?????????
  AddPlayerInfo(-1, "item", 44310, 1 ) 
  
  //????,??????Buff
  PlayEffect(-1, "common\Yanhua\tx_Logo\tx_Logo_DuoWan.ini" )
  AddStatus(-1, 7583, 1 )
  
  //??????,??????,0??,1??
  $gender = GetPlayerInfo( -1, "sex" )
  if $gender == 0
     AddPlayerInfo(-1, "item", 36107, 1)
  else 
     AddPlayerInfo(-1, "item", 36106, 1)
  endif

}