///****************************  
///  Copyright:PERFECT WORLD  
///  Modified:2013.2.25  
///  Author:???  
///  TaskName: 32471 1-1??
///****************************  
//	$mon1 = 32471
//	$mon2 = 32468
	function OnDead(){

		//???? ??
		
		$ectype_id = GetEctypeID(-1, 573)
		$turn = GetEctypeVar(-1, 13)
		$turn = $turn + 1
		SetEctypeVar($ectype_id,13,$turn)
		$mon1 = 32531
		$varline = GetEctypeVar($ectype_id,0) 
		if $varline == 1 
			if $turn < 11
				BC("screen","map",$ectype_id,"Flame Guardians killed: ",$turn,"/10")
				$stand = GetEctypeVar($ectype_id,71)
				$stand = $stand - 3
				SetEctypeVar($ectype_id,71,$stand)
			endif  
			if $turn == 11
				AddMonsterByFloat( $mon1 , 1, $ectype_id, 120, 117, 1 ,0 ,180 )		
				OpenMask(2,$ectype_id)
				StartEctypeTimer($ectype_id,0)	
//				------------------diaoluo Start--------------
				$playerID = GetPlayerID()
				if $playerID < 0
					return
				endif
				$dropitemDbase = 90298
				$Cid = 0
				while $Cid < 6
					$teamplayer_id = GetTeamMemberID($playerID,$Cid)
					if $teamplayer_id > 0
						$lenD = GetPlayerDistance($playerID,$teamplayer_id )
						if $lenD < 9999
	  						DropMonsterItems($teamplayer_id,$dropitemDbase)
	  					endif
	  				endif
					$Cid = $Cid + 1
				endwhile		
//				------------------diaoluo Start--------------		
			endif
		endif
		if $varline == 21  
			if $turn == 10
				$level = GetEctypeVar($ectype_id,5)
				$flevel = GetEctypeVar($ectype_id,6)
				$posx = GetPlayerInfo(-1,"mapx")
				$posy = GetPlayerInfo(-1,"mapy")
				$mon2 = 32468
				$posx1 = $posx + 2
				$posy1 = $posy - 2
				$posx2 = $posx - 2
				$posy2 = $posy + 2
				if $flevel > 0			
					AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,$posx , $posy , 1 )	
					AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,$posx1, $posy1, 1 )	
					AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,$posx2, $posy1, 1 )	
					AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,$posx1, $posy2, 1 )	
					AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,$posx2, $posy2, 1 )		
					AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,$posx , $posy , 1 )	
					AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,$posx1, $posy1, 1 )	
					AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,$posx2, $posy1, 1 )	
					AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,$posx1, $posy2, 1 )	
					AddLevelFieldMonster( $mon2,256,$level,256,$flevel,1,$ectype_id,$posx2, $posy2, 1 )					
				else
					AddLevelMonster( $mon2,256,$level,1,$ectype_id,$posx , $posy , 1 )	
					AddLevelMonster( $mon2,256,$level,1,$ectype_id,$posx1, $posy1, 1 )	
					AddLevelMonster( $mon2,256,$level,1,$ectype_id,$posx2, $posy1, 1 )	
					AddLevelMonster( $mon2,256,$level,1,$ectype_id,$posx1, $posy2, 1 )	
					AddLevelMonster( $mon2,256,$level,1,$ectype_id,$posx2, $posy2, 1 )
					AddLevelMonster( $mon2,256,$level,1,$ectype_id,$posx , $posy , 1 )	
					AddLevelMonster( $mon2,256,$level,1,$ectype_id,$posx1, $posy1, 1 )	
					AddLevelMonster( $mon2,256,$level,1,$ectype_id,$posx2, $posy1, 1 )	
					AddLevelMonster( $mon2,256,$level,1,$ectype_id,$posx1, $posy2, 1 )	
					AddLevelMonster( $mon2,256,$level,1,$ectype_id,$posx2, $posy2, 1 )	
				endif                                
			endif
			if $turn == 20
			$level = GetEctypeVar($ectype_id,5)
			$flevel = GetEctypeVar($ectype_id,6)
			$posx = GetPlayerInfo(-1,"mapx")
			$posy = GetPlayerInfo(-1,"mapy")
			$mon2 = 32468
			$posx1 = $posx + 2
			$posy1 = $posy - 2
			$posx2 = $posx - 2
			$posy2 = $posy + 2
			if $flevel > 0			
			AddLevelFieldMonster( $mon2,257,$level,257,$flevel,1,$ectype_id,$posx , $posy , 1 )	
			AddLevelFieldMonster( $mon2,257,$level,257,$flevel,1,$ectype_id,$posx1, $posy1, 1 )	
			AddLevelFieldMonster( $mon2,257,$level,257,$flevel,1,$ectype_id,$posx2, $posy1, 1 )	
			AddLevelFieldMonster( $mon2,257,$level,257,$flevel,1,$ectype_id,$posx1, $posy2, 1 )	
			AddLevelFieldMonster( $mon2,257,$level,257,$flevel,1,$ectype_id,$posx2, $posy2, 1 )		
			AddLevelFieldMonster( $mon2,257,$level,257,$flevel,1,$ectype_id,$posx , $posy , 1 )	
			AddLevelFieldMonster( $mon2,257,$level,257,$flevel,1,$ectype_id,$posx1, $posy1, 1 )	
			AddLevelFieldMonster( $mon2,257,$level,257,$flevel,1,$ectype_id,$posx2, $posy1, 1 )	
			AddLevelFieldMonster( $mon2,257,$level,257,$flevel,1,$ectype_id,$posx1, $posy2, 1 )	
			AddLevelFieldMonster( $mon2,257,$level,257,$flevel,1,$ectype_id,$posx2, $posy2, 1 )					
			else
			AddLevelMonster( $mon2,257,$level,1,$ectype_id,$posx , $posy , 1 )	
			AddLevelMonster( $mon2,257,$level,1,$ectype_id,$posx1, $posy1, 1 )	
			AddLevelMonster( $mon2,257,$level,1,$ectype_id,$posx2, $posy1, 1 )	
			AddLevelMonster( $mon2,257,$level,1,$ectype_id,$posx1, $posy2, 1 )	
			AddLevelMonster( $mon2,257,$level,1,$ectype_id,$posx2, $posy2, 1 )
			AddLevelMonster( $mon2,257,$level,1,$ectype_id,$posx , $posy , 1 )	
			AddLevelMonster( $mon2,257,$level,1,$ectype_id,$posx1, $posy1, 1 )	
			AddLevelMonster( $mon2,257,$level,1,$ectype_id,$posx2, $posy1, 1 )	
			AddLevelMonster( $mon2,257,$level,1,$ectype_id,$posx1, $posy2, 1 )	
			AddLevelMonster( $mon2,257,$level,1,$ectype_id,$posx2, $posy2, 1 )	
			endif                                
			endif 
			if $turn < 31
				BC("screen","map",$ectype_id,"Flame Guardians killed: ",$turn)
				$stand = GetEctypeVar($ectype_id,71)
				$stand = $stand - 1
				SetEctypeVar($ectype_id,71,$stand)
			endif
			if $turn == 31 
		//	AddMonsterByFloat( $mon1 , 1, $ectype_id, 112, 122, 1 ,0 ,180 )		
				OpenMask(8,$ectype_id)
				StartEctypeTimer($ectype_id,1)	
				//				------------------diaoluo Start--------------
				$playerID = GetPlayerID()
				if $playerID < 0
					return
				endif
				$dropitemDbase = 90298
				$Cid = 0
				while $Cid < 6
					$teamplayer_id = GetTeamMemberID($playerID,$Cid)
					if $teamplayer_id > 0
						$lenD = GetPlayerDistance($playerID,$teamplayer_id )
						if $lenD < 9999
	  						DropMonsterItems($teamplayer_id,$dropitemDbase)
	  					endif
	  				endif
					$Cid = $Cid + 1
				endwhile		
//				------------------diaoluo Start--------------		
			endif
		endif		
	}