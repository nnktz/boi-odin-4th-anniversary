function OnUseItem(){
	$r = SubPlayerInfo( -1, "item", 61564, 1 )
    if $r == 0
			UseSkill(-1,9574,4)
			BC( "screen", "player", -1, "Transformed!" )
		endif
}
