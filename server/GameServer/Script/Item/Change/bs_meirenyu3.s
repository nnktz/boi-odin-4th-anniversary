function OnUseItem(){
	$r = SubPlayerInfo( -1, "item", 61518, 1 )
    if $r == 0
			UseSkill(-1,9564,3)
			BC( "screen", "player", -1, "Transformed!" )
		endif
}
