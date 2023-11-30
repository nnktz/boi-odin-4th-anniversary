	//****************************************
	//
	//		Copyright：PERFECT WORLD
	//		Modified：2008/11/13
	//		Author：祁晶
	//		TaskName：金字塔NPC巨兽石室321号NPC
	//		TaskID：HD-jinzita-NPC-JStoBOSS.s
	//
	//****************************************
	//****************************************
	//		Copyright：PERFECT WORLD
	//		Modified：2013
	//		Author：胡斌涛
	//		Best wishs for all !
	//		已删除之前的脚本语句，要查看以前脚本请找前一个版本
	//		（保留）	【任务】巨兽石室之钥
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
	
	//启动传送到BOSS房间
	function OnOption0(){
	
		
	
	}
	
	//【任务】巨兽石室之钥
	function OnOption1(){
	
		$RankList = GetRankListValue( 1, 499 )
		
		//没有老服
		if $RankList < 75
				AcceptTask( -1, 4403 )
		endif
		
		//1级老服
		if $RankList >= 75
			if $RankList <= 89
				AcceptTask( -1, 1776 )
			endif
		endif
		
		//2级老服
		if $RankList >= 90
			if $RankList <= 99
				AcceptTask( -1, 1784 )
			endif
		endif
		
		//3级老服
		if $RankList >= 100
			if $RankList <= 109
				AcceptTask( -1, 1792 )
			endif
		endif
		
		//4级老服
		if $RankList >= 110
			if $RankList <= 119
				AcceptTask( -1, 1800 )
			endif
		endif
		
		//5级老服
		if $RankList >= 120		
				AcceptTask( -1, 1808 )
		endif	
	
	}