	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/11/14
	//		Author:???
	//		TaskName:??????
	//		TaskID:VIP-Return-zhongji-44526.s
	//
	//****************************************
	
	
	function OnUseItem(){
	
	//???? 277	278  279      
		
	$item_0 = 44526
	$item_1 = 44080
	$item_2 = 64402
	$item_3 = 63794
	//$item_4 = 59840

	
	//???????
	$is_get_1 = GetPlayerVar(-1, 277)
	$is_get_2 = GetPlayerVar(-1, 278)
	$is_get_3 = GetPlayerVar(-1, 279)
	if $is_get_1 == 1
		BC("screen","player",-1,"You've already used a Winter's Warmth Standard Pack. You can only use one of each type.")
		BC("chat","player",-1,"You've already used a Winter's Warmth Standard Pack. You can only use one of each type.")
		return
	endif
	
	if $is_get_2 == 1
		BC("screen","player",-1,"You've already used a Winter's Warmth Deluxe Pack. You can only use one of each type.")
		BC("chat","player",-1,"You've already used a Winter's Warmth Deluxe Pack. You can only use one of each type.")
		return
	endif
	
	if $is_get_3 == 1
		BC("screen","player",-1,"You've already used a Winter's Warmth Supreme Pack. You can only use one of each type.")
		BC("chat","player",-1,"You've already used a Winter's Warmth Supreme Pack. You can only use one of each type.")
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
  SetPlayerVar(-1, 277, 1)	
	
	//????
	AddPlayerInfo(-1, "item", $item_1, 3)
	AddPlayerInfo(-1, "item", $item_2, 3)
	AddPlayerInfo(-1, "item", $item_3, 1)
	//AddPlayerInfo(-1, "item", $item_4, 1)

	BC("screen","player",-1,"Congratulations, you have obtained a Winter's Warmth Standard Pack.")
	BC("chat","player",-1,"Congratulations, you have obtained a Winter's Warmth Standard Pack.")		
	PlayEffect(-1, "common\Yanhua\tx_xuanli3\tx_xuanli3.ini" )	
	
	
}