   //****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2008/12/26
	//		Author���
	//		TaskName��HD-paoshang-quest529.s
	//		TaskID�������������
	//
	//****************************************
	
	
		function OnTaskDone(){

		//�������۸�
		//���ϵͳ����ʱ��
		//����
		$Now_Minute =  GetSystemTime( "minute")
		//Сʱ
		$Now_Hour =  GetSystemTime( "hour" )
		//����
		$Now_Mday =  GetSystemTime( "mday" )	
		//����
		$Now_Month =  GetSystemTime( "month" )
		//���ڼ�.0-6
		$Now_Week =  GetSystemTime( "week" )
		//����ĵڼ���.0-365
		$Now_Yday =  GetSystemTime( "yday" )
		//�����·���
		//$Line = GetServerLineID()
		//ÿ10���ӻ�仯һ��
		$temp_value = $Now_Minute / 3
		
		
		$a = $Now_Hour + $Now_Month
		$b = $Now_Mday + $Now_Week
		
		//���Ӹ������
		$c = 13 * $temp_value
		
		$d = $a * $b
		$e = $b * $c
		$f = $d + $e
		
		$random_number = $f % 5
		//���������Ի�õĽ�Ǯ��ֵ
		
		if $random_number == 0
			$money = 11891
		endif
		if $random_number == 1
			$money = 13476
		endif
		if $random_number == 2
			$money = 14269
		endif
		if $random_number == 3
			$money = 15854
		endif
		if $random_number == 4
			$money = 17439
		endif

		AddPlayerInfo(-1 , "money" ,$money)
		
	}