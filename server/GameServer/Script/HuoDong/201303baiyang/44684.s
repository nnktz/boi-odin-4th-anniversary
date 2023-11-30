 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2013.2.25  
 //  Author:???  
 //  TaskName: ???? 
 //****************************  
// 32427	v3.85	???????
//32428	v3.85	???????
//32429	v3.85	???????


function OnUseItem(){ 
		$playerid = GetPlayerID()
		$mapid = GetPlayerInfo(-1,"mapid")
		$posx = GetPlayerInfo(-1,"mapposx")
		$posy = GetPlayerInfo(-1,"mapposy")
		$level = GetPlayerInfo(-1,"level")
		$Fieldlevel = GetFieldLevel($playerid)
		$monsterID = 32428
		$monsterstatusID = 251
		$monsterfieldID = 251
		$posx *= 100
		$posx /= 256
		$posy *= 100
		$posy /= 256
		if $mapid != 86
			BC("screen","player", -1,"Please use the Resurrection Returns in the Sea of Atlantis!") 
			return
		endif
		if $Fieldlevel > 0
			$result = AddLevelMonster( $monsterID , 254 ,$level ,1,$mapid,$posx,$posy,1,$playerid)
			if $result < 0
				return
			endif
			$del_count = SubPlayerInfo( -1, "item", 44684, 1 )  
			if $del_count != 0
    		 return
 			endif
 			#name = GetPlayerInfo( -1, "name" )
			BC("screen","server", -1,"Player",#name,"You have used a Resurrection Returns to summon the Return: Aries Envoy, it is in the Sea if Atlantis.")  
			return
		endif

		$result = AddLevelMonster( $monsterID , $monsterstatusID ,$level ,1,$mapid,$posx,$posy,1,$playerid)
		if $result < 0
				return
			endif
		$del_count = SubPlayerInfo( -1, "item", 44684, 1 )  
		if $del_count != 0
    		 return
 		endif
 		#name = GetPlayerInfo( -1, "name" )
		BC("screen","server", -1,"Player",#name,"You have used a Resurrection Returns to summon the Return: Aries Envoy, it is in the Sea if Atlantis.")  
			
} 
