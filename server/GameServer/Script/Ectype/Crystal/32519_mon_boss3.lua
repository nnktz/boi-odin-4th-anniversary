-- //****************************  
-- //  Copyright:PERFECT WORLD  
-- //  Modified:2013.2.25  
-- //  Author:???  
-- //  TaskName: ??	32519	???
-- //****************************  


	
	 
	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

	
    if nIndex == 2 then  --------??????
			a= AI:GetArray(2)
			if a==0 then
				AI:ScreenText("Obsidia: I've been waiting a long time for this moment.",2)
				AI:SetArray(2,a+1)
			end
			if a==1 then
				AI:ScreenText("Obsidia: The Darkness will purify the evil from this realm.",2)
				AI:SetArray(2,a+1)
			end
			if a==2 then
				AI:ScreenText("Obsidia: And you, my friend, will be the one to help me achieve this dream!",2)
				AI:SetArray(2,a+1)
			end
			if a==3 then
				AI:ScreenText("Obsidia: When the shadows cover this land, you will be rewarded handsomely.",2)
				AI:SetArray(2,a+1)
				AI:Exit()
			end
		end 

	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

			-----------------------------------------------------------normal start
			var_line =AI:GetEctypeVarShort(mapid,0)
			a= AI:GetArray(10)
			if var_line == 32 then
				if a == 0 then
					AI:SetTimer(2,4000,4)
					AI:SetArray(10,1)
				end
			end
			----------------------------------------------------------normal end
		

	end--functionEvent_ThinkingEND



--function Count_Down_10(){
--		$ectype_id = GetEctypeID( -1 , 573 )
--		$varline = GetEctypeVar($ectype_id,0)
--		BC("screen","map",$ectype_id,"GUID:03991000004")
--		$count = GetEctypeVar($ectype_id,65)
--		$count_left = GetEctypeVar($ectype_id,64)
--		$sametime = GetEctypeVar($ectype_id,16)
--		if $varline == 32
--			if $count_left > 0
--				if $count_left <= 10
--					if $sametime == 2
--						$count_left = $count_left - $count
--						SetEctypeVar($ectype_id,64,$count_left)
--						BC("screen","map",$ectype_id,"GUID:03991000005",$count_left,"GUID:03991000006")
--						$count += 1
--						SetEctypeVar($ectype_id,65,$count)
--						StartEctypeTimer($ectype_id,6)
--					endif
--					if $sametime == 3
--						StartEctypeTimer($ectype_id,2)
--						SetEctypeVar($ectype_id,64,0)
--						SetEctypeVar($ectype_id,65,0)
--						BC("screen","map",$ectype_id,"GUID:03991000007")
--					endif
--				endif
--			endif
--			if $count_left == 0
--			BC("screen","map",$ectype_id,"GUID:03991000008")
--			SetEctypeVar($ectype_id,64,0)
--			SetEctypeVar($ectype_id,65,0)
--			endif
--		endif
--	BC("screen","map",$ectype_id,"GUID:03991000009")
--}
--function Count_Down_60(){
--		$ectype_id = GetEctypeID( -1 , 573 )
--		$varline = GetEctypeVar($ectype_id,0)
--		$count = GetEctypeVar($ectype_id,65)
--		$count_left = GetEctypeVar($ectype_id,64)
--			if $count_left > 0
--				if $count_left <= 60
--				$count_left = $count_left - $count
--				BC("screen","map",$ectype_id,"GUID:03991000010",$count_left,"GUID:03991000011")
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
--				BC("screen","map",$ectype_id,"GUID:03991000012",$countmon,"/50")
--				if $countmon == 50
--					BC("screen","map",$ectype_id,"GUID:03991000013")
--					$count_award = GetEctypeVar($ectype_id,8)
--					$count_award += 10
--					SetEctypeVar($ectype_id,8,$count_award)
--				endif
--				if $countmon < 50
--					BC("screen","map",$ectype_id,"GUID:03991000014")
--				endif
--			endif
--
--}
--
