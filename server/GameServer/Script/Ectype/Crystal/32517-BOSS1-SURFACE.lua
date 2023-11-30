-- //****************************  
-- //  Copyright:PERFECT WORLD  
-- //  Modified:2013.2.25  
-- //  Author:???  
-- //  TaskName: ??	32517	????

-- //****************************  

function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()
	
		if nIndex == 1 then--???1--
			a=AI:GetArray(3)
			if a == 0 then
					AI:ScreenText("Pyrope: Nothing but a cheap trick of the Ice! How dare you stand against the might of the Flame!?",2)
				a=a+1
				AI:SetArray(3,a)
			end
			if a == 1 then
					AI:ScreenText("Pyrope: The power of Ice is waning! Go, and destroy it for good!",2)
				a=a+1
				AI:SetArray(3,a)
			end
			if a == 2 then	
				a=a+1
				AI:SetArray(3,a)
				AI:ScreenText("Pyrope: I must remain here. You have my blessing, go forth!",2)
				PosX=AI:GetPosX()
				PosY=AI:GetPosY()
				AI:Exit()
			end
				
		end--???1--------------------end
		if nIndex == 2 then--???2--
			a=AI:GetArray(2)
			if a == 1 then
				AI:Say("Interesting. Return to your post!")
				AI:ScreenText("Pyrope: Interesting. Return to your post!",2)	
				AI:SetEctypeVarShort(mapid,50,2)
			end
			if a == 2 then
				AI:Say("Interesting. Return to your post!")
				AI:ScreenText("Pyrope: Let me see your ability!",2)
				AI:SetEctypeVarShort(mapid,50,4)
			end
			if a == 3 then
				AI:Say("Interesting. Return to your post!")
				AI:ScreenText("Pyrope: Show me what you're capable of!",2)
				PosX=AI:GetPosX()
				PosY=AI:GetPosY()
				MonsterID=32463
				Level=AI:GetEctypeVarShort(mapid,5)
				FieldLevel=AI:GetEctypeVarShort(mapid,6)
				if FieldLevel > 0 then
					AI:CreateFieldMonster(MonsterID,267,FieldLevel,1,mapid,PosX,PosY,0)
				else
					AI:SummonLevelMonsterByPos(MonsterID, 267, Level, PosX,PosY)
				end
				AI:SetEctypeVarShort(mapid,50,7)
				AI:Exit()
			end

				
		end--???2--------------------end
	
	----	if nIndex == 17 then--???17--start
	----		
	----			randomsay=math.random(1,8)                                                         
	----			if randomsay == 1 then                                                              
	----				AI:Say("GUID:03988000009")    
	----			end                                                         
	----			if randomsay == 2 then                                                              
	----				AI:Say("")    
	----			end                                                   
	----			if randomsay == 3 then                                                              
	----				AI:Say("")   
	----			end                                                  
	----			if randomsay == 4 then                                                              
	----				AI:Say("")  
	----			end                                            
	----			if randomsay == 5 then                                                              
	----				AI:Say("")
	----			end                                         
	----			if randomsay == 6 then                                                              
	----				AI:Say("GUID:03988000010")    
	----			end                                
	----			if randomsay == 7 then                                                              
	----				AI:Say("GUID:03988000011")     
	----			end                                          
	----			if randomsay == 8 then                                                              
	----				AI:Say("GUID:03988000012")      
	----			end                                             
  ----
	----		
	----	end--???17--------------------end
	--	
		
	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

			-----------------------------------------------------------normal start
			ecvar = AI:GetEctypeVarShort(mapid,0)
			vardie_21 = AI:GetEctypeVarShort(mapid,49)
			
			-----------------------------
			array2 = AI:GetArray(2)
			var50=AI:GetEctypeVarShort(mapid,50)
				if array2 == 0 then
					if var50 ==1 then
						AI:SetTimer(2,3000,1)
						AI:SetArray(2,1)
					end
				end
				if array2 == 1 then
					if var50 ==3 then
						AI:SetTimer(2,3000,1)
						AI:SetArray(2,2)
					end
				end
				if array2 == 2 then
					if var50 ==6 then
						AI:SetTimer(2,3000,1)
						AI:SetArray(2,3)
					end
				end
			-----------------------------
 			a = AI:GetArray(1)
			if a == 0 then
				if vardie_21 == 10 then 
				AI:SetTimer(1,4000,3)
				a=a +1
				AI:SetArray(1,a)
				end

			end
			----------------------------------------------------------normal end


	end--functionEvent_ThinkingEND
