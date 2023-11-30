	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013/05/23
	//		Author:???
	//		TaskName:Item-64481.s
	//		TaskID:????
	//
	//****************************************
	
	function OnUseItem(){
		
		$a = GetPlayerVar( -1 , 3491 )
		$b = $a + 1
		
		if $b > 3
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 64481, 1 )
		if $SubItem != 0
			return
		endif
		
		AddTarotSlot( -1, 1)
		SetPlayerVar( -1 , 3491 , $b )
		BC("screen","player",-1,"You have used a Key of Fates and unlocked a Card slot!")
		
	}
