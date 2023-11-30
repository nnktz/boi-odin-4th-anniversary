 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013/03/21
	//		Author:???
	//		TaskName:BOSS??
	//		TaskID:???????
	//****************************************
	
	function OnDead(){
		#name = GetPlayerInfo( -1, "name")
		$mapid = GetPlayerInfo( -1, "mapid")
		$x = GetPlayerInfo( -1, "mapx")
		$y = GetPlayerInfo( -1, "mapy")
		BC("screen", "server", -1 , #name ,"The party killed Loki and received a lot of rewards. Treasure Chests have appeared in Olympus!")
		BC("chat", "server", -1 , #name ,"The party killed Loki and received a lot of rewards. Treasure Chests have appeared in Olympus!")
		AddMonster( 32438 , 10 , $mapid , $x , $y , 20 )
		AddMonster( 32438 , 10 , $mapid , 40 , 89 , 20 )
    AddMonster( 32438 , 12 , $mapid , 64 , 84 , 20 )
    AddMonster( 32438 , 12 , $mapid , 81 , 85 , 20 )
    AddMonster( 32438 , 12 , $mapid , 68 , 94 , 20 )
    AddMonster( 32438 , 12 , $mapid , 89 , 69 , 20 )
    AddMonster( 32438 , 12 , $mapid , 70 , 70 , 20 )
    AddMonster( 32438 , 12 , $mapid , 43 , 79 , 20 )
    AddMonster( 32438 , 12 , $mapid , 43 , 64 , 20 )
		AddMonster( 32438 , 12 , $mapid , 39 , 50 , 20 )
		AddMonster( 32438 , 12 , $mapid , 54 , 49 , 20 )
		AddMonster( 32438 , 12 , $mapid , 63 , 55 , 20 )
		AddMonster( 32438 , 12 , $mapid , 83 , 57 , 20 )
		AddMonster( 32438 , 12 , $mapid , 94 , 53 , 20 )
		AddMonster( 32438 , 12 , $mapid , 80 , 37 , 20 )
		AddMonster( 32438 , 12 , $mapid , 73 , 44 , 20 )
		AddMonster( 32438 , 12 , $mapid , 94 , 34 , 20 )
		
	}