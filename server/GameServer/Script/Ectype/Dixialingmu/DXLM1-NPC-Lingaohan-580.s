	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/07/31
	//		Author:???(??,??,??)
	//		TaskName:???478-1?NPC???580
	//		TaskID:DXLM1-NPC-Lingaohan-680.s
	//
	//****************************************
	
	function OnRequest(){
//	//???? ??ID 478,??????94--0?1?
//	$ectype_id = GetEctypeID(-1, 478)
//	$is = GetEctypeVar(-1, 94)
//	if $is == 1
//		DisableNpcOption(0)
//		return
//	endif		


}

	function OnOption0(){
	
	//???? ??id 478, ????99--?1?2, ??????94--0?1? ???? 98
	$ectype_id = GetEctypeID(-1, 478)
	$is = GetEctypeVar(-1, 94)
	$count = GetEctypeVar(-1, 98)
	
	//??????
	if $is == 1
		if $count < 10
			BC( "dialogbox", "player", -1, "Dark Ants Army is rushing towards us. Hurry up!")
		else
			BC( "dialogbox", "player", -1, "Seems everything is in order. The gate has been opened and we can keep going.")
			BC( "chat", "player", -1, "It seems you can enter the tomb from the gate on my left. There was thunder just now, it was scary.")
			return
		endif
	endif

	$size = GetTeamAreaSize(-1)
		if $size > 10
			BC( "dialogbox", "player", -1, "Your party members are too far away!" )
			return
		endif	
	
	//??10
		AddMonsterByFloat(51773, 1, $ectype_id, 49, 171, 0)
		AddMonsterByFloat(51773, 1, $ectype_id, 49, 174, 0)
		AddMonsterByFloat(51773, 1, $ectype_id, 48, 176, 0)
		AddMonsterByFloat(51773, 1, $ectype_id, 44, 176, 0)
		AddMonsterByFloat(51773, 1, $ectype_id, 42, 175, 0)
		AddMonsterByFloat(51773, 1, $ectype_id, 41, 168, 0)
		AddMonsterByFloat(51773, 1, $ectype_id, 44, 180, 0)
		AddMonsterByFloat(51773, 1, $ectype_id, 48, 180, 0)
		AddMonsterByFloat(51773, 1, $ectype_id, 37, 168, 0)
		AddMonsterByFloat(51773, 1, $ectype_id, 41, 168, 0)
		AddMonsterByFloat(51773, 1, $ectype_id, 41, 169, 0)
		AddMonsterByFloat(51773, 1, $ectype_id, 41, 169, 0)
		BC("screen", "map", $ectype_id, "Dark Ants are rushing over here. Be careful when dealing with them!")
	
	//?????1
	SetEctypeVar(-1, 94, 1)
	
	
		

}