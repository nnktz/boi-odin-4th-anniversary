	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012-09-20
	//		Author:???
	//		TaskName:
	//		TaskID:65480 14???????
	//****************************************
	
	function OnUseItem(){
		
		  $bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		  //??????????
		  if $bag_count < 1
			  BC( "screen", "player", -1, "Insufficient empty slots in your bag!" )
			  return
		  endif
		  
		  //??1?????
		  $count = GetPlayerInfo( -1, "item", 65480 )
		  if $count < 15
		    BC( "screen", "player", -1, "You need 15 LV14 Brilliant Titanium Chalice Shards to combine!" )
			  return
		  endif
		 //????
		  $level = GetPlayerInfo( -1 , "level" ) 
		  if $level < 120
		    BC( "screen", "player", -1, "You need to be at least LV120 to combine!" )
		    return
		  endif
		  
		  //??????
		  $result = SubPlayerInfo( -1, "item", 65480, 15 )
		  if $result != 0
			  return
		  endif
		
      $profession = GetPlayerInfo( -1, "profession" )
        if $profession == 1
			  AddPlayerInfo( -1, "item", 20288, 1 )
			  BC( "screen", "player", -1, "Congratulations! You have successfully combined a LV14 Brilliant Titanium Chalice!" )
		  endif
		    if $profession == 2
			  AddPlayerInfo( -1, "item", 20288, 1 )
			  BC( "screen", "player", -1, "Congratulations! You have successfully combined a LV14 Brilliant Titanium Chalice!" )
		  endif
		    if $profession == 3
			  AddPlayerInfo( -1, "item", 20288, 1 )
			  BC( "screen", "player", -1, "Congratulations! You have successfully combined a LV14 Brilliant Titanium Chalice!" )
		  endif
		    if $profession == 4
			  AddPlayerInfo( -1, "item", 20304, 1 )
			  BC( "screen", "player", -1, "Congratulations! You have successfully combined a LV14 Brilliant Titanium Chalice!" )
		  endif
		    if $profession == 5
			  AddPlayerInfo( -1, "item", 20304, 1 )
			  BC( "screen", "player", -1, "Congratulations! You have successfully combined a LV14 Brilliant Titanium Chalice!" )
		  endif
		    if $profession == 6
			  AddPlayerInfo( -1, "item", 20304, 1 )
			  BC( "screen", "player", -1, "Congratulations! You have successfully combined a LV14 Brilliant Titanium Chalice!" )
		  endif		
      
	}