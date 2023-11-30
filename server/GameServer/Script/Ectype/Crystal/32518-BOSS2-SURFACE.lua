-- //****************************  
-- //  Copyright:PERFECT WORLD  
-- //  Modified:2013.2.25  
-- //  Author:???  
-- //  TaskName: ??	32518	????
-- //****************************  

	function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
			
		if nIndex == 1 then--???1--
			a=AI:GetArray(3)
			if a == 0 then
					AI:ScreenText("Azura: This is the end between us, brother...",2)
				a=a+1
				AI:SetArray(3,a)
			end
			if a == 1 then
					AI:ScreenText("Azura: Keep going, warriors! Extinguish every last flame!",2)
				a=a+1
				AI:SetArray(3,a)
			end
			if a == 2 then	
				a=a+1
				AI:SetArray(3,a)
				AI:Exit()
			end
--				PosX=AI:GetPosX()
--				PosY=AI:GetPosY()
--				MonsterID=32525
--				Level=AI:GetEctypeVarShort(mapid,5)
--				FieldLevel=AI:GetEctypeVarShort(mapid,6)
--				if FieldLevel > 0 then
--				AI:CreateFieldMonster(MonsterID,254,FieldLevel,1,mapid,PosX,PosY,0)
--				else
--				AI:SummonLevelMonsterByPos(MonsterID, 257, Level, PosX,PosY,0)
--				end
--				
				
		end--???1--------------------end
--		
--		if nIndex == 2 then--???2--start
--			a=AI:GetArray(2)
--			if a == 0 then
--				n=5-a
--				AI:Say("GUID:03990000002"..tostring(n))
--				a+=1
--			end
--		end--???2--------------------end
--		if nIndex == 3 then--???3--start
--			a=AI:GetArray(4)
--			if a <5 then
--				n=4-a
--				AI:Say("GUID:03990000003"..tostring(n))
--				a+=1
--			end
--		end--???3--------------------end

		
	
	-----------------------21-----------------??
		if nIndex == 14 then--???14--start
			
				randomsay=math.random(1,8)                                                         
				if randomsay == 1 then                                                              
					AI:ScreenText("Azura: Pyrope! This is your day!",2)    
				end                                                         
				if randomsay == 2 then                                                              
					AI:ScreenText("Azura: Pyrope! I'll see that this day is your last!",2)        
				end                                                   
				if randomsay == 3 then                                                              
					AI:ScreenText("Azura: Perhaps it is fate, between you and I...",2)       
				end                                                  
				if randomsay == 4 then                                                              
					AI:ScreenText("Azura: A shame for the goddess to be sure, but there was no other way this could end...",2)      
				end                                            
				if randomsay == 5 then                                                              
					AI:ScreenText("Azura: Fire and Ice can never coexist! One will undoubtedly extinguish the other!",2)    
				end                                         
				if randomsay == 6 then                                                              
					AI:ScreenText("Azura: And today, that time has come!",2)       
				end                                

			
		end--???14--------------------end

		
		
	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

			-----------------------------------------------------------normal start
			ecvar = AI:GetEctypeVarShort(mapid,0)
	--		ecvar2 = AI:GetEctypeVarShort(mapid,uKey)
			vardie_21 = AI:GetEctypeVarShort(mapid,49)
			b=AI:GetArray(4)
			if b == 0 then
				if vardie_21 == 5 then 
					AI:SetTimer(1,4000,3)
					AI:SetArray(4,b+1)
				end
			end
 			a = AI:GetArray(1)
			if a == 0 then
				
--				AI:SetTimer(1,5000,1)
--				AI:SetTimer(2,100,1)
--				AI:SetTimer(3,1000,4)
				----------------------------------????AI---start
				----------------------------------????AI---end
				----------------------------------????AI---start
				----------------------------------????AI---end
				----------------------------------??????start
			
				-----------------------21-----------------??
				if ecvar == 21 then
					AI:SetTimer(14,2000,999)
				end
					-----------------------21-----------------??
					----------------------------------??????end
				AI:SetArray(1,1)
			end
			----------------------------------------------------------normal end


	end--functionEvent_ThinkingEND


