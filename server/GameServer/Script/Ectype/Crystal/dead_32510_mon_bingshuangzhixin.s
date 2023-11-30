///****************************  
///  Copyright：PERFECT WORLD  
///  Modified：2013.2.25  
///  Author：曹楚蒨  
///  TaskName： 32510 冰霜之心
///****************************  

	function OnDead(){

		//获取变量 副本
		
		$ectype_id = GetEctypeID(-1, 573)
		$var = GetEctypeVar(-1,0)
//		if $var == 1
 		$turn = GetEctypeVar(-1, 54)
		$turn = $turn - 1
		SetEctypeVar($ectype_id,54,$turn)
		if $turn <= 0

			SetEctypeVar($ectype_id,54,0)
		endif
	
	}