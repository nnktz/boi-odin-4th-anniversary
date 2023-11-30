----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2013
--		Author:???
--		TaskName:?-????-?
--		TaskID:
-----------------------------------------------------

	function Event_OnTimer(nAI,nIndex,nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 1 then--???1
			AI:ChangeFaction(1)
		end--???1

		if nIndex == 2 then--???2
			randombuff=math.random(1,2)
			if randombuff == 1 then
				AI:PlayAction("specialidle",0,0)
			end
			if randombuff == 2 then
				AI:PlayAction("hurt",0,0)
			end
		end--???2
		
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
----						AI:ChangeFaction(1)
--					end
--				end
--			end
--		end

		hpn = AI:GetHP()
		hpmax = AI:GetHPMax()
		hppct = math.floor(hpn/hpmax*1000)
		--??0.4,??2
		AI:ChangeMonsterSize(2-1.6*hppct/1000)
		-----------------------------------------------------------normal start
 			a = AI:GetArray(1)
			if a == 0 then
				AI:ChangeFaction(11)
				AI:SetTimer(1,5000,1)
				AI:SetArray(1,1)
		    AI:SetArray(9,0)
				AI:Say("Who dare bother me?")
			end
			a = AI:GetArray(2)
			if a == 0 then
				AI:SetTimer(2,3000,9999)
				AI:SetArray(2,1)
			end
			----------------------------------------------------------normal end

	end--functionEvent_ThinkingEND
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
		randombuff=math.random(1,10)
		if randombuff == 1 then AI:Say("Take that!") end
		--AI:ScreenText("",2)
		AI:DelTimer(1)
		AI:DelTimer(2)
		
		monsterkilled=AI:GetEctypeVarShort(mapid,1)
		AI:SetEctypeVarShort(mapid,1,monsterkilled+1)
		
	end
