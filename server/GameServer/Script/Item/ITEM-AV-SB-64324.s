 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/6/15
	//		Author:???
	//		TaskName:ITEM-AV-SB-64324.s
	//		TaskID:exp?
	//****************************************
	
	function OnUseItem(){
	
		$a = GetPlayerInfo( -1 , "prestige" , 9 )
		
		if $a < 1000
			BC( "screen", "player", -1, "Your Expedition Reputation has increased.",$a,". Activation available at 1000 points" )
			return
		endif
		$nullitem = GetPlayerInfo ( -1 , "nullitem" , 0  )
		if $nullitem < 1
			BC( "screen", "player", -1 , "Your bag is full!")
			return
		endif
		$info = SubPlayerInfo ( -1 , "item" , 64324 , 1 )
		if  $info != 0
			return
		endif
		AddPlayerInfo( -1 , "item" , 64309 , 1 )
	}