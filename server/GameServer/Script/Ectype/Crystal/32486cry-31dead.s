///****************************  
///  Copyright:PERFECT WORLD  
///  Modified:2013.2.25  
///  Author:???  
///  TaskName: 32486	????
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
		$turn = GetEctypeVar(-1, 17)
		$turn = $turn + 1
		SetEctypeVar($ectype_id,17,$turn)
		if $turn < 3
			$left = 3 - $turn
			BC("screen","map",$ectype_id,"Crystal Gates remaining: ",$left,"/3")
			
		endif
		if $turn == 3
			BC("screen","map",$ectype_id,"The next gate has opened!")
			PlayEffect(-1, "skill\Common\zhendongguai\tx_zhendongguai_keep.ini" )
			if $var == 31
			OpenMask(14,$ectype_id)
			StartEctypeTimer($ectype_id,4)	
			endif
			if $var == 22
			OpenMask(12,$ectype_id)
			StartEctypeTimer($ectype_id,3)	
			endif
			
		endif		
	}