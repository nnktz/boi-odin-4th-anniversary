	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2013/05/27
	//		Author：曾强
	//		TaskName：ITEM-44888.s
	//		TaskID：充值返利卡25000点
	//
	//****************************************
	
	
	function OnUseItem(){
		//删除道具
		$del = SubPlayerInfo ( -1 , "item" , 44888 , 1 )
		if  $del != 0
			return
		endif
		
		//增加赠点
		$result = AddPlayerInfo( -1 , "givepoint" , 25000 )
			
						
	}