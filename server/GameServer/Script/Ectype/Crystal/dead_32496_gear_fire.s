///****************************  
///  Copyright：PERFECT WORLD  
///  Modified：2013.2.25  
///  Author：曹楚蒨  
///  TaskName： 32496 冥火阵眼
///****************************  
	function OnDead(){

		//获取变量 副本
		
		$ectype_id = GetEctypeID(-1, 573)
		$var = GetEctypeVar($ectype_id,28)
		$var += 1
		SetEctypeVar($ectype_id,28,$var)

	}