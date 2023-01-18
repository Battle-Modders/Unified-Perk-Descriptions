::UPD.setDescription <- function( _perkID, _stringsKey, _description )
{
	::Const.Perks.findById(_perkID).Tooltip = _description;
	if (_stringsKey in ::Const.Strings.PerkDescription) ::Const.Strings.PerkDescription[_stringsKey] = _description;
}

::UPD.getDescription <- function( _info )
{
	local info = {
		Fluff = "",
		Requirement = "",
		Effects = {},
		Footer = "",
	};

	foreach (key, value in _info)
	{
		if (!(key in info))
		{
			throw "Invalid parameter: " + key;
		}
	}

	::MSU.Table.merge(info, _info);

	info.Passives <- [];
	info.Actives <- [];
	info.OneTimeEffects <- [];

	foreach (effectInfo in info.Effects)
	{
		switch (effectInfo.Type)
		{
			case ::UPD.EffectType.Passive:
				info.Passives.push({
					Name = "Name" in effectInfo ? effectInfo.Name : "",
					Description = effectInfo.Description
				})
				break;

			case ::UPD.EffectType.Active:
				info.Actives.push({
					Script = effectInfo.Script,
					Description = effectInfo.Description
				})
				break;

			case ::UPD.EffectType.OneTimeEffect:
				info.OneTimeEffects.push({
					Name = "Name" in effectInfo ? effectInfo.Name : "",
					Description = effectInfo.Description
				})
				break;

			default:
				::logError("Invalid effect type: " + effectInfo.Type);
				throw ::MSU.Exception.InvalidValue(effectInfo.Type);
		}
	}

	return this.buildDescription(info);
}

::UPD.buildDescription <- function( _info )
{
	local ret = "";

	if (_info.Requirement != "")
	{
		ret += ::UPD.Strings.getHeader(::UPD.Strings.HeaderType.Requirement);
		ret += ::MSU.Text.color(::UPD.Strings.getHeaderColor(::UPD.Strings.HeaderType.Requirement), " " + _info.Requirement) + "\n";
	}

	ret += _info.Fluff == "" ? "" : _info.Fluff + "\n";

	if (_info.Passives.len() > 0)
	{
		ret += "\n";
		foreach (passive in _info.Passives)
		{
			ret += ::UPD.Strings.getHeader(::UPD.Strings.HeaderType.Passive, passive.Name) + "\n";
			foreach (desc in passive.Description)
			{
				ret += "• " + desc + "\n";
			}
		}
	}

	if (_info.Actives.len() > 0)
	{
		ret += "\n";
		foreach (active in _info.Actives)
		{
			local skill = ::new(active.Script);
			ret += ::UPD.Strings.getHeader(::UPD.Strings.HeaderType.Active, skill.getName()) + "\n";
			ret += "• Costs " + skill.m.ActionPointCost + " AP and builds " + skill.m.FatigueCost + " Fatigue.\n";
			foreach (desc in active.Description)
			{
				ret += "• " + desc + "\n";
			}
		}
	}

	if (_info.OneTimeEffects.len() > 0)
	{
		ret += "\n";
		foreach (effect in _info.OneTimeEffects)
		{
			ret += ::UPD.Strings.getHeader(::UPD.Strings.HeaderType.OneTimeEffect, effect.Name) + "\n";
			foreach (desc in effect.Description)
			{
				ret += "• " + desc + "\n";
			}
		}
	}

	if (_info.Footer != "") ret += "\n" + _info.Footer;
	else ret = ret.slice(0, -2); // remove the \n

	return ret;
}

::UPD.EffectType <- {
	Passive = 0,
	Active = 1,
	OneTimeEffect = 2
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
		return ::MSU.Text.color(this.getHeaderColor(_headerType), format("[u]%s:%s[/u]", this.getHeaderString(_headerType), _heading == "" ? "" : " " + _heading));
	}

	function addHeaderType( _name, _string, _color )
	{
		::MSU.requireString(_name, _string, _color);
		this.HeaderType[_name] <- this.HeaderType.len();
		this.HeaderString.push(_string);
		this.HeaderColor.push(_color);
	}
};
