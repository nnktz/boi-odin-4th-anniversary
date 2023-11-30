----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2012-8
--		Author:???
--		TaskName:?-?????-?
--		TaskID:
-----------------------------------------------------
	function Event_OnTimer(nAI,nIndex,nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 1 then--timer1--start
			--AOE
			AI:AddSkill(2374,1)
			AI:UseSkill(2374,1)
			speakshit_A(nAI)
		end--timer1--------------------end
		
		if nIndex == 2 then--timer2--start
			--AOE
			AI:AddSkill(2374,1)
			AI:UseSkill(2374,1)
			UseOwnSkill(nAI)
			speakshit_B(nAI)
		end--timer2--------------------end
		
		if nIndex == 3 then--timer3--start
			final=AI:GetArray(3)
			final=final+math.random(1,9)
			AI:SetArray(3,final)
			if final >= 100 then
				AI:ChangeFaction(1)
				AI:ScreenText("Pharaoh's Sanctuary strength has disappeared!",2)
				AI:SetTimer(2,3000,9999)
				AI:DelTimer(3)
				AI:SetEctypeVarShort(mapid,10,1)
			else
				AI:ScreenText("Pharaoh's Sanctuary strength will be removed: "..tostring(final).." %",2)
				AI:PlayAction("skill\\Ride\\tiaoxin\\fire\\tx_ride_tiaoxin_fire.ini",0,1)
			end
		end--timer3--------------------end
		
	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		-----------------------------------------------------------normal start
--		//BOSS????,??boss??2?
--		//44	???-????	???? 577
--		//45	???-????	???? 578
--		//46	???-????	????? 579
--		//47	???-????	??????? 580
--		//48	???-????	????? 575
--		//49	???-????	????? 576
		a = AI:GetArray(0)
		if a == 0 then --int
			status=AI:GetServerValue(48)
			if status == 1 then
				AI:SetTimer(1,3000,9999)
				AI:SetArray(0,1)
				AI:SetArray(1,status)
			end
			if status == 2 then
				bb=AI:GetArray(2)
				if bb == 0 then
					AI:ChangeFaction(11)
					AI:SetArray(2,1)
					AI:AddSkill(2551,1)
					AI:UseSkill(2551,1)
					buffx,buffy=AI:GetPosX(),AI:GetPosY()
					AI:SummonMonsterByPos(11596,buffx,buffy,0)
					AI:SetEctypeVarShort(mapid,10,0)
				end
				monsterkilled=AI:GetEctypeVarShort(mapid,1)
				if monsterkilled == 7 then
					--???????
					AI:SetTimer(3,2000,999)
					AI:SetArray(0,1)
					AI:SetArray(1,status)
					AI:SetArray(3,0)
				end
			end
		end
		-----------------------------
		hpn = AI:GetHP()
		hpmax = AI:GetHPMax()
		hppct = hpn/hpmax*100
		status=AI:GetArray(1)
		if status == 1 then
			------------------------------status == 0
			if a == 1 then
				if hppct < 60 then
					-- +100% AD
					AI:AddSkill(2182,1)
					AI:UseSkill(2182,1)
					AI:SetArray(0,a+1)
				end
			end
			if a == 2 then
				if hppct < 40 then
					-- +100% HURTRESIST
					AI:AddSkill(2553,1)
					AI:UseSkill(2553,1)
					AI:SetArray(0,a+1)
				end
			end
			if a == 3 then
				if hppct < 5 then
					-- +100% HURTRESIST
					AI:AddSkill(2553,1)
					AI:UseSkill(2553,1)
					AI:SetArray(0,a+1)
				end
			end
			------------------------------status == 0 --END
		end
		if status == 2 then
			------------------------------status == 1
			if a == 1 then
				if hppct < 100 then
					-- +100% AD
					AI:AddSkill(2182,1)
					AI:UseSkill(2182,1)
					AI:SetArray(0,a+1)
				end
			end
			hpc=10
			hpline = 100-(a-1)*hpc
			if a >= 2 then
				if hppct < hpline then
					-- +100% HURTRESIST
					AI:AddSkill(2553,1)
					AI:UseSkill(2553,1)
					AI:SetArray(0,a+1)
--2176	1	?? 1~10?
					AI:AddSkill(2176,a-1)
					AI:UseSkill(2176,a-1)
				end
			end
			------------------------------status == 1 --END
		end
		----------------------------------------------------------normal end

	end--functionEvent_ThinkingEND
	
	function speakshit_A(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		randomnuff = math.random(1,12)
		if randomnuff == 1 then
			AI:Say("Did you come here to steal my treasure?")
		end
		if randomnuff == 2 then
			AI:Say("A cluster of wastrels without memories!")
		end
		if randomnuff == 3 then
			AI:Say("You have failed too many times without any improvement.")
		end
		if randomnuff == 4 then
			AI:Say("I will punish you! Feel the power of the King of Fear!!")
		end
	end
	
	function speakshit_B(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		randomnuff = math.random(1,12)
		if randomnuff == 1 then
			AI:Say("Witness your inner fears and cowardice! Cower before me!")
		end
		if randomnuff == 2 then
			AI:Say("Observe your past and fall into the endless whirlpool. You cannot escape!")
		end
		if randomnuff == 3 then
			AI:Say("Be crippled by the pain and enjoy no more peace. You will suffer!")
		end
		if randomnuff == 4 then
			AI:Say("You are suffering from all the contempt you have caused and now its too late to turn back.")
		end
	end
	
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
		status=AI:GetArray(1)
		if status == 1 then
			AI:ScreenText("Warden Farma is collecting energy as the Pharaoh Sanctuary appears.",2)
			AI:SetEctypeVarShort(mapid,1,0)
			a,cmax=0,7
			ox,oy,rr=156,158,10
			while a<cmax do
				oa=6.28*a/cmax
				sx=ox+rr*math.sin(oa)
				sy=oy+rr*math.cos(oa)
				AI:SummonMonsterByPos(30733+a,sx,sy,8-a)
				a=a+1
			end
		end
		if status == 2 then
			AI:Say("How could you have so much power...")
		end
		AI:DelTimer(1)
		AI:DelTimer(2)
		AI:DelTimer(3)
		
	end

	function UseOwnSkill(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
		randomnuff = math.random(1,6)
		if randomnuff == 1 then
--2526	2	????
        AI:AddSkill(2526,2)
        AI:UseSkill(2526,2)
		end
		if randomnuff == 2 then
--2525	4	????
        AI:AddSkill(2525,4)
        AI:UseSkill(2525,4)
		end
		if randomnuff == 3 then
--2165	1	??
        AI:AddSkill(2165,1) 
        AI:UseSkill(2165,1)
		end
		if randomnuff == 4 then
--2164	1	???
        AI:AddSkill(2164,1) 
        AI:UseSkill(2164,1)
		end
		if randomnuff == 5 then
--2550	????
        AI:AddSkill(2550,1) 
        AI:UseSkill(2550,1)
		end
		
	end
