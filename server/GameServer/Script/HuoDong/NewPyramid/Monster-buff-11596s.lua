----------------------------------------------------
--		Copyright��PERFECT WORLD
--		Modified��2013
--		Author��������
--		TaskName����-ͨ��AI��˫���Ҹ���-��
--		TaskID��
-----------------------------------------------------

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
		isover=AI:GetEctypeVarShort(mapid,10)
		if isover == 1 then AI:Exit() end
		
	end--functionEvent_ThinkingEND
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

	end
