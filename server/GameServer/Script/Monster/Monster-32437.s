 	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013/03/21
	//		Author:???
	//		TaskName:??????
	//		TaskID:???????
	//****************************************
	
	function OnDead(){
		#name = GetPlayerInfo( -1, "name")
		$mapid = GetPlayerInfo( -1, "mapid")
		$x = GetPlayerInfo( -1, "mapx")
		$y = GetPlayerInfo( -1, "mapy")
		BC("screen", "server", -1 , #name ,"The party killed the Tainted Ocean Warrior and got plenty of rewards. Treasure Chests appear in Olympus.")
		BC("chat", "server", -1 , #name ,"The party killed the Tainted Ocean Warrior and got plenty of rewards. Treasure Chests appear in Olympus.")
		AddMonster( 32438 , 5 , $mapid , $x , $y , 15 )
		AddMonster( 32438 , 2 , $mapid , 40 , 89 , 15 )
    AddMonster( 32438 , 3 , $mapid , 64 , 84 , 15 )
    AddMonster( 32438 , 3 , $mapid , 81 , 85 , 15 )
    AddMonster( 32438 , 3 , $mapid , 68 , 94 , 15 )
    AddMonster( 32438 , 3 , $mapid , 89 , 69 , 15 )
    AddMonster( 32438 , 2 , $mapid , 70 , 70 , 15 )
    AddMonster( 32438 , 3 , $mapid , 43 , 79 , 15 )
    AddMonster( 32438 , 3 , $mapid , 43 , 64 , 15 )
		AddMonster( 32438 , 3 , $mapid , 39 , 50 , 15 )
		AddMonster( 32438 , 3 , $mapid , 54 , 49 , 15 )
		AddMonster( 32438 , 2 , $mapid , 63 , 55 , 15 )
		AddMonster( 32438 , 3 , $mapid , 83 , 57 , 15 )
		AddMonster( 32438 , 3 , $mapid , 94 , 53 , 15 )
		AddMonster( 32438 , 3 , $mapid , 80 , 37 , 15 )
		AddMonster( 32438 , 3 , $mapid , 73 , 44 , 15 )
		AddMonster( 32438 , 3 , $mapid , 94 , 34 , 15 )
		
	}