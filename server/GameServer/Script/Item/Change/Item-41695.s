	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/03/14
	//		Author:???
	//		TaskName:Item-xxxxx.s
	//		TaskID:5?????
	//
	//****************************************
	
	function OnUseItem(){
	//------------??ID-------------
		$NewItem0 = 41695
		//---?????ID-------
		
		$NewItem1 = 64025
		//---???ID------
		
		$NewItem2 = 26951
		//---?????-----
		
		$NewItem3 = 26955
		//---?????(?)----
		
		$Random0 = 21
		//---?????---
	
	//------------??????-----------	
		$item0 = GetPlayerInfo( -1, "item", $NewItem0 )
		if $item0 < 1
			BC( "screen", "player", -1, "Sorry! You do not have the item." )
			return
		endif
		
		$item1 = GetPlayerInfo( -1, "item", $NewItem1 )
		if $item1 < 1
			BC( "screen", "player", -1, "Sorry! You do not have a LV5 Identify Scroll." )
			return
		endif
		
		$count = GetPlayerInfo( -1, "nullitem", 0 )
		if $count < 1
			BC( "screen", "player", -1, "Your bag is full." )
			return
		endif
	//-------------????--------------
		$Sub0 = SubPlayerInfo( -1, "item", $NewItem0, 1 )
		if $Sub0 != 0
			return
		endif
		
		$Sub1 = SubPlayerInfo( -1, "item", $NewItem1, 1 )
		if $Sub1 != 0
			return
		endif	
	//-------------????-------------
		$Random = RandomNumber( 1, 100 )
		if $Random < $Random0
			AddPlayerInfo( -1, "item", $NewItem3, 1 )
			return
		else
			AddPlayerInfo( -1, "item", $NewItem2, 1 )
			return
		endif
			
	}