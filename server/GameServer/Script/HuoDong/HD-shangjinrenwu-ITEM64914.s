	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2008/11/5
	//		Author:??
	//		TaskName:HD-shangjinrenwu-ITEM64914.s
	//		TaskID:????,???????
	//
	//****************************************
	
	
	
	function OnUseItem(){
	
		//?????ID
		$item_id = 64914
		
		//????????ID
		$quest_id = 1156
		
		//??????ID
		$need_item = 12258
		
		
//---------------------------------------------------------------------------------------------		

		$level = GetPlayerInfo( -1, "level" )
	        //???????
	        if $level < 40
		        BC( "messagebox", "player", -1, "Your level is too low to receive the quest." )
		        return
	        endif
	
	        if $level > 60
		        BC( "messagebox", "player", -1, "Your level is too high to receive the quest." )
		        return
	        endif
		
		$count = GetPlayerInfo( -1, "item", $need_item)
		if $count <= 0
			BC( "screen", "player", -1, "Taylor has discovered that the {hNecrotress[10033]h}' Magnetic Compasses will suddenly turn to the opposite direction. This is an indication that a magnetic field exists that could lead ships in the wrong direction. The power of this magnetic field could eventually destroy everything in the area, striking ships down to the sea floor. Nothing will survive." )
			return
		endif
		
		$task_count = GetTaskCount (-1)
		if $task_count >= 20
			BC( "screen", "player", -1, "You got so many quests,please abandon some to get new ones." )
			return
		endif
		
		$result = IsTaskAccept( -1, $quest_id )
		if $result == 0
			BC( "chat", "player", -1, "You have received the quest." )
			return
		endif
		
		$result = AcceptTask ( -1, $quest_id )
		if $result == 0
			SubPlayerInfo( -1, "item", $item_id, 1 )
		endif

	}