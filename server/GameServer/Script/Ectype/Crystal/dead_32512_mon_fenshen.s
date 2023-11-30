///****************************  
///  Copyright:PERFECT WORLD  
///  Modified:2013.2.25  
///  Author:???  
///  TaskName: 32512 ???
///****************************  

	function OnDead(){

		//???? ??
		
		$ectype_id = GetEctypeID(-1, 573)
		BC("screen","map",$ectype_id,"Obsidia's power source has been interrupted, weakening her temporarily!")
		//E:\????3.70\Data\Effect\skill\Monster\boss\haidaobinghuan\fire\tx_boss_haidaobinghuan_fire.ini
		PlayEffect(-1,"skill\Monster\boss\haidaobinghuan\fire\tx_boss_haidaobinghuan_fire.ini")
	//	$var = GetEctypeVar($ectype_id,0)
		$monsterid = 32514
		DeleteMonster($ectype_id,$monsterid)
		DeleteMonster($ectype_id,32512)
		SetEctypeVar($ectype_id,60,1)
	}