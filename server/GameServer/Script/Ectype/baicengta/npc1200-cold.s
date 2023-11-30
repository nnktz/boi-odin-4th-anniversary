	//****************************************
	//		Copyright:PERFECT WORLD
	//		Modified:2013
	//		Author:???
	//		Best wishs for all !
	//		
	//****************************************
	function OnRequest(){
		
		
		
	}
	
	function OnOption0(){
		
		$ectepe_id = GetCurEctypeID()
		$gg = GetEctypeVar($ectepe_id,11)
		if $gg == 0
			SetEctypeVar($ectepe_id,10,1)
			SetEctypeVar($ectepe_id,11,1)
			BC("screen","player",-1,"I am not sure what happened!")
			BC("chat","player",-1,"I am not sure what happened!")
			DeleteNPC(1200,$ectepe_id)
		endif
		
	}