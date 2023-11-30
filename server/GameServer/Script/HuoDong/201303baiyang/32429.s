 //****************************  
 //  Copyright£ºPERFECT WORLD  
 //  Modified£º2013.2.25  
 //  Author£º²Ü³þÉ`  
 //  TaskName£º ÖÕÁÙÖ®°×ÑòÊ¹Õß 
 //****************************  
function OnDead(){ 

//9347	°×Ñò1	90266
//9348	°×Ñò2-Ö÷	90267
//9349	°×Ñò2-¸¨	90268
//9350	°×Ñò3-Ö÷	90269
//9351	°×Ñò3-¸¨	90270

//--------------µôÂä¿ªÊ¼------------------------------
//--µôÂä°ü 
	$playerID = GetPlayerID()
		if $playerID < 0
			return
		endif
//------------------------------------------
    $dropitemD1 = 90269
		$dropitemDbase = 90270
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
//	  	BC("chat","server",-1,"teamD_count = ",$teamD_count)
		  $Cid = 0
		  while $Cid < 6
//	  		BC("chat","server",-1,"Cid = ",$Cid)
		  	$teamplayer_id = GetTeamMemberID($playerID,$Cid)
		  	if $teamplayer_id > 0
		  		$lenD = GetPlayerDistance($playerID,$teamplayer_id )
		  		if $lenD < 9999
  	  			if $teamplayer_id == $playerID
  	  				DropMonsterItems($teamplayer_id,$dropitemD1)
  	  			else
  	  				DropMonsterItems($teamplayer_id,$dropitemDbase)
  	  			endif
  	  		endif
		  	endif
		  	$Cid = $Cid + 1
		  endwhile	
		 
//----------------------µôÂä½áÊø--------------------	
	}