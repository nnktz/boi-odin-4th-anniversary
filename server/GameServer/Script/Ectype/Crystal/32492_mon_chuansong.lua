-- //****************************  
-- //  Copyright��PERFECT WORLD  
-- //  Modified��2013.2.25  
-- //  Author���ܳ��`  
-- //  TaskName�� 32492������1 
-- //****************************  

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

	if nIndex == 0 then--��ʱ��-0-
			a=AI:GetArray(1)
			if a == 0 then
				AI:ChangeFaction(1)
				AI:GetRandTarget()
				ID=AI:GetTargetID()
				if ID > 0 then
					AI:FlyPlayertoMap(ID,mapid, 142 , 169)
				end
--				AI:SetTargetID(0) 
			end    
	end
	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
---50	������1

	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

			posx = AI:GetPosX()
			posy = AI:GetPosY()
			
		n = AI:GetArray(3)
		if n == 0 then 	
			AI:SetTimer(0,1000,999)
			AI:SetArray (3, 1)
    end
      
      
    end
---------------------------------------------------------------------------