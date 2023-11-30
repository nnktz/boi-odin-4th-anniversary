----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2013
--		Author:???
--		TaskName:?-????1??-?
--		TaskID:
-----------------------------------------------------

function Event_OnTimer( nAI, nIndex, nCount)
	local AI = GetMonsterAI(nAI)
	local mapid = AI:GetMapID()
	
	if nIndex == 2 then--???2
		a=AI:GetArray(2)
		--????
		msgline="[color=ffE0E000]== Endless Stairs (100)==[/color]"
		--????
--			2585	????
--			2586	??9??
		sk1max=15
		sk2max=30
		sk3max=45
		sk4max=999
		sk1=AI:GetArray(5)
		sk1=sk1+1
		sk2=AI:GetArray(6)
		sk2=sk2+1
		sk3=AI:GetArray(7)
		sk3=sk3+1
		sk4=AI:GetArray(8)
		sk4=sk4+1
		barmax=30
		jk="|"
		fjk="|"
		sk1var=string.rep(jk,math.floor(sk1/sk1max*barmax))
		sk1bar=string.rep(fjk,barmax-math.floor(sk1/sk1max*barmax))
		sk2var=string.rep(jk,math.floor(sk2/sk2max*barmax))
		sk2bar=string.rep(fjk,barmax-math.floor(sk2/sk2max*barmax))
		sk3var=string.rep(jk,math.floor(sk3/sk3max*barmax))
		sk3bar=string.rep(fjk,barmax-math.floor(sk3/sk3max*barmax))
		sk4var=string.rep(jk,math.floor(sk4/sk4max*barmax))
		sk4bar=string.rep(fjk,barmax-math.floor(sk4/sk4max*barmax))
		colorVar="[color=ff00E000]"
		colorBar="[color=ff303030]"
		colorEND="[/color]"
		msgline=msgline.."\total sunshine: "..colorVar..sk1var..colorEND..colorBar..sk1bar..colorEND
		msgline=msgline.."\nMeteor Strike: "..colorVar..sk2var..colorEND..colorBar..sk2bar..colorEND
		msgline=msgline.."\nBurning Floor: "..colorVar..sk3var..colorEND..colorBar..sk3bar..colorEND
		msgline=msgline.."\n99 times Shields "..colorVar..sk4var..colorEND..colorBar..sk4bar..colorEND
		
		rhpline=AI:GetArray(3)
		rhpline=rhpline+1
		hpline=110-rhpline*20
		if hpline > 0 then
			msgline=msgline.."\nNext time 9 stacks sun "..tostring(hpline).." %"
		else
			msgline=msgline.."\nNext time 9 stacks sun: None"
		end
		hpn=AI:GetHP()
		hpmax=AI:GetHPMax()
		hppct=hpn/hpmax*100
		hppct=math.floor(hppct*100)/100
		timertt=AI:GetArray(10)
		timertt=timertt+1
		AI:SetArray(10,timertt)
		timertt=timertt/3
		ttmin=math.floor(timertt/60)
		ttsec=timertt-ttmin*60
		msgline=msgline.."\n--------------"
		msgline=msgline.."\nTonatiuh: "..tostring(hppct).."%"
		msgline=msgline.."\nTime: "..tostring(ttmin).."Score"..tostring(math.floor(ttsec)).."Second"
		
--		AI:SendMsgToMap(mapid,0,msgline)
		----------------------
		if sk1 == sk1max then
			sk1 = 0
			AI:AddSkill(2585,1)
			AI:UseSkill(2585,1)
		end
		----------------------
		if sk2 == sk2max then
			sk2 = 0
			Thp,Tmhp=AI:GetTargetHP(),AI:GetTargetHPMax()
			if Thp/Tmhp > 0.2 then
				AI:AddSkill(2586,1)
				AI:UseSkill(2586,1)
			else
				AI:AddSkill(2585,1)
				AI:UseSkill(2585,1)
			end
		end
		----------------------
		if sk3 == sk3max then
			--?????2??
			sk3 = 0
				id = AI:GetTargetID()
				Xo = AI:GetPlayerX(id)
				Yo = AI:GetPlayerY(id)
				Xi = AI:GetPosX()
				Yi = AI:GetPosY()
				ARad = math.atan2(Yo-Yi,Xo-Xi)
				i = 2
				while i < 8 do
					x0 = math.cos(ARad)
					y0 = math.sin(ARad)
					x1 = math.cos(ARad+0.35)
					y1 = math.sin(ARad+0.35)
					x2 = math.cos(ARad-0.35)
					y2 = math.sin(ARad-0.35)
					AI:SummonMonsterByPos(55383, Xi + 3*i*x0, Yi + 3*i*y0)
					AI:SummonMonsterByPos(55383, Xi + 3*i*x1, Yi + 3*i*y1)
					AI:SummonMonsterByPos(55383, Xi + 3*i*x2, Yi + 3*i*y2)
					i = i + 1
				end
		end
		----------------------
		if sk4 == sk4max then
			sk4 = 0
--				2589	99??
			AI:AddSkill(2589,1)
			AI:UseSkill(2589,1)
		end
		AI:SetArray(5,sk1)
		AI:SetArray(6,sk2)
		AI:SetArray(7,sk3)
		AI:SetArray(8,sk4)
		AI:SetArray(2,a)
	end--???2

	if nIndex == 1 then
		AI:Exit()
	end
	
	
end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	local mapid = AI:GetMapID()
	
	hpn = AI:GetHP()
	hpmax = AI:GetHPMax()
	hppct = hpn/hpmax*100
	
	t = AI:HaveAttackTarget()--????
	if t == false then
		a = AI:GetArray(1)
		if a > 0 then
			if hpn == hpmax then
				CanBeShutDown = AI:GetArray(9)
				if CanBeShutDown == 1 then
					AI:DelTimer(1)
					AI:DelTimer(2)
					AI:DelTimer(3)
					AI:DelTimer(9)
					AI:SetArray(1,0)
					AI:SetArray(2,0)
					AI:SetArray(3,0)
					AI:SetArray(9,0)
					AI:ChangeFaction(1)
					AI:ScreenText("Tonatiuh: Incompetent!",2)
					AI:SetEctypeVarShort(mapid,1,0)
				end
			end
		end
	else
	-----------------------------------------------------------normal start
		a = AI:GetArray(1)
		if a == 0 then
			AI:SetArray(1,1)
			AI:SetTimer(1,30000,1)
		end
		a = AI:GetArray(2)
		if a == 0 then
			--????
			AI:SetTimer(2,333,9999)
			AI:SetArray(2,1)
		end
		-----------------------------------------??HP???
		if hppct < 100 then
			bufflevel=1
			losehp = 100-hppct
			loselevel = math.floor(losehp/8)
			bufflevel=bufflevel+loselevel
			if bufflevel >= 10 then
				bufflevel = 10
			end
			if bufflevel > 0 then
				oldlevel=AI:GetArray(12)
				if bufflevel > oldlevel then
--					2583	???
					AI:AddSkill(2583,bufflevel)
					AI:UseSkill(2583,bufflevel)
					AI:SetArray(12,bufflevel)
				end
			end
		end
		----------------------------------------------------------normal end
	end
end--functionEvent_ThinkingEND
------------------------------------------------------------------------dead
function Event_OnDead(nAI)
	local AI = GetMonsterAI(nAI)
	local mapid = AI:GetMapID()

	AI:DelTimer(1)
	AI:DelTimer(2)
	AI:DelTimer(3)
	AI:DelTimer(4)
	AI:DelTimer(5)
	AI:DelTimer(6)
	AI:DelTimer(7)
	AI:DelTimer(8)
	AI:DelTimer(9)
	AI:DelTimer(10)

end

