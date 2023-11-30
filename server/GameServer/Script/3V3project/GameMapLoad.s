	//****************************************
	//		Copyright:PERFECT WORLD
	//		Modified:2013-02
	//		Author:???
	//		TaskName:
	//		TaskID:
	//****************************************
	
	function OnCreate(){

	}
	
	function InitTimer(){
		
		$ectype_id = GetCurEctypeID()
		$time = 1
		SetEctypeTimer(1,$time,"EctypeTimerNormal")
		$time = 30
		SetEctypeTimer(2,$time,"EctypeTimerMonster")
		$time = 5
		SetEctypeTimer(3,$time,"EctypeTimerExit")
		
	}
	
	function EctypeTimerNormal(){
		
		$ectype_ID = GetCurEctypeID()
		
//		BC("screen","map",$ectype_ID,"1")
//		StartEctypeTimer($ectype_ID,1)
//		BC("screen","map",$ectype_ID,"2")
		
	}
	
	function EctypeTimerMonster(){
		
		$ectype_ID = GetCurEctypeID()
//53249	????
		AddMonsterByFloat(53249,1,$ectype_ID,163,163,0)
		BC("screen","map",$ectype_ID,"Swift Seal Appears!")
		
	}
	
	function EctypeTimerExit(){
		
		$ectype_ID = GetCurEctypeID()
		if $ectype_ID > 0
			ReleaseEctype($ectype_ID)
		endif
		
		
	}