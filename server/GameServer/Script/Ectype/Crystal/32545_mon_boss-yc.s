//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2011/12
	//		Author:???
	//		TaskName:32545??boss??
	//		TaskID:32545_mon_boss_yc
	//
	//****************************************
	
	function OnDead(){


//--------------????------------------------------
//--??? 90243?????
	$playerID = GetPlayerID()
		if $playerID < 0
			return
		endif
//------------------------------------------
//------------------------------------------
    $dropitemD1 = 90305
		$dropitemDbase = 90304
		$severid = 395
		//$droped = 0
		//$droped2 = 0
		
		$teamD_count = 0
		$Cid = 0
		  while $Cid < 6
	    	$teamplayer_id = GetTeamMemberID($playerID,$Cid)
	    	if $teamplayer_id > 0
	    	$lenD = GetPlayerDistance($playerID,$teamplayer_id )
	    		if $lenD < 9999
	    			$teamD_count = $teamD_count + 1
	    		endif
	    	endif
	    	$Cid = $Cid + 1
	    endwhile
		 $var = GetServerVar($severid)
			$var = $var + 1
			SetServerVar($severid,$var)
		 
		  $maskD = 60 / $teamD_count
		  $maskD2 = $maskD
		  $randbuff = RandomNumber( 0 , 59 )
//	  	BC("chat","server",-1,"teamD_count = ",$teamD_count)
		  $Cid = 0
		  while $Cid < 6
//	  		BC("chat","server",-1,"Cid = ",$Cid)
		  	$teamplayer_id = GetTeamMemberID($playerID,$Cid)
		  	if $teamplayer_id > 0
		  		$lenD = GetPlayerDistance($playerID,$teamplayer_id )
		  		if $lenD < 9999
  	  			if $randbuff < $maskD2
  	  			  if $var == 1000
 		  			     	DropMonsterItems($teamplayer_id,$dropitemD1)
 		  			     		#name = GetPlayerInfo( $teamplayer_id, "name" )
 		  			     		BC( "screen", "server", -1, "The hero ",#name," defeated Garnet in Quartz Grotto and obtained a Pyrope Pet Egg!" )
 										BC( "chat", "server", -1, "The hero ",#name," defeated Garnet in Quartz Grotto and obtained a Pyrope Pet Egg!" )

  	  			    	$maskD2 = -999
  	  			   else
  	  			   		$random = RandomNumber(1,9999)
  	  			   		if $random == 9999 
  	  			   			DropMonsterItems($teamplayer_id,$dropitemD1)
  	  			   			BC( "screen", "server", -1, "The hero ",#name," defeated Garnet in Quartz Grotto and obtained a Pyrope Pet Egg!" )
 										BC( "chat", "server", -1, "The hero ",#name," defeated Garnet in Quartz Grotto and obtained a Pyrope Pet Egg!" )
  	  			   			$maskD2 = -999
  	  			   		else
  	  							DropMonsterItems($teamplayer_id,$dropitemDbase)
  	  							$maskD2 = -999
  	  			   		endif	
  	  			  endif   
  	  			else
  	  				DropMonsterItems($teamplayer_id,$dropitemDbase)
  	  				$maskD2 = $maskD2 + $maskD
  	  			endif
  	  		endif
		  	endif
		  	$Cid = $Cid + 1
		  endwhile	
		 
//----------------------????--------------------	
		
	
		
	}