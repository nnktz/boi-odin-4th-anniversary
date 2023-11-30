 ------------------------------ 
 --  Copyright:PERFECT WORLD  
 --  Modified:2012  
 --  Author:???  
 --  TaskName: ????ú???? 
 ------------------------------ ??BOSS|4?????|??7?
	function Event_OnTimer(nAI,nIndex,nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 1 then--timer1--start
			randombuff = math.random(1,3)
			if randombuff == 1 then
				--4???
				AI:AddSkill(2374,1)
				AI:UseSkill(2374,1)
				--?????
				AI:AddSkill(2521,2)
				AI:UseSkill(2521,2)
			end
			if randombuff == 2 then
				--????
				AI:AddSkill(2166,1)
				AI:UseSkill(2166,1)
			end
			if randombuff == 3 then
				--??? 2523	1	??
				AI:AddSkill(2523,1)
				AI:UseSkill(2523,1)
			end
			speakshit(nAI)
		end--timer1--------------------end
		
	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
		-----------------------------------------------------------normal start
		a = AI:GetArray(0)
		if a == 0 then --int
			AI:SetTimer(1,3000,9999)
			AI:SetArray(0,1)
		end
		hpn = AI:GetHP()
		hpmax = AI:GetHPMax()
		hppct = hpn/hpmax*100
		if a == 1 then
			if hppct < 80 then
				-- +200%+2000 AD
				AI:AddSkill(2365,1)
				AI:UseSkill(2365,1)
				AI:SetArray(0,a+1)
				SummonServerMonster(nAI)
			end
		end
		if a == 2 then
			if hppct < 60 then
				-- +100% HURTRESIST
				AI:AddSkill(2364,1)
				AI:UseSkill(2364,1)
				AI:SetArray(0,a+1)
				SummonServerMonster(nAI)
			end
		end
		if a == 3 then
			if hppct < 40 then
				-- +100% HURTRESIST
				AI:AddSkill(2364,1)
				AI:UseSkill(2364,1)
				AI:SetArray(0,a+1)
				SummonServerMonster(nAI)
			end
		end
		if a == 4 then
			if hppct < 20 then
				-- +100% HURTRESIST
				AI:AddSkill(2364,1)
				AI:UseSkill(2364,1)
				AI:SetArray(0,a+1)
				SummonServerMonster(nAI)
			end
		end
		----------------------------------------------------------normal end

	end--functionEvent_ThinkingEND
	
	function speakshit(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		randomnuff = math.random(1,15)
		if randomnuff == 1 then
			AI:Say("You shall know my true power!")
		end
		if randomnuff == 2 then
			AI:Say("The ground is trembling before my feet!")
		end
		if randomnuff == 3 then
			AI:Say("My claws are strong enough to kill you.")
		end
	end
	
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
		status=AI:GetArray(1)
		AI:Say("Ah! How could this have happened...")
		AI:DelTimer(1)
		
	end

	function SummonServerMonster(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
		AI:Say("Warriors of the Pyramid! Please help me!")
		PosX,PosY=AI:GetPosX(),AI:GetPosY()
		level,Flevel=AI:GetServerValue(410),AI:GetServerValue(411)
		if level < 80 then level = 80 end
		MARID,MFAR_ID=264
		ox,oy,rr=PosX,PosY,8
		cmax=7
		for a=1,cmax do
			oa=6.28*a/cmax
			sx=ox+rr*math.sin(oa)
			sy=oy+rr*math.cos(oa)
			MonsterID=math.random(11585,11589)
			if Flevel > 0 then
				AI:CreateFieldMonster(MonsterID,MFAR_ID,Flevel,1,mapid,sx,sy,0)
			else
				AI:SummonLevelMonsterByPos(MonsterID,MARID,level,sx,sy)
			end
		end
		
	end
