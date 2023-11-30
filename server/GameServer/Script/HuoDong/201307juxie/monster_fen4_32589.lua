 ------------------------------ 
 --  Copyright:PERFECT WORLD  
 --  Modified:2013.5.8 
 --  Author:??? 
 --  TaskName: 32589 
 ------------------------------ 
--??BOSS AI 
function Event_OnTimer(nAI,nIndex, nCount)
    local AI = GetMonsterAI(nAI)
    if nIndex == 0 then
        --???????
        AI:GetRandTarget()
        AI:AddSkill(8644,1)
        AI:UseSkill(8644,1)
    end
    if nIndex == 1 then
        --??
        AI:Say("The ground is trembling beneath my feet!")
        AI:AddSkill(8616,4)
        AI:UseSkill(8616,4)
    end
    if nIndex == 2 then
        --???? 
        AI:Say("The cold will freeze you where you stand!")
        AI:AddSkill(8634,4)
        AI:UseSkill(8634,4)
    end
    if nIndex == 3 then
        --??
        AI:Say("Take that!")
        AI:AddSkill(8602,6)
        AI:UseSkill(8602,6)
    end
   --if nIndex == 4 then---???4----------------30???????
		--	a=AI:GetArray(3)
		--	if a<30 then
		--		a=a+1
		--		AI:SetArray(3,a)
		--		if a== 27 then
		--			AI:ScreenText("GUID:05065000003",2)
		--		end
		--	end
		--	if a==30 then
		--			AI:ScreenText("GUID:05065000004",2)
		--			PosX=AI:GetPosX()
		--			PosY=AI:GetPosY()
		--    	MonsterID1 = 32586
		--    	posx1=PosX + 30
		--			posx2=PosX - 30
		--			posx3=PosX + 15
		--			posx4=PosX
		--			posx5=PosX
		--			posx6=PosX - 15
		--			posy1=PosY
		--			posy2=PosY
		--			posy3=PosY + 15
		--			posy4=PosY + 30
		--			posy5=PosY - 30
		--			posy6=PosY -15
		--
		--		AI:SummonMonsterByPos(MonsterID1,posx1,posy1,0)
		--		AI:SummonMonsterByPos(MonsterID1,posx2,posy2,0)
		--		AI:SummonMonsterByPos(MonsterID1,posx3,posy3,0)
		--		AI:SummonMonsterByPos(MonsterID1,posx4,posy4,0)
		--		AI:SummonMonsterByPos(MonsterID1,posx5,posy5,0)
		--		AI:SummonMonsterByPos(MonsterID1,posx6,posy6,0)
		--		a=a+1
		--		AI:SetArray(3,a)
		--		AI:Exit()
		--	end
		--end
end

function Event_Thinking(nAI)
    local AI = GetMonsterAI(nAI)
    t = AI:HaveAttackTarget()
    if t == false then
        AI:DelTimer(0)
        AI:DelTimer(1)
        AI:DelTimer(2)
        AI:DelTimer(3)
       -- AI:DelTimer(4)
        AI:SetArray(1,0)
    else
        HP = AI:GetHP()
        HPMAX = AI:GetHPMax()
        a = AI:GetArray(1)
        if a == 0 then
            if HP < HPMAX then
                --????
                AI:Say("Don't attempt to escape!") 
                AI:SetTimer(0,9000,65535)
          --      AI:SetTimer(4,1000,40)
                AI:SetArray(1,1)
            end
        end
        if a == 1 then
            if HP < HPMAX * 0.75 then
                AI:Say("The ground is trembling beneath my feet!") 
                AI:SetTimer(1,30000,65535)
                AI:SetArray(1,2)
            end
        end
        if a == 2 then
            if HP < HPMAX * 0.5 then
                AI:Say("Take that!") 
                AI:SetTimer(3,20000,65535)
                AI:SetArray(1,3)
            end
        end
        if a == 3 then
            if HP < HPMAX * 0.3 then
                AI:Say("The cold will freeze you where you stand!") 
                AI:SetTimer(2,40000,65535)
                AI:SetArray(1,4)
            end
        end
        if a == 4 then
            if HP < HPMAX * 0.1 then
                AI:Say("Pay for my anger!")
                AI:AddSkill(8627,7)
                AI:UseSkill(8627,7)
                AI:SetArray(1,5)
            end
        end
    end
end
function Event_OnDead(nAI)
    	local AI = GetMonsterAI(nAI)
    	local mapid = AI:GetMapID()  
    	posx=AI:GetPosX()
			posy=AI:GetPosY()
    	monsterid_B = 32580
		AI:ScreenText("The Phantom is broken, a Phantom Chest appears!",1)    
		AI:SummonMonsterByPos( monsterid_B , posx + 4 , posy + 6)
		AI:SummonMonsterByPos( monsterid_B , posx + 8 , posy + 6)
		AI:SummonMonsterByPos( monsterid_B , posx - 8 , posy + 2)
		AI:SummonMonsterByPos( monsterid_B , posx - 4 , posy + 2)
		AI:SummonMonsterByPos( monsterid_B , posx  , posy + 2)
		AI:SummonMonsterByPos( monsterid_B , posx + 4 , posy + 2)
		AI:SummonMonsterByPos( monsterid_B , posx + 8 , posy + 2)
		AI:SummonMonsterByPos( monsterid_B , posx - 8 , posy - 2)
		AI:SummonMonsterByPos( monsterid_B , posx - 4 , posy - 2)
		AI:SummonMonsterByPos( monsterid_B , posx  , posy - 2)
	
			
	end--functionEvent_ThinkingEND
