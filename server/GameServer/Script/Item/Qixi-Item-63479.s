	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2009/08/13
	//		Author�����
	//		TaskName��Qixi-Item-63479.s
	//		TaskID��������
	//
	//****************************************
	
	function OnUseItem(){
		
		//״̬�Ƿ�ӳɹ�
		$result = AddStatus(-1, 11423, 1)
		if $result == 0
			SubPlayerInfo( -1, "item", 63479, 1 )
		endif
		
	}