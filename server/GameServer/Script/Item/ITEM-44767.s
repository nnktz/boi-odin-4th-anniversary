	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/10/09
	//		Author:??
	//		TaskName:Item-44767.s
	//		TaskID:?????
	//
	//****************************************
	
	function OnUseItem(){	
//44767   ???????-??1914     1:??
//44768   ???????-??1915     2:??
//44769   ???????-??1916     3:??
//44770   ???????-??1917     4:??
//44771   ???????-??1918     5:??
//44772   ???????-???1919   6:???

		
		$pro = GetPlayerInfo(-1,"profession")
		if $pro != 1
			BC("screen","player",-1,"Only Berzerkers can take this quest!")
			return
		endif

		$taskid = 1914
		$itemid = 44767	
		$result = IsTaskAccept( -1, $taskid )
		if $result == 0
			BC("screen","player",-1,"You have taken the relevant quest. Please complete it and then you can come back and claim this quest.")
			return
		endif
		$Item = GetPlayerInfo( -1, "item", $itemid )
		if $Item < 1
			return
		endif
		$count = GetTaskCount ( -1)
		if $count >= 20
			BC("screen","player",-1,"Quest log is full. Unable to take another quest!")
			return
		endif
		$SubItem = SubPlayerInfo( -1, "item", $itemid, 1 )
		if $SubItem != 0
			return
		endif
		
		AcceptTask( -1, $taskid )
	}