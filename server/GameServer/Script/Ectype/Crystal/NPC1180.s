 //****************************  
 //  Copyright��PERFECT WORLD  
 //  Modified��2013.2.25  
 //  Author���ܳ��`  
 //  TaskName�� 1180-1193 ����
 //****************************  
function OnRequest(){ 
} 
//1:�뿪
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
//2:�һ�����
