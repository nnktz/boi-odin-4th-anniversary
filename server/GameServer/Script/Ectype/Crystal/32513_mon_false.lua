
---  Copyright��PERFECT WORLD  
---  Modified��2013.2.25  
---  Author���ܳ��`  
---  TaskName�� 32513ˮ������-false
---****************************  
--
	function Event_OnTimer( nAI, nIndex, nCount)
	local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
--
		if nIndex == 1 then--��ʱ��1--������ʧ����ʧ
			a=AI:GetArray(3)
			if a == 0 then
				vars=AI:GetEctypeVarShort(mapid,58)
				if vars ~= 0 then--------------------------------ˢ����
					vars = vars+1
					AI:SetEctypeVarShort(mapid,58,vars) 
					AI:Exit()
				end
			end
		end--��ʱ��1--------------------end	
	end--functionEvent_OnTimerEND
--------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
--
--			-----------------------------------------------------------normal start
 			a = AI:GetArray(1)
			if a == 0 then
				AI:SetTimer(1,1000,99)
				AI:SetArray(1,1)
			end
			----------------------------------------------------------normal end
--
--
	end--functionEvent_ThinkingEND





