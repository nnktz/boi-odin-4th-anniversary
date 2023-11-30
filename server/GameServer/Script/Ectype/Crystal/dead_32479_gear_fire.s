///****************************  
///  Copyright:PERFECT WORLD  
///  Modified:2013.2.25  
///  Author:???  
///  TaskName: 32479????
///****************************  

	function OnDead(){

		//???? ??
		
		$ectype_id = GetEctypeID(-1, 573)
		BC("screen","map",$ectype_id,"An Eye of Flame has disappeared!")
		$var = GetEctypeVar($ectype_id,33)
		$var += 1
		SetEctypeVar($ectype_id,33,$var)

	}