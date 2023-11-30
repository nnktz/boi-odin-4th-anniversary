	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013/4/3
	//		Author:??
	//		TaskName:®????¯??????
	//		TaskID:VIP-Return-zhongji-44857.s
	//
	//****************************************
	
	
	function OnUseItem(){
	
	//???? 369     
		
	$item_0 = 44857
	//??? 
	$item_1 = 44080
	//?????    
	$item_2 = 64402
	//?????500?    
	$item_3 = 63794
	//?????   
	$item_4 = 59840
	//?????  
	$item_5 = 59311 

	
	//???????
	$is_get_1 = GetPlayerVar(-1, 369)
	if $is_get_1 == 1
		BC("screen","player",-1,"You've already used a Return Pack or Joy Pack. You can only use one of each type.")
		BC("chat","player",-1,"You've already used a Return Pack or Joy Pack. You can only use one of each type.")
		return
	endif
	
	//????
	$null = GetPlayerInfo(-1, "nullitem", 0)
	if $null < 5
		BC("screen","player",-1,"You must have at least 5 free bag spaces.")
		BC("chat","player",-1,"You must have at least 5 free bag spaces.")		
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
	AddPlayerInfo(-1, "item", $item_1, 8)
	AddPlayerInfo(-1, "item", $item_2, 8)
	AddPlayerInfo(-1, "item", $item_3, 3)
	AddPlayerInfo(-1, "item", $item_4, 1)
	AddPlayerInfo(-1, "item", $item_5, 2)

	BC("screen","player",-1,"Congratulations, you have obtained a BOI Supreme Return Pack.")
	BC("chat","player",-1,"Congratulations, you have obtained a BOI Supreme Return Pack.")		
	PlayEffect(-1, "common\Yanhua\tx_xuanli3\tx_xuanli3.ini" )	
	
	
}