	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2012/10/09
	//		Author:??
	//		TaskName:Item-44773.s
	//		TaskID:????
	//
	//****************************************
	
	function OnUseItem(){	
//44767	???????-??
//44768	???????-??
//44769	???????-??
//44770	???????-??
//44771	???????-??
//44772	???????-???
//
//44773	??????-??
//44774	??????-??
//44775	??????-??
//44776	??????-??
//44777	??????-??
//44778	??????-???
		
		$deleteid = 44773
		$addid = 44767
		$delnum = GetPlayerInfo(-1,"item",$deleteid)
		if $delnum < 10
			BC("screen","player",-1,"You don't have enough to do that!")
			return
		endif
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "You need at least 1 open Bag slot." )
			return
		endif
		$Sub = SubPlayerInfo( -1, "item", $deleteid, 10 )
		if $Sub != 0
			return
		endif
		AddPlayerInfo(-1,"item",$addid,1)	
	}