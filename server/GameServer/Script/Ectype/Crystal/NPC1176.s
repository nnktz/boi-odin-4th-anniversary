 //****************************  
 //  Copyright：PERFECT WORLD  
 //  Modified：2013.2.25  
 //  Author：曹楚蒨  
 //  TaskName： 1176谜之少年 
 //****************************  
function OnRequest(){ 
	$ectype_id = GetEctypeID(-1, 573)
	$var = GetEctypeVar($ectype_id,56)
	if $var != 0
	DisableNpcOption(0)
	endif
} 
//开始刷怪
function OnOption0(){ 
	$ectype_id = GetEctypeID(-1, 573)
	$mon3 = 32527		
		$rand1 = RandomNumber(1,2)
				$mon1 = 32508
				$mon2 = 32513
				if $rand1 == 1 
				AddMonsterByFloat( $mon1 , 1, $ectype_id,222,244, 1 ,0 ,180 )		
				AddMonsterByFloat( $mon2 , 1, $ectype_id,218,252, 1 ,0 ,180 )		
				endif
				if $rand1 == 2 
				AddMonsterByFloat( $mon1 , 1, $ectype_id, 218,252, 1 ,0 ,180 )		
				AddMonsterByFloat( $mon2 , 1, $ectype_id, 222,244, 1 ,0 ,180 )		
				endif		
	AddMonsterByFloat( $mon3 , 1, $ectype_id, 220, 248, 1 ,180 )	
	SetEctypeVar($ectype_id,56,1)	
} 
