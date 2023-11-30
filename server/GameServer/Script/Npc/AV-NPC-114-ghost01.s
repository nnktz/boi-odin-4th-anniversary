	//****************************************
	//
	//		Copyright:PERFECT WORLD
	//		Modified:2009/04/15
	//		Author:???
	//		TaskName:AV-NPC-114-ghost01.s
	//		TaskID:????
	//
	//****************************************
	
	function OnRequest(){
	
	}
	
	
	function OnOption0(){
		$Status03 = IsExistStatus( -1, 10573 )
		if $Status03 == 0
			BC( "dialogbox", "player", -1, "The energy of Fiendish Eye has not completely disappeared yet. You cannot read again." )
			return
		endif
		
		$OrgansVar01 = GetPlayerVar( -1, 3782 )
		$OrgansVar03 = GetPlayerVar( -1, 3786 )		
		$time0 = GetSystemTime( "yday" )
		if $OrgansVar03 == $time0
			if $OrgansVar01 < 5
				$OrgansVar01 = GetPlayerVar( -1, 3782 )
				$OrgansVar02 = $OrgansVar01 + 1
				SetPlayerVar( -1, 3782, $OrgansVar02 )
				AddStatus( -1, 10573, 1 )
				PlayEffect( -1, "skill\Common\common_buff\keep\tx_common_buff_keep_orange.ini" )
				$OrgansVar01 = GetPlayerVar( -1, 3782 )
				if $OrgansVar01 == 1
					BC( "dialogbox", "player", -1, "You have acquired the power of the Fiendish Eye. You can discovered the hidden phantoms now!\nYou can read the scroll for 4 more times today." )
					return
				endif
				if $OrgansVar01 == 2
					BC( "dialogbox", "player", -1, "You have acquired the power of the Fiendish Eye. You can discovered the hidden phantoms now!\nYou can read the scroll for 3 more times today." )
					return
				endif
				if $OrgansVar01 == 3
					BC( "dialogbox", "player", -1, "You have acquired the power of the Fiendish Eye. You can discovered the hidden phantoms now!\nYou can read the scroll for 2 more times today." )
					return
				endif
				if $OrgansVar01 == 4
					BC( "dialogbox", "player", -1, "You have acquired the power of the Fiendish Eye. You can discovered the hidden phantoms now!\nYou can read the scroll for 1 more times today." )
					return
				endif
				if $OrgansVar01 == 5
					BC( "dialogbox", "player", -1, "You have acquired the power of the Fiendish Eye. You can discovered the hidden phantoms now!\nHowever, you are too exhausted to read any scrolls today." )
					return
				endif
			else
				BC( "dialogbox", "player", -1, "You are too exhausted to read Scroll of Ghosts." )
				return	
			endif
		else
			SetPlayerVar( -1, 3782, 0 )
			SetPlayerVar( -1, 3786, $time0 )
			$OrgansVar01 = GetPlayerVar( -1, 3782 )
			$OrgansVar02 = $OrgansVar01 + 1
			SetPlayerVar( -1, 3782, $OrgansVar02 )
			AddStatus( -1, 10573, 1 )
			PlayEffect( -1, "skill\Common\common_buff\keep\tx_common_buff_keep_blue.ini" )
			BC( "dialogbox", "player", -1, "You have acquired the power of the Fiendish Eye. You can discovered the hidden phantoms now!\nYou can read the scroll for 4 more times today." )
		endif	
		
	}
	
	function OnOption1(){
		$ItemNum01 = GetPlayerInfo( -1, "item", 12427 )
		if $ItemNum01 < 1
			BC( "dialogbox", "player", -1, "Only the Ghost Medal can be embedded into the Scroll of Ghosts" )
			return
		endif
		
		$PlayVar = GetPlayerVar( -1, 3785 )
		if $PlayVar != 0
			BC( "dialogbox", "player", -1, "You cannot embed the Ghost Medal again." )
			return
		endif
		
		$count01 = GetPlayerInfo( -1, "nullitem", 0 )
		if $count01 < 1
			BC( "dialogbox", "player", -1, "Insufficient bag slots!" )
			return
		endif
		
		$SubItem = SubPlayerInfo( -1, "item", 12427, 1 )
		if $SubItem != 0
			return
		endif
		
		SetPlayerVar( -1, 3785, 1 )
		BC( "screen", "player", -1, "The Ghost Medal has matched the socket perfectly" )
		PlayEffect( -1, "skill\Common\fuhuo\fire\tx_common_fuhuo_fire.ini" )
		
		$PlayerVar01 = GetPlayerVar( -1, 3783 )
		$PlayerVar02 = GetPlayerVar( -1, 3784 )
		$PlayerVar03 = GetPlayerVar( -1, 3785 )
		if $PlayerVar01 == 1
			if $PlayerVar02 == 1
				if $PlayerVar03 == 1
					SetPlayerVar( -1, 3783, 0 )
					SetPlayerVar( -1, 3784, 0 )
					SetPlayerVar( -1, 3785, 0 )
					BC( "dialogbox", "player", -1, "The three medals have been correctly embedded and a treasure map is revealed. The Undead Badge is calling you." )
					PlayEffect( -1, "skill\Priest\guangmingzhiliao\keep\tx_priest_guangmingzhiliao_keep.ini" )
					$Random = RandomNumber( 1, 13 )
					if $Random == 1
						AddPlayerInfo( -1, "item", 63367, 1 )
						return
					endif
					if $Random == 2
						AddPlayerInfo( -1, "item", 63368, 1 )
						return
					endif
					if $Random == 3
						AddPlayerInfo( -1, "item", 63369, 1 )
						return
					endif
					if $Random == 4
						AddPlayerInfo( -1, "item", 63370, 1 )
						return
					endif
					if $Random == 5
						AddPlayerInfo( -1, "item", 63371, 1 )
						return
					endif
					if $Random == 6
						AddPlayerInfo( -1, "item", 63372, 1 )
						return
					endif
					if $Random == 7
						AddPlayerInfo( -1, "item", 63373, 1 )
						return
					endif
					if $Random == 8
						AddPlayerInfo( -1, "item", 63374, 1 )
						return
					endif
					if $Random == 9
						AddPlayerInfo( -1, "item", 63375, 1 )
						return
					endif
					if $Random == 10
						AddPlayerInfo( -1, "item", 63376, 1 )
						return
					endif
					if $Random == 11
						AddPlayerInfo( -1, "item", 63377, 1 )
						return
					endif
					if $Random == 12
						AddPlayerInfo( -1, "item", 63378, 1 )
						return
					endif
					if $Random == 13
						AddPlayerInfo( -1, "item", 63379, 1 )
						return
					endif
				endif
			endif
		endif
	}