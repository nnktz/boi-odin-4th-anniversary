 ------------------------------ 
 --  Copyright：PERFECT WORLD  
 --  Modified：2012  
 --  Author：胡斌涛  
 --  TaskName： 过去残影·木乃伊 
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
--11576			过去残影·金宝箱
		AI:SummonMonsterByPos(11576,PosX,PosY,2)
	end

