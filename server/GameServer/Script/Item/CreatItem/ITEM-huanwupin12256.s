	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2008/11/11
	//		Author：祁晶
	//		TaskName：ITEM-huanwupin12256.s
	//		TaskID：法器介绍书
	//
	//****************************************
	
	function OnUseItem(){
	
		//删除物品
		SubPlayerInfo( -1, "item", 12256, 1)
		//加入新的物品
		AddPlayerInfo( -1, "item", 12330, 1 )
		
	}