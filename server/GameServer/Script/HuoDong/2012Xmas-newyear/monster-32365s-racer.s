 //****************************  
 //  Copyright:PERFECT WORLD  
 //  Modified:2012  
 //  Author:???  
 //  TaskName:  
 //****************************  
 
	function OnDead(){
		
		$isover = GetServerVar(299)
		//??????????????
		if $isover > 1
			//????????
			$lastrace = GetGlobalVar(299)
			//????????
			$race_result_index = 281 + $lastrace
			//????????
			SetGlobalVar($race_result_index,$isover)
			//??????+1
			$lastrace += 1
			SetGlobalVar(299,$lastrace)
			//????????,???????????
			SetServerVar(299,0)
			//?????
			DeleteMonster(475,32373)
			//???npc??
			AddNPC(2332)
			AddNPC(2333)
			AddNPC(2334)
			AddNPC(2335)
//????-???	????
//????-???	????
//???-???	???
//???-????	???
//????-???	????
//????-???	????
//????-??	????
//????-??	????
//monsterID????
			if $isover == 3
				BC("screen", "servergroup", -1 , "Whispers of Spring is the champion of the Happy Run Event!")
				BC("chat", "servergroup", -1 , "Whispers of Spring is the champion of the Happy Run Event!")
			endif
			if $isover == 4
				BC("screen", "servergroup", -1 , "Conqueror is the champion of the Happy Run Event!")
				BC("chat", "servergroup", -1 , "Conqueror is the champion of the Happy Run Event!")
			endif
			if $isover == 5
				BC("screen", "servergroup", -1 , "Burning Sky is the champion of the Happy Run Event!")
				BC("chat", "servergroup", -1 , "Burning Sky is the champion of the Happy Run Event!")
			endif
			if $isover == 6
				BC("screen", "servergroup", -1 , "Crystal Maid is the champion of the Happy Run Event!")
				BC("chat", "servergroup", -1 , "Crystal Maid is the champion of the Happy Run Event!")
			endif
		endif
		
//		BC("chat","server",-1,"next success! lastrace = ",$lastrace)
		
	}
	