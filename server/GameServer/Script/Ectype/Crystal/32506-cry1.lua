---****************************  
---  Copyright:PERFECT WORLD  
---  Modified:2013.2.25  
---  Author:???  
---  TaskName: 32506????
---****************************  

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 1 then--???1--5??????32507
			a=AI:GetArray(3)
			if a == 0 then
				posx=AI:GetPosX()
				posy=AI:GetPosY()
				MonsterID=32507
				AI:SummonMonsterByPos(MonsterID, posx, posy,0)
				AI:SetArray(3,1)
				AI:Exit()
			end
		end--???1--------------------end
		
		if nIndex == 2 then--???2--start
			a=AI:GetArray(2)
			if a == 0 then
				n=5-a
				AI:Say("Time remaining: "..tostring(n))
				a=a+1
				AI:SetArray(2,a)
			end
		end--???2--------------------end
			if nIndex == 3 then--???2--start
			a=AI:GetArray(4)
			if a <5 then
				n=4-a
				AI:Say("Time remaining: "..tostring(n))
				a=a+1
				AI:SetArray(4,a)
			end
		end--???2--------------------end
		
	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

			-----------------------------------------------------------normal start
 			a = AI:GetArray(1)
 			varline = AI:GetEctypeVarShort(mapid,0)
 			if varline == 1 then
 			
			if a == 0 then
		--		AI:Say("start")
				AI:SetTimer(1,5000,1)
				AI:SetTimer(2,100,1)
				AI:SetTimer(3,1000,4)
				AI:SetArray(1,1)
			--	AI:Say("end")
			end
			end
			if varline == 32 then
			if a == 0 then
			--	AI:Say("start")
				AI:SetTimer(1,5000,1)
				AI:SetArray(1,1)
			--	AI:Say("end")
			end
			end
			----------------------------------------------------------normal end


	end--functionEvent_ThinkingEND





