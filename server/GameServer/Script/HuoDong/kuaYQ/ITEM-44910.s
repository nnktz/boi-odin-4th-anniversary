	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013/06/08
	//		Author:???
	//		TaskName:
	//		TaskID:ITEM-44910.s
	//
	//****************************************
	

	
	function OnUseItem(){
		
		
		$line = GetServerLineID()
		if $line != 7
			BC("screen","player",-1,"The item is useable in Realm 7 only!")
			return
		endif
		
		$itemid = GetItemID()
		$del_count = SubPlayerInfo(-1,"item",$itemid,1)
		if $del_count != 0
			return
		endif
		
		SetServerVar(415,1)
		AddMonsterByFloat(55390,1,582,164,170,0)
		BC("dialogbox","player",-1,"Interserver Tournament has started!")
		BC("screen","servergroup",-1,"The Interserver Tournament has started! Heroes, please use your Invitations to enter the map!")
		BC("screen","servergroup",-1,"The Interserver Tournament has started! Heroes, please use your Invitations to enter the map!")
		BC("scrollbar","servergroup",-1,"The Interserver Tournament has started! Heroes, please use your Invitations to enter the map!")
		

		
	}
			
		
		
		