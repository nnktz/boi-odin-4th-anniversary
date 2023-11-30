///****************************  
///  Copyright:PERFECT WORLD  
///  Modified:2013.2.25  
///  Author:???  
///  TaskName: 32508 ????
///****************************  

	function OnDead(){

		//???? ??
		
		$ectype_id = GetEctypeID(-1, 573)
		BC("screen","map",$ectype_id,"You've found the correct Eye! Nice work!")
		$var = GetEctypeVar($ectype_id,0)
		DeleteMonster($ectype_id,32508)
		DeleteMonster($ectype_id,32513)
		DeleteMonster($ectype_id,32527)
		$var1 = GetEctypeVar($ectype_id,58)
		$var1 += 1
		SetEctypeVar($ectype_id,58,$var1)
		if $var == 1
			OpenMask(5,$ectype_id)
			StartEctypeTimer($ectype_id,0)
			
		endif
		if $var == 32
			OpenMask(6,$ectype_id)
			StartEctypeTimer($ectype_id,2)
		endif
		

	}