----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2010/11/11
--		Author:???
--		Class:	.Lua
--		AIName:monster-51242.lua
--		Remark:???
----------------------------------------------------
--??-??dps-??5??dps-????
--3--???
--5--5???hp
--6--4???hp
--7--3???hp
--8--2???hp
--9--1???hp
	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		playerID = AI:GetEctypeVarInteger(mapid, 110)
		
		if nIndex == 1 then
			a = AI:GetArray(1)
			if a == 1 then
				AI:SetArray(1,2)
--				AI:Exit()
			end
		end
		
		if nIndex == 2 then
			if a == 1 then
				hpn = AI:GetHP()
				hpmax = AI:GetHPMax()
				hppct = math.floor(hpn/hpmax*1000000)
				if hppct == 1000 then --??????
					AI:SetArray(3,0)
					AI:SetArray(5,hpmax)
					AI:SetArray(6,hpmax)
					AI:SetArray(7,hpmax)
					AI:SetArray(8,hpmax)
					AI:SetArray(9,hpmax)
				else
					alltime = AI:GetArray(3)
					alltime = alltime+1
					dpsm = hpmax-hpn
					dpsm = dpsm/alltime					
					AI:SetArray(3,alltime)
					
					hp5 = AI:GetArray(5)
					dps5 = hp5-hpn
					dps5 = dps5/5
					
					hp1 = AI:GetArray(9)
					dps1 = hp1-hpn
					
					hppass = AI:GetArray(6)
					AI:SetArray(5,hppass)
					hppass = AI:GetArray(7)
					AI:SetArray(6,hppass)
					hppass = AI:GetArray(8)
					AI:SetArray(7,hppass)
					hppass = AI:GetArray(9)
					AI:SetArray(8,hppass)
					hppass = hpn
					AI:SetArray(9,hppass)
					
					pctold = AI:GetArray(4)
					AI:SetArray(4,hppct)
--					print("pctold="..pctold.."  |  hppct="..hppct)
					if hppct ~= pctold then
						dpsm = dpsm-dpsm%1
						dps5 = dps5-dps5%1
						dps1 = dps1-dps1%1
						r = math.random(1,99)
						n = math.random(1,3)

--						text=text.."\n".."GUID:05638000000"..tostring(alltime)
--						text=text.."\n".."GUID:05638000001"..tostring(dpsm)
--						text=text.."\n".."GUID:05638000002"..tostring(dps5)
--						text=text.."\n".."GUID:05638000003"..tostring(dps1)
--						text=text.."\n".."-----------------------"
--						unPlayerID = AI:GetTargetID()
--						name = AI:GetPlayerInfoStr(unPlayerID,"name")
--						text=text.."\n".."GUID:05638000004"..name
--						AI:ScreenText("GUID:05638000005"..tostring(hppct/10000).."  %",2)
----------------------------------------------------------------------------------------

--		text="GUID:05638000006"
--		text=text.."GUID:05638000007"
--		text=text.."GUID:05638000008"
--		text=text.."GUID:05638000009"
--		text=text.."GUID:05638000010"
--		AI:SendMsgToMap(mapid,0,text)
--AI:ChangeFaction(1)
----------------------------------------------------------------------------------------
					end
				end
			end
		end
		
		
	end


	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

--????
		a = AI:GetArray(1)
		if a == 0 then
			AI:SetTimer(1,600000,1)
			AI:SetArray(1,1)
			AI:ScreenText("Starts!",2)
			hpmax = AI:GetHPMax()
			AI:SetArray(5,hpmax)
			AI:SetArray(6,hpmax)
			AI:SetArray(7,hpmax)
			AI:SetArray(8,hpmax)
			AI:SetArray(9,hpmax)
        AI:AddSkill(2589,1)
        AI:UseSkill(2589,1)
        AI:Say("2589")
		end
--????
		a = AI:GetArray(2)
		if a == 0 then
			AI:SetTimer(2,1000,65535)
			AI:SetArray(2,1)
		end
		
		
	end