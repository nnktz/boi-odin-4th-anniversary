function OnUseItem(){
   			
		//????
			
		//$gid = GetPlayerInfo( -1 , "guildid")
	  	//if $gid == -1
	  		//BC( "dialogbox", "player", -1, "GUID:06988000000")
	  		//return
	  	//endif
			
	  	$r = SubPlayerInfo( -1, "item", 50540, 1 )
			if $r != 0
				return
			endif
			
			AddPlayerInfo( -1, "givepoint", 5000 )
			BC( "screen", "player", -1, "Thanks for your contribution to the Guild! You gain 5000 Salary as a reward!" )
		
}