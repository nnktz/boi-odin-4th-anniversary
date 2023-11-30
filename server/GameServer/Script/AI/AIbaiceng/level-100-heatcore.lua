 ------------------------------ 
 --  Copyright:PERFECT WORLD  
 --  Modified:2013-5 
 --  Author:???  
 --  TaskName: ???? 
 ------------------------------ 

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 1 then--???1
			t=AI:GetArray(2)
			t=t+1
			respawn=10-t
			if respawn == 0 then
				AI:ScreenText("Apollo Revives!",2)
				AI:SelfMurder()
			else
				AI:ScreenText("Apollo Revives: ("..tostring(respawn).."Seconds",2)
				AI:SetArray(2,t)
			end
		end--???1
		
	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		hpn = AI:GetHP()
		hpmax = AI:GetHPMax()
		hppct = hpn/hpmax*1000
		-----------------------------------------------------------normal start
 			a = AI:GetArray(1)
			if a == 0 then
				AI:SetTimer(1,1000,9999)
				AI:SetArray(1,1)
				AI:SetArray(2,0)
				AI:ScreenText("Apollo Revives: (10) seconds.",2)
			end
			----------------------------------------------------------normal end

	end--functionEvent_ThinkingEND
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		AI:DelTimer(1)
		posx,posy=AI:GetPosX(),AI:GetPosY()
		MonsterID=55607
		AI:SummonMonsterByPos(MonsterID,posx,posy,0)
		
	end
