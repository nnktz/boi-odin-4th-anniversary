//****************************************
//		Copyright��PERFECT WORLD
//		Modified��2013
//		Author��������
//		Best wishs for all !
//****************************************

	//3214,���һ��ͨ��֤��ʽ����������ĵ�ͼ���
	//3617,���һ��ͨ��֤��ʽ���������������
	function OnRequest(){
	
		
	}

	//���͵���������˹
	function OnOption0(){
		
		FlyToMap( -1, 475, 71, 39 )
		
	}

	//�л�����
	function OnOption1(){
		
		$mapid = GetPlayerInfo(-1,"mapid")
		if $mapid == 581
			$result = FlyToMap(-1, 127, 68, 64 )
		endif
		if $mapid == 127
			$result = FlyToMap(-1, 581, 57, 55 )
		endif
		
	}
	