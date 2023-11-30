---****************************  
---  Copyright:PERFECT WORLD  
---  Modified:2013.2.25  
---  Author:???  
---  TaskName: 32526 
---****************************  


	
	 
	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 1 then--???1--start--??
			a=AI:GetArray(1)
			if a == 1 then
				num_dark = AI:GetEctypeVarShort(mapid,10)
				num_free = AI:GetEctypeVarShort(mapid,8)
				msgline=""
				msgline=msgline.."[color=ffE0E000]Quartz Grotto status:[/color]\n"
				msgline=msgline.."Crystal Fragments: "..tostring(num_free).."\n"
				msgline=msgline.."Shadow Cores: "..tostring(num_dark).."\n"
				stand = AI:GetEctypeVarShort(mapid,70)
				stand1 = AI:GetEctypeVarShort(mapid,71)
				stand2 = AI:GetEctypeVarShort(mapid,72)
				stand3 = AI:GetEctypeVarShort(mapid,73)
				var_line =AI:GetEctypeVarShort(mapid,0)
				if var_line ~= 1 then
					if stand == 1 then
						msgline=msgline.."Alignment: [icon=UI\\Icon\\other\\81168.dds]\n"
						--msgline=msgline.."GUID:03995000006"..tostring(stand3).."\n"
						--msgline=msgline.."GUID:03995000008"..tostring(stand2).."\n"
					end
					if stand == 2 then
						msgline=msgline.."Alignment: [icon=UI\\Icon\\other\\81169.dds]\n"
						--msgline=msgline.."GUID:03995000011"..tostring(stand3).."\n"
						--msgline=msgline.."GUID:03995000013"..tostring(stand1).."\n"
					end
					if stand == 3 then
						msgline=msgline.."Alignment: [icon=UI\\Icon\\other\\81170.dds]\n"
						--msgline=msgline.."GUID:03995000016"..tostring(stand2).."\n"
						--msgline=msgline.."GUID:03995000018"..tostring(stand1).."\n"
					end
					if stand == 0 then
						msgline=msgline.."Alignment: None\n"
						--msgline=msgline.."GUID:03995000021"..tostring(stand3).."\n"
						--msgline=msgline.."GUID:03995000023"..tostring(stand2).."\n"
						--msgline=msgline.."GUID:03995000025"..tostring(stand1).."\n"
					end
				end
				msgline=msgline.."Collect 10 Shadow Cores to open the Darkshadow Trial.\n"
				msgline=msgline.."Collect 4 Crystal Fragments to open the Crystal Treasure.\n"
	--	-------------------------------
	--msgline=msgline.."------------\n"
	--for i = 0,99 do
	--	PT = AI:GetEctypeVarShort(mapid,i)
	--	if PT > 0 then msgline=msgline.."["..i.."]= "..PT.." \n" end
	--end
	--msgline=msgline..tostring(math.random(1,99))
	--	-------------------------------
				AI:SendMsgToMap(mapid,0,msgline)
			end
		end--???1--------------------end
    if nIndex == 2 then  --------??????
			a= AI:GetArray(2)
			if a==0 then
				AI:ScreenText("Hint: Shadow Witch Obsidia is in the Land of Shadow. You must pass through the Land of Ice to reach her!",2)
			end
			if a==1 then
				AI:ScreenText("Hint: Remnants of the Flame still burn in the north. Go forth, warrior!",2)
			end
			if a==2 then
				AI:ScreenText("Hint: Shadow Witch Obsidia is in the Land of Shadow. You must pass through the Crystal Nexus to reach her!",2)
			end
			if a==3 then
				AI:ScreenText("Hint: Shadow Witch Obsidia is in the Land of Shadow. You must pass through the Crystal Nexus to reach her!",2)
			end
			if a==4 then
				AI:ScreenText("Hint: The Power of Ice is still strong! Go to the Land of Ice and stop it!",2)
			end
			if a==5 then
				AI:ScreenText("Hint: The Dark Shadow guides you to the Land of Ice and Land of Flame to eliminate both Ice and Flame!",2)
			end
			if a==6 then
				AI:ScreenText("Hint: Amethyst guides you north to the Land of Flame. Keep moving!",2)
			end
			if a==7 then
				AI:ScreenText("Hint: Pyrope guides you south to the Land of Shadow. Destroy the Darkness!",2)
			end
			if a==8 then
				AI:ScreenText("Hint: Reach the Land of Ice through the Crystal Nexus, and destroy the Ice!",2)
			end
			if a==9 then
				AI:ScreenText("Hint: The Dark Shadow guides you northeast to the Land of Ice!",2)
			end
			if a==10 then
				AI:ScreenText("Hint: Azura will awaken in 30 sec. Leave this place quickly!",2)
			end
			if a==11 then
				AI:ScreenText("Hint: Destroy the 3 Crystal Gates when they are open to reach the Land of Shadow!",2)
			end
			if a==12 then
				AI:ScreenText("Crystal Outlander: Want to move on? You'll need to solve a little riddle first!",2)
			end
			if a==13 then
				AI:ScreenText("Crystal Outlander: Looking for that old bat, Obsidia? You might find those statues useful, heh heh...",2)
			end
			if a==14 then
				AI:ScreenText("Hint: The Crystal Gate is open! Head toward the south, quickly!",2)
			end
			
		end 
	---------------------2??boss??-----------------------
		if nIndex == 3 then ---------2??boss??
			a= AI:GetArray(3)
			if a==1 then
				AI:ScreenText("Pyrope: Ice! Have you come here to cause trouble?!",2)
				AI:SetArray(3,a+1)
			end
			if a==2 then
				AI:ScreenText("Azura: The Land of Flame be damned, I'll do as I please. But you...",2)
				AI:SetArray(3,a+1)
			end
			if a==3 then
				AI:ScreenText("Pyrope: You are just an agent of the Ice. You have guts to come here, but you won't leave this place alive!",2)
				AI:SetArray(3,a+1)
			end
			if a==4 then
				AI:ScreenText("Azura: Prove yourself worthy!",2)
				AI:SetArray(3,a+1)
			end
			if a==5 then
				AI:ScreenText("Pyrope: Who are you? Why are you here? If you believe the Power of Flame, then let us destroy the Ice together!",2)
				AI:SetArray(3,a+1)
			end
		end
	---------------------2??boss??-----------------------

	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

			-----------------------------------------------------------normal start
 			a = AI:GetArray(1)
			if a == 0 then
				AI:SetTimer(1,1000,99999)
				AI:SetArray(1,1)
				msgstatus=1
				AI:SetArray(3,msgstatus)
			end
			var_line =AI:GetEctypeVarShort(mapid,0)
			var_count1 = AI:GetEctypeVarShort(mapid,1)
			var_count2 = AI:GetEctypeVarShort(mapid,2)
			var_count3 = AI:GetEctypeVarShort(mapid,3)
			var_count4 = AI:GetEctypeVarShort(mapid,4)
			var_count5 = AI:GetEctypeVarShort(mapid,7)
			var_other = AI:GetEctypeVarShort(mapid,64)
			var_other1 = AI:GetEctypeVarShort(mapid,84)
			var_other2 = AI:GetEctypeVarShort(mapid,87)
			var_area = AI:GetEctypeVarShort(mapid,85)
			a= AI:GetArray(10)
			if a==0 then 
				if var_count1 ==5 then
					AI:SetArray(2,0)
					AI:SetTimer(2,3000,2)
					a=a+1
					AI:SetArray(10,1)
				end
				if var_count2 ==2 then
					AI:SetArray(2,1)
					AI:SetTimer(2,3000,2)
					a=a+1
					AI:SetArray(10,1)
				end
				if var_count3 ==3 then
					AI:SetArray(2,9)
					AI:SetTimer(2,3000,2)
					a=a+1
					AI:SetArray(10,1)
				end
				if var_count4 ==1 then
					AI:SetArray(2,3)
					AI:SetTimer(2,3000,2)
					a=a+1
					AI:SetArray(10,1)
				end
				if var_count5 ==1 then
					AI:SetArray(2,6)
					AI:SetTimer(2,3000,2)
					a=a+1
					AI:SetArray(10,1)
				end
				
			end
			if a==1 then
				if var_count2 ==5 then
					AI:SetArray(2,2)
					AI:SetTimer(2,3000,2)
					a=a+1
					AI:SetArray(10,2)
				end
				if var_count4 ==5 then
					AI:SetArray(2,4)
					AI:SetTimer(2,3000,2)
					a=a+1
					AI:SetArray(10,2)
				end
				if var_count5 ==2 then
					AI:SetArray(2,7)
					AI:SetTimer(2,3000,2)
					a=a+1
					AI:SetArray(10,2)
				end
				if var_count3 ==4 then
					AI:SetArray(2,5)
					AI:SetTimer(2,3000,2)
					a=a+1
					AI:SetArray(10,2)
				end
				if var_line == 1 then
					if var_other > 20 then
						AI:SetArray(2,10)
						AI:SetTimer(2,1000,1)
						a=a+1
						AI:SetArray(10,2)
					end
				end
			end
			if a== 2 then
				if var_other1 == 1 then
					if var_line == 1 then
						AI:SetArray(2,11)
						AI:SetTimer(2,1000,1)
						a=a+1
						AI:SetArray(10,3)
					end
				end
			end  
			if a== 3 then
				if var_other2 == 1 then
					if var_line == 1 then
						AI:SetArray(2,14)
						AI:SetTimer(2,1000,1)
						a=a+1
						AI:SetArray(10,4)
					end
				end
			end  
			if a== 4 then
				if var_area == 1 then
					if var_line == 1 then
						AI:SetArray(2,12)
						AI:SetTimer(2,1000,1)
						a=a+1
						AI:SetArray(10,5)
					end
				end
			end
			if a== 5 then
				if var_area == 2 then
					if var_line == 1 then
						AI:SetArray(2,13)
						AI:SetTimer(2,1000,1)
						a=a+1
						AI:SetArray(10,6)
					end
				end
			end   
			---------------------????---------------------------------
			c=AI:GetArray(11)
			if c== 0 then
				var_complete1 = AI:GetEctypeVarShort(mapid,20)
				var_complete2 = AI:GetEctypeVarShort(mapid,21)
				var_complete3 = AI:GetEctypeVarShort(mapid,22)
				var_complete4= AI:GetEctypeVarShort(mapid,23)
				var_complete5 = AI:GetEctypeVarShort(mapid,24)
				stand1 = AI:GetEctypeVarShort(mapid,71)
				stand2 = AI:GetEctypeVarShort(mapid,72)
				stand3 = AI:GetEctypeVarShort(mapid,73)
				--if var_complete2 == 1 then
				--	if stand1 < 1 then
				--		if stand3 < 1 then
				--			AI:ScreenText("GUID:03995000049",2)
				--			var_piece = AI:GetEctypeVarShort(mapid,8)
				--			var_piece =var_piece +1
				--			AI:SetEctypeVarShort(mapid,8,var_piece)
				--			AI:SetArray(11,1)
				--		end
				--	end
				--end
				--if var_complete3 == 1 then
				--	if stand2 < 1 then
				--		if stand3 < 1 then
				--			AI:ScreenText("GUID:03995000050",2)
				--			var_piece = AI:GetEctypeVarShort(mapid,8)
				--			var_piece =var_piece +1
				--			AI:SetEctypeVarShort(mapid,8,var_piece)
				--			AI:SetArray(11,1)
				--		end
				--	end
				--end
				--if var_complete4 == 1 then
				--	if stand2 < 1 then
				--		if stand3 < 1 then
				--			AI:ScreenText("GUID:03995000051",2)
				--			var_piece = AI:GetEctypeVarShort(mapid,8)
				--			var_piece =var_piece +1
				--			AI:SetEctypeVarShort(mapid,8,var_piece)
				--			AI:SetArray(11,1)
				--		end
				--	end
				--end
				--if var_complete5 == 1 then
				--	if stand1 < 1 then
				--		if stand2 < 1 then
				--			AI:ScreenText("GUID:03995000052",2)
				--			var_piece = AI:GetEctypeVarShort(mapid,8)
				--			var_piece =var_piece +1
				--			AI:SetEctypeVarShort(mapid,8,var_piece)
				--			AI:SetArray(11,1)
				--		end
				--	end
				--end
			end
			e=AI:GetArray(5)
			if e== 0 then
				if var_complete1 == 1 then
						AI:ScreenText("The Instance is completed! Please teleport to the Crystal Nexus!",2)
						AI:SetArray(5,1)
				end
				if var_complete2 == 1 then
						AI:ScreenText("The Instance is completed! Please teleport to the Crystal Nexus!",2)
						AI:SetArray(5,1)
				end
				if var_complete3 == 1 then
						AI:ScreenText("The Instance is completed! Please teleport to the Crystal Nexus!",2)
						AI:SetArray(5,1)
				end
				if var_complete4 == 1 then
						AI:ScreenText("The Instance is completed! Please teleport to the Crystal Nexus!",2)
						AI:SetArray(5,1)
				end
				if var_complete5 == 1 then
						AI:ScreenText("The Instance is completed! Please teleport to the Crystal Nexus!",2)
						AI:SetArray(5,1)
				end
			end
			---------------------????---------------------------------
			---------------------2??boss??-----------------------
			d=AI:GetArray(3)
			if d == 0 then
				var_line2 =AI:GetEctypeVarShort(mapid,0)
				if var_line2 == 2 then
					AI:SetTimer(3,4000,6)
					AI:SetArray(3,1)
				end
			end
			e=AI:GetArray(4)
			if e == 0 then
				var_line2 =AI:GetEctypeVarShort(mapid,0)
				if var_line2 == 21 then
					AI:SetArray(3,10)
					AI:SetArray(4,1)
				end
				if var_line2 == 22 then
					AI:SetArray(3,10)
					AI:SetArray(4,1)
				end
			end
			
			---------------------2??boss??-----------------------
			
			
			----------------------------------------------------------normal end
		

	end--functionEvent_ThinkingEND



--function Count_Down_10(){
--		$ectype_id = GetEctypeID( -1 , 573 )
--		$varline = GetEctypeVar($ectype_id,0)
--		BC("screen","map",$ectype_id,"GUID:03995000058")
--		$count = GetEctypeVar($ectype_id,65)
--		$count_left = GetEctypeVar($ectype_id,64)
--		$sametime = GetEctypeVar($ectype_id,16)
--		if $varline == 32
--			if $count_left > 0
--				if $count_left <= 10
--					if $sametime == 2
--						$count_left = $count_left - $count
--						SetEctypeVar($ectype_id,64,$count_left)
--						BC("screen","map",$ectype_id,"GUID:03995000059",$count_left,"GUID:03995000060")
--						$count += 1
--						SetEctypeVar($ectype_id,65,$count)
--						StartEctypeTimer($ectype_id,6)
--					endif
--					if $sametime == 3
--						StartEctypeTimer($ectype_id,2)
--						SetEctypeVar($ectype_id,64,0)
--						SetEctypeVar($ectype_id,65,0)
--						BC("screen","map",$ectype_id,"GUID:03995000061")
--					endif
--				endif
--			endif
--			if $count_left == 0
--			BC("screen","map",$ectype_id,"GUID:03995000062")
--			SetEctypeVar($ectype_id,64,0)
--			SetEctypeVar($ectype_id,65,0)
--			endif
--		endif
--	BC("screen","map",$ectype_id,"GUID:03995000063")
--}
--function Count_Down_60(){
--		$ectype_id = GetEctypeID( -1 , 573 )
--		$varline = GetEctypeVar($ectype_id,0)
--		$count = GetEctypeVar($ectype_id,65)
--		$count_left = GetEctypeVar($ectype_id,64)
--			if $count_left > 0
--				if $count_left <= 60
--				$count_left = $count_left - $count
--				BC("screen","map",$ectype_id,"GUID:03995000064",$count_left,"GUID:03995000065")
--				$count += 1
--				SetEctypeVar($ectype_id,64,$count_left)
--				SetEctypeVar($ectype_id,65,$count)
--				StartEctypeTimer($ectype_id,7)
--				endif
--			endif
--			if $count_left == 0
--				$countmon = GetEctypeVar($ectype_id,42)
--				SetEctypeVar($ectype_id,64,0)
--				SetEctypeVar($ectype_id,65,0)
--				BC("screen","map",$ectype_id,"GUID:03995000066",$countmon,"/50")
--				if $countmon == 50
--					BC("screen","map",$ectype_id,"GUID:03995000067")
--					$count_award = GetEctypeVar($ectype_id,8)
--					$count_award += 10
--					SetEctypeVar($ectype_id,8,$count_award)
--				endif
--				if $countmon < 50
--					BC("screen","map",$ectype_id,"GUID:03995000068")
--				endif
--			endif
--
--}
--
						