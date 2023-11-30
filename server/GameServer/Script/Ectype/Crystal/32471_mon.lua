-- //****************************  
-- //  Copyright:PERFECT WORLD  
-- //  Modified:2013.2.25  
-- //  Author:???  
-- //  TaskName: 32471???? 
-- //****************************  
function Event_OnTimer( nAI, nIndex, nCount)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

		if nIndex == 3 then--???2--start
				a=AI:GetArray(4)
				if a == 0 then
					AI:AddSkill(2535,8)------???
		    	AI:UseSkill(2535,8)
		    	AI:Say("We are loyal to the Flame Crystal!")  
		    	AI:SetArray(4,1)
	    	end
				randomsay=math.random(1,5)                                                         
				if randomsay == 1 then                                                              
					AI:Say("Hahaha! Have a taste of my power!")    
				end                                                                                                         
				if randomsay == 3 then                                                              
					AI:Say("My lord! Give me strength!")   
				end                                                  
			
		end--???3--------------------end
		
	end--functionEvent_OnTimerEND
------------------------------------------------------------------------thinking
	function Event_Thinking(nAI)
		local AI = GetMonsterAI(nAI)
		local mapid = AI:GetMapID()

			-----------------------------------------------------------normal start
 			varline = AI:GetEctypeVarShort(mapid,0)
 			if varline == 1 then
 				a = AI:GetArray(1)
				if a == 0 then
					AI:ScreenText("Flame Genie: Who are you? Why are you here?",2)
					AI:ChangeFaction(11)
					AI:SetArray(1,1)
				end
	 			count_dead = AI:GetEctypeVarShort(mapid,13)
				if count_dead == 10 then
					c= AI:GetArray(5)
					if c == 0 then
						AI:ScreenText("Flame Genie: Think you're hot stuff? Try to beat me!",2)
						AI:ChangeFaction(1)
						AI:SetTimer(3,3000,10)
						AI:SetArray(5,1)
					end
				end
			end
			if varline == 21 then
 				a = AI:GetArray(1)
				if a == 0 then
					AI:ScreenText("Flame Genie: Who are you? Why are you here?",2)
					AI:ChangeFaction(11)
					AI:SetArray(1,1)
				end
				count_dead = AI:GetEctypeVarShort(mapid,13)
				if count_dead == 30 then			
						c= AI:GetArray(5)
						if c == 0 then
							AI:ScreenText("Flame Genie: Think you're hot stuff? Try to beat me!",2)
							AI:ChangeFaction(1)
							AI:SetTimer(3,3000,10)
							AI:SetArray(5,1)
						end
					
				end
			end



			
	end--functionEvent_ThinkingEND

function Event_OnDead(nAI)
    	local AI = GetMonsterAI(nAI)
    	local mapid = AI:GetMapID()
			varline = AI:GetEctypeVarShort(mapid,0)
 			count_dead = AI:GetEctypeVarShort(mapid,13)
 			if varline == 1 then
 			AI:Say("It is an honor to meet such a warrior in my lifetime!")
 			end
 			if varline == 21 then
 			AI:Say("Such power! I can't believe it!")
 			end
			stand = AI:GetEctypeVarShort(mapid,71)
			stand = stand -10
			AI:SetEctypeVarShort(mapid,71,stand)
		AI:DelTimer(3)
	end--functionEvent_ThinkingEND



