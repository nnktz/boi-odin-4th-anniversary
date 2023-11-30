	//****************************************
	//		Copyright:PERFECT WORLD
	//		Modified:2013-02
	//		Author:???
	//		TaskName:
	//		TaskID:
	//****************************************
	
	function OnDead(){
		
		$ectype_id = GetCurEctypeID()
		
		$campid = GetPlayerVar(-1,351)
		$key = 6 + $campid
		SetEctypeVar($ectype_id,$key,1)
		#name = GetPlayerInfo(-1,"name")
		BC("screen","map",$ectype_id,"Player ",#name," and party have opened the Swift Seal.")
		StartEctypeTimer($ectype_id,2)
		
	}
	
	