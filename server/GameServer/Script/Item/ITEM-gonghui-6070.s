  //		Modified:2013/5/6
	//		Author:??
	//		TaskName:ITEM-gonghui-6070.s
	//		TaskID:?????(??)
	//    
	//****************************************
function OnUseItem(){
   			
			//????
			
			$gid = GetPlayerInfo( -1 , "guildid")
	  	if $gid == 0
	  		BC( "dialogbox", "player", -1, "You have not joined a guild!")
	  		return
	  	endif
			
			$gof = GetPlayerInfo( -1 , "guildoffer")
	  	if $gof < 16
	  		BC( "dialogbox", "player", -1, "Insufficient personal contributions!")
	  		return
	  	endif
	  	
			$r = SubPlayerInfo( -1, "item", 6070, 1 )
			if $r != 0
				return
			endif
			
			SubPlayerInfo( -1, "guildoffer", 16 )
			AddPlayerInfo( -1, "item", 6071, 10 )
			BC( "screen", "player", -1, "Contribution consumed by 16. 10 Tears of Artemis acquired!" )
		
}