	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/3
	//		Author:???(??,??,??)
	//		TaskName:???? ???????
	//		TaskID:52328_mon_h_1.s
	//
	//****************************************
	
	function OnDead(){

		//???? ??id 540,??????? 1

		$ectype_id = GetEctypeID(-1, 540)
		
		//????????
		$total = GetEctypeVar(-1, 98)
		$total = $total + 1
		SetEctypeVar(-1, 98, $total)
//		BC( "screen", "player", -1, "GUID:04555000000"$total)
		
		
	}