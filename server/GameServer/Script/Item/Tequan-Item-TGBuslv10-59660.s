    //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/04/09
	//		Author:???
	//		TaskName:Tequan-Item-TGBuslv10-59660.s
	//		TaskID:4????
	//
	//****************************************


function OnUseItem(){
  
  //????????????
  $value1 = GetPlayerVar(-1, 3384)
  $value2 = GetPlayerVar(-1, 3385)
  $value3 = GetPlayerVar(-1, 3386)
  $value4 = GetPlayerVar(-1, 3387) 
  $value5 = GetPlayerVar(-1, 3388) 
  $value6 = GetPlayerVar(-1, 3389)
  $value7 = GetPlayerVar(-1, 3390)
  $value8 = GetPlayerVar(-1, 3391)
  $value9 = GetPlayerVar(-1, 3392)
  
  if $value1 == 1
     BC("screen", "player", -1, "N/A????,??????17173?????,??????????"
     return
  endif
  
  if $value2 == 1
     BC("screen", "player", -1, "N/A????,?????????????,??????????"
     return
  endif
  
  if $value3 == 1
     BC("screen", "player", -1, "N/A????,???????????????,??????????"
     return
  endif
  
  if $value4 == 1
     BC("screen", "player", -1, "N/A????,?????????????,??????????"
     return
  endif
  
  if $value5 == 1
     BC("screen", "player", -1, "N/A????,?????????????,??????????"
     return
  endif
  
  if $value6 == 1
     BC("screen", "player", -1, "N/A????,??????52PK?????,??????????"
     return
  endif
  
  if $value7 == 1
     BC("screen", "player", -1, "N/A????,??????178?????,??????????"
     return
  endif
  
  if $value8 == 1
     BC("screen", "player", -1, "N/A ????,????????BUS?????,??????????"
     return
  endif
  
  if $value9 == 1
     BC("screen", "player", -1, "N/A ????,?????????????,??????????"
     return
  endif  
  
  //??????
  $level = GetPlayerInfo( -1, "level" )
  if $level < 10
     BC( "screen", "player", -1, "You must reach LV10 before you can open this pack." )
     return
  endif
  
  //???????
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 1
     BC( "chat", "player", -1, "You do not have enough space in your bag." )
     return
  endif

  //???????
  $del_count = SubPlayerInfo( -1, "item", 59660, 1 )
  //??????????
  if $del_count != 0
     return
  endif

  //???????????
  SetPlayerVar(-1, 3391, 1)  
  //?????????
  AddPlayerInfo(-1, "item", 59661, 1 ) 
  //????,??????Buff
  PlayEffect(-1, "common\Yanhua\tx_Logo\tx_Logo_TGBus.ini" )
  AddStatus(-1, 7583, 1 )
  //??????
  $gender = GetPlayerInfo( -1, "sex" )
  if $gender == 0
     AddPlayerInfo(-1, "item", 36659, 1)
  else 
     AddPlayerInfo(-1, "item", 36658, 1)
  endif

}