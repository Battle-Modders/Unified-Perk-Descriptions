local tempUPD;	// local temporary variable is declared once

{	// Relentless
	tempUPD = ::new(::UPD.Class.PerkDescription).init("perk.relentless", "Don\'t slow down!");
	tempUPD.addPassive([
        "Initiative is reduced only by [color=" + this.Const.UI.Color.NegativeValue + "]50%[/color] of your accumulated Fatigue, instead of all of it.",
        "Using the \'Wait\' command will no longer give you a penalty to Initiative in the next round."
    ]);
    ::UPD.PerkDescriptions.add(tempUPD);
}

{	// Rotation
	tempUPD = ::new(::UPD.Class.PerkDescription).init("perk.rotation");
	tempUPD.addActive("scripts/skills/actives/rotation", [
		"Switch places with an adjacent allied character while ignoring Zone of Control.", 
		"Does not work if either character is stunned, rooted or otherwise disabled."
	]);
    ::UPD.PerkDescriptions.add(tempUPD);
}

{	// Footwork
	tempUPD = ::new(::UPD.Class.PerkDescription).init("perk.footwork");
	tempUPD.addActive("scripts/skills/actives/footwork", [
		"Leave a Zone of Control without triggering free attacks."
	]);
    ::UPD.PerkDescriptions.add(tempUPD);
}

// Skipped Debilitate because it was removed from Vanilla

{	// Indomitable
	tempUPD = ::new(::UPD.Class.PerkDescription).init("perk.indomitable");
	tempUPD.addActive("scripts/skills/actives/indomitable", [
		"Grants a [color=" + this.Const.UI.Color.PositiveValue + "]50%[/color] damage reduction and immunity to being stunned, knocked back or grabbed for one turn." 
	]);
    ::UPD.PerkDescriptions.add(tempUPD);
}

{	// RallyTheTroops
	tempUPD = ::new(::UPD.Class.PerkDescription).init("perk.rally_the_troops");
	tempUPD.addActive("scripts/skills/actives/indomitable", [
		"Rally fleeing allies, and raise morale of all nearby allies to a steady level.",
		"The higher the Resolve of the character using the skill, the higher the chance to succeed."
	]);
    ::UPD.PerkDescriptions.add(tempUPD);
}

{	// Adrenaline
	tempUPD = ::new(::UPD.Class.PerkDescription).init("perk.adrenaline", "Feel the adrenaline rushing through your veins!");
	tempUPD.addActive("scripts/skills/actives/indomitable", [
		"Puts you first in the turn order for the next round, to have another turn before your enemies do."
	]);
    ::UPD.PerkDescriptions.add(tempUPD);
}

{	// Fearsome
	tempUPD = ::new(::UPD.Class.PerkDescription).init("perk.fearsome", "Make them scatter and flee!");
	tempUPD.addPassive([
		"Any attack that inflicts at least 1 point of damage to hitpoints triggers a morale check for the opponent with a an additional penalty.",
		"This penalty is [color=" + this.Const.UI.Color.NegativeValue + "]20%[/color] of (Resolve - 10)", 
		"The penalty can not be greater than 20."
	]);
    ::UPD.PerkDescriptions.add(tempUPD);
}

{	// HeadHunter
	tempUPD = ::new(::UPD.Class.PerkDescription).init("perk.head_hunter", "Go for the head!");
	tempUPD.addPassive([
		"Hitting the head of a target will give you a guaranteed hit to the head also with your next hit.",
		"Connecting with your hit will reset the effect.", 
		"A miss does not reset the effect."
	]);
    ::UPD.PerkDescriptions.add(tempUPD);
}

// Skipped SunderingStrikes because it was removed from Vanilla

{	// FastAdaption
	tempUPD = ::new(::UPD.Class.PerkDescription).init("perk.fast_adaption", "Adapt to your opponent\'s moves!");
	tempUPD.addPassive([
		"Gain an additional stacking [color=" + this.Const.UI.Color.PositiveValue + "]+10%[/color] chance to hit with each attack that misses an opponent.",
		"Bonus is reset upon landing a hit."
	]);
    ::UPD.PerkDescriptions.add(tempUPD);
}

// Skipped Weaponmaster because it was removed from Vanilla

{	// NineLives
	tempUPD = ::new(::UPD.Class.PerkDescription).init("perk.nine_lives");
	tempUPD.addPassive([
		"Once per battle, upon receiving a killing blow, survive instead with a few hitpoints left and have all damage over time effects (e.g. bleeding, poisoned) cured.",
		"When this effect triggered, gain increased stats until your next turn"
	]);
    ::UPD.PerkDescriptions.add(tempUPD);
}

{	// Executioner
	tempUPD = ::new(::UPD.Class.PerkDescription).init("perk.coup_de_grace");
	tempUPD.addPassive([
		"Inflict additional [color=" + this.Const.UI.Color.PositiveValue + "]20%[/color] damage against targets that have sustained any injury effects, like a broken arm."
	]);
    ::UPD.PerkDescriptions.add(tempUPD);
}

{	// SteelBrow
	tempUPD = ::new(::UPD.Class.PerkDescription).init("perk.steel_brow");
	tempUPD.addPassive([
		"Hits to the head no longer cause critical damage to this character."
	]);
    ::UPD.PerkDescriptions.add(tempUPD);
}

{	// Anticipation
	tempUPD = ::new(::UPD.Class.PerkDescription).init("perk.anticipation");
	tempUPD.addPassive([
		"When being attacked with ranged weapons, gain [color=" + this.Const.UI.Color.PositiveValue + "]1 + 10% of your base Ranged Defense[/color] as additional Ranged Defense per tile that the attacker is away.",
		"This bonus is always at least [color=" + this.Const.UI.Color.PositiveValue + "]+10[/color] to Ranged Defense."
	]);
    ::UPD.PerkDescriptions.add(tempUPD);
}

{	// Resilient
	tempUPD = ::new(::UPD.Class.PerkDescription).init("perk.hold_out", "Keep it together!");
	tempUPD.addPassive([
		"Any negative status effect with a finite duration (e.g. Bleeding, Charmed) has its duration reduced to [color=" + this.Const.UI.Color.NegativeValue + "]1[/color] turn.",
		"Status effects that have their effects grow weaker over several turns (e.g. Goblin Poison) are at their weakest state from the start."
	]);
    ::UPD.PerkDescriptions.add(tempUPD);
}

{	// Dodge
	tempUPD = ::new(::UPD.Class.PerkDescription).init("perk.dodge", "Too fast for you!");
	tempUPD.addPassive([
		"Gain [color=" + this.Const.UI.Color.PositiveValue + "]15%[/color] of the character\'s current Initiative as a bonus to Melee and Ranged Defense."
	]);
    ::UPD.PerkDescriptions.add(tempUPD);
}

{	// Nimble
	tempUPD = ::new(::UPD.Class.PerkDescription).init("perk.nimble", "Specialize in light armor! By nimbly dodging or deflecting blows, convert any hits to glancing hits.");
	tempUPD.addPassive([
		"Hitpoint damage taken is reduced by up to [color=" + this.Const.UI.Color.PositiveValue + "]60%[/color]",
		"This bonus is lowered exponentially by the total penalty to Maximum Fatigue from body and head armor above [color=" + this.Const.UI.Color.PositiveValue + "]15[/color].",
		"Brawny does not affect this perk.",
		"Does not affect damage from mental attacks or status effects."
	]);
    ::UPD.PerkDescriptions.add(tempUPD);
}

{	// BattleForged
	tempUPD = ::new(::UPD.Class.PerkDescription).init("perk.battle_forged", "Specialize in heavy armor!");
	tempUPD.addPassive([
		"Armor damage taken is reduced by a percentage equal to [color=" + this.Const.UI.Color.PositiveValue + "]5%[/color] of the current total armor value of both body and head armor.",
		"Does not affect damage from mental attacks or status effects."
	]);
    ::UPD.PerkDescriptions.add(tempUPD);
}

{	// Duelist
	tempUPD = ::new(::UPD.Class.PerkDescription).init("perk.duelist", "Become one with your weapon and go for the weak spots!", "One-Handed Weapon, Unarmed");
	tempUPD.addPassive([
		"With the offhand free or carrying a throwable tool (e.g. throwing net), an additional [color=" + this.Const.UI.Color.PositiveValue + "]+25%[/color] of any damage ignores armor."
	]);
    ::UPD.PerkDescriptions.add(tempUPD);
}

{	// CripplingStrikes
	tempUPD = ::new(::UPD.Class.PerkDescription).init("perk.crippling_strikes", "Cripple your enemies!");
	tempUPD.addPassive([
		"Lowers the threshold to inflict injuries by [color=" + this.Const.UI.Color.NegativeValue + "]33%[/color] for both melee and ranged attacks."
	]);
    ::UPD.PerkDescriptions.add(tempUPD);
}

{	// QuickHands
	tempUPD = ::new(::UPD.Class.PerkDescription).init("perk.quick_hands", "Looking for this?");
	tempUPD.addPassive([
		"Swapping any item in battle except for shields becomes a free action with no Action Point cost once every turn."
	]);
    ::UPD.PerkDescriptions.add(tempUPD);
}

{	// Bullseye
	tempUPD = ::new(::UPD.Class.PerkDescription).init("perk.bullseye", "Nailed it!");
	tempUPD.addPassive([
		"The penalty to hitchance when shooting at a target you have no clear line of fire to is reduced from [color=" + this.Const.UI.Color.NegativeValue + "]75%[/color] to [color=" + this.Const.UI.Color.NegativeValue + "]50%[/color] for ranged weapons."
	]);
    ::UPD.PerkDescriptions.add(tempUPD);
}

// Skipped Ballistics because it was removed from Vanilla

{	// Berserk
	tempUPD = ::new(::UPD.Class.PerkDescription).init("perk.berserk", "RAAARGH!");
	tempUPD.addPassive([
		"Once per turn, upon killing an enemy, [color=" + this.Const.UI.Color.PositiveValue + "]4[/color] Action Points are immediately regained.",
		"Characters can not regain more than their maximum Action Points and no more than 4 for a single attack."
	]);
    ::UPD.PerkDescriptions.add(tempUPD);
}

// Skipped BattleFlow because it was removed from Vanilla

// Skipped DevastatingStrikes because it was removed from Vanilla

{	// KillingFrenzy
	tempUPD = ::new(::UPD.Class.PerkDescription).init("perk.killing_frenzy", "Go into a killing frenzy!");
	tempUPD.addPassive([
		"A kill increases all damage by [color=" + this.Const.UI.Color.PositiveValue + "]25%[/color] for 2 turns.",
		"Does not stack, but another kill will reset the timer."
	]);
    ::UPD.PerkDescriptions.add(tempUPD);
}

// Skipped ShieldBash because it was removed from Vanilla

{	// Brawny
	tempUPD = ::new(::UPD.Class.PerkDescription).init("perk.brawny");
	tempUPD.addPassive([
		"The fatigue and initiative penalty from wearing armor and helmet is reduced by [color=" + this.Const.UI.Color.NegativeValue + "]30%[/color]."
	]);
    ::UPD.PerkDescriptions.add(tempUPD);
}

// Skipped Stalwart because it was removed from Vanilla

// Skipped Steadfast because it was removed from Vanilla

{	// Taunt
	tempUPD = ::new(::UPD.Class.PerkDescription).init("perk.taunt");
	tempUPD.addActive("scripts/skills/actives/taunt", [
		"Makes the targeted opponent take offensive actions instead of defensive ones, and attack the taunting character over another, potentially more vulnerable one."
	]);
    ::UPD.PerkDescriptions.add(tempUPD);
}

{	// Colossus
	tempUPD = ::new(::UPD.Class.PerkDescription).init("perk.colossus", "Bring it on!");
	tempUPD.addPassive([
		"Hitpoints are increased by [color=" + this.Const.UI.Color.PositiveValue + "]25%[/color], which also reduces the chance to sustain debilitating injuries when being hit."
	]);
    ::UPD.PerkDescriptions.add(tempUPD);
}

{	// ShieldExpert
	tempUPD = ::new(::UPD.Class.PerkDescription).init("perk.shield_expert", "Learn to better deflect hits to the side instead of blocking them head on.", "Shield");
	tempUPD.addPassive([
		"The shield defense bonus is increased by [color=" + this.Const.UI.Color.PositiveValue + "]25%[/color]. This also applies to the additional defense bonus of the Shieldwall skill.",
		"Shield damage received is reduced by [color=" + this.Const.UI.Color.NegativeValue + "]50%[/color] to a minimum of 1.",
		"The \'Knock Back\' skill gains [color=" + this.Const.UI.Color.PositiveValue + "]+15%[/color] chance to hit."
	]);
    ::UPD.PerkDescriptions.add(tempUPD);
}

{	// BagsAndBelts
	tempUPD = ::new(::UPD.Class.PerkDescription).init("perk.bags_and_belts");
	tempUPD.addPassive([
		"Unlock two extra bag slots to carry all your favorite things.",
		"Items placed in bags no longer give a penalty to Maximum Fatigue, except for two-handed weapons."
	]);
    ::UPD.PerkDescriptions.add(tempUPD);
}

// Skipped BatteringRam because it was removed from Vanilla

{	// Student
	tempUPD = ::new(::UPD.Class.PerkDescription).init("perk.student", "Everything can be learned if you put your mind to it.");
	tempUPD.addOneTimeEffect([
		"At the eleventh character level, you gain an additional perk point and this perk becomes inert.",
		"Playing the \'Manhunters\' origin, your indebted get the perk point refunded at the seventh character level."
	]);
	tempUPD.addPassive([
		"Gain additional [color=" + this.Const.UI.Color.PositiveValue + "]20%[/color] experience from battle."
	]);
    ::UPD.PerkDescriptions.add(tempUPD);
}

{	// Gifted
	tempUPD = ::new(::UPD.Class.PerkDescription).init("perk.gifted", "Mercenary life comes easy when you\'re naturally gifted.");
	tempUPD.addOneTimeEffect([
		"Instantly gain a levelup to increase this character\'s attributes with maximum rolls, but without talents."
	]);
    ::UPD.PerkDescriptions.add(tempUPD);
}

// Skipped Zweihander because it was removed from Vanilla

{	// Pathfinder
	tempUPD = ::new(::UPD.Class.PerkDescription).init("perk.pathfinder", "Learn to move on difficult terrain.");
	tempUPD.addPassive([
		"Action Point costs for movement on all terrain is reduced by [color=" + this.Const.UI.Color.NegativeValue + "]-1[/color] to a minimum of 2 Action Points per tile, and Fatigue cost is reduced to half.",
		"Changing height levels also has no additional Action Point cost anymore."
	]);
    ::UPD.PerkDescriptions.add(tempUPD);
}

{	// FortifiedMind
	tempUPD = ::new(::UPD.Class.PerkDescription).init("perk.fortified_mind", "An iron will is not swayed from the true path easily.");
	tempUPD.addPassive([
		"Resolve is increased by [color=" + this.Const.UI.Color.PositiveValue + "]25%[/color]."
	]);
    ::UPD.PerkDescriptions.add(tempUPD);
}

// Skipped Captain because it was removed from Vanilla

// Skipped InspiringPresence because it was removed from Vanilla

{	// Underdog
	tempUPD = ::new(::UPD.Class.PerkDescription).init("perk.underdog", "I\'m used to it.");
	tempUPD.addPassive([
		"The defense malus due to being surrounded by opponents no longer applies to this character.",
		"If an attacker has the Backstabber perk, the effect of that perk is negated, and the normal defense malus due to being surrounded is applied instead."
	]);
    ::UPD.PerkDescriptions.add(tempUPD);
}

{	// Recover
	tempUPD = ::new(::UPD.Class.PerkDescription).init("perk.recover");
	tempUPD.addActive("scripts/skills/actives/recover_skill", [
		"Allows for resting a turn in order to reduce accumulated Fatigue by [color=" + this.Const.UI.Color.NegativeValue + "]50%[/color]."
	]);
    ::UPD.PerkDescriptions.add(tempUPD);
}

{	// Backstabber
	tempUPD = ::new(::UPD.Class.PerkDescription).init("perk.backstabber", "Honor doesn\'t win you fights, stabbing the enemy where it hurts does.");
	tempUPD.addPassive([
		"The bonus to hitchance in melee is doubled to [color=" + this.Const.UI.Color.PositiveValue + "]+10%[/color] for each ally surrounding and distracting your target."
	]);
    ::UPD.PerkDescriptions.add(tempUPD);
}

{	// LoneWolf
	tempUPD = ::new(::UPD.Class.PerkDescription).init("perk.lone_wolf", "I work best alone.");
	tempUPD.addPassive([
		"With no ally within 3 tiles of distance, gain a [color=" + this.Const.UI.Color.PositiveValue + "]15%[/color] bonus to Melee Skill, Ranged Skill, Melee Defense, Ranged Defense, and Resolve."
	]);
    ::UPD.PerkDescriptions.add(tempUPD);
}

{	// ReachAdvantage
	tempUPD = ::new(::UPD.Class.PerkDescription).init("perk.reach_advantage", "Learn to use the superior reach of large weapons to keep the enemy from getting close enough to land a good hit.", "Two-Handed Melee Weapon");
	tempUPD.addPassive([
		"Each hit with a two-handed melee weapon adds a stack of Reach Advantage that increases your Melee Defense by [color=" + this.Const.UI.Color.PositiveValue + "]+5[/color], up to a maximum of 5 stacks, until this character\'s next turn.",
		"A single attack hitting multiple targets can add several stacks at once.",
		"If you put away your weapon, you lose all stacks."
	]);
    ::UPD.PerkDescriptions.add(tempUPD);
}

{	// Overwhelm
	tempUPD = ::new(::UPD.Class.PerkDescription).init("perk.overwhelm", "Learn to take advantage of your high Initiative and prevent the enemy from attacking effectively by overwhelming them with your attacks!");
	tempUPD.addPassive([
		"With every attack, hit or miss, against an opponent that acts after you in the current round, inflict the \'Overwhelmed\' status.",
		"The \'Overwhelmed\' effect lowers both Melee Skill and Ranged Skill by [color=" + this.Const.UI.Color.NegativeValue + "]10%[/color] for one turn.",
		"The effect stacks with each attack, and can be applied to multiple targets at once with a single attack."
	]);
    ::UPD.PerkDescriptions.add(tempUPD);
}

{	// SpecBow
	tempUPD = ::new(::UPD.Class.PerkDescription).init("perk.mastery.bow", "Master the art of archery and pelting your opponents with arrows from afar.", "Bow");
	tempUPD.addPassive([
		"Skills build up [color=" + this.Const.UI.Color.NegativeValue + "]25%[/color] less Fatigue.",
		"View range is increased by [color=" + this.Const.UI.Color.PositiveValue + "]+1[/color].",
		"Maximum firing range with bows is increased by [color=" + this.Const.UI.Color.PositiveValue + "]+1[/color]."
	]);
    ::UPD.PerkDescriptions.add(tempUPD);
}

{	// SpecCrossbow
	tempUPD = ::new(::UPD.Class.PerkDescription).init("perk.mastery.crossbow", "Master crossbows and firearms, and learn where to aim best.", "Crossbow, Firearm");
	tempUPD.addPassive([
		"Skills build up [color=" + this.Const.UI.Color.NegativeValue + "]25%[/color] less Fatigue.",
		"An additional [color=" + this.Const.UI.Color.PositiveValue + "]20%[/color] of damage inflicted with crossbows ignores armor.",
		"Handgonnes now require [color=" + this.Const.UI.Color.NegativeValue + "]6[/color] Action Points to reload and can be fired every turn instead of every other turn."
	]);
    ::UPD.PerkDescriptions.add(tempUPD);
}

{	// SpecThrowing
	tempUPD = ::new(::UPD.Class.PerkDescription).init("perk.mastery.throwing", "Master throwing weapons to wound or kill the enemy before they even get close.", "Throwing Weapon");
	tempUPD.addPassive([
		"Skills build up [color=" + this.Const.UI.Color.NegativeValue + "]25%[/color] less Fatigue.",
		"Damage is increased by [color=" + this.Const.UI.Color.PositiveValue + "]30%[/color] when attacking at 2 tiles of distance.",
		"Damage is increased by [color=" + this.Const.UI.Color.PositiveValue + "]20%[/color] when attacking at 3 tiles of distance."
	]);
    ::UPD.PerkDescriptions.add(tempUPD);
}

{	// SpecAxe
	tempUPD = ::new(::UPD.Class.PerkDescription).init("perk.mastery.axe", "Master combat with axes and destroying shields.", "Axe");
	tempUPD.addPassive([
		"Skills build up [color=" + this.Const.UI.Color.NegativeValue + "]25%[/color] less Fatigue.",
		"Split Shield damage to shields is increased by [color=" + this.Const.UI.Color.PositiveValue + "]50%[/color] when used with axes.",
		"Round Swing gains [color=" + this.Const.UI.Color.PositiveValue + "]+5%[/color] chance to hit.",
		"The Longaxe no longer has a penalty for attacking targets directly adjacent."
	]);
    ::UPD.PerkDescriptions.add(tempUPD);
}

{	// SpecCleaver
	tempUPD = ::new(::UPD.Class.PerkDescription).init("perk.mastery.cleaver", "Master cleavers to inflict gruesome wounds.", "Cleaver");
	tempUPD.addPassive([
		"Skills build up [color=" + this.Const.UI.Color.NegativeValue + "]25%[/color] less Fatigue.",
		"Bleeding damage inflicted by cleavers and whips is doubled to [color=" + this.Const.UI.Color.PositiveValue + "]10[/color] and [color=" + this.Const.UI.Color.PositiveValue + "]20[/color] per turn, respectively.",
		"Disarm only has half the penalty to hit."
	]);
    ::UPD.PerkDescriptions.add(tempUPD);
}

{	// SpecDagger
	tempUPD = ::new(::UPD.Class.PerkDescription).init("perk.mastery.dagger", "Master swift and deadly daggers.", "Dagger");
	tempUPD.addPassive([
		"Skills build up [color=" + this.Const.UI.Color.NegativeValue + "]25%[/color] less Fatigue.",
		"Stab, Puncture and Deathblow have a reduced Action Point cost to allow for an additional attack each turn."
	]);
    ::UPD.PerkDescriptions.add(tempUPD);
}

{	// SpecSword
	tempUPD = ::new(::UPD.Class.PerkDescription).init("perk.mastery.sword", "Master the art of swordfighting and using your opponent\'s mistakes to your advantage.", "Sword");
	tempUPD.addPassive([
		"Skills build up [color=" + this.Const.UI.Color.NegativeValue + "]25%[/color] less Fatigue.",
		"Riposte no longer has a penalty to hitchance.",
		"Gash has a [color=" + this.Const.UI.Color.NegativeValue + "]50%[/color] lower threshold to inflict injuries.",
		"Split and Swing no longer have a penalty to hitchance and gain [color=" + this.Const.UI.Color.PositiveValue + "]+5%[/color] chance to hit."
	]);
    ::UPD.PerkDescriptions.add(tempUPD);
}

{	// SpecSpear
	tempUPD = ::new(::UPD.Class.PerkDescription).init("perk.mastery.spear", "Master fighting with spears and keeping the enemy at bay.", "Spear");
	tempUPD.addPassive([
		"Skills build up [color=" + this.Const.UI.Color.NegativeValue + "]25%[/color] less Fatigue.",
		"Spearwall is no longer disabled once an opponent manages to overcome it.",
		"Spearwall can now be used while adjacent to an opponent.",
		"The Spetum and Warfork no longer have a penalty for attacking targets directly adjacent."
	]);
    ::UPD.PerkDescriptions.add(tempUPD);
}

{	// SpecPolearm
	tempUPD = ::new(::UPD.Class.PerkDescription).init("perk.mastery.polearm", "Master polearms and keeping the enemy at bay.", "Polearm");
	tempUPD.addPassive([
		"Skills build up [color=" + this.Const.UI.Color.NegativeValue + "]25%[/color] less Fatigue.",
		"Polearm skills have their Action Point cost reduced to [color=" + this.Const.UI.Color.NegativeValue + "]5[/color]",
		"Polearms no longer have a penalty for attacking targets directly adjacent."
	]);
    ::UPD.PerkDescriptions.add(tempUPD);
}

{	// SpecHammer
	tempUPD = ::new(::UPD.Class.PerkDescription).init("perk.mastery.hammer", "Master hammers and fighting against heavily armored opponents.", "Hammer");
	tempUPD.addPassive([
		"Skills build up [color=" + this.Const.UI.Color.NegativeValue + "]25%[/color] less Fatigue.",
		"Destroy Armor and Demolish Armor inflict [color=" + this.Const.UI.Color.PositiveValue + "]33%[/color] more damage against armor.",
		"Shatter gains [color=" + this.Const.UI.Color.PositiveValue + "]+5%[/color] chance to hit.",
		"The Polehammer no longer has a penalty for attacking targets directly adjacent."
	]);
    ::UPD.PerkDescriptions.add(tempUPD);
}

{	// SpecMace
	tempUPD = ::new(::UPD.Class.PerkDescription).init("perk.mastery.mace", "Master maces to beat your opponents into submission, armored or not.", "Mace");
	tempUPD.addPassive([
		"Skills build up [color=" + this.Const.UI.Color.NegativeValue + "]25%[/color] less Fatigue.",
		"Knock Out, Knock Over and Strike Down have a [color=" + this.Const.UI.Color.PositiveValue + "]100%[/color] chance to stun the target if not immune.",
		"The Polemace no longer has a penalty for attacking targets directly adjacent."
	]);
    ::UPD.PerkDescriptions.add(tempUPD);
}

{	// SpecFlail
	tempUPD = ::new(::UPD.Class.PerkDescription).init("perk.mastery.flail", "Master flails and circumvent your opponent\'s shield.", "Flail");
	tempUPD.addPassive([
		"Skills build up [color=" + this.Const.UI.Color.NegativeValue + "]25%[/color] less Fatigue.",
		"Pound ignores an additional [color=" + this.Const.UI.Color.PositiveValue + "]+10%[/color] of armor on head hits.",
		"The Polemace no longer has a penalty for attacking targets directly adjacent.",
		"Thresh gains [color=" + this.Const.UI.Color.PositiveValue + "]+5%[/color] chance to hit."
	]);
    ::UPD.PerkDescriptions.add(tempUPD);
}

