 //****************************  
 //  Copyright：PERFECT WORLD  
 //  Modified：2012  
 //  Author：胡斌涛  
 //  TaskName： 过去残影·金宝箱 
 //****************************  
function OnDead(){ 
	//-------------------按照服务器第100名的等级
	//0	90296	//115	90292	//天域15	90293	//天域30	90294	
		$RankListF = GetFieldRankListValue(99)
		$RankList = GetRankListValue(1,99)
//		BC("chat","player",-1,"|RankList=",$RankList,"|RankListF=",$RankListF)
		if $RankList > 115
			if $RankListF > 15
				if $RankListF > 30
					DropMonsterItems(-1,90294)
				else
					DropMonsterItems(-1,90293)
				endif
			else
				DropMonsterItems(-1,90292)
			endif
		else
			DropMonsterItems(-1,90296)
		endif
	//-------------------
} 
