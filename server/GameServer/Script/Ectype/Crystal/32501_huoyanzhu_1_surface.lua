
-- //  Copyright��PERFECT WORLD  
-- //  Modified��2013.2.25  
-- //  Author���ܳ��`  
-- //  TaskName�� 32501����֮��-����-
-- //****************************  


	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 0 then--��ʱ��-0-
			a=AI:GetArray(1)
			if a == 0 then
				PosX=AI:GetPosX()
				PosY=AI:GetPosY()
				n1=AI:GetEctypeVarShort(mapid,50)
				
					if n1 ==7 then----------------ˢ������
					PosX=AI:GetPosX()
					PosY=AI:GetPosY()
					MonsterID=32500
					AI:SummonMonsterByPos(MonsterID, PosX, PosY,0)
					numhy=AI:GetEctypeVarShort(mapid,51)
					numhy=numhy +1
					AI:SetEctypeVarShort(mapid,51,numhy)
					AI:SetArray(1,1)
					if numhy == 4 then
					AI:SetEctypeVarShort(mapid,50,8)
					end
					AI:Exit()
					end
	
			end
		end--��ʱ��0--------------------end
	
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

------------------------------------------------------------