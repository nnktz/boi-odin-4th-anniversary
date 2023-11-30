	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/08/06
	//		Author:???
	//		TaskName:100??
	//		TaskID:.s
	//
	//****************************************
	
	function OnRequest(){
		
	}
	
	function OnOption0(){
		$ectype_id = GetCurEctypeID()
		AddMonsterByFloat( 55381, 1,$ectype_id, 183, 156, 0 )
		BC( "chat", "player", -1, "A searing heat lashes at your skin as the entire area grows hotter and hotter.")
		BC( "screen", "player", -1, "A searing heat lashes at your skin as the entire area grows hotter and hotter.")
		DeleteNPC(1636 , $ectype_id)
			$playerid = GetEctypeVar($ectype_id,110)
			RemoveStatusByID($playerid,10222)
			RemoveStatusByID($playerid,10116)
			RemoveStatusByID($playerid,10205)
			RemoveStatusByID($playerid,10123)
			RemoveStatusByID($playerid,10015)
			RemoveStatusByID($playerid,10326)
			RemoveStatusByID($playerid,10322)
			
RemoveStatusByID($playerid,4163)
RemoveStatusByID($playerid,7685)
RemoveStatusByID($playerid,7686)
RemoveStatusByID($playerid,7687)
RemoveStatusByID($playerid,7688)
RemoveStatusByID($playerid,7689)
RemoveStatusByID($playerid,7812)
RemoveStatusByID($playerid,7874)
RemoveStatusByID($playerid,10025)
RemoveStatusByID($playerid,10403)
RemoveStatusByID($playerid,11285)
RemoveStatusByID($playerid,11303)
RemoveStatusByID($playerid,11346)
RemoveStatusByID($playerid,11354)
RemoveStatusByID($playerid,11946)
RemoveStatusByID($playerid,11950)
RemoveStatusByID($playerid,11955)
RemoveStatusByID($playerid,11960)
RemoveStatusByID($playerid,14025)

			#name = GetPlayerInfo($playerid,"name")
//			BC("screen","map",$ectype_id,#name,"GUID:03919000002")
		DeleteMonster($ectype_id,55382)

	}