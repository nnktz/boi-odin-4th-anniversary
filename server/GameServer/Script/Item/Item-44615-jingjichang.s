	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2013\1\9
	//		Author:??
	//		TaskName:
	//		TaskID:?????????(???)
	//
	//****************************************
	
	
	function OnUseItem(){
//???
//????? ?????? ?????? ??3??
//????*100
//2-5?
//????*50 ????? ??????
//6-20?
//????*30 ????? ??30? ??????
//20-100?
//????*20 ??????
//62146   ???????????  
//62147   ???????????  
//
//59956   ????
//95      1       ????        ??????????????????    
//96      1       ????        ?????????2-5???????     
//97      1       ????        ?????????6-20???????    
//98      1       ????        ?????????21-100???????
//
//
//19914   7776000 ????	
		$bag_count = GetPlayerInfo( -1, "nullitem", 0 )
		//??????????
		if $bag_count < 2
			BC( "screen", "player", -1, "You need at least 2 empty Bag slots." )
			return
		endif
		
		$time = GetPlayerVar( -1, 307 )
		if $time > 0
			BC( "screen", "player", -1, "Arena of Equality Gift Pack can only be opened once!" )
			return
		endif
		
		//????
 		$itemid = GetItemID()
		$del_count = SubPlayerInfo(-1,"item",$itemid,1)
		if $del_count != 0
			return
		endif
		AddPlayerInfo( -1, "item", 62147, 1 )
		AddPlayerInfo( -1, "item", 59956, 100 )
		AddTitle( -1, 95 )
		AddPlayerInfo( -1, "prename", 19914 )
		#name = GetPlayerInfo( -1, "name" )
		BC( "screen", "player", -1, "Received the Prefix Blood-soaked!")
		BC( "scrollbar", "servergroup", -1, "Player",#name,"Top 1 in the first match of the Arena of Equality has received the Prefix Blood-soaked!")
		SetPlayerVar(-1, 307, 1 )
	}