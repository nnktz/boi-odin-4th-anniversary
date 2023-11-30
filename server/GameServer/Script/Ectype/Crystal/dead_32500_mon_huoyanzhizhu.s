///****************************  
///  Copyright：PERFECT WORLD  
///  Modified：2013.2.25  
///  Author：曹楚蒨  
///  TaskName： 32500 火焰之柱-mainAI 
///****************************  

	function OnDead(){

		//获取变量 副本id 541
		
		$ectype_id = GetEctypeID(-1, 573)
		$var = GetEctypeVar(-1,0)
//		if $var == 1
 		$turn = GetEctypeVar(-1, 51)
		
		$turn = $turn - 1
		SetEctypeVar($ectype_id,51,$turn)
		if $turn == 0
			//32500	火焰之柱   
			$mon2 = 32500 
			AddMonsterByFloat( $mon2 , 1, $ectype_id, 77, 164, 1 ,0 ,180 )		
			AddMonsterByFloat( $mon2 , 1, $ectype_id, 74, 150, 1 ,0 ,180 )	
			AddMonsterByFloat( $mon2 , 1, $ectype_id, 62, 151, 1 ,0 ,180 )	
			AddMonsterByFloat( $mon2 , 1, $ectype_id, 60, 161, 1 ,0 ,180 )		
			SetEctypeVar($ectype_id,51,4)
	//		$numhy = GetEctypeVar($ectype_id,52)
	//		$HPboss = GetEctypeVar($ectype_id,50)
	//		if $HPboss > 8
	//		$numhy += 1
	//		SetEctypeVar($ectype_id,52,$numhy)
	//		endif
			endif
	//	endif		
	}