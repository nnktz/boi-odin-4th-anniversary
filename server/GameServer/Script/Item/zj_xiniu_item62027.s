function OnUseItem(){
	
		$r = AddRider(-1,46)
		if $r == 0
			BC( "screen", "player", -1, "Success at adding Mount!" )
			//????
			SubPlayerInfo( -1, "item", 62027, 1 )
			return
		endif
		BC( "screen", "player", -1, "Fail to add Mount!" )
}