	//****************************************
	//
	//		Copyright��PERFECT WORLD
	//		Modified��2008/11/13
	//		Author���
	//		TaskName��������NPC����ʯ��321��NPC
	//		TaskID��HD-jinzita-NPC-JStoBOSS.s
	//
	//****************************************
	//****************************************
	//		Copyright��PERFECT WORLD
	//		Modified��2013
	//		Author��������
	//		Best wishs for all !
	//		��ɾ��֮ǰ�Ľű���䣬Ҫ�鿴��ǰ�ű�����ǰһ���汾
	//		��������	�����񡿾���ʯ��֮Կ
	//****************************************

	function OnRequest(){
		
		$questa1 = IsTaskAccept( -1, 4403 )
		if $questa1 == 0
			DisableNpcOption(1)
			return
		endif
		
		$questa2 = IsTaskAccept( -1, 1776 )
		if $questa2 == 0
			DisableNpcOption(1)
			return
		endif
		
		$questa3 = IsTaskAccept( -1, 1784 )
		if $questa3 == 0
			DisableNpcOption(1)
			return
		endif
		
		$questa4 = IsTaskAccept( -1, 1792 )
		if $questa4 == 0
			DisableNpcOption(1)
			return
		endif
		
		$questa5 = IsTaskAccept( -1, 1800 )
		if $questa5 == 0
			DisableNpcOption(1)
			return
		endif
		
		$questa6 = IsTaskAccept( -1, 1808 )
		if $questa6 == 0
			DisableNpcOption(1)
			return
		endif
	
	}
	
	//�������͵�BOSS����
	function OnOption0(){
	
		
	
	}
	
	//�����񡿾���ʯ��֮Կ
	function OnOption1(){
	
		$RankList = GetRankListValue( 1, 499 )
		
		//û���Ϸ�
		if $RankList < 75
				AcceptTask( -1, 4403 )
		endif
		
		//1���Ϸ�
		if $RankList >= 75
			if $RankList <= 89
				AcceptTask( -1, 1776 )
			endif
		endif
		
		//2���Ϸ�
		if $RankList >= 90
			if $RankList <= 99
				AcceptTask( -1, 1784 )
			endif
		endif
		
		//3���Ϸ�
		if $RankList >= 100
			if $RankList <= 109
				AcceptTask( -1, 1792 )
			endif
		endif
		
		//4���Ϸ�
		if $RankList >= 110
			if $RankList <= 119
				AcceptTask( -1, 1800 )
			endif
		endif
		
		//5���Ϸ�
		if $RankList >= 120		
				AcceptTask( -1, 1808 )
		endif	
	
	}