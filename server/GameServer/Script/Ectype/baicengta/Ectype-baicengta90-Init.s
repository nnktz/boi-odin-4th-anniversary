	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/02/20
	//		Author:???
	//		TaskName:Ectype-baicengta90-Init.s
	//		TaskID:
	//
	//****************************************
	
	// ?????????:3327
	// ????????????:1
	// ????????????:2
	// ?????????????:3(???1,???0)
	// ?????????????:4(???1,???0)
	// ?????????:5
	// ?????????:6
	
	function OnCreate(){
		
		
		
	}
	function InitTimer(){
		$ectype_ID = GetCurEctypeID()
		$result = SetEctypeTimer( 1 , 1 , "EctypeTime1" )
		$result = SetEctypeTimer( 2 , 1 , "EctypeTime2" )
		$result = SetEctypeTimer( 3 , 90 , "EctypeTime3" )
		$result = SetEctypeTimer( 4 , 90 , "EctypeTime4" )
		$result = SetEctypeTimer( 5 , 90 , "EctypeTime5" )
		$result = SetEctypeTimer( 6 , 90 , "EctypeTime6" )
		StartEctypeTimer ($ectype_ID,1)
		StartEctypeTimer ($ectype_ID,2)
	}
			
	function EctypeTime1(){
		
		$ectype_ID = GetCurEctypeID()
		
		//??NPC
		AddNpcByPos( 2467, $ectype_ID, 254, 155, 180000, 0 )
		AddNpcByPos( 1635, $ectype_ID, 190, 156, 180000, 0 )
		
		//?????
		AddMonsterByFloat( 55372, 1, $ectype_ID, 183, 149, 0, 0, 135 )
		AddMonsterByFloat( 55373, 1, $ectype_ID, 196, 147, 0, 0, 225 )
		AddMonsterByFloat( 55374, 1, $ectype_ID, 197, 163, 0, 0, 315 )
		AddMonsterByFloat( 55375, 1, $ectype_ID, 183, 162, 0, 0, 45 )
		
	}
			
	function EctypeTime2(){
		
		$ectype_ID = GetCurEctypeID()
		$kaishi = GetEctypeVar($ectype_ID,15)
		$wanquan = GetEctypeVar($ectype_ID,16)
		if $kaishi < 1
			DeleteNPC(1631 , $ectype_ID)
			DeleteNPC(1632 , $ectype_ID)
			DeleteNPC(1633 , $ectype_ID)
			DeleteNPC(1634 , $ectype_ID)
		endif
		if $kaishi == 1
			AddNpcByPos( 1631, $ectype_ID, 184, 150, 180000, 0 )
			AddNpcByPos( 1632, $ectype_ID, 195, 148, 180000, 0 )
			AddNpcByPos( 1633, $ectype_ID, 196, 162, 180000, 0 )
			AddNpcByPos( 1634, $ectype_ID, 184, 161, 180000, 0 )
			SetEctypeVar($ectype_ID,15,2)
		endif
		if $wanquan > 0
			DeleteNPC(1631 , $ectype_ID)
			DeleteNPC(1632 , $ectype_ID)
			DeleteNPC(1633 , $ectype_ID)
			DeleteNPC(1634 , $ectype_ID)
		endif
		
		$is25 = GetEctypeVar($ectype_ID,35)
		if $is25 == 1
			$playerid = GetEctypeVar($ectype_ID,110)
			RemoveStatusByID($playerid,10222)
			RemoveStatusByID($playerid,10116)
			RemoveStatusByID($playerid,10205)
			RemoveStatusByID($playerid,10123)
			RemoveStatusByID($playerid,10015)
			
			RemoveStatusByID($playerid,1)
//			#name = GetPlayerInfo($playerid,"name")
//			BC("screen","map",$ectype_ID,#name,"GUID:03891000000")
		endif
		
		StartEctypeTimer($ectype_ID,2)
		
	}
			
	function EctypeTime3(){
		
		$ectype_ID = GetCurEctypeID()
		AddNpcByPos( 1631, $ectype_ID, 184, 150, 180000, 0 )
		
	}
			
	function EctypeTime4(){
		
		$ectype_ID = GetCurEctypeID()
		AddNpcByPos( 1632, $ectype_ID, 195, 148, 180000, 0 )
		
	}
			
	function EctypeTime5(){
		
		$ectype_ID = GetCurEctypeID()
		AddNpcByPos( 1633, $ectype_ID, 196, 162, 180000, 0 )
		
	}
			
	function EctypeTime6(){
		
		$ectype_ID = GetCurEctypeID()
		AddNpcByPos( 1634, $ectype_ID, 184, 161, 180000, 0 )
		
	}