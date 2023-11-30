	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013/05/28
	//		Author:???
	//		TaskName:Item-64482.s
	//		TaskID:????
	//
	//****************************************
	
	function OnUseItem(){
		
		$a = GetPlayerVar( -1 , 3481 )
		$b = $a + 1
		
		if $b > 2
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 64482, 1 )
		if $SubItem != 0
			return
		endif
		
		AddTarotCostMax(-1,10)
		SetPlayerVar( -1 , 3481 , $b )
		BC( "screen", "player", -1, "Your Max Fate Energy has been increased by 10!" )
		
	}