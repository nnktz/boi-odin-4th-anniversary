	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2013/05/27
	//		Author����ǿ
	//		TaskName��ITEM-44888.s
	//		TaskID����ֵ������25000��
	//
	//****************************************
	
	
	function OnUseItem(){
		//ɾ������
		$del = SubPlayerInfo ( -1 , "item" , 44888 , 1 )
		if  $del != 0
			return
		endif
		
		//��������
		$result = AddPlayerInfo( -1 , "givepoint" , 25000 )
			
						
	}