  //		Modified:2013/5/6
	//		Author:??
	//		TaskName:ITEM-6069.s
	//		TaskID:?????
	//    
	//****************************************
function OnUseItem(){

		//????
		$r = SubPlayerInfo( -1, "item", 6069, 1 )
		if $r != 0
			return
		endif
		
		AddPlayerInfo( -1, "item", 6071, 10 )
		BC( "screen", "player", -1, "Acquired 10 Tears of Artemis!" )
}