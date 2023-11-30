///****************************  
///  Copyright:PERFECT WORLD  
///  Modified:2013.2.25  
///  Author:???  
///  TaskName: 32478 ice
///****************************  

	function OnDead(){

		//???? ??
		
		$ectype_id = GetEctypeID(-1, 573)
		BC("screen","map",$ectype_id,"An Eye of Ice has disappeared!")
		$var = GetEctypeVar($ectype_id,32)
		$var += 1
		SetEctypeVar($ectype_id,32,$var)

	}