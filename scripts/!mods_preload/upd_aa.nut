::UPD <- {
	ID = "mod_upd",
	Version = "0.1.1",
	Name = "Unified Perk Descriptions (UPD)",
	GitHubURL = "https://github.com/Battle-Modders/Unified-Perk-Descriptions"
};

::UPD.MH <- ::Hooks.register(::UPD.ID, ::UPD.Version, ::UPD.Name);
::UPD.MH.require("mod_msu");
::UPD.MH.queue(">mod_msu", function() {
	::UPD.Mod <- ::MSU.Class.Mod(::UPD.ID, ::UPD.Version, ::UPD.Name);

	::UPD.Mod.Registry.addModSource(::MSU.System.Registry.ModSourceDomain.GitHub, ::UPD.GitHubURL);
	::UPD.Mod.Registry.setUpdateSource(::MSU.System.Registry.ModSourceDomain.GitHub);

	::include("upd/config.nut");
	// ::include("upd/testing.nut"); // Comment to disable testing.
	::include("upd/vanilla_perk_descriptions"); // Comment to disable refactored vanilla tooltips
});
