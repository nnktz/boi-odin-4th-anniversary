---****************************  
---  Copyright��PERFECT WORLD  
---  Modified��2013.2.25  
---  Author���ܳ��`  
---  TaskName�� 32545
---****************************  

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

	
	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

			-----------------------------------------------------------normal start
			a = AI:GetArray(1)
 			varline = AI:GetEctypeVarShort(mapid,0)
 	
			----------------------------------------------------------normal end


	end--functionEvent_ThinkingEND





