 //****************************  
 //  Copyright£ºPERFECT WORLD  
 //  Modified£º2013.2.25  
 //  Author£º²Ü³þÉ`  
 //  TaskName£º 1180-1193 ´«ËÍ
 //****************************  
function OnRequest(){ 
} 
//1:Àë¿ª
function OnOption0(){ 
	$ectype_id = GetEctypeID(-1, 573)
			$map_x = 144
			$map_y = 168
			$map_x *= 100
			$map_x /= 256
			$map_y *= 100
			$map_y /= 256
			FlyToMap( -1, $ectype_id, $map_x, $map_y)
} 
//2:¶Ò»»½±Àø
