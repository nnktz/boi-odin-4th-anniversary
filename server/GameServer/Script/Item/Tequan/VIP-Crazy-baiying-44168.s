	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/03/13
	//		Author:???
	//		TaskName:???VIP??????
	//		TaskID:VIP-Crazy-baiying-44168.s
	//
	//****************************************
	
	
	function OnUseItem(){
	
	//???? 192	193  194
	//??id ???? 44067 ?? 44068 ?? 44069          
	//??id ????? 2487 
	//??id ??????? 2450
		
	$item_0 = 44168
	$item_1 = 2487
	$item_2 = 2450
	$item_3 = 6680
	
	//???????
	$is_get_1 = GetPlayerVar(-1, 192)
	$is_get_2 = GetPlayerVar(-1, 193)
	$is_get_3 = GetPlayerVar(-1, 194)
	if $is_get_1 == 1
		BC("screen","player",-1,"You've already used an Anniversary Celebration Silver Pack. You can only use one of each type.")
		BC("chat","player",-1,"You've already used an Anniversary Celebration Silver Pack. You can only use one of each type.")
		return
	endif
	
	if $is_get_2 == 1
		BC("screen","player",-1,"You've already used an Anniversary Celebration Platinum Pack. You can only use one of each type.")
		BC("chat","player",-1,"You've already used an Anniversary Celebration Platinum Pack. You can only use one of each type.")
		return
	endif
	
	if $is_get_3 == 1
		BC("screen","player",-1,"You've already used an Anniversary Celebration Diamond Pack. You can only use one of each type.")
		BC("chat","player",-1,"You've already used an Anniversary Celebration Diamond Pack. You can only use one of each type.")
		return
	endif
	
	//????
	$null = GetPlayerInfo(-1, "nullitem", 0)
	if $null < 3
		BC("screen","player",-1,"You must have at least 3 free bag spaces.")
		BC("chat","player",-1,"You must have at least 3 free bag spaces.")		
		return
	endif
	
	//????
	$revaluet = SubPlayerInfo(-1, "item" , $item_0, 1)
	if $revaluet != 0
		return
	endif
	
  //??????
  SetPlayerVar(-1, 192, 1)	
	
	//????
	AddPlayerInfo(-1, "item", $item_1, 1)
	AddPlayerInfo(-1, "item", $item_2, 1)
	AddPlayerInfo(-1, "item", $item_3, 1)
	//AddPlayerInfo(-1, "item", $item_4, 5)

	BC("screen","player",-1,"Congratulations! You got a Anniversary Celebration Silver Pack.")
	BC("chat","player",-1,"Congratulations! You got a Anniversary Celebration Silver Pack.")		
	PlayEffect(-1, "common\Yanhua\tx_xuanli3\tx_xuanli3.ini" )	
	
	
}