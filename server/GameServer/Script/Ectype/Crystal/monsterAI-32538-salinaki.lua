 ------------------------------ 
 --  Copyright：PERFECT WORLD  
 --  Modified：2012  
 --  Author：胡斌涛  
 --  TaskName： 萨利娜琪 
 ------------------------------ 

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 1 then--计时器1
			a=AI:GetArray(1)
			AI:Exit()
			AI:SetArray(1,a)
		end--计时器1

		if nIndex == 2 then--计时器2
			a=AI:GetArray(2)
			randombuff=math.random(1,5)
			if randombuff == 1 then
				AI:PlayAction("specialidle",0,1)
			end
			if randombuff == 2 then
				AI:PlayAction("attack1",0,1)
			end
			if randombuff == 3 then
				AI:PlayAction("attack2",0,1)
			end
			if randombuff == 4 then
				AI:PlayAction("hurt",0,1)
			end
			AI:SetArray(2,a)
		end--计时器2
		
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
				AI:SetTimer(2,6000,2)
				AI:SetArray(1,1)
				AI:ChangeFaction(11)
		    AI:SetArray(9,0)
--				AI:Say("")
--				AI:ScreenText("",2)
			end
			iddd=AI:GetEctypeVarShort(mapid,92)
			if iddd == 1 then
				AI:SelfMurder()
			end
			----------------------------------------------------------normal end

	end--functionEvent_ThinkingEND
------------------------------------------------------------------------dead
	function Event_OnDead(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		
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