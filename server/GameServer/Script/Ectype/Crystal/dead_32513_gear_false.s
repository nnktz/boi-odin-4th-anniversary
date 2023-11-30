///****************************  
///  Copyright:PERFECT WORLD  
///  Modified:2013.2.25  
///  Author:???  
///  TaskName: 32513 ????-fales
///****************************  

	function OnDead(){

		//???? ??
		
		$ectype_id = GetEctypeID(-1, 573)
		BC("screen","map",$ectype_id,"This isn't the correct Eye! Try again!")
		$var = GetEctypeVar($ectype_id,58)
		$var += 1
		SetEctypeVar($ectype_id,58,$var)
		//------------??-------------------------
	  $lv = GetEctypeVar($ectype_id,5)
	  $fieldlevel = GetEctypeVar($ectype_id,6)
	   call exp()
	   $exp1 = $exp1 / 100
	   $exp2 = $exp2 / 100
	   $godexp = $godexp / 100
	   $playerID = GetPlayerID()
			if $playerID < 0
				return
			endif
	   $Cid = 0
			while $Cid < 6
			$teamplayer_id = GetTeamMemberID($playerID,$Cid)
			if $teamplayer_id > 0
				$lenD = GetPlayerDistance($playerID,$teamplayer_id )
				if $lenD < 9999
  					AddPlayerInfo( $teamplayer_id , "exp" , $exp2 )
						if $fieldlevel > 0
							AddFieldExp( $teamplayer_id , $godexp )
						endif
  				endif
  			endif
			$Cid = $Cid + 1
			endwhile		
		
//------------??-------------------------

	}
function exp(){
		
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
			$fieldlevel = GetEctypeVar($ectype_id,6)
			$godexp = $fieldlevel * $fieldlevel
			$b = $fieldlevel * 6
			$b = $b / 10
			$godexp = $godexp + $b
			$godexp = $godexp + 1000
			$godexp = $godexp * 60
			
			
//---------------------------------
}