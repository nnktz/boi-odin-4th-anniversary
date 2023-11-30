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

	if nIndex == 1 then--???1--???
		a=AI:GetArray(1)
--		AI:ChangeFaction(1)
		pid=AI:GetEctypeVarInteger(mapid,110)
		if pid > 0 then
			pname=AI:GetPlayerInfoStr(pid,"name")
			if pname == nil then
				pname=" "
			end
		else
			pname=" "
		end
		AI:ScreenText("Tonatiuh: Come on!"..pname,2)
		AI:GetRandTarget()
		
		AI:SetArray(1,a+1)
		AI:SetArray(9,1)
		AI:DelTimer(1)
	end--???1
	
	if nIndex == 3 then--???3--?????
		timelate=AI:GetArray(4)
		timelate=timelate+1
		AI:SetArray(4,timelate)
		latetime=20
		if timelate == latetime - 1 then
			res=AI:GetEctypeVarShort(mapid,2)
			if res > 0 then
				reshppct=res*2
				hpmax = AI:GetHPMax()
				restorehp=reshppct/100*hpmax
				AI:RestoreHPInstant(restorehp)
				AI:ScreenText("Tonatiuh Recovery"..tostring(reshppct).." % HP!",2)
				AI:SetEctypeVarShort(mapid,2,0)
			else
				AI:ScreenText("Tonatiuh can't get the HP recovery!",2)
			end
			AI:DelTimer(3)
		else
			seetime=latetime-timelate
			res=AI:GetEctypeVarShort(mapid,2)
			AI:ScreenText("Meld Life ("..seetime..") Second | Mini Melting Core remaining: ("..tostring(res)..")",2)
		end

	end--???3
	
	if nIndex == 4 then--???3--?????
		timestop=AI:GetArray(13)
		timestop=timestop-1
		AI:SetArray(13,timestop)
		if timestop > 0 then
			AI:Say(" Core function ends! Report time remaining: ("..timestop.."Seconds")
		else
			AI:SetArray(13,0)
			AI:Say(" Core function has recovered!")
			AI:DelTimer(4)
		end
		
	end--???4
	
	if nIndex == 2 then--???2
		a=AI:GetArray(2)
		--????
		msgline="[color=ffE0E000]== Endless Stairs (100)==[/color]"
		--????
--			2585	????
--			2586	??9??
		sk1max=6
		sk2max=35
		sk3max=120
		sk4max=255
		sk5max=15
		freq=5
		sk1max=sk1max*freq
		sk2max=sk2max*freq
		sk3max=sk3max*freq
		sk4max=sk4max*freq
		sk5max=sk5max*freq
		
			sk1=AI:GetArray(5)
			sk2=AI:GetArray(6)
			sk3=AI:GetArray(7)
			sk4=AI:GetArray(8)
		timestop=AI:GetArray(13)
		if timestop == 0 then
			sk1=sk1+1
			sk2=sk2+1
			sk3=sk3+1
			sk4=sk4+1
		end
		
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
--		colorVar="[color=ff00E000]"
		colorBar="[color=ff303030]"
		colorEND="[/color]"
--		if sk1/sk1max < 0.95 then colorVar="[color=ff00E000]" else colorVar="[color=ffF02000]" end
		colorVar=makecolor(sk1/sk1max)
		if timestop > 0 then colorVar="[color=ff0080f0]" end
		msgline=msgline.."\total sunshine: "..colorVar..sk1var..colorEND..colorBar..sk1bar..colorEND
		colorVar=makecolor(sk2/sk2max)
		if timestop > 0 then colorVar="[color=ff0080f0]" end
		msgline=msgline.."\nMeteor Strike: "..colorVar..sk2var..colorEND..colorBar..sk2bar..colorEND
		colorVar=makecolor(sk3/sk3max)
		if timestop > 0 then colorVar="[color=ff0080f0]" end
		msgline=msgline.."\nBurning Floor: "..colorVar..sk3var..colorEND..colorBar..sk3bar..colorEND
--		msgline=msgline.."GUID:02655000014"..colorVar..sk4var..colorEND..colorBar..sk4bar..colorEND

		
		rhpline=AI:GetArray(3)
		rhpline=rhpline+1
		hpline=110-rhpline*30
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
		timertt=timertt/4
		ttmin=math.floor(timertt/60)
		ttsec=timertt-ttmin*60
		msgline=msgline.."\n--------------"
		msgline=msgline.."\nTonatiuh: "..tostring(hppct).."%"
		bufflevel=AI:GetEctypeVarShort(mapid,8)
		oldlevel=AI:GetArray(12)
		msgline=msgline.."\nTritium Core: ("..tostring(oldlevel).." LV\nUranium 235 Core: ("..tostring(bufflevel).." LV)"
		msgline=msgline.."\nTime: "..tostring(ttmin).."Score"..tostring(math.floor(ttsec)).."Second"
		----------------------------------------------------
				
				timebuff2591=AI:GetEctypeVarShort(mapid,7)
				timebuff2591=timebuff2591+1
				if timebuff2591 >= 4*45 then
					bufflevel=AI:GetEctypeVarShort(mapid,8)
					bufflevel=bufflevel+1
					if bufflevel > 20 then bufflevel = 20 end
					AI:AddSkill(2591,bufflevel)
					AI:UseSkill(2591,bufflevel)
--					print("|bufflevel="..bufflevel)
					AI:SetEctypeVarShort(mapid,8,bufflevel)
					AI:SetEctypeVarShort(mapid,7,0)
				else
					AI:SetEctypeVarShort(mapid,7,timebuff2591)
--					print("|timebuff2591="..timebuff2591)
				end
				
		
		AI:SendMsgToMap(mapid,0,msgline)
		----------------------
		if sk1 == sk1max then
			sk1 = 0
			AI:AddSkill(2585,1)
			AI:UseSkill(2585,1)
		end
		----------------------
		if sk2 == sk2max then
			sk2 = 0
			AI:AddSkill(2586,1)
			AI:UseSkill(2586,1)
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
				while i < 9 do
					x0 = math.cos(ARad)
					y0 = math.sin(ARad)
					x1 = math.cos(ARad+0.35)
					y1 = math.sin(ARad+0.35)
					x2 = math.cos(ARad-0.35)
					y2 = math.sin(ARad-0.35)
					AI:SummonMonsterByPos(55383, Xi + 2*i*x0, Yi + 2*i*y0)
					AI:SummonMonsterByPos(55383, Xi + 2*i*x1, Yi + 2*i*y1)
					AI:SummonMonsterByPos(55383, Xi + 2*i*x2, Yi + 2*i*y2)
					i = i + 1
				end
		end
		----------------------
		if sk4 == sk4max then
			sk4 = 0
--				2589	99??
--			AI:AddSkill(2589,1)
--			AI:UseSkill(2589,1)
		end
		AI:SetArray(5,sk1)
		AI:SetArray(6,sk2)
		AI:SetArray(7,sk3)
		AI:SetArray(8,sk4)
		AI:SetArray(2,a)
	end--???2

	
	
end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	local mapid = AI:GetMapID()
	
	hpn = AI:GetHP()
	hpmax = AI:GetHPMax()
	hppct = hpn/hpmax*100

	a = AI:GetArray(11)
	if a == 0 then
		--2582	?????
		AI:AddSkill(2582,1)
		AI:UseSkill(2582,1)
		AI:SetArray(11,1)
		AI:GetRandTarget()
	end
	
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
					AI:SetArray(1,0)--???
					AI:SetArray(2,0)--???
					AI:SetArray(3,0)--???
					AI:SetArray(4,0)--????
					AI:SetArray(5,0)--??
					AI:SetArray(6,0)--??
					AI:SetArray(7,0)--??
					AI:SetArray(8,0)--??
					AI:SetArray(9,0)--??
					AI:SetArray(10,0)--??
					AI:SetArray(11,0)--??
					AI:SetArray(12,0)--???
					AI:SetArray(13,0)--???-??
					AI:SetArray(14,0)--
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
			
			AI:SetTimer(1,3000,1)
			AI:SetArray(1,1)
--			AI:ChangeFaction(11)
	    AI:SetArray(9,0)
	    AI:SetEctypeVarShort(mapid,1,1)
			AI:Say("Who?")
			AI:ScreenText("Tonatiuh: Who?",2)
					bufflevel=AI:GetEctypeVarShort(mapid,8)
					bufflevel=bufflevel+1
					AI:AddSkill(2591,bufflevel)
					AI:UseSkill(2591,bufflevel)
					AI:SetEctypeVarShort(mapid,8,bufflevel)
					oldlevel=AI:GetArray(12)
					if oldlevel == 0 then oldlevel = 1 end
					AI:AddSkill(2583,oldlevel)
					AI:UseSkill(2583,oldlevel)
		end
		a = AI:GetArray(2)
		if a == 0 then
			--????
			AI:SetTimer(2,200,9999)
			AI:SetArray(2,1)
		end
		a = AI:GetEctypeVarShort(mapid,10)
		if a == 1 then
			AI:SetArray(13,20)
			AI:SetTimer(4,1000,99)
			AI:SetEctypeVarShort(mapid,10,0)
			AI:Say(" The function ends! Report time remaining: 20 sec.")
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
--				print("|oldlevel="..oldlevel)
				if bufflevel > oldlevel then
--					2583	???
					AI:AddSkill(2583,bufflevel)
					AI:UseSkill(2583,bufflevel)
					AI:SetArray(12,bufflevel)
				end
			end
		end
		-----------------------------------------???
		if hppct < 100 then
			rhpline=AI:GetArray(3)
			rhpline=rhpline+1
			hpline=110-rhpline*30
			if hppct <= hpline then
--				AI:RestoreHPInstant((hpline-hppct)/100*hpmax)
				a,cmax=0,9
				ox,oy,rr=191,156,9
				while a<cmax do
					oa=6.28*a/cmax
					sx=ox+rr*math.sin(oa)
					sy=oy+rr*math.cos(oa)
					AI:SummonMonsterByPos(55605,sx,sy)
					a=a+1
				end
			res=AI:GetEctypeVarShort(mapid,2)
			if res > 0 then
				reshppct=res*2
				hpmax = AI:GetHPMax()
				restorehp=reshppct/100*hpmax
--				AI:RestoreHPInstant(restorehp)
			end
				AI:ScreenText("9 stacks sun!",2)
				AI:SetEctypeVarShort(mapid,2,9)
				AI:SetArray(3,rhpline)
				AI:SetArray(4,0)
				AI:SetTimer(3,1000,99)
			end
		end
		----------------------------------------------------------normal end
	end
end--functionEvent_ThinkingEND
------------------------------------------------------------------------dead
function Event_OnDead(nAI)
	local AI = GetMonsterAI(nAI)
	local mapid = AI:GetMapID()
	
	--AI:Say("")
	pid=AI:GetEctypeVarInteger(mapid,110)
	if pid > 0 then
		pname=AI:GetPlayerInfoStr(pid,"name")
		if pname == nil then
			pname=" "
		end
	else
		pname=" "
	end
	AI:ScreenText("Tonatiuh: You can't win!"..pname,2)
	msgline="[color=ffE0E000]== Endless Stairs (100)==[/color]\n"
	msgline="Tonatiuh: Resurrection."
	AI:SendMsgToMap(mapid,0,msgline)
	posx,posy=AI:GetPosX(),AI:GetPosY()
	MonsterID=55606
	AI:SummonMonsterByPos(MonsterID,posx,posy,0)
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

function makecolor(pctcr)
	--[color=ff303030]
	sorFL,sorSK,dstFL,dstSK=0.8,0.9,0.5,1
	if pctcr < sorFL then
		pctcr=0
	else
		if pctcr > sorSK then
			pctcr=1
		else
			pctcr=(pctcr-sorFL)*(dstSK-dstFL)/(sorSK-sorFL)+dstFL
		end
	end
	pctcrCCA=math.floor(pctcr*255)
	pctcrCCB=math.floor((255*255-pctcrCCA*pctcrCCA)^0.5)
	NNA1=math.floor(pctcrCCA/16)
	FFA1=getFF(NNA1)
	NNA2=math.floor(pctcrCCA-NNA1*16)
	FFA2=getFF(NNA2)
	NNB1=math.floor(pctcrCCB/16)
	FFB1=getFF(NNB1)
	NNB2=math.floor(pctcrCCB-NNB1*16)
	FFB2=getFF(NNB2)
--	print(FFA1.."|"..FFA2.."|"..FFB1.."|"..FFB2)
	return("[color=ff"..FFA1..FFA2..FFB1..FFB2.."00]")
	
end

function getFF(nna)
	if nna < 10 then strnna=tostring(nna) end
	if nna == 10 then strnna="A" end
	if nna == 11 then strnna="B" end
	if nna == 12 then strnna="C" end
	if nna == 13 then strnna="D" end
	if nna == 14 then strnna="E" end
	if nna == 15 then strnna="F" end
	return strnna
end