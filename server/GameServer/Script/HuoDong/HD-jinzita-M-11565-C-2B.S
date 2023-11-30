 //****************************  
 //  Copyright：PERFECT WORLD  
 //  Modified：2012  
 //  Author：胡斌涛  
 //  TaskName： 巨兽石室·银宝箱 
 //****************************  
	function OnDead(){ 
	//-------------------按照服务器第100名的等级
	////0	90295	//115	90285	//F15	90286	//F30	90287	
		$RankListF = GetFieldRankListValue(99)
		$RankList = GetRankListValue(1,99)
		if $RankList > 115
			if $RankListF > 15
				if $RankListF > 30
					DropMonsterItems(-1,90287)
				else
					DropMonsterItems(-1,90286)
				endif
			else
				DropMonsterItems(-1,90285)
			endif
		else
			DropMonsterItems(-1,90295)
		endif
	//-------------------
	} 