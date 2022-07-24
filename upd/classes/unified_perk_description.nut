this.unified_perk_description <- {
	m = {
		PerkID = "",
		Fluff = "",
		Requirements = [],
		Passives = [],
		Actives = {},
		OneTimeEffects = [],
		Footer = "",
		Description = ""
	},
	function create()
	{
	}

	function init( _perkID, _fluff = null, _requirements = null )
	{
		this.setPerkID(_perkID);
		if (_fluff != null) this.setFluff(_fluff);
		if (_requirements != null) this.addRequirement(_requirements);
		return this;
	}

	function getPerkID()
	{
		return this.m.PerkID;
	}

	function setPerkID( _id )
	{
		::MSU.requireString(_id);
		if (::Const.Perks.findById(_id) == null) throw ::MSU.Exception.KeyNotFound(_id);
		this.m.PerkID = _id;
	}

	function getFluff()
	{
		return this.m.Fluff;
	}

	function setFluff( _text )
	{
		::MSU.requireString(_text);
		this.m.Fluff = _text;
	}

	function getRequirement()
	{
		return this.m.Requirements;
	}

	function addRequirement( _requirements )
	{
		::MSU.requireOneFromTypes(["string", "array"], _requirements);
		if (typeof _requirements == "string")
		{
			this.m.Requirements.push(_requirements);
		}
		else
		{
			foreach (string in _requirements)
			{
				::MSU.requireString(string);
			}
			this.m.Requirements.extend(_requirements);
		}
	}

	function addPassive( _desc )
	{
		::MSU.requireArray(_desc);
		foreach (string in _desc)
		{
			::MSU.requireString(string);
		}

		this.m.Passives.push(_desc);
	}

	function addActive( _script, _desc )
	{
		::MSU.requireString(_script);
		::MSU.requireArray(_desc);
		this.m.Actives[_script] <- _desc;
	}

	function addOneTimeEffect( _desc )
	{
		::MSU.requireArray(_desc);
		foreach (string in _desc)
		{
			::MSU.requireString(string);
		}

		this.m.OneTimeEffects.push(_desc);
	}

	function addFooter( _text, _color = null )
	{
		::MSU.requireString(_text);
		if (_color != null) this.m.Footer = "[color= " + _color + "]" + _text + "[/color]";
		else this.m.Footer = _text;
	}

	function buildDescription()
	{
		local perk = ::Const.Perks.findById(this.m.PerkID);
		this.m.Description += this.buildRequirements();
		this.m.Description += this.m.Fluff != "" ? this.m.Fluff + "\n" : "";

		if (this.m.Passives.len() > 0)
		{
			this.m.Description += "\n";
			foreach (descriptions in this.m.Passives)
			{
				this.m.Description += ::UPD.Strings.getHeader(::UPD.Strings.HeaderType.Passive) + "\n";
				foreach (desc in descriptions)
				{
					this.m.Description += "• " + desc + "\n";
				}
			}
		}

		if (this.m.Actives.len() > 0)
		{
			this.m.Description += "\n";
			foreach (script, descriptions in this.m.Actives)
			{
				local skill = ::new(script);
				this.m.Description += ::UPD.Strings.getHeader(::UPD.Strings.HeaderType.Active, skill.getName()) + "\n";
				this.m.Description += "• Costs " + skill.m.ActionPointCost + " AP and builds " + skill.m.FatigueCost + " Fatigue.\n";
				foreach (desc in descriptions)
				{
					this.m.Description += "• " + desc + "\n";
				}
			}
		}

		if (this.m.OneTimeEffects.len() > 0)
		{
			this.m.Description += "\n";
			foreach (descriptions in this.m.OneTimeEffects)
			{
				this.m.Description += ::UPD.Strings.getHeader(::UPD.Strings.HeaderType.OneTimeEffect) + "\n";
				foreach (desc in descriptions)
				{
					this.m.Description += "• " + desc + "\n";
				}
			}
		}

		if (this.m.Footer != "") this.m.Description += "\n" + this.m.Footer;
		else this.m.Description = this.m.Description.slice(0, -2); // remove the \n
	}

	function buildRequirements()
	{
		if(this.getRequirement().len() == 0) return "";
		local isFirst = true;		// Simple solution for not having one separator too much at the start or at the end
		local ret = ::UPD.Strings.getHeader(::UPD.Strings.HeaderType.Requirement);
		ret += "[color=" + ::UPD.Strings.getHeaderColor(::UPD.Strings.HeaderType.Requirement) + "]";
		foreach(requirement in this.getRequirement())
		{
			if(isFirst == false) ret += ::UPD.Strings.EnumSeparator;
			ret += requirement;
			isFirst = false;
		}
		ret += "[/color]\n\n";
		return ret;
	}
};
