	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2013/05/27
	//		Author����ǿ
	//		TaskName��ITEM-44889.s
	//		TaskID����ֵ������50000��
	//
	//****************************************
	
	
	function OnUseItem(){
		//ɾ������
		$del = SubPlayerInfo ( -1 , "item" , 44889 , 1 )
		if  $del != 0
			return
		endif
		
		//��������
		$result = AddPlayerInfo( -1 , "givepoint" , 50000 )
			
						
	}