 ------------------------------ 
 --  Copyright：PERFECT WORLD  
 --  Modified：2012  
 --  Author：胡斌涛  
 --  TaskName： 侍者·宝蓝 
 ------------------------------ 

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 1 then--计时器1
			a=AI:GetArray(1)
				AI:AddSeekPos(mapid,81,81)
				AI:AddSeekPos(mapid,71,75)
			AI:SetArray(1,a+1)
		end--计时器1

		if nIndex == 2 then--计时器2
			a=AI:GetArray(2)
			
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
				AI:SetTimer(1,2000,1)
				AI:SetArray(1,1)
--				AI:ChangeFaction(11)
		    AI:SetArray(9,0)
--				AI:Say("")
--				AI:ScreenText("",2)
				
			end
			iddd=AI:GetEctypeVarShort(mapid,91)
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