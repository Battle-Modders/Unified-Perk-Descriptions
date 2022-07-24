::UPD <- {
	ID = "mod_upd",
	Version = "0.1.0",
	Name = "Unified Perk Descriptions (UPD)"
};

::mods_registerMod(::UPD.ID, ::UPD.Version, ::UPD.Name);
::mods_queue(::UPD.ID, "mod_msu", function() {
	::UPD.Mod <- ::MSU.Class.Mod(::UPD.ID, ::UPD.Version, ::UPD.Name);

	::include("upd/load.nut");

	::include("upd/testing.nut"); // Comment to disable testing.

	foreach (obj in ::UPD.PerkDescriptions.Descriptions)
	{
		obj.buildDescription();
		::Const.Perks.findById(obj.getPerkID()).Tooltip = obj.m.Description;
		if (obj.getPerkID() in ::Const.Strings.PerkDescription) ::Const.Strings.PerkDescription[obj.getPerkID()] = obj.m.Description;
	}

	::UPD.PerkDescriptions.Descriptions.clear();
});
