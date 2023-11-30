-- //****************************  
-- //  Copyright:PERFECT WORLD  
-- //  Modified:2013.2.25  
-- //  Author:???  
-- //  TaskName: ??	32520 axia

-- //****************************  

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 1 then--???1----------3?????1s??
			a=AI:GetArray(3)
			if a<30 then
				PosX=AI:GetPosX()
				PosY=AI:GetPosY()
				if a == 2 then 
				AI:ScreenText("Amethyst: Please, don't hurt me, be gentle... There are Demons gathering in the north.",2)
				end
				if a==5 then
				MonsterID=32505
				AI:SummonMonsterByPos(MonsterID,PosX-2,PosY-2,0)
				end
				if a == 6 then 
				AI:ScreenText("Amethyst: This hourglass is very important to me. I believe you will find it useful. Please, take it... Heh heh...",2)
				end
				a=a+1
				AI:SetArray(3,a)
			end
			if a==30 then
					PosX=AI:GetPosX()
					PosY=AI:GetPosY()
					MonsterID=32467
					Level=AI:GetEctypeVarShort(mapid,5)
					FieldLevel=AI:GetEctypeVarShort(mapid,6)
					AI:ScreenText("Amethyst: Oh, so you don't believe me, do you? Well then, let's see what you're made of! Come at me!",2)
					if FieldLevel > 0 then
						AI:CreateFieldMonster(MonsterID,258,FieldLevel,1,mapid,PosX,PosY,0)
					else 
						AI:SummonLevelMonsterByPos(MonsterID, 258, Level, PosX,PosY)
					end
--					AI:
					AI:SetEctypeVarShort(mapid,0,32)
				a=a+1
				AI:SetArray(3,a)
				AI:Exit()
			end
		end
		if nIndex ==2 then --???2--start ??????3s?
			AI:ScreenText("Amethyst: Who are you? Why must you make things so difficult!?",2)
			PosX=AI:GetPosX()
					PosY=AI:GetPosY()
					MonsterID=32467
					Level=AI:GetEctypeVarShort(mapid,5)
					FieldLevel=AI:GetEctypeVarShort(mapid,6)
					if FieldLevel > 0 then
						AI:CreateFieldMonster(MonsterID,257,FieldLevel,1,mapid,PosX,PosY,0)
					else  
						AI:SummonLevelMonsterByPos(MonsterID, 257, Level, PosX,PosY)
					end
				AI:Exit()
			
		end--???2--------------------end
		if nIndex == 3 then ---???3--??-----
			a=AI:GetArray(2)
			if a==0 then 
				AI:ScreenText("Amethyst: You're tougher than you look. Please, come with me.",2)
				AI:UpdateSeekPath(1)
				AI:SetArray(2,1)
			end
		end
		if nIndex ==4 then --???4--start ??????3s?
			AI:ScreenText("Amethyst: The time for Darkness has arrived!",2)
			PosX=AI:GetPosX()
					PosY=AI:GetPosY()
					MonsterID=32467
					Level=AI:GetEctypeVarShort(mapid,5)
					FieldLevel=AI:GetEctypeVarShort(mapid,6)
					if FieldLevel > 0 then
						AI:CreateFieldMonster(MonsterID,257,FieldLevel,1,mapid,PosX,PosY,0)
					else  
						AI:SummonLevelMonsterByPos(MonsterID, 257, Level, PosX,PosY)
					end
				AI:Exit()
			
		end--???4--------------------end
		if nIndex == 10 then--???14--start
			
				randomsay=math.random(1,4)                                                         
				if randomsay == 1 then                                                              
					AI:Say("Everyone says I am beautiful. What do you think?")    
				end                                                         
				if randomsay == 2 then                                                              
					AI:ScreenText("Amethyst: Mirror, mirror, on the wall, you're my only friend at all!",2)
				end                                                   
				if randomsay == 3 then                                                              
					AI:Say("Even in the darkness, the mirror still reflects my beauty!")   
				end                                                  

		end--???10--------------------end
	
	--	if nIndex == 14 then--???14--start
	--		
	--			randomsay=math.random(1,8)                                                         
	--			if randomsay == 1 then                                                              
	--				AI:Say("GUID:03992000009")    
	--			end                                                         
	--			if randomsay == 2 then                                                              
	--				AI:Say("")    
	--			end                                                   
	--			if randomsay == 3 then                                                              
	--				AI:Say("")   
	--			end                                                  
	--			if randomsay == 4 then                                                              
	--				AI:Say("")  
	--			end                                            
	--			if randomsay == 5 then                                                              
	--				AI:Say("")
	--			end                                         
	--			if randomsay == 6 then                                                              
	--				AI:Say("GUID:03992000010")    
	--			end                                
	--			if randomsay == 7 then                                                              
	--				AI:Say("GUID:03992000011")     
	--			end                                          
	--			if randomsay == 8 then                                                              
	--				AI:Say("GUID:03992000012")      
	--			end                                             
  --
	--		
	--	end--???14--------------------end

		
	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

			-----------------------------------------------------------normal start
			
			
			
			
			a = AI:GetArray(1)
			var_count = AI:GetEctypeVarShort(mapid,40)
			if a == 0 then 
				AI:SetTimer(10,2000,1)
				a = a+1
				AI:SetArray(1,a)
			end
			var_count_32 = AI:GetEctypeVarShort(mapid,63)
			if var_count_32 == 1 then
				AI:SetArray(1,2)
				a = 2
				AI:SetEctypeVarShort(mapid,63,0)
			end
			if var_count >=4 then
				AI:ScreenText("Amethyst: What's going on? Who broke my mirrors?",2)
				AI:SetArray(1,2)
				AI:SetEctypeVarShort(mapid,40,0)
				a = a+ 1
			end
			if a == 2 then
			ecvar1 = AI:GetEctypeVarShort(mapid,0)
			ecvar2 = AI:GetEctypeVarShort(mapid,3)
			if ecvar1 == 3 then----------------------------------3?????
				if ecvar2 == 1 then
			--	AI:ScreenText("GUID:03992000014",2)
				AI:SetTimer(1,1000,40)
				end
			end
			if ecvar1 == 31 then----------------------------------3?????
				--if ecvar2 == 0 then
			--	AI:ScreenText("GUID:03992000015",2)
				AI:SetTimer(4,2000,1)
				--end
			end
			ecvar4 = AI:GetEctypeVarShort(mapid,3)
			if ecvar1 == 32 then--------------------------------???????
				if ecvar4 == 2 then
			--	AI:ScreenText("GUID:03992000016",2)
				AI:SetTimer(3,2000,1)
				end
			end
			
			ecvar3 = AI:GetEctypeVarShort(mapid,2)
			if ecvar1 == 21 then---------------------------------21??????
				if ecvar3 == 5 then
				AI:SetTimer(2,2000,1)
				end
			end
			ecvar5 = AI:GetEctypeVarShort(mapid,4)
			if ecvar1 == 22 then--------------------------------22??????
				if ecvar3 == 1 then
				AI:SetTimer(2,2000,1)
				end
			end

				AI:SetArray(1,3)
			end
			----------------------------------------------------------normal end


	end--functionEvent_ThinkingEND


	function Event_UpdateSeekPos(nAI,nIndex)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
		if nIndex == 1 then
	  AI:AddSeekPos( mapid , 131, 247 )
	  AI:AddSeekPos( mapid , 158, 259 )
		end                  
	end

---------------------------------------------------------------------------
	function Event_ArriveSeekPos(nAI, MapID, PosX, PosY)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
			PosX = AI:GetPosX()
	   	PosY = AI:GetPosY()
---if ((PosX==67) and (PosY==156)) then
		if (( PosX == 131 ) and ( PosY == 247 )) then
			AI:OpenMapMask(4)
		end
		if (( PosX == 158 ) and ( PosY == 259 )) then
			AI:ScreenText("Our lord is waiting for you. Don't be shy!",2)
				posx=168
				posy=263
				MonsterID=32519
				AI:SummonMonsterByPos(MonsterID, posx, posy,0)
			AI:Exit()
		end
	end
