-- //****************************  
-- //  Copyright:PERFECT WORLD  
-- //  Modified:2013.2.25  
-- //  Author:???  
-- //  TaskName: 32524 ????-mainAI 
-- //****************************  
	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 1 then--???1
			a=AI:GetArray(1)
			line = AI:GetEctypeVarShort(mapid,0)
			if line ~= 1 then
			AI:Say("My Lord, we came to help you!")
			end
			a=a+1
			AI:SetArray(1,a)
		end--???1

	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
-- 		t = AI:HaveAttackTarget()--????
--		if t == false then
--			a = AI:GetArray(1)
--			if a > 0 then
--				if hpn == hpmax then
--					CanBeShutDown = AI:GetArray(9)
--					if CanBeShutDown == 1 then
--						AI:DelTimer(1)
--						AI:DelTimer(2)
--						AI:DelTimer(3)
--						AI:DelTimer(9)
--						AI:SetArray(1,0)
--						AI:SetArray(2,0)
--						AI:SetArray(3,0)
--						AI:SetArray(9,0)
----					AI:ChangeFaction(1)
--					end
--				end
--			end
--		end

		-----------------------------------------------------------normal start
 			a = AI:GetArray(1)
			if a == 0 then
				AI:SetTimer(1,500,1)
				AI:SetArray(1,1)
			end
		--	a = AI:GetArray(2)
		--	if a == 0 then
		--		AI:SetTimer(2,5000,9999)
		--		AI:SetArray(2,1)
		--	end
			----------------------------------------------------------normal end

	end--functionEvent_ThinkingEND
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		stand = AI:GetEctypeVarShort(mapid,71)
		stand = stand -1
		AI:SetEctypeVarShort(mapid,71,stand)
		--AI:Say("")
		--AI:ScreenText("",2)
		AI:DelTimer(1)
		AI:DelTimer(2)

	end

	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

--		if (( PosX == xx) and ( PosY == yy )) then
--			AI:Exit()
--		end

	end


	function Event_UpdateSeekPos(nAI,nIndex)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

--		if nIndex == 1 then
--			xx=0
--			yy=0
--			AI:AddSeekPos(mapid,xx,yy)
--		end

	end