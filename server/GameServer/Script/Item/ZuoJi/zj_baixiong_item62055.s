function OnUseItem(){
   			
			$r = AddRider(-1,31)
			if $r == 0
				BC( "screen", "player", -1, "Mount added to mount list!" )
				//????
				SubPlayerInfo( -1, "item", 62055, 1 )
				return
			endif
			BC( "screen", "player", -1, "Failed to add to mount list" )
	
}