

	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/11/26
	//		Author:???
	//		TaskName:rongyaoshop-Item-59096.s
	//		TaskID:?????????(???)
	//****************************************
	
	function OnUseItem(){
	
		$title1 = HaveTitle( -1 , 12 )
		
		if $title1 != 0
					BC( "screen" , "player" , -1 , "You do not have the title of Master level 6, upgrade your master level with Gallaja!" )
					BC( "chat" , "player" , -1 , "You do not have the title of Master level 6, upgrade your master level with Gallaja!" )
					return
		endif
		
		$nobag = GetPlayerInfo( -1 , "nullitem", 0 )
		if $nobag < 1
			BC( "screen", "player", -1 , "You don't have a free bag slot." )
			return
		endif
		
		$info = SubPlayerInfo( -1, "item", 59096 , 1  )
			if $info != 0
				return
			else
			  AddPlayerInfo( -1, "item", 60069 , 1  )
				BC( "screen" , "player" , -1 , "You got Bean KnightPlatinum Summon Card(Growth Card)" )
				BC( "chat" , "player" , -1 , "You got Bean KnightPlatinum Summon Card(Growth Card)" )
				return
			endif
	
	}