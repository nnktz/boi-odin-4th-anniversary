 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2013.3.9  
 //  Author:???  
 //  TaskName: ?????? 
 //****************************  

function OnUseItem(){
  
  //?????????,???????0~1?270 44706	??????

  $is_used = GetPlayerVar(-1, 358)
  
  if $is_used == 1
     BC("screen", "player", -1, "You've already used the Anniversary Noble Badge. You can not use it again.")
     BC("chat", "player", -1, "You've already used the Anniversary Noble Badge. You can not use it again.")
     return
  endif
          
  //??????,???10????????
  $level = GetPlayerInfo( -1, "level" )
  if $level < 10
     BC( "screen", "player", -1, "You must reach LV10 before you can use this Anniversary Noble Badge!" )
     BC( "chat", "player", -1, "You must reach LV10 before you can use this Anniversary Noble Badge!" )
     return
  endif
  
  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
  if $bag_count < 9
     BC( "screen", "player", -1, "You need at least 9 empty slots in your bag before you can use the Anniversary Noble Badge!" )
     BC( "chat", "player", -1, "You need at least 9 empty slots in your bag before you can use the Anniversary Noble Badge!" )
     return
  endif


  //???????
  $del_count = SubPlayerInfo( -1, "item", 44706, 1 )
  //??????????,????????
  if $del_count != 0
     return
  endif

  //??????
  SetPlayerVar(-1, 358, 1)  

  //---------?????????------------
  
  //????,??????Buff
  PlayEffect(-1, "common\Yanhua\tx_liuxingyu\tx_liuxingyu.ini" )
  
  //????
  AddPlayerInfo(-1,"item",63771,1)
  AddPlayerInfo(-1,"item",6680,10)
  AddPlayerInfo(-1,"item",6682,10)
	AddPlayerInfo(-1,"item",6688,10)
	AddPlayerInfo(-1,"item",63357,10)
	AddPlayerInfo(-1,"item",59840,2)
	AddPlayerInfo(-1,"item",44707,1)
	AddPlayerInfo(-1,"item",44710,1)
	
	//???????:
	$gender = GetPlayerInfo(-1,"sex")
	if $gender == 0
		AddPlayerInfo(-1,"item",37035,1)
	else
		AddPlayerInfo(-1,"item",37036,1)
	endif


}