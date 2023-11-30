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
		$monsterID = 32427
		$monsterstatusID = 250
		$monsterfieldID = 250
		$posx *= 100
		$posx /= 256
		$posy *= 100
		$posy /= 256
		if $mapid != 86
			BC("screen","player", -1,"Please use the Resurrection Advent in the Sea of Atlantis!") 
			return
		endif
		if $Fieldlevel > 0
			$result = AddLevelMonster( $monsterID , 253 ,$level ,1,$mapid,$posx,$posy,1,$playerid)
			if $result < 0
				return
			endif
			SetPlayerVar(-1,3468,1)
			$del_count = SubPlayerInfo( -1, "item", 44683, 1 )  
			if $del_count != 0
    		 return
 			endif
			BC("screen","player", -1,"You have used a Resurrection Advent to summon the Advent: Aries Envoy, kill it as soon as possible!")  
			return
		endif

		$result = AddLevelMonster( $monsterID , $monsterstatusID ,$level ,1,$mapid,$posx,$posy,1,$playerid)
		if $result < 0
				return
			endif
		SetPlayerVar(-1,3468,1)
		$del_count = SubPlayerInfo( -1, "item", 44683, 1 )   
		if $del_count != 0
    		 return
 		endif
		BC("screen","player", -1,"You have used a Resurrection Advent to summon the Advent: Aries Envoy, kill it as soon as possible!") 
		
} 
