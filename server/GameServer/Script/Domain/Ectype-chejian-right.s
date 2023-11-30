	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/0714
	//		Author:??
	//		TaskName:Ectype-chejian-right.s
	//		TaskID:??-???
	//
	//****************************************


	function OnRequest(){
	$id = GetPlayerID()	
	$zhenying = GetPlayerDomainWarSide($id , -1)
	
	
		 	
	}
	
	function OnOption0(){
	$id = GetPlayerID()	
	$drive = IsOnVehicle($id)
	$mapid = GetPlayerInfo( -1 , "mapid" )
	$var1 = GetEctypeVar($mapid , 5)
	$rightvar = GetEctypeVar($mapid , 29)
	$zhenying = GetPlayerDomainWarSide($id , -1)
	$vehicle = GetGuildDomainVehicleNum($mapid,-1)
	//?????????????????
	if $drive == 0
		BC( "chat" , "player" , -1 , "You are riding on a vessel. Cannot produce vessels now.")
		BC( "screen" , "player" , -1 , "You are riding on a vessel. Cannot produce vessels now.")
		return
	endif
						
	//????????,??????????
	
	if $vehicle >= 20 
		BC( "chat" , "player" , -1 , "Can only have up to 20 vessels in battle. Cannot use another vessel.")
		BC( "screen" , "player" , -1 , "Can only have up to 20 vessels in battle. Cannot use another vessel.")
		return
	endif	
	
	if $var1 == 0
		BC( "chat" , "player" , -1 , "This workshop has not been occupied by any side. Cannot produce vessels")
		BC( "screen" , "player" , -1 , "This workshop has not been occupied by any side. Cannot produce vessels")
		return
	endif
	
	if $var1 == 1
		if $zhenying == 1
			BC( "chat" , "player" , -1 , "This workshop is occupied by the Attacking Side. The Defending Side cannot produce vessels.")
			BC( "screen" , "player" , -1 , "This workshop is occupied by the Attacking Side. The Defending Side cannot produce vessels.")
			return
		endif
	endif
	
	if $var1 == 2 
		if $zhenying == 0 		
			BC( "chat" , "player" , -1 , "This workshop is occupied by the Defending Side. The Attacking Side cannot produce vessels.")
			BC( "screen" , "player" , -1 , "This workshop is occupied by the Defending Side. The Attacking Side cannot produce vessels.")
			return
		endif
	endif		
		
	if $rightvar == 0
		BC( "chat" , "player" , -1 , "This workbench is supporting 5 vessels already. No energy for a new vessel")
		BC( "screen" , "player" , -1 , "This workbench is supporting 5 vessels already. No energy for a new vessel")
		return
	endif
		
	//????
	if $var1 == 1
		AddGuildDomainVehicle(59261, $mapid, 258, 162 , 1 , $id , 1 , 1)
		$rightvar = $rightvar - 1
		SetEctypeVar($mapid , 29 , $rightvar)
	endif
	
	//????
	if $var1 == 2
		AddGuildDomainVehicle(59261, $mapid, 258, 162 , 1 , $id , 1 , 2)
		$rightvar = $rightvar - 1
		SetEctypeVar($mapid , 29 , $rightvar)
	endif	
			
	}
	
	
	function OnOption1(){
		
	$mapid = GetPlayerInfo( -1 , "mapid" )
	$rightvar = GetEctypeVar($mapid , 29)
	$temp_rightvar = 5 - $rightvar	
	
	if $rightvar == 0
		BC( "chat" , "player" , -1 , "This workbench is supporting 5 vessels already. No energy for a new vessel")
		BC( "screen" , "player" , -1 , "This workbench is supporting 5 vessels already. No energy for a new vessel")
	else
		BC( "chat" , "player" , -1 , "This workbench is supporting " , $temp_rightvar ," vessels. It can still produce ", $rightvar , " vessels.")
		BC( "screen" , "player" , -1 , "This workbench is supporting " , $temp_rightvar ," vessels. It can still produce ", $rightvar , " vessels.")
	endif	
	
}																	