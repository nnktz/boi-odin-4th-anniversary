	//****************************************
	//		Copyright:PERFECT WORLD
	//		Modified:2013
	//		Author:???
	//		Best wishs for all !
	//****************************************
	
		
	function OnCreate(){
		
	}
	
	function InitTimer(){
		
		$ectype_id = GetCurEctypeID()
		SetEctypeTimer(0,1,"EctypeInt")
		StartEctypeTimer($ectype_id,0)
 
	}
				
	function EctypeInt(){
		
		$ectype_id = GetCurEctypeID()
		$stage_id = 580
		call addmapnpc()
		
		BC("screen","map",$ectype_id,"Pyramid opens!")
		
	}
	
	function addmapnpc(){
		
		if $stage_id == 575
			AddNPC(1181,$ectype_id)
			AddNPC(1182,$ectype_id)
			AddNPC(1183,$ectype_id)
		endif
		if $stage_id == 576
			AddNPC(1184,$ectype_id)
			AddNPC(1185,$ectype_id)
			AddNPC(1186,$ectype_id)
		endif
		if $stage_id == 577
			AddNPC(315,$ectype_id)
			AddNPC(316,$ectype_id)
			AddNPC(318,$ectype_id)
			AddNPC(1061,$ectype_id)
			AddNPC(1761,$ectype_id)
			AddNPC(1762,$ectype_id)
		endif
		if $stage_id == 578
			AddNPC(319,$ectype_id)
			AddNPC(320,$ectype_id)
			AddNPC(321,$ectype_id)
			AddNPC(1062,$ectype_id)
			AddNPC(1765,$ectype_id)
			AddNPC(1766,$ectype_id)
		endif
		if $stage_id == 579
			AddNPC(323,$ectype_id)
			AddNPC(324,$ectype_id)
			AddNPC(325,$ectype_id)
			AddNPC(1063,$ectype_id)
			AddNPC(1736,$ectype_id)
			AddNPC(1737,$ectype_id)
			AddNPC(1738,$ectype_id)
			AddNPC(1739,$ectype_id)
			AddNPC(1740,$ectype_id)
			AddNPC(1741,$ectype_id)
			AddNPC(1742,$ectype_id)
			AddNPC(1743,$ectype_id)
			AddNPC(1744,$ectype_id)
			AddNPC(1745,$ectype_id)
			AddNPC(1746,$ectype_id)
			AddNPC(1747,$ectype_id)
			AddNPC(1748,$ectype_id)
			AddNPC(1749,$ectype_id)
			AddNPC(1750,$ectype_id)
			AddNPC(1751,$ectype_id)
			AddNPC(1752,$ectype_id)
			AddNPC(1753,$ectype_id)
			AddNPC(1754,$ectype_id)
			AddNPC(1758,$ectype_id)
			AddNPC(1759,$ectype_id)
			AddNPC(1760,$ectype_id)
		endif
		if $stage_id == 580
			AddNPC(327,$ectype_id)
			AddNPC(328,$ectype_id)
			AddNPC(329,$ectype_id)
			AddNPC(1064,$ectype_id)
			AddNPC(1763,$ectype_id)
			AddNPC(1764,$ectype_id)
		endif
		
	}