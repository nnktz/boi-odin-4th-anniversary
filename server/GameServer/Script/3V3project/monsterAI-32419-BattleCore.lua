----------------------------------------------------
--		Copyright:PERFECT WORLD
--		Modified:2012-8
--		Author:???
--		TaskName:?-????AI-?
--		TaskID:
-----------------------------------------------------

function Event_OnTimer( nAI, nIndex, nCount)
	local AI = GetMonsterAI(nAI)
	local mapid = AI:GetMapID()

	if nIndex == 1 then--???1--start
--print("|------------------")
		process=AI:GetArray(1)
		
		if process == 1 then----????--
			timeleft=AI:GetArray(2)
			if timeleft > 0 then
				timeleft = timeleft - 1
				if timeleft == 0 then
					pkstatus=AI:GetEctypeVarShort(mapid,0)
					if pkstatus == 2 then
						AI:SetArray(1,3)
					else
						AI:OpenMapMask(1)
						AI:ScreenText("Combat initiated!",2)
						AI:SetArray(1,2)
					end
				else
					AI:ScreenText("Preparation Time remaining:"..tostring(timeleft).."Seconds",2)
				end
				AI:SetArray(2,timeleft)
			end
		end----????--end
--			if $map_id >= 26421
--				if $map_id <= 26520
		if process == 2 then----????--
			--????id
				pida1=AI:GetEctypeVarInteger(mapid,110)
				if pida1 > 0 then
					pmapid = AI:GetPlayerInfo(pida1,"mapid",0)
					if pmapid == nil then pida1 = 0 end
					if pmapid < 26421 or pmapid > 26520 then pida1 = 0 end
				else
					pida1 = 0
				end
				pida2=AI:GetEctypeVarInteger(mapid,111)
				if pida2 > 0 then
					pmapid = AI:GetPlayerInfo(pida2,"mapid",0)
					if pmapid == nil then pida2 = 0 end
					if pmapid < 26421 or pmapid > 26520 then pida2 = 0 end
				else
					pida2 = 0
				end
				pida3=AI:GetEctypeVarInteger(mapid,112)
				if pida3 > 0 then
					pmapid = AI:GetPlayerInfo(pida3,"mapid",0)
					if pmapid == nil then pida3 = 0 end
					if pmapid < 26421 or pmapid > 26520 then pida3 = 0 end
				else
					pida3 = 0
				end
				pidb1=AI:GetEctypeVarInteger(mapid,113)
				if pidb1 > 0 then
					pmapid = AI:GetPlayerInfo(pidb1,"mapid",0)
					if pmapid == nil then pidb1 = 0 end
					if pmapid < 26421 or pmapid > 26520 then pidb1 = 0 end
				else
					pidb1 = 0
				end
				pidb2=AI:GetEctypeVarInteger(mapid,114)
				if pidb2 > 0 then
					pmapid = AI:GetPlayerInfo(pidb2,"mapid",0)
					if pmapid == nil then pidb2 = 0 end
					if pmapid < 26421 or pmapid > 26520 then pidb2 = 0 end
				else
					pidb2 = 0
				end
				pidb3=AI:GetEctypeVarInteger(mapid,115)
				if pidb3 > 0 then
					pmapid = AI:GetPlayerInfo(pidb3,"mapid",0)
					if pmapid == nil then pidb3 = 0 end
					if pmapid < 26421 or pmapid > 26520 then pidb3 = 0 end
				else
					pidb3 = 0
				end
				
--pmapid = AI:GetPlayerInfo(pidb2,"mapid",0)
--name=AI:GetPlayerInfoStr(pidb2,"name")
--
--if pmapid ~= nil then 
--print("|pmapid="..pmapid) 
--else
--print("error1")
--end
--
--if name ~= nil then 
--print("|name="..name) 
--else
--print("error2")
--end

			--????buff
			isgetbuff=AI:GetEctypeVarShort(mapid,2)
--print("| 02 isgetbuff="..isgetbuff)
			if isgetbuff == 0 then
				AI:AddPlayerStatus(pida1,6478,1)
				AI:AddPlayerStatus(pida2,6478,1)
				AI:AddPlayerStatus(pida3,6478,1)
				AI:AddPlayerStatus(pida1,11961,1)
				AI:AddPlayerStatus(pida2,11961,1)
				AI:AddPlayerStatus(pida3,11961,1)
				AI:SetEctypeVarShort(mapid,2,1)
				AI:ScreenText("The new warriors received the encouragement of Warsouls!",2)
			end
			isgetbuff=AI:GetEctypeVarShort(mapid,3)
--print("| 03 isgetbuff="..isgetbuff)
			if isgetbuff == 0 then
				AI:AddPlayerStatus(pidb1,6478,1)
				AI:AddPlayerStatus(pidb2,6478,1)
				AI:AddPlayerStatus(pidb3,6478,1)
				AI:AddPlayerStatus(pidb1,11961,1)
				AI:AddPlayerStatus(pidb2,11961,1)
				AI:AddPlayerStatus(pidb3,11961,1)
				AI:SetEctypeVarShort(mapid,3,1)
				AI:ScreenText("The new warriors received the encouragement of Warsouls!",2)
			end
			--????buff2
			isgetbuff=AI:GetEctypeVarShort(mapid,4)
			if isgetbuff == 0 then
				hp=AI:GetEctypeVarInteger(mapid,116)
				mhp=AI:GetEctypeVarInteger(mapid,118)
				if hp/mhp < 0.3 then
					AI:SetEctypeVarShort(mapid,4,1)
					AI:AddPlayerStatus(pida1,6479,1)
					AI:AddPlayerStatus(pida1,6480,1)
					AI:AddPlayerStatus(pida2,6479,1)
					AI:AddPlayerStatus(pida2,6480,1)
					AI:AddPlayerStatus(pida3,6479,1)
					AI:AddPlayerStatus(pida3,6480,1)
					AI:ScreenText("Hold on! Warriors!",2)
				end
			end
			isgetbuff=AI:GetEctypeVarShort(mapid,5)
			if isgetbuff == 0 then
				hp=AI:GetEctypeVarInteger(mapid,117)
				mhp=AI:GetEctypeVarInteger(mapid,119)
				if hp/mhp < 0.3 then
					AI:SetEctypeVarShort(mapid,5,1)
					AI:AddPlayerStatus(pidb1,6479,1)
					AI:AddPlayerStatus(pidb1,6480,1)
					AI:AddPlayerStatus(pidb2,6479,1)
					AI:AddPlayerStatus(pidb2,6480,1)
					AI:AddPlayerStatus(pidb3,6479,1)
					AI:AddPlayerStatus(pidb3,6480,1)
					AI:ScreenText("Hold on! Warriors!",2)
				end
			end
			--????buff
			isgetbuff=AI:GetEctypeVarShort(mapid,12)
			if isgetbuff == 0 then
				bufflevel=AI:GetEctypeVarShort(mapid,9)
				if bufflevel > 30 then
					bufflevel=30
				end
				if bufflevel < 15 then
					bufflevel=31
				end
				AI:SetEctypeVarShort(mapid,12,1)
				AI:AddPlayerStatus(pida1,6571,bufflevel)
				AI:AddPlayerStatus(pida1,6572,bufflevel)
				AI:AddPlayerStatus(pida2,6571,bufflevel)
				AI:AddPlayerStatus(pida2,6572,bufflevel)
				AI:AddPlayerStatus(pida3,6571,bufflevel)
				AI:AddPlayerStatus(pida3,6572,bufflevel)
--					print("|bufflevel111="..bufflevel)
			end
			isgetbuff=AI:GetEctypeVarShort(mapid,13)
			if isgetbuff == 0 then
				bufflevel=AI:GetEctypeVarShort(mapid,8)
				if bufflevel > 30 then
					bufflevel=30
				end
				if bufflevel < 15 then
					bufflevel=31
				end
				AI:SetEctypeVarShort(mapid,13,1)
				AI:AddPlayerStatus(pidb1,6571,bufflevel)
				AI:AddPlayerStatus(pidb1,6572,bufflevel)
				AI:AddPlayerStatus(pidb2,6571,bufflevel)
				AI:AddPlayerStatus(pidb2,6572,bufflevel)
				AI:AddPlayerStatus(pidb3,6571,bufflevel)
				AI:AddPlayerStatus(pidb3,6572,bufflevel)
--					print("|bufflevel222="..bufflevel)
			end
			--??????buff
			isgetbuff=AI:GetEctypeVarShort(mapid,6)
			if isgetbuff == 1 then
				AI:AddPlayerStatus(pida1,6477,1)
				AI:AddPlayerStatus(pida2,6477,1)
				AI:AddPlayerStatus(pida3,6477,1)
				AI:SetEctypeVarShort(mapid,6,0)
			end
			isgetbuff=AI:GetEctypeVarShort(mapid,7)
			if isgetbuff == 1 then
				AI:AddPlayerStatus(pidb1,6477,1)
				AI:AddPlayerStatus(pidb2,6477,1)
				AI:AddPlayerStatus(pidb3,6477,1)
				AI:SetEctypeVarShort(mapid,7,0)
			end
			
			--??????
			isover=AI:GetEctypeVarShort(mapid,10)
			if isover == 1 then
				--6372 ??	
				AI:AddPlayerStatus(pida1,6372,1)
				AI:AddPlayerStatus(pida2,6372,1)
				AI:AddPlayerStatus(pida3,6372,1)
				AI:AddPlayerStatus(pidb1,6372,1)
				AI:AddPlayerStatus(pidb2,6372,1)
				AI:AddPlayerStatus(pidb3,6372,1)
				AI:ScreenText("The battlefield has been closed, you will be teleported to town later.",2)
				AI:SetArray(1,9)
				AI:DelTimer(1)
			end
			
			pkstatus=AI:GetEctypeVarShort(mapid,0)
			if pkstatus == 2 then
				AI:SetArray(1,3)
			end
			
		end----????--end
		
		if process == 3 then----????--
			pkstatus=AI:GetEctypeVarShort(mapid,0)
			if pkstatus == 0 then
				AI:SetArray(1,2)
			end
			AI:ScreenText("Please wait for the next match!",2)
		end----????--end
		
	end--???1--------------------end

	if nIndex == 2 then--2--start
			
			msgline="[color=ffE0E000]==Warsoul Arena==[/color]\n"
			msgline=msgline.."[color=ffE0E000]Server Leaderboard:[/color]\n"
			for key = 1,10 do
				key_id=387+key
				key_score=397+key
				s_playerid=AI:GetServerValue(key_id)
				if s_playerid > 0 then
					teamname=AI:GetPlayerInfoStr(s_playerid,"name")
					if teamname == nil then
						msgline=msgline.."Round"..tostring(key).."(Currently offline)\n"
					else
						s_score=AI:GetServerValue(key_score)
						msgline=msgline.."Round"..tostring(key).."Rank:"..teamname..":"..s_score.."Score\n"
					end
				else
					msgline=msgline.."Round"..tostring(key).."Rank: none\n"
				end
			end
			if mapid ~= nil then
				if msgline ~= nil then
					AI:SendMsgToMap(mapid,0,msgline)
				end
			end
			
			
	end--2--------------------end
	
	if nIndex == 3 then--3--start
		
		--????id
		for index_id = 110,115 do
			pid=AI:GetEctypeVarInteger(mapid,index_id)
			if pid > 0 then
				pmapid = AI:GetPlayerInfo(pid,"mapid",0)
				if pmapid == nil then pid = 0 end
				if pmapid < 26421 or pmapid > 26520 then pid = 0 end
			else
				pid = 0
			end
			if pid > 0 then
				--?????
				isclose=AI:GetPlayerValue(pid,3470)
				if isclose > 0 then
					isclose=isclose-1
					AI:SetPlayerValue(pid,3470,isclose)
					if isclose == 1 then
						AI:CloseMsgBoxByPlayerID(pid,1)
					end
				end
				--3462	???
				msglineplayer="[color=ffE0E000]==Warsoul Arena New Achievement==[/color]"
				isgettoken=AI:GetPlayerValue(pid,3462)
				if isgettoken > 0 then
					msglineplayer=msglineplayer.."\nJust Another Kill acheivement unlocked! Score+1"
					AI:SetPlayerValue(pid,3462,0)
				end
				--3463	????
				isgettoken=AI:GetPlayerValue(pid,3463)
				if isgettoken > 0 then
					msglineplayer=msglineplayer.."\nWarsoul: First Blood acheivement unlocked! Score+100"
					AI:SetPlayerValue(pid,3463,0)
				end
				--3464	??5?
				isgettoken=AI:GetPlayerValue(pid,3464)
				if isgettoken > 0 then
					msglineplayer=msglineplayer.."\nWarsoul: 5 kills achievement unlocked! Score+150"
					AI:SetPlayerValue(pid,3464,0)
				end
				--3465	????
				isgettoken=AI:GetPlayerValue(pid,3465)
				if isgettoken > 0 then
					msglineplayer=msglineplayer.."\nKilling Spree achievement unlocked! Score+10"
					AI:SetPlayerValue(pid,3465,0)
				end
				--3466	??2??
				isgettoken=AI:GetPlayerValue(pid,3466)
				if isgettoken > 0 then
					msglineplayer=msglineplayer.."\nTwice in a Row achievement unlocked! Score+15"
					AI:SetPlayerValue(pid,3466,0)
				end
				--3467	??5??
				isgettoken=AI:GetPlayerValue(pid,3467)
				if isgettoken > 0 then
					msglineplayer=msglineplayer.."\nFive Times in a Row achievement unlocked!! Score+45"
					AI:SetPlayerValue(pid,3467,0)
				end
				if msglineplayer ~= "[color=ffE0E000]==Warsoul Arena New Achievement==[/color]" then
					if pid ~= nil then
						if msgline ~= nil then
							AI:SendMsgToPlayer(pid,1,msglineplayer)
							msglineplayer="[color=ffE0E000]==Warsoul Arena New Achievement==[/color]"
							AI:SetPlayerValue(pid,3470,7)
						end
					end
				end
			end
			
		end
			
	end--3--------------------end
	
	
end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
function Event_Thinking(nAI)
	local AI = GetMonsterAI(nAI)
	local mapid = AI:GetMapID()

		-----------------------------------------------------------normal start
		a = AI:GetArray(1)
		if a == 0 then
			AI:SetTimer(1,1000,9999)
			AI:SetTimer(2,3000,9999)
			AI:SetTimer(3,1000,9999)
			AI:SetArray(1,1)
			AI:SetArray(2,20)
		end
		----------------------------------------------------------normal end

--		test=AI:GetEctypeVarShort(mapid,99)
--		if test == 1 then--??AI??
--			AI:Say("hppct="..tostring(hppct))
--			AI:SetEctypeVarShort(mapid,99,0)
--		end

end--functionEvent_ThinkingEND
------------------------------------------------------------------------dead
function Event_OnDead(nAI)
	local AI = GetMonsterAI(nAI)
	local mapid = AI:GetMapID()

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
--			xx,yy=0,0
--			AI:AddSeekPos(mapid,xx,yy)
--		end

end