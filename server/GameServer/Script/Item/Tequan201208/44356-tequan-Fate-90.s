  //****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/07/23
	//		Author:???
	//		TaskName:44356-tequan-Fate-90.s
	//		TaskID:8????
	//
	//****************************************


function OnUseItem(){
	//???? ??????? 44234 *10 ???? 6064 *1

  //??????
  $level = GetPlayerInfo( -1, "level" )
  if $level < 90
     BC( "screen", "player", -1, "You must reach LV90 before you can open this Rookie Chest!" )
     return
  endif
  
  //???????
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 2
     BC( "chat", "player", -1, "Not enough space in your bag. Please clear some space to open the Rookie chest!" )
     return
  endif

  //???????
  $del_count = SubPlayerInfo( -1, "item", 44356, 1 )
  //??????????
  if $del_count != 0
     return
  endif

  //????,??????Buff
  PlayEffect(-1, "common\Yanhua\tx_liuxingyu\tx_liuxingyu.ini" )
  AddStatus(-1, 7583, 1 )
  //????????
//63769	?????(7?)
//44365	????
  AddPlayerInfo(-1, "item", 63769, 1 )
  AddPlayerInfo(-1, "item", 44365, 1 )
	//??90?????
	$pro = GetPlayerInfo( -1, "profession" )
		if $pro == 1
//19616	?????(????)
			AddPlayerInfo( -1, "item", 19616, 1 ) 
		endif
		if $pro == 2
//19617	?????(????)
			AddPlayerInfo( -1, "item", 19617, 1 ) 
		endif
		if $pro == 3
//19618	?????(????)
			AddPlayerInfo( -1, "item", 19618, 1 ) 
		endif
		if $pro == 4
//19619	??????(????)
			AddPlayerInfo( -1, "item", 19619, 1 ) 
		endif
		if $pro == 5
//19620	?????(????)
			AddPlayerInfo( -1, "item", 19620, 1 ) 
		endif	
		if $pro == 6
			AddPlayerInfo( -1, "item", 19583, 1 ) 
		endif	  

}