	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013-3-14
	//		Author:??
	//		TaskName:
	//		TaskID:44786
	//****************************************
	
	function OnUseItem(){
		$subid = 44786
		$addid = 59840
		$addnum = 2
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 1
			BC( "screen", "player", -1, "Insufficient space in your bag. Please try again after clearing it out." )
			return
		endif		
		SubPlayerInfo(-1,"item",$subid,1)	
		AddPlayerInfo(-1,"item",$addid,$addnum)
		AddPlayerInfo(-1,"guildoffer",3000)
		BC("screen","player",-1,"You have acquired 3000 Guild Contribution!")
	}