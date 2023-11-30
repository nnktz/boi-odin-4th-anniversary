
----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2013/03
--		Author:??? ??
--		TaskName: ???????
--		TaskID:
-----------------------------------------------------

	function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
		
		-----------------------------------------??????start
		if nIndex == 1 then
			a = AI:GetArray(1)
			if a == 1 then
				rand = math.random(0,99)
				if rand < 20 then
					--2243	????
					AI:AddSkill(2243,1)
					AI:UseSkill(2243,1)
				end
				if rand >= 15 and rand < 30 then
					--2241	????
					AI:AddSkill(2241,1)
					AI:UseSkill(2241,1)
				end
				if rand >= 30 and rand < 50 then
					--1001	?????
					AI:AddSkill(1001,1)
					AI:UseSkill(1001,1)
				end
				if rand >= 50 and rand < 80 then
					--2368	????
					AI:AddSkill(2361,1)
					AI:UseSkill(2361,1)
				end
				if rand >= 80 and rand < 90 then
					--2368	??????
					AI:AddSkill(2368,1)
					AI:UseSkill(2368,1)
				end
				if rand >= 90 and rand < 98 then
					--2374	aoe??1?
					AI:AddSkill(2374,1)
					AI:UseSkill(2374,1)
				end
				if rand >= 98 then
					--2375	aoe??2?
					AI:AddSkill(2375,1)
					AI:UseSkill(2375,1)
				end
				
				rand2 = math.random(1,7)
				if rand2 == 1 then
					AI:Say("Since being discovered, you all will die!")
				end
				if rand2 == 2 then
					AI:Say("Be thrilling, you poor guys!")
				end
				if rand2 == 3 then
					AI:Say("Oh, my! Is that a scratch?")
				end
				if rand2 == 4 then
					AI:Say("Go to hell!")
				end
				if rand2 == 5 then
					AI:Say("Do You think you can defeat me?")
				end
				if rand2 == 6 then
					AI:Say("Follow me. And I will let you live! ")
				end
				if rand2 == 7 then
					AI:Say("I am the future master of the world!")
				end
			end
		end
		-----------------------------------------??????end

		-----------------------------------------????start
		if nIndex == 2 then
			--2361	????
			AI:AddSkill(2364,1)
			AI:UseSkill(2364,1)
		end
		-----------------------------------------????end
		
		
		-----------------------------------------??start
		if nIndex == 3 then
			b = math.random(0,7)
			if b == 0 then
				AI:ScreenText("Loki: Naive people. Do you know what you should do now?",2)
			end
			if b == 1 then
				AI:ScreenText("Loki: None can counterbalance!",2)
			end
			if b == 2 then
				AI:ScreenText("Loki: My power will let your souls disappear from the world!",2)
			end
			if b == 3 then
				AI:ScreenText("Loki: Hahaha! That's all you could come up with?",2)
			end
			if b == 4 then
				AI:ScreenText("Loki: Kneel before me!",2)
			end
			if b == 5 then
				AI:ScreenText("Loki: You should die! Small human!",2)
			end
			if b == 6 then
				AI:ScreenText("Loki: I am immortal. Though I leave now, I will be back!! Hahaha!",2)
			end
		end
		-----------------------------------------??end

		-----------------------------------------??start
		if nIndex == 4 then
			AI:ScreenText("Damn God of Chrono! I will be back!",2)
			AI:Exit()
		end
		-----------------------------------------??end
		
		-----------------------------------------??start
		if nIndex == 5 then
			HPMAX = AI:GetHPMax()
			recoverHP = HPMAX / 500
			AI:RestoreHPInstant(recoverHP)
--print(" | recoverHPnormal = "..tostring(recoverHP))
		end
		-----------------------------------------??end
		
	end
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		a = AI:GetArray(1)
		if a == 0 then
			--???
			AI:SetArray(1,1)
			--??????
			AI:SetTimer(1,5000,9999)
			--????
			AI:SetTimer(2,75000,9999)
			--??
			AI:SetTimer(3,10000,9999)
			--??
			AI:SetTimer(4,16000000,1)
			--??
			AI:SetTimer(5,5000,120)
		end
--		HP = AI:GetHP()
--		print(" | HP = "..tostring(HP))
	end
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		AI:Say( "Loki: I am immortal. Though I leave now, I will be back in hell! Hahaha!")
		AI:ScreenText("Loki: I am immortal. Though I leave now, I will be back in hell! Hahaha!",2)
		AI:DelTimer(1)
		AI:DelTimer(2)
		AI:DelTimer(3)
		AI:DelTimer(4)
		AI:DelTimer(5)
	end


