::UPD.Class <- {
	PerkDescription = "upd/classes/unified_perk_description"
};

::UPD.Strings <- {
	HeaderType = {
		Requirement = 0,
		Passive = 1,
		Active = 2,
		OneTimeEffect = 3
	},

	HeaderString = [
		"Requires",
		"Passive",
		"Active",
		"One-Time Effect"
	]

	HeaderColor = [
		::Const.UI.Color.NegativeValue,
		"#4f1800",
		"#000ec1",
		"#000ec1"
	],

	function getHeaderColor( _headerType )
	{
		return this.HeaderColor[_headerType];
	}

	function getHeaderString( _headerType )
	{
		return this.HeaderString[_headerType];
	}

	function getHeader( _headerType, _heading = "" )
	{
		return "[color=" + this.getHeaderColor(_headerType) + "][u]" + this.getHeaderString(_headerType) + ": " + _heading + "[/u][/color]";
	}

	function addHeaderType( _name, _string, _color )
	{
		::MSU.requireString(_name, _string, _color);
		this.HeaderType[_name] <- this.HeaderType.len();
		this.HeaderString.push(_string);
		this.HeaderColor.push(_color);
	}
};

::UPD.PerkDescriptions <- {
	Descriptions = {},

	function add( _tooltip )
	{
		if (!::MSU.isKindOf(_tooltip, "unified_perk_description")) throw ::MSU.Exception.InvalidType(_tooltip);
		this.Descriptions[_tooltip.getPerkID()] <- _tooltip;
	}
};
