///****************************  
///  Copyright:PERFECT WORLD  
///  Modified:2013.2.25  
///  Author:???  
///  TaskName: 32524	??
///****************************  
//32506	????
//32507	????(??)
//32525	????
//32486	????       
//??	131	170	133	166	131	162	135	161	129	159	124	158
	function OnDead(){

		//???? ??id 541
		
		$ectype_id = GetEctypeID(-1, 573)
		$var = GetEctypeVar(-1,0)
		if $var == 1
	 		$turn = GetEctypeVar(-1, 30)
			$turn = $turn + 1
			SetEctypeVar($ectype_id,30,$turn)
			BC("screen","map",$ectype_id,"Flame Genie: ",$turn,"/10")
			if $turn == 10
				$mon2 = 32532
		//????
//				AddMonsterByFloat( $mon2 , 1, $ectype_id, 62, 155, 1 ,0 ,180 )		
//				AddMonsterByFloat( $mon2 , 1, $ectype_id, 64, 153, 1 ,0 ,180 )	
//				AddMonsterByFloat( $mon2 , 1, $ectype_id, 66, 151, 1 ,0 ,180 )	
//				AddMonsterByFloat( $mon2 , 1, $ectype_id, 68, 149, 1 ,0 ,180 )	
//				AddMonsterByFloat( $mon2 , 1, $ectype_id, 70, 147, 1 ,0 ,180 )
//				
//				AddMonsterByFloat( $mon2 , 1, $ectype_id, 63, 160, 1 ,0 ,180 )		
//				AddMonsterByFloat( $mon2 , 1, $ectype_id, 65, 162, 1 ,0 ,180 )	
//				AddMonsterByFloat( $mon2 , 1, $ectype_id, 67, 164, 1 ,0 ,180 )	
//				AddMonsterByFloat( $mon2 , 1, $ectype_id, 69, 146, 1 ,0 ,180 )	
//				AddMonsterByFloat( $mon2 , 1, $ectype_id, 71, 148, 1 ,0 ,180 )	
				SetEctypeVar($ectype_id,50,6)
			endif
		endif		
	}