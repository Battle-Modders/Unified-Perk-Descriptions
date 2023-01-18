::UPD.setPerkDescription("perk.colossus", "Colossus", ::UPD.getDescription({
	Fluff = "test fluff",
	Requirement = "test requirement",
	Effects = [
		{
			Type = ::UPD.EffectType.Passive,
			Description = [
				"Does something",
				"Does something 2"
			]
		},
		{
			Type = ::UPD.EffectType.Active,
			Script = "scripts/skills/actives/slash",
			Description = [
				"Does something 3",
				"Does something 4"
			]
		},
		{
			Type = ::UPD.EffectType.OneTimeEffect
			Description = [
				"One Time effect 1",
				"One Time effect 2"
			]
		}
	],
	Footer = "test footer"
}));
