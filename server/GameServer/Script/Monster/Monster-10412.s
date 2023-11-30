//	----------------------------------------------------
//	--		Copyright£ºPERFECT WORLD
//	--		Modified£º2012/6/28
//	--		Author£ºÖì½¨³¼
//	--		Class:	Monster-10412.s
//	--		AIName£º
//	--		Remark£º
//	----------------------------------------------------

	function OnDead(){
		
		$daoju = GetPlayerInfo(-1,"item",12183)
		if $daoju > 0
			return
		endif
		
		$task = IsTaskAccept(-1,1017)
		if $task == 0
			$n = RandomNumber(0,100)
			if $n > 70
				$m = RandomNumber(1,3)
//				if $m == 1
					$a1 = GetPlayerInfo(-1,"item",12180)
					if $a1 > 0
//						return
					else
						$m = RandomNumber(1,3)
						if $m == 1
							DropMonsterItems(-1,90277)
						endif
					endif
//				endif
//				if $m == 2
					$a2 = GetPlayerInfo(-1,"item",12181)
					if $a2 > 0
//						return
					else
						$m = RandomNumber(1,3)
						if $m == 1
							DropMonsterItems(-1,90278)
						endif
					endif
//				endif
//				if $m == 3
					$a3 = GetPlayerInfo(-1,"item",12182)
					if $a3 > 0
//						return
					else
						$m = RandomNumber(1,3)
						if $m == 1
							DropMonsterItems(-1,90279)
						endif
					endif
//				endif
			endif
		endif
	
	}