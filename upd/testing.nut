local duelist = ::new(::UPD.Class.PerkDescription).init("perk.duelist", "test fluff", ["foo", "bar"]);
duelist.addRequirement("baz");
duelist.addPassive(["does something 1", "does something 2"]);
duelist.addActive("scripts/skills/actives/slash", ["does something 3", "does something 4"]);
duelist.addOneTimeEffect(["one time effect 1", "one time effect 2"]);
duelist.addFooter("test footer");

::UPD.PerkDescriptions.add(duelist);
