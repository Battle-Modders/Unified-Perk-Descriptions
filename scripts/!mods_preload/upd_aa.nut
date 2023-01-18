::UPD <- {
	ID = "mod_upd",
	Version = "0.1.0",
	Name = "Unified Perk Descriptions (UPD)"
};

::mods_registerMod(::UPD.ID, ::UPD.Version, ::UPD.Name);
::mods_queue(::UPD.ID, "mod_msu", function() {
	::UPD.Mod <- ::MSU.Class.Mod(::UPD.ID, ::UPD.Version, ::UPD.Name);

	::include("upd/config.nut");
	::include("upd/testing.nut"); // Comment to disable testing.
});
