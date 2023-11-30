	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013/4/3
	//		Author:??
	//		TaskName:®????¯??????
	//		TaskID:VIP-Return-zhongji-44860.s
	//
	//****************************************
	
	
	function OnUseItem(){
	
	//???? 369     
		
	$item_0 = 44860
	//???????? 
	$item_1 = 6680
	//????????    
	$item_2 = 6682
	//???????   
	$item_3 = 2450
	//?????    
	$item_4 = 2510 
	//???   
	$item_5 = 60029
	//????2?
	$item_6 = 2512
	
	//???????
	$is_get_1 = GetPlayerVar(-1, 369)
	if $is_get_1 == 1
		BC("screen","player",-1,"You've already used a Return Pack or Joy Pack. You can only use one of each type.")
		BC("chat","player",-1,"You've already used a Return Pack or Joy Pack. You can only use one of each type.")
		return
	endif
	
	//????
	$null = GetPlayerInfo(-1, "nullitem", 0)
	if $null < 6
		BC("screen","player",-1,"You must have at least 6 free bag spaces.")
		BC("chat","player",-1,"You must have at least 6 free bag spaces.")		
		return
	endif
	
	//????
	$revaluet = SubPlayerInfo(-1, "item" , $item_0, 1)
	if $revaluet != 0
		return
	endif
	
  //??????
  SetPlayerVar(-1, 369, 1)	
	
	//????
	AddPlayerInfo(-1, "item", $item_1, 1)
	AddPlayerInfo(-1, "item", $item_2, 1)
	AddPlayerInfo(-1, "item", $item_3, 2)
	AddPlayerInfo(-1, "item", $item_4, 2)
	AddPlayerInfo(-1, "item", $item_5, 10)
	AddPlayerInfo(-1, "item", $item_6, 1)

	BC("screen","player",-1,"Congratulations, you have obtained a BOI Supreme Joy Pack.")
	BC("chat","player",-1,"Congratulations, you have obtained a BOI Supreme Joy Pack.")		
	PlayEffect(-1, "common\Yanhua\tx_xuanli3\tx_xuanli3.ini" )	
	
	
}