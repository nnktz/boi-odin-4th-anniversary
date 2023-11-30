	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013-3-3
	//		Author:??
	//		TaskName:
	//		TaskID:?????
	//****************************************
	
	function OnUseItem(){
		$level = GetFieldLevel(-1)
		if $level < 1
			BC("screen","player",-1,"Not activated yet. Unable to use!")
			return
		endif
		$n = GetPlayerVar(-1,357)
		if $n == 1
			return
		endif
		SubPlayerInfo(-1,"item",44705,1)
		AddFieldPoint(-1,5)
		SetPlayerVar(-1,357,1)
		BC("screen","player",-1,"Acquired 5 Exalted Skill Points!")
	}