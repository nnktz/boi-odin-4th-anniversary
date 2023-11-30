 ------------------------------ 
 --  Copyright：PERFECT WORLD  
 --  Modified：2012  
 --  Author：胡斌涛  
 --  TaskName： 密室传说·现行怪-染 
 ------------------------------ 
	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
	end--functionEvent_ThinkingEND
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		PosX,PosY=AI:GetPosX(),AI:GetPosY()
--11574	密室传说·金宝箱
		AI:SummonMonsterByPos(11574,PosX,PosY,2)
	end