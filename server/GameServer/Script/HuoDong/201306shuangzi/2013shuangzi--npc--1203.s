	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013/06/05
	//		Author:??
	//		TaskName:2013shuangzi--npc--1203.s
	//		TaskID:??????-NPC??ú?
	//
	//****************************************
	
	function OnRequest(){
	//??
	$Now_Mday =  GetSystemTime( "mday" )
	//??
	$Now_Month =  GetSystemTime( "month" )
	//???.2008????
	$Now_Year =  GetSystemTime( "year" )
		$Line = GetServerLineID()
		if $Line != 6	
			DisableNpcOption(0)
			DisableNpcOption(1)
		endif
		if $Now_Year == 2013
			if $Now_Month == 7
				if $Now_Mday > 13
			DisableNpcOption(0)
			DisableNpcOption(1)
				endif
			endif
		endif
							
	}
	
	
	function OnOption0(){
		#name = GetPlayerInfo( -1, "name")
		$Line = GetServerLineID()
		if $Line != 6
			BC( "dialogbox", "player", -1, "Materials can only be turned in in Realm 6." )
			return
		endif
		//???????2?NPC?????
		$GetSerVar1 = GetServerVar( 413 )
		$GetSerVar2 = GetServerVar( 414 )
		$GetSerVar3 = $GetSerVar1 + $GetSerVar2
		BC( "dialogbox", "player", -1, "When Yin and Yang converge, Light and Darkness will appear. When they converge at levels of 500, 800, and 1000, treasure will appear in the Sea if Atlantis. \n Yang Convergency.",$GetSerVar1,"\n\nConverge:",$GetSerVar3,"" )
	}
	
	function OnOption1(){
		$GetSerVar1 = GetServerVar( 413 )
		$Line = GetServerLineID()
		if $Line != 6
			BC( "dialogbox", "player", -1, "Materials can only be turned in in Realm 6." )
			return
		endif
	$ItemID = 44893
		$Item = GetPlayerInfo( -1, "item", $ItemID )
		if $Item < 1 
			BC( "dialogbox", "player", -1, "You have none of this item." )
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 44893, 1 )
		if $SubItem != 0
			return
		endif
		$GetSerVar1 = $GetSerVar1 + 1
		SetServerVar( 413, $GetSerVar1 )
		
		$lv = GetPlayerInfo( -1 , "level" )
		//----------lv*lv*10*12+lv*lv*400-------------
		$a = $lv * $lv
		$b = 120 * $a
		$c = 400 * $a
		$exp1 = $b + $c
	
//----------6*(4*lv-76)*lv*lv/5 + 400*lv*lv-----
		$a = $lv * $lv
		$b = 4 * $lv
		$c = $b - 76
		$d = $c * $a
		$e = 6 * $d
		$f = $e / 5
		$g = 400 * $a
		$exp2 = $f + $g
//---------------------------------
			//?????
			//????? = ????^2+0.6*????+1000
			//????? = ????? * 60
			$fieldlevel = GetFieldLevel(-1)
			$godexp = $fieldlevel * $fieldlevel
			$b = $fieldlevel * 6
			$b = $b / 10
			$godexp = $godexp + $b
			$godexp = $godexp + 1000
			$godexp = $godexp * 60
	//????????????
			if $lv < 45
					AddPlayerInfo( -1 , "exp" , $exp1 )
				else
					AddPlayerInfo( -1 , "exp" , $exp2 )
			endif
			if $fieldlevel > 0
					AddFieldExp( -1 , $godexp )
			endif
			
			
	}