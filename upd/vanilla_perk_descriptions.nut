
local vanillaDescriptions = [
	{
		ID = "perk.relentless",
		Key = "Relentless",
		Description = ::UPD.getDescription({
	 		Fluff = "Don\'t slow down!",
	 		Effects = [{
 				Type = ::UPD.EffectType.Passive,
 				Description = [
					"Initiative is reduced only by [color=" + ::Const.UI.Color.NegativeValue + "]50%[/color] of your accumulated Fatigue, instead of all of it.",
					"Using the \'Wait\' command will no longer give you a penalty to Initiative in the next round."
 				]
 			}]
	 	}),
	},
	{
		ID = "perk.rotation",
		Key = "Rotation",
		Description = ::UPD.getDescription({
	 		Effects = [{
 				Type = ::UPD.EffectType.Active,
 				Description = [
					"Allows to switch places with an adjacent allied character while ignoring Zone of Control.",
					"Does not work if either character is stunned, rooted or otherwise disabled."
				]
 			}]
	 	}),
	},
	{
		ID = "perk.footwork",
		Key = "Footwork",
		Description = ::UPD.getDescription({
	 		Effects = [{
 				Type = ::UPD.EffectType.Active,
 				Description = [
					"Allows to leave a Zone of Control without triggering free attacks."
				]
 			}]
	 	}),
	},
	{
		ID = "perk.indomitable",
		Key = "Indomitable",
		Description = ::UPD.getDescription({
	 		Effects = [{
 				Type = ::UPD.EffectType.Active,
 				Description = [
					"Grants a [color=" + ::Const.UI.Color.PositiveValue + "]50%[/color] damage reduction and immunity to being stunned, knocked back or grabbed for one turn."
				]
 			}]
	 	}),
	},
	{
		ID = "perk.rally_the_troops",
		Key = "RallyTheTroops",
		Description = ::UPD.getDescription({
	 		Effects = [{
 				Type = ::UPD.EffectType.Active,
 				Description = [
					"Rally fleeing allies, and raise morale of all nearby allies to a steady level.",
					"The higher the Resolve of the character using the skill, the higher the chance to succeed."
				]
 			}]
	 	}),
	},
	{
		ID = "perk.adrenaline",
		Key = "Adrenaline",
		Description = ::UPD.getDescription({
			Fluff = "Feel the adrenaline rushing through your veins!",
	 		Effects = [{
 				Type = ::UPD.EffectType.Active,
 				Description = [
					"Puts you first in the turn order for the next round, to have another turn before your enemies do."
				]
 			}]
	 	}),
	},
	{
		ID = "perk.fearsome",
		Key = "Fearsome",
		Description = ::UPD.getDescription({
			Fluff = "Make them scatter and flee!",
	 		Effects = [{
 				Type = ::UPD.EffectType.Passive,
 				Description = [
					"Any attack that inflicts at least 1 point of damage to hitpoints triggers a morale check for the opponent with an additional penalty.",
					"This penalty is [color=" + ::Const.UI.Color.NegativeValue + "]20%[/color] of (Resolve - 10)",
					"The penalty can not be greater than 20."
				]
 			}]
	 	}),
	},
	{
		ID = "perk.head_hunter",
		Key = "HeadHunter",
		Description = ::UPD.getDescription({
			Fluff = "Go for the head!",
	 		Effects = [{
 				Type = ::UPD.EffectType.Passive,
 				Description = [
					"Hitting the head of a target will give you a guaranteed hit to the head also with your next hit.",
					"Connecting with your hit will reset the effect.",
					"A miss does not reset the effect."
				]
 			}]
	 	}),
	},
	{
		ID = "perk.fast_adaption",
		Key = "FastAdaption",
		Description = ::UPD.getDescription({
			Fluff = "Adapt to your opponent\'s moves!",
	 		Effects = [{
 				Type = ::UPD.EffectType.Passive,
 				Description = [
					"Gain an additional stacking [color=" + ::Const.UI.Color.PositiveValue + "]+10%[/color] chance to hit with each attack that misses an opponent.",
					"Bonus is reset upon landing a hit."
				]
 			}]
	 	}),
	},
	{
		ID = "perk.coup_de_grace",
		Key = "CoupDeGrace",	// Current name is 'Executioner'
		Description = ::UPD.getDescription({
	 		Effects = [{
 				Type = ::UPD.EffectType.Passive,
 				Description = [
					"Inflict additional [color=" + ::Const.UI.Color.PositiveValue + "]20%[/color] damage against targets that have sustained any injury effects, like a broken arm."
				]
 			}]
	 	}),
	},
	{
		ID = "perk.steel_brow",
		Key = "SteelBrow",
		Description = ::UPD.getDescription({
	 		Effects = [{
 				Type = ::UPD.EffectType.Passive,
 				Description = [
					"Hits to the head no longer cause critical damage to this character."
				]
 			}]
	 	}),
	},
	{
		ID = "perk.anticipation",
		Key = "Anticipation",
		Description = ::UPD.getDescription({
	 		Effects = [{
 				Type = ::UPD.EffectType.Passive,
 				Description = [
					"When being attacked with ranged weapons, gain [color=" + ::Const.UI.Color.PositiveValue + "]1 + 10% of your base Ranged Defense[/color] as additional Ranged Defense per tile that the attacker is away.",
					"This bonus is always at least [color=" + ::Const.UI.Color.PositiveValue + "]+10[/color] to Ranged Defense."
				]
 			}]
	 	}),
	},
	{
		ID = "perk.hold_out",
		Key = "HoldOut",	// Current name is 'Resilient'
		Description = ::UPD.getDescription({
			Fluff = "Keep it together!",
	 		Effects = [{
 				Type = ::UPD.EffectType.Passive,
 				Description = [
					"Any negative status effect with a finite duration (e.g. Bleeding, Charmed) has its duration reduced to [color=" + ::Const.UI.Color.NegativeValue + "]1[/color] turn.",
					"Status effects that have their effects grow weaker over several turns (e.g. Goblin Poison) are at their weakest state from the start."
				]
 			}]
	 	}),
	},
	{
		ID = "perk.dodge",
		Key = "Dodge",
		Description = ::UPD.getDescription({
			Fluff = "Too fast for you!",
	 		Effects = [{
 				Type = ::UPD.EffectType.Passive,
 				Description = [
					"Gain [color=" + ::Const.UI.Color.PositiveValue + "]15%[/color] of the character\'s current Initiative as a bonus to Melee and Ranged Defense."
				]
 			}]
	 	}),
	},
	{
		ID = "perk.nimble",
		Key = "Nimble",
		Description = ::UPD.getDescription({
			Fluff = "Specialize in light armor! By nimbly dodging or deflecting blows, convert any hits to glancing hits.",
	 		Effects = [{
 				Type = ::UPD.EffectType.Passive,
 				Description = [
					"Hitpoint damage taken is reduced by up to [color=" + ::Const.UI.Color.PositiveValue + "]60%[/color]",
					"This bonus is lowered exponentially by the total penalty to Maximum Fatigue from body and head armor above [color=" + ::Const.UI.Color.PositiveValue + "]15[/color].",
					"Brawny does not affect this perk.",
					"Does not affect damage from mental attacks or status effects."
				]
 			}]
	 	}),
	},
	{
		ID = "perk.battle_forged",
		Key = "BattleForged",
		Description = ::UPD.getDescription({
			Fluff = "Specialize in heavy armor!",
	 		Effects = [{
 				Type = ::UPD.EffectType.Passive,
 				Description = [
					"Armor damage taken is reduced by a percentage equal to [color=" + ::Const.UI.Color.PositiveValue + "]5%[/color] of the current total armor value of both body and head armor.",
					"Does not affect damage from mental attacks or status effects."
				]
 			}]
	 	}),
	},
	{
		ID = "perk.duelist",
		Key = "Duelist",
		Description = ::UPD.getDescription({
			Fluff = "Become one with your weapon and go for the weak spots!",
			Requirement = "One-Handed Weapon, Unarmed",
	 		Effects = [{
 				Type = ::UPD.EffectType.Passive,
 				Description = [
					"With the offhand free or carrying a throwable tool (e.g. throwing net), an additional [color=" + ::Const.UI.Color.PositiveValue + "]+25%[/color] of any damage ignores armor."
				]
 			}]
	 	}),
	},
	{
		ID = "perk.crippling_strikes",
		Key = "CripplingStrikes",
		Description = ::UPD.getDescription({
			Fluff = "Cripple your enemies!",
	 		Effects = [{
 				Type = ::UPD.EffectType.Passive,
 				Description = [
					"Lowers the threshold to inflict injuries by [color=" + ::Const.UI.Color.NegativeValue + "]33%[/color] for both melee and ranged attacks."
				]
 			}]
	 	}),
	},
	{
		ID = "perk.quick_hands",
		Key = "QuickHands",
		Description = ::UPD.getDescription({
			Fluff = "Looking for this?",
	 		Effects = [{
 				Type = ::UPD.EffectType.Passive,
 				Description = [
					"Swapping any item in battle except for shields becomes a free action with no Action Point cost once every turn."
				]
 			}]
	 	}),
	},
	{
		ID = "perk.bullseye",
		Key = "Bullseye",
		Description = ::UPD.getDescription({
			Fluff = "Nailed it!",
	 		Effects = [{
 				Type = ::UPD.EffectType.Passive,
 				Description = [
					"The penalty to hitchance when shooting at a target you have no clear line of fire to is reduced from [color=" + ::Const.UI.Color.NegativeValue + "]75%[/color] to [color=" + ::Const.UI.Color.NegativeValue + "]50%[/color] for ranged weapons."
				]
 			}]
	 	}),
	},
	{
		ID = "perk.berserk",
		Key = "Berserk",
		Description = ::UPD.getDescription({
			Fluff = "RAAARGH!",
	 		Effects = [{
 				Type = ::UPD.EffectType.Passive,
 				Description = [
					"Once per turn, upon killing an enemy, [color=" + ::Const.UI.Color.PositiveValue + "]4[/color] Action Points are immediately regained.",
					"Characters can not regain more than their maximum Action Points and no more than 4 for a single attack."
				]
 			}]
	 	}),
	},
	{
		ID = "perk.killing_frenzy",
		Key = "KillingFrenzy",
		Description = ::UPD.getDescription({
			Fluff = "Go into a killing frenzy!",
	 		Effects = [{
 				Type = ::UPD.EffectType.Passive,
 				Description = [
					"A kill increases all damage by [color=" + ::Const.UI.Color.PositiveValue + "]25%[/color] for 2 turns.",
					"Does not stack, but another kill will reset the timer."
				]
 			}]
	 	}),
	},
	{
		ID = "perk.brawny",
		Key = "Brawny",
		Description = ::UPD.getDescription({
	 		Effects = [{
 				Type = ::UPD.EffectType.Passive,
 				Description = [
					"The fatigue and initiative penalty from wearing armor and helmet is reduced by [color=" + ::Const.UI.Color.NegativeValue + "]30%[/color]."
				]
 			}]
	 	}),
	},
	{
		ID = "perk.taunt",
		Key = "Taunt",
		Description = ::UPD.getDescription({
	 		Effects = [{
 				Type = ::UPD.EffectType.Active,
 				Description = [
					"Makes the targeted opponent take offensive actions instead of defensive ones, and attack the taunting character over another, potentially more vulnerable one."
				]
 			}]
	 	}),
	},
	{
		ID = "perk.colossus",
		Key = "Colossus",
		Description = ::UPD.getDescription({
			Fluff = "Bring it on!",
	 		Effects = [{
 				Type = ::UPD.EffectType.Passive,
 				Description = [
					"Hitpoints are increased by [color=" + ::Const.UI.Color.PositiveValue + "]25%[/color], which also reduces the chance to sustain debilitating injuries when being hit."
				]
 			}]
	 	}),
	},
	{
		ID = "perk.shield_expert",
		Key = "ShieldExpert",
		Description = ::UPD.getDescription({
			Fluff = "Learn to better deflect hits to the side instead of blocking them head on.",
			Requirement = "Shield",
	 		Effects = [{
 				Type = ::UPD.EffectType.Passive,
 				Description = [
					"The shield defense bonus is increased by [color=" + ::Const.UI.Color.PositiveValue + "]25%[/color]. This also applies to the additional defense bonus of the Shieldwall skill.",
					"Shield damage received is reduced by [color=" + ::Const.UI.Color.NegativeValue + "]50%[/color] to a minimum of 1.",
					"The \'Knock Back\' skill gains [color=" + ::Const.UI.Color.PositiveValue + "]+15%[/color] chance to hit."
				]
 			}]
	 	}),
	},
	{
		ID = "perk.nine_lives",
		Key = "NineLives",
		Description = ::UPD.getDescription({
	 		Effects = [{
 				Type = ::UPD.EffectType.Passive,
 				Description = [
					"Once per battle, upon receiving a killing blow, survive instead with a few hitpoints left and have all damage over time effects (e.g. bleeding, poisoned) cured.",
					"When this effect triggeres, gain increased stats until your next turn"
				]
 			}]
	 	}),
	},
	{
		ID = "perk.bags_and_belts",
		Key = "BagsAndBelts",
		Description = ::UPD.getDescription({
	 		Effects = [{
 				Type = ::UPD.EffectType.Passive,
 				Description = [
					"Unlock two extra bag slots to carry all your favorite things.",
					"Items placed in bags no longer give a penalty to Maximum Fatigue, except for two-handed weapons."
				]
 			}]
	 	}),
	},
	{
		ID = "perk.student",
		Key = "Student",
		Description = ::UPD.getDescription({
			Fluff = "Everything can be learned if you put your mind to it.",
	 		Effects = [{
 				Type = ::UPD.EffectType.OneTimeEffect,
 				Description = [
					"At the eleventh character level, you gain an additional perk point and this perk becomes inert.",
					"Playing the \'Manhunters\' origin, your indebted get the perk point refunded at the seventh character level."
				]
 			},
			{
				Type = ::UPD.EffectType.Passive,
				Description = [
					"Gain additional [color=" + ::Const.UI.Color.PositiveValue + "]20%[/color] experience from battle."
				]
			}]
	 	}),
	},
	{
		ID = "perk.gifted",
		Key = "Gifted",
		Description = ::UPD.getDescription({
			Fluff = "Mercenary life comes easy when you\'re naturally gifted.",
	 		Effects = [{
 				Type = ::UPD.EffectType.OneTimeEffect,
 				Description = [
					"Instantly gain a levelup to increase this character\'s attributes with maximum rolls, but without talents."
				]
 			}]
	 	}),
	},
	{
		ID = "perk.pathfinder",
		Key = "Pathfinder",
		Description = ::UPD.getDescription({
			Fluff = "Learn to move on difficult terrain.",
	 		Effects = [{
 				Type = ::UPD.EffectType.Passive,
 				Description = [
					"Action Point costs for movement on all terrain is reduced by [color=" + ::Const.UI.Color.NegativeValue + "]-1[/color] to a minimum of 2 Action Points per tile, and Fatigue cost is reduced to half.",
					"Changing height levels also has no additional Action Point cost anymore."
				]
 			}]
	 	}),
	},
	{
		ID = "perk.fortified_mind",
		Key = "FortifiedMind",
		Description = ::UPD.getDescription({
			Fluff = "An iron will is not swayed from the true path easily.",
	 		Effects = [{
 				Type = ::UPD.EffectType.Passive,
 				Description = [
					"Resolve is increased by [color=" + ::Const.UI.Color.PositiveValue + "]25%[/color]."
				]
 			}]
	 	}),
	},
	{
		ID = "perk.underdog",
		Key = "Underdog",
		Description = ::UPD.getDescription({
			Fluff = "I\'m used to it.",
	 		Effects = [{
 				Type = ::UPD.EffectType.Passive,
 				Description = [
					"The defense malus due to being surrounded by opponents no longer applies to this character.",
					"If an attacker has the Backstabber perk, the effect of that perk is negated, and the normal defense malus due to being surrounded is applied instead."
				]
 			}]
	 	}),
	},
	{
		ID = "perk.recover",
		Key = "Recover",
		Description = ::UPD.getDescription({
	 		Effects = [{
 				Type = ::UPD.EffectType.Active,
 				Description = [
					"Allows for resting a turn in order to reduce accumulated Fatigue by [color=" + ::Const.UI.Color.NegativeValue + "]50%[/color]."
				]
 			}]
	 	}),
	},
	{
		ID = "perk.backstabber",
		Key = "Backstabber",
		Description = ::UPD.getDescription({
			Fluff = "Honor doesn\'t win you fights, stabbing the enemy where it hurts does.",
	 		Effects = [{
 				Type = ::UPD.EffectType.Passive,
 				Description = [
					"The bonus to hitchance in melee is doubled to [color=" + ::Const.UI.Color.PositiveValue + "]+10%[/color] for each ally surrounding and distracting your target."
				]
 			}]
	 	}),
	},
	{
		ID = "perk.lone_wolf",
		Key = "LoneWolf",
		Description = ::UPD.getDescription({
			Fluff = "I work best alone.",
	 		Effects = [{
 				Type = ::UPD.EffectType.Passive,
 				Description = [
					"With no ally within 3 tiles of distance, gain a [color=" + ::Const.UI.Color.PositiveValue + "]15%[/color] bonus to Melee Skill, Ranged Skill, Melee Defense, Ranged Defense, and Resolve."
				]
 			}]
	 	}),
	},
	{
		ID = "perk.reach_advantage",
		Key = "ReachAdvantage",
		Description = ::UPD.getDescription({
			Fluff = "Learn to use the superior reach of large weapons to keep the enemy from getting close enough to land a good hit.",
			Requirement = "Two-Handed Melee Weapon",
	 		Effects = [{
 				Type = ::UPD.EffectType.Passive,
 				Description = [
					"Each hit with a two-handed melee weapon adds a stack of Reach Advantage that increases your Melee Defense by [color=" + ::Const.UI.Color.PositiveValue + "]+5[/color], up to a maximum of 5 stacks, until this character\'s next turn.",
					"A single attack hitting multiple targets can add several stacks at once.",
					"If you put away your weapon, you lose all stacks."
				]
 			}]
	 	}),
	},
	{
		ID = "perk.overwhelm",
		Key = "Overwhelm",
		Description = ::UPD.getDescription({
			Fluff = "Learn to take advantage of your high Initiative and prevent the enemy from attacking effectively by overwhelming them with your attacks!",
	 		Effects = [{
 				Type = ::UPD.EffectType.Passive,
 				Description = [
					"With every attack, hit or miss, against an opponent that acts after you in the current round, inflict the \'Overwhelmed\' status.",
					"The \'Overwhelmed\' effect lowers both Melee Skill and Ranged Skill by [color=" + ::Const.UI.Color.NegativeValue + "]10%[/color] for one turn.",
					"The effect stacks with each attack, and can be applied to multiple targets at once with a single attack."
				]
 			}]
	 	}),
	},
	{
		ID = "perk.mastery.bow",
		Key = "SpecBow",
		Description = ::UPD.getDescription({
			Fluff = "Master the art of archery and pelting your opponents with arrows from afar.",
			Requirement = "Bow",
	 		Effects = [{
 				Type = ::UPD.EffectType.Passive,
 				Description = [
					"Skills build up [color=" + ::Const.UI.Color.NegativeValue + "]25%[/color] less Fatigue.",
					"View range is increased by [color=" + ::Const.UI.Color.PositiveValue + "]+1[/color].",
					"Maximum firing range with bows is increased by [color=" + ::Const.UI.Color.PositiveValue + "]+1[/color]."
				]
 			}]
	 	}),
	},
	{
		ID = "perk.mastery.crossbow",
		Key = "SpecCrossbow",
		Description = ::UPD.getDescription({
			Fluff = "Master crossbows and firearms, and learn where to aim best.",
			Requirement = "Crossbow, Firearm",
	 		Effects = [{
 				Type = ::UPD.EffectType.Passive,
 				Description = [
					"Skills build up [color=" + ::Const.UI.Color.NegativeValue + "]25%[/color] less Fatigue.",
					"An additional [color=" + ::Const.UI.Color.PositiveValue + "]20%[/color] of damage inflicted with crossbows ignores armor.",
					"Handgonnes now require [color=" + ::Const.UI.Color.NegativeValue + "]6[/color] Action Points to reload and can be fired every turn instead of every other turn."
				]
 			}]
	 	}),
	},
	{
		ID = "perk.mastery.throwing",
		Key = "SpecThrowing",
		Description = ::UPD.getDescription({
			Fluff = "Master throwing weapons to wound or kill the enemy before they even get close.",
			Requirement = "Throwing Weapon",
	 		Effects = [{
 				Type = ::UPD.EffectType.Passive,
 				Description = [
					"Skills build up [color=" + ::Const.UI.Color.NegativeValue + "]25%[/color] less Fatigue.",
					"Damage is increased by [color=" + ::Const.UI.Color.PositiveValue + "]30%[/color] when attacking at 2 tiles of distance.",
					"Damage is increased by [color=" + ::Const.UI.Color.PositiveValue + "]20%[/color] when attacking at 3 tiles of distance."
				]
 			}]
	 	}),
	},
	{
		ID = "perk.mastery.axe",
		Key = "SpecAxe",
		Description = ::UPD.getDescription({
			Fluff = "Master combat with axes and destroying shields.",
			Requirement = "Axe",
	 		Effects = [{
 				Type = ::UPD.EffectType.Passive,
 				Description = [
					"Skills build up [color=" + ::Const.UI.Color.NegativeValue + "]25%[/color] less Fatigue.",
					"Split Shield damage to shields is increased by [color=" + ::Const.UI.Color.PositiveValue + "]50%[/color] when used with axes.",
					"Round Swing gains [color=" + ::Const.UI.Color.PositiveValue + "]+5%[/color] chance to hit.",
					"The Longaxe no longer has a penalty for attacking targets directly adjacent."
				]
 			}]
	 	}),
	},
	{
		ID = "perk.mastery.cleaver",
		Key = "SpecCleaver",
		Description = ::UPD.getDescription({
			Fluff = "Master cleavers to inflict gruesome wounds.",
			Requirement = "Cleaver",
	 		Effects = [{
 				Type = ::UPD.EffectType.Passive,
 				Description = [
					"Skills build up [color=" + ::Const.UI.Color.NegativeValue + "]25%[/color] less Fatigue.",
					"Bleeding damage inflicted by cleavers and whips is doubled to [color=" + ::Const.UI.Color.PositiveValue + "]10[/color] and [color=" + ::Const.UI.Color.PositiveValue + "]20[/color] per turn, respectively.",
					"Disarm only has half the penalty to hit."
				]
 			}]
	 	}),
	},
	{
		ID = "perk.mastery.dagger",
		Key = "SpecDagger",
		Description = ::UPD.getDescription({
			Fluff = "Master swift and deadly daggers.",
			Requirement = "Dagger",
	 		Effects = [{
 				Type = ::UPD.EffectType.Passive,
 				Description = [
					"Skills build up [color=" + ::Const.UI.Color.NegativeValue + "]25%[/color] less Fatigue.",
					"Stab, Puncture and Deathblow have a reduced Action Point cost to allow for an additional attack each turn."
				]
 			}]
	 	}),
	},
	{
		ID = "perk.mastery.sword",
		Key = "SpecSword",
		Description = ::UPD.getDescription({
			Fluff = "Master the art of swordfighting and using your opponent\'s mistakes to your advantage.",
			Requirement = "Sword",
	 		Effects = [{
 				Type = ::UPD.EffectType.Passive,
 				Description = [
					"Skills build up [color=" + ::Const.UI.Color.NegativeValue + "]25%[/color] less Fatigue.",
					"Riposte no longer has a penalty to hitchance.",
					"Gash has a [color=" + ::Const.UI.Color.NegativeValue + "]50%[/color] lower threshold to inflict injuries.",
					"Split and Swing no longer have a penalty to hitchance and gain [color=" + ::Const.UI.Color.PositiveValue + "]+5%[/color] chance to hit."
				]
 			}]
	 	}),
	},
	{
		ID = "perk.mastery.spear",
		Key = "SpecSpear",
		Description = ::UPD.getDescription({
			Fluff = "Master fighting with spears and keeping the enemy at bay.",
			Requirement = "Spear",
	 		Effects = [{
 				Type = ::UPD.EffectType.Passive,
 				Description = [
					"Skills build up [color=" + ::Const.UI.Color.NegativeValue + "]25%[/color] less Fatigue.",
					"Spearwall is no longer disabled once an opponent manages to overcome it.",
					"Spearwall can now be used while adjacent to an opponent.",
					"The Spetum and Warfork no longer have a penalty for attacking targets directly adjacent."
				]
 			}]
	 	}),
	},
	{
		ID = "perk.mastery.polearm",
		Key = "SpecPolearm",
		Description = ::UPD.getDescription({
			Fluff = "Master polearms and keeping the enemy at bay.",
			Requirement = "Polearm",
	 		Effects = [{
 				Type = ::UPD.EffectType.Passive,
 				Description = [
					"Skills build up [color=" + ::Const.UI.Color.NegativeValue + "]25%[/color] less Fatigue.",
					"Polearm skills have their Action Point cost reduced to [color=" + ::Const.UI.Color.NegativeValue + "]5[/color]",
					"Polearms no longer have a penalty for attacking targets directly adjacent."
				]
 			}]
	 	}),
	},
	{
		ID = "perk.mastery.hammer",
		Key = "SpecHammer",
		Description = ::UPD.getDescription({
			Fluff = "Master hammers and fighting against heavily armored opponents.",
			Requirement = "Hammer",
	 		Effects = [{
 				Type = ::UPD.EffectType.Passive,
 				Description = [
					"Skills build up [color=" + ::Const.UI.Color.NegativeValue + "]25%[/color] less Fatigue.",
					"Destroy Armor and Demolish Armor inflict [color=" + ::Const.UI.Color.PositiveValue + "]33%[/color] more damage against armor.",
					"Shatter gains [color=" + ::Const.UI.Color.PositiveValue + "]+5%[/color] chance to hit.",
					"The Polehammer no longer has a penalty for attacking targets directly adjacent."
				]
 			}]
	 	}),
	},
	{
		ID = "perk.mastery.mace",
		Key = "SpecMace",
		Description = ::UPD.getDescription({
			Fluff = "Master maces to beat your opponents into submission, armored or not.",
			Requirement = "Mace",
	 		Effects = [{
 				Type = ::UPD.EffectType.Passive,
 				Description = [
					"Skills build up [color=" + ::Const.UI.Color.NegativeValue + "]25%[/color] less Fatigue.",
					"Knock Out, Knock Over and Strike Down have a [color=" + ::Const.UI.Color.PositiveValue + "]100%[/color] chance to stun the target if not immune.",
					"The Polemace no longer has a penalty for attacking targets directly adjacent."
				]
 			}]
	 	}),
	},
	{
		ID = "perk.mastery.flail",
		Key = "SpecFlail",
		Description = ::UPD.getDescription({
			Fluff = "Master flails and circumvent your opponent\'s shield.",
			Requirement = "Flail",
	 		Effects = [{
 				Type = ::UPD.EffectType.Passive,
 				Description = [
					"Skills build up [color=" + ::Const.UI.Color.NegativeValue + "]25%[/color] less Fatigue.",
					"Pound ignores an additional [color=" + ::Const.UI.Color.PositiveValue + "]+10%[/color] of armor on head hits.",
					"Thresh gains [color=" + ::Const.UI.Color.PositiveValue + "]+5%[/color] chance to hit."
				]
 			}]
	 	}),
	}
];

foreach (vanillaDesc in vanillaDescriptions)
{
	::UPD.setDescription(vanillaDesc.ID, vanillaDesc.Key, vanillaDesc.Description);
}
