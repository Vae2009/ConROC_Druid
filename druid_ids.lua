local ConROC_Druid, ids = ...;

--General
ids.Racial = {
	Shadowmeld = 20580,
}
ids.Spec = {
	Balance = 1,
	Feral = 2,
	Restoration = 3,
}
ids.Ability = {
--Balance
	Barkskin = 22812,
	EntanglingRoots = 339,
	FaerieFire = 770,
	Hibernate = 2637,
	Hurricane = 16914,
	Moonfire = 8921,
	MoonkinForm = 24858,
	NaturesGrasp = 16689,
	OmenofClarity = 16864,
	SootheAnimal = 2908,
	Starfire = 2912,
	Thorns = 467,
	Wrath = 5176,
--Feral
	FaerieFireFeral = 16857,
	TrackHumanoid = 5225,
	TravelForm = 783,
	AquaticForm = 1066,
	autoAttack = 6603,
	FeralCharge = 16979,
	-- Cat
	CatForm = 768,
	Claw = 1082,
	Cower = 8998,
	Dash = 1850,
	FerociousBite = 22568,
	Pounce = 9005,
	Prowl = 5215,
	Rake = 1822,
	Ravage = 6785,
	Rip = 1079,
	Shred = 5221,
	TigersFury = 5217,
	-- Bear
	Bash = 5211,
	BearForm = 5487,
	ChallengingRoar = 5209,
	DemoralizingRoar = 99,
	DireBearForm = 9634,
	Enrage = 5229,
	FrenziedRegeneration = 22842,
	Growl = 6795,
	Maul = 6807,
	Swipe = 779,
--Restoration
	AbolishPoison = 2893,
	GiftoftheWild = 21849,
	HealingTouch = 5185,
	Innervate = 29166,
	InsectSwarm = 5570,
	MarkoftheWild = 1126,
	NaturesSwiftness = 17116,
	Rebirth = 20484,
	Regrowth = 8936,
	Rejuvenation = 774,
	RemoveCurse = 2782,
	Swiftmend = 18562,
	Tranquility = 740,
}
ids.Rank = {
--Balance
	EntanglingRootsRank2 = 1062,
	EntanglingRootsRank3 = 5195,
	EntanglingRootsRank4 = 5196,
	EntanglingRootsRank5 = 9852,
	EntanglingRootsRank6 = 9853,
	FaerieFireRank2 = 778,
	FaerieFireRank3 = 9749,
	FaerieFireRank4 = 9907,
	HibernateRank2 = 18657,
	HibernateRank3 = 18658,
	HurricaneRank2 = 17401,
	HurricaneRank3 = 17402,
	MoonfireRank2 = 8924,
	MoonfireRank3 = 8925,
	MoonfireRank4 = 8926,
	MoonfireRank5 = 8927,
	MoonfireRank6 = 8928,
	MoonfireRank7 = 8929,
	MoonfireRank8 = 9833,
	MoonfireRank9 = 9834,
	MoonfireRank10 = 9835,
	NaturesGraspRank2 = 16810,
	NaturesGraspRank3 = 16811,
	NaturesGraspRank4 = 16812,
	NaturesGraspRank5 = 16813,
	NaturesGraspRank6 = 17329,
	SootheAnimalRank2 = 8955,
	SootheAnimalRank3 = 9901,
	StarfireRank2 = 8949,
	StarfireRank3 = 8950,
	StarfireRank4 = 8951,
	StarfireRank5 = 9875,
	StarfireRank6 = 9876,
	ThornsRank2 = 782,
	ThornsRank3 = 1075,
	ThornsRank4 = 8914,
	ThornsRank5 = 9756,
	ThornsRank6 = 9910,
	WrathRank2 = 5177,
	WrathRank3 = 5178,
	WrathRank4 = 5179,
	WrathRank5 = 5180,
	WrathRank6 = 6780,
	WrathRank7 = 8905,
	WrathRank8 = 9912,
	--Feral
	FaerieFireFeralRank2 = 17390,
	FaerieFireFeralRank3 = 17391,
	FaerieFireFeralRank4 = 17392,
	-- Cat
	ClawRank2 = 3029,
	ClawRank3 = 5201,
	ClawRank4 = 9849,
	ClawRank5 = 9850,
	CowerRank2 = 9000,
	CowerRank3 = 9892,
	DashRank2 = 9821,
	FerociousBiteRank2 = 22827,
	FerociousBiteRank3 = 22828,
	FerociousBiteRank4 = 22829,
	PounceRank2 = 9823,
	PounceRank3 = 9827,
	ProwlRank2 = 6783,
	ProwlRank3 = 9913,
	RakeRank2 = 1823,
	RakeRank3 = 1824,
	RakeRank4 = 9904,
	RavageRank2 = 6787,
	RavageRank3 = 9866,
	RavageRank4 = 9867,
	RipRank2 = 9492,
	RipRank3 = 9493,
	RipRank4 = 9752,
	RipRank5 = 9894,
	RipRank6 = 9896,
	ShredRank2 = 6800,
	ShredRank3 = 8992,
	ShredRank4 = 9829,
	ShredRank5 = 9830,
	TigersFuryRank2 = 6793,
	TigersFuryRank3 = 9845,
	TigersFuryRank4 = 9846,
	-- Bear
	BashRank2 = 6798,
	BashRank3 = 8983,
	DemoralizingRoarRank2 = 1735,
	DemoralizingRoarRank3 = 9490,
	DemoralizingRoarRank4 = 9747,
	DemoralizingRoarRank5 = 9898,
	FrenziedRegenerationRank2 = 22895,
	FrenziedRegenerationRank3 = 22896,
	MaulRank2 = 6808,
	MaulRank3 = 6809,
	MaulRank4 = 8972,
	MaulRank5 = 9745,
	MaulRank6 = 9880,
	MaulRank7 = 9881,
	SwipeRank2 = 780,
	SwipeRank3 = 769,
	SwipeRank4 = 9754,
	SwipeRank5 = 9908,
	--Restoration
	GiftoftheWildRank2 = 21850,
	HealingTouchRank2 = 5186,
	HealingTouchRank3 = 5187,
	HealingTouchRank4 = 5188,
	HealingTouchRank5 = 5189,
	HealingTouchRank6 = 6778,
	HealingTouchRank7 = 8903,
	HealingTouchRank8 = 9758,
	HealingTouchRank9 = 9888,
	HealingTouchRank10 = 9889,
	InsectSwarmRank2 = 24974,
	InsectSwarmRank3 = 24975,
	InsectSwarmRank4 = 24976,
	InsectSwarmRank5 = 24977,
	MarkoftheWildRank2 = 5232,
	MarkoftheWildRank3 = 6756,
	MarkoftheWildRank4 = 5234,
	MarkoftheWildRank5 = 8907,
	MarkoftheWildRank6 = 9884,
	MarkoftheWildRank7 = 9885,
	RebirthRank2 = 20739,
	RebirthRank3 = 20742,
	RebirthRank4 = 20747,
	RebirthRank5 = 20748,
	RegrowthRank2 = 8938,
	RegrowthRank3 = 8939,
	RegrowthRank4 = 8940,
	RegrowthRank5 = 8941,
	RegrowthRank6 = 9750,
	RegrowthRank7 = 9856,
	RegrowthRank8 = 9857,
	RegrowthRank9 = 9858,
	RejuvenationRank2 = 1058,
	RejuvenationRank3 = 1430,
	RejuvenationRank4 = 2090,
	RejuvenationRank5 = 2091,
	RejuvenationRank6 = 3627,
	RejuvenationRank7 = 8910,
	RejuvenationRank8 = 9839,
	RejuvenationRank9 = 9840,
	RejuvenationRank10 = 9841,
	TranquilityRank2 = 8918,
	TranquilityRank3 = 9862,
	TranquilityRank4 = 9863,
}
ids.Balance_Talent = {
	NaturesGrasp =  1,
	ImprovedWrath =  2,
	ImprovedMoonfire =  3,
	NaturesReach =  4,
	NaturalShapeshifter = 5,
	ImprovedThorns =  6,
	Moonglow =  7,
	ImprovedStarfire =  8,
	ImprovedEntanglingRoots =  9,
	OmenofClarity =  10,
	NaturesGrace =  11,
	Moonfury =  12,
	NaturalWeapons =  13,
	Vengeance =  14,
	MoonkinForm =  15,
	ImprovedNaturesGrasp =  16,
} 
ids.FeralCombat_Talent = {
	ThickHide =  1,
	FeralAggression =  2,
	Ferocity =  3,
	BrutalImpact =  4,
	SharpenedClaws =  5,
	FeralInstinct =  6,
	BloodFrenzy =  7,
	PrimalFury =  8,
	ImprovedShred =  9,
	PredatoryStrikes =  10,
	FeralCharge =  11,
	SavageFury =  12,
	FelineSwiftness =  13,
	HeartoftheWild =  14,
	LeaderofthePack =  15,
	FaerieFireFeral =  16,
} 
ids.Restoration_Talent = {
	ImprovedMarkoftheWild =  1,
	Furor =  2,
	NaturesFocus =  3,
	ImprovedHealingTouch =  4,
	ImprovedRegrowth =  5,
	ImprovedEnrage =  6,
	InsectSwarm =  7,
	GiftofNature =  8,
	Reflection =  9,
	ImprovedRejuvenation =  10,
	NaturesSwiftness =  11,
	Subtlety =  12,
	ImprovedTranquility =  13,
	TranquilSpirit =  14,
	Swiftmend =  15,
}
ids.Engrave = {
	--Waist--
	Eclipse = 7106,
}
ids.Runes = {
	Berserk = 417141,
	StarSurge = 417157,
	Starfall = 439748,
	Sunfire = 414684,

	MangleBear = 407995,
	MangleCat = 407993,
	Lacerate = 414644,
	SavageRoar = 407988,
	SkullBash = 410176,
	KingoftheJungle = 417046, --phase 2 - passive
}
ids.Buff = {
	EclipseLunar = 408255,
	EclipseSolar = 408250,
	FuryofStormrage = 414800,
	ClearCasting = 16870,
}
ids.Debuff = {

}

function ConROC:UpdateSpellID()
--Ranks
	if IsSpellKnown(ids.Rank.FaerieFireRank4) then ids.Ability.FaerieFire = ids.Rank.FaerieFireRank4;
	elseif IsSpellKnown(ids.Rank.FaerieFireRank3) then ids.Ability.FaerieFire = ids.Rank.FaerieFireRank3;
	elseif IsSpellKnown(ids.Rank.FaerieFireRank2) then ids.Ability.FaerieFire = ids.Rank.FaerieFireRank2; end

	if IsSpellKnown(ids.Rank.HibernateRank3) then ids.Ability.Hibernate = ids.Rank.HibernateRank3;
	elseif IsSpellKnown(ids.Rank.HibernateRank2) then ids.Ability.Hibernate = ids.Rank.HibernateRank2; end

	if IsSpellKnown(ids.Rank.HurricaneRank3) then ids.Ability.Hurricane = ids.Rank.HurricaneRank3;
	elseif IsSpellKnown(ids.Rank.HurricaneRank2) then ids.Ability.Hurricane = ids.Rank.HurricaneRank2; end

	if IsSpellKnown(ids.Rank.MoonfireRank10) then ids.Ability.Moonfire = ids.Rank.MoonfireRank10;
	elseif IsSpellKnown(ids.Rank.MoonfireRank9) then ids.Ability.Moonfire = ids.Rank.MoonfireRank9;
	elseif IsSpellKnown(ids.Rank.MoonfireRank8) then ids.Ability.Moonfire = ids.Rank.MoonfireRank8;
	elseif IsSpellKnown(ids.Rank.MoonfireRank7) then ids.Ability.Moonfire = ids.Rank.MoonfireRank7;
	elseif IsSpellKnown(ids.Rank.MoonfireRank6) then ids.Ability.Moonfire = ids.Rank.MoonfireRank6;
	elseif IsSpellKnown(ids.Rank.MoonfireRank5) then ids.Ability.Moonfire = ids.Rank.MoonfireRank5;
	elseif IsSpellKnown(ids.Rank.MoonfireRank4) then ids.Ability.Moonfire = ids.Rank.MoonfireRank4;
	elseif IsSpellKnown(ids.Rank.MoonfireRank3) then ids.Ability.Moonfire = ids.Rank.MoonfireRank3;
	elseif IsSpellKnown(ids.Rank.MoonfireRank2) then ids.Ability.Moonfire = ids.Rank.MoonfireRank2; end

	if IsSpellKnown(ids.Rank.SootheAnimalRank3) then ids.Ability.SootheAnimal = ids.Rank.SootheAnimalRank3;
	elseif IsSpellKnown(ids.Rank.SootheAnimalRank2) then ids.Ability.SootheAnimal = ids.Rank.SootheAnimalRank2; end

	if IsSpellKnown(ids.Rank.StarfireRank6) then ids.Ability.Starfire = ids.Rank.StarfireRank6;
	elseif IsSpellKnown(ids.Rank.StarfireRank5) then ids.Ability.Starfire = ids.Rank.StarfireRank5;
	elseif IsSpellKnown(ids.Rank.StarfireRank4) then ids.Ability.Starfire = ids.Rank.StarfireRank4;
	elseif IsSpellKnown(ids.Rank.StarfireRank3) then ids.Ability.Starfire = ids.Rank.StarfireRank3;
	elseif IsSpellKnown(ids.Rank.StarfireRank2) then ids.Ability.Starfire = ids.Rank.StarfireRank2; end

	if IsSpellKnown(ids.Rank.WrathRank8) then ids.Ability.Wrath = ids.Rank.WrathRank8;
	elseif IsSpellKnown(ids.Rank.WrathRank7) then ids.Ability.Wrath = ids.Rank.WrathRank7;
	elseif IsSpellKnown(ids.Rank.WrathRank6) then ids.Ability.Wrath = ids.Rank.WrathRank6;
	elseif IsSpellKnown(ids.Rank.WrathRank5) then ids.Ability.Wrath = ids.Rank.WrathRank5;
	elseif IsSpellKnown(ids.Rank.WrathRank4) then ids.Ability.Wrath = ids.Rank.WrathRank4;
	elseif IsSpellKnown(ids.Rank.WrathRank3) then ids.Ability.Wrath = ids.Rank.WrathRank3;
	elseif IsSpellKnown(ids.Rank.WrathRank2) then ids.Ability.Wrath = ids.Rank.WrathRank2; end

	if IsSpellKnown(ids.Rank.BashRank3) then ids.Ability.Bash = ids.Rank.BashRank3;
	elseif IsSpellKnown(ids.Rank.BashRank2) then ids.Ability.Bash = ids.Rank.BashRank2; end

	if IsSpellKnown(ids.Ability.DireBearForm) then ids.Ability.BearForm = ids.Ability.DireBearForm; end

	if IsSpellKnown(ids.Rank.ClawRank5) then ids.Ability.Claw = ids.Rank.ClawRank5;
	elseif IsSpellKnown(ids.Rank.ClawRank4) then ids.Ability.Claw = ids.Rank.ClawRank4;
	elseif IsSpellKnown(ids.Rank.ClawRank3) then ids.Ability.Claw = ids.Rank.ClawRank3;
	elseif IsSpellKnown(ids.Rank.ClawRank2) then ids.Ability.Claw = ids.Rank.ClawRank2; end

	if IsSpellKnown(ids.Rank.DashRank2) then ids.Ability.Dash = ids.Rank.DashRank2; end

	if IsSpellKnown(ids.Rank.FaerieFireFeralRank4) then ids.Ability.FaerieFireFeral = ids.Rank.FaerieFireFeralRank4;
	elseif IsSpellKnown(ids.Rank.FaerieFireFeralRank3) then ids.Ability.FaerieFireFeral = ids.Rank.FaerieFireFeralRank3;
	elseif IsSpellKnown(ids.Rank.FaerieFireFeralRank2) then ids.Ability.FaerieFireFeral = ids.Rank.FaerieFireFeralRank2; end

	if IsSpellKnown(ids.Rank.FerociousBiteRank4) then ids.Ability.FerociousBite = ids.Rank.FerociousBiteRank4;
	elseif IsSpellKnown(ids.Rank.FerociousBiteRank3) then ids.Ability.FerociousBite = ids.Rank.FerociousBiteRank3;
	elseif IsSpellKnown(ids.Rank.FerociousBiteRank2) then ids.Ability.FerociousBite = ids.Rank.FerociousBiteRank2; end

	if IsSpellKnown(ids.Rank.MaulRank7) then ids.Ability.Maul = ids.Rank.MaulRank7;
	elseif IsSpellKnown(ids.Rank.MaulRank6) then ids.Ability.Maul = ids.Rank.MaulRank6;
	elseif IsSpellKnown(ids.Rank.MaulRank5) then ids.Ability.Maul = ids.Rank.MaulRank5;
	elseif IsSpellKnown(ids.Rank.MaulRank4) then ids.Ability.Maul = ids.Rank.MaulRank4;
	elseif IsSpellKnown(ids.Rank.MaulRank3) then ids.Ability.Maul = ids.Rank.MaulRank3;
	elseif IsSpellKnown(ids.Rank.MaulRank2) then ids.Ability.Maul = ids.Rank.MaulRank2; end

	if IsSpellKnown(ids.Rank.PounceRank3) then ids.Ability.Pounce = ids.Rank.PounceRank3;
	elseif IsSpellKnown(ids.Rank.PounceRank2) then ids.Ability.Pounce = ids.Rank.PounceRank2; end

	if IsSpellKnown(ids.Rank.ProwlRank3) then ids.Ability.Prowl = ids.Rank.ProwlRank3;
	elseif IsSpellKnown(ids.Rank.ProwlRank2) then ids.Ability.Prowl = ids.Rank.ProwlRank2; end

	if IsSpellKnown(ids.Rank.RakeRank4) then ids.Ability.Rake = ids.Rank.RakeRank4;
	elseif IsSpellKnown(ids.Rank.RakeRank3) then ids.Ability.Rake = ids.Rank.RakeRank3;
	elseif IsSpellKnown(ids.Rank.RakeRank2) then ids.Ability.Rake = ids.Rank.RakeRank2; end

	if IsSpellKnown(ids.Rank.RavageRank4) then ids.Ability.Ravage = ids.Rank.RavageRank4;
	elseif IsSpellKnown(ids.Rank.RavageRank3) then ids.Ability.Ravage = ids.Rank.RavageRank3;
	elseif IsSpellKnown(ids.Rank.RavageRank2) then ids.Ability.Ravage = ids.Rank.RavageRank2; end

	if IsSpellKnown(ids.Rank.RipRank6) then ids.Ability.Rip = ids.Rank.RipRank6;
	elseif IsSpellKnown(ids.Rank.RipRank5) then ids.Ability.Rip = ids.Rank.RipRank5;
	elseif IsSpellKnown(ids.Rank.RipRank4) then ids.Ability.Rip = ids.Rank.RipRank4;
	elseif IsSpellKnown(ids.Rank.RipRank3) then ids.Ability.Rip = ids.Rank.RipRank3;
	elseif IsSpellKnown(ids.Rank.RipRank2) then ids.Ability.Rip = ids.Rank.RipRank2; end

	if IsSpellKnown(ids.Rank.ShredRank5) then ids.Ability.Shred = ids.Rank.ShredRank5;
	elseif IsSpellKnown(ids.Rank.ShredRank4) then ids.Ability.Shred = ids.Rank.ShredRank4;
	elseif IsSpellKnown(ids.Rank.ShredRank3) then ids.Ability.Shred = ids.Rank.ShredRank3;
	elseif IsSpellKnown(ids.Rank.ShredRank2) then ids.Ability.Shred = ids.Rank.ShredRank2; end

	if IsSpellKnown(ids.Rank.SwipeRank5) then ids.Ability.Swipe = ids.Rank.SwipeRank5;
	elseif IsSpellKnown(ids.Rank.SwipeRank4) then ids.Ability.Swipe = ids.Rank.SwipeRank4;
	elseif IsSpellKnown(ids.Rank.SwipeRank3) then ids.Ability.Swipe = ids.Rank.SwipeRank3;
	elseif IsSpellKnown(ids.Rank.SwipeRank2) then ids.Ability.Swipe = ids.Rank.SwipeRank2; end

	if IsSpellKnown(ids.Rank.TigersFuryRank4) then ids.Ability.TigersFury = ids.Rank.TigersFuryRank4;
	elseif IsSpellKnown(ids.Rank.TigersFuryRank3) then ids.Ability.TigersFury = ids.Rank.TigersFuryRank3;
	elseif IsSpellKnown(ids.Rank.TigersFuryRank2) then ids.Ability.TigersFury = ids.Rank.TigersFuryRank2; end

	if IsSpellKnown(ids.Rank.HealingTouchRank10) then ids.Ability.HealingTouch = ids.Rank.HealingTouchRank10;
	elseif IsSpellKnown(ids.Rank.HealingTouchRank9) then ids.Ability.HealingTouch = ids.Rank.HealingTouchRank9;
	elseif IsSpellKnown(ids.Rank.HealingTouchRank8) then ids.Ability.HealingTouch = ids.Rank.HealingTouchRank8;
	elseif IsSpellKnown(ids.Rank.HealingTouchRank7) then ids.Ability.HealingTouch = ids.Rank.HealingTouchRank7;
	elseif IsSpellKnown(ids.Rank.HealingTouchRank6) then ids.Ability.HealingTouch = ids.Rank.HealingTouchRank6;
	elseif IsSpellKnown(ids.Rank.HealingTouchRank5) then ids.Ability.HealingTouch = ids.Rank.HealingTouchRank5;
	elseif IsSpellKnown(ids.Rank.HealingTouchRank4) then ids.Ability.HealingTouch = ids.Rank.HealingTouchRank4;
	elseif IsSpellKnown(ids.Rank.HealingTouchRank3) then ids.Ability.HealingTouch = ids.Rank.HealingTouchRank3;
	elseif IsSpellKnown(ids.Rank.HealingTouchRank2) then ids.Ability.HealingTouch = ids.Rank.HealingTouchRank2; end

	if IsSpellKnown(ids.Rank.InsectSwarmRank5) then ids.Ability.InsectSwarm = ids.Rank.InsectSwarmRank5;
	elseif IsSpellKnown(ids.Rank.InsectSwarmRank4) then ids.Ability.InsectSwarm = ids.Rank.InsectSwarmRank4;
	elseif IsSpellKnown(ids.Rank.InsectSwarmRank3) then ids.Ability.InsectSwarm = ids.Rank.InsectSwarmRank3;
	elseif IsSpellKnown(ids.Rank.InsectSwarmRank2) then ids.Ability.InsectSwarm = ids.Rank.InsectSwarmRank2; end

	if IsSpellKnown(ids.Rank.MarkoftheWildRank7) then ids.Ability.MarkoftheWild = ids.Rank.MarkoftheWildRank7;
	elseif IsSpellKnown(ids.Rank.MarkoftheWildRank6) then ids.Ability.MarkoftheWild = ids.Rank.MarkoftheWildRank6;
	elseif IsSpellKnown(ids.Rank.MarkoftheWildRank5) then ids.Ability.MarkoftheWild = ids.Rank.MarkoftheWildRank5;
	elseif IsSpellKnown(ids.Rank.MarkoftheWildRank4) then ids.Ability.MarkoftheWild = ids.Rank.MarkoftheWildRank4;
	elseif IsSpellKnown(ids.Rank.MarkoftheWildRank3) then ids.Ability.MarkoftheWild = ids.Rank.MarkoftheWildRank3;
	elseif IsSpellKnown(ids.Rank.MarkoftheWildRank2) then ids.Ability.MarkoftheWild = ids.Rank.MarkoftheWildRank2; end

	if IsSpellKnown(ids.Rank.RebirthRank5) then ids.Ability.Rebirth = ids.Rank.RebirthRank5;
	elseif IsSpellKnown(ids.Rank.RebirthRank4) then ids.Ability.Rebirth = ids.Rank.RebirthRank4;
	elseif IsSpellKnown(ids.Rank.RebirthRank3) then ids.Ability.Rebirth = ids.Rank.RebirthRank3;
	elseif IsSpellKnown(ids.Rank.RebirthRank2) then ids.Ability.Rebirth = ids.Rank.RebirthRank2; end

	if IsSpellKnown(ids.Rank.RegrowthRank9) then ids.Ability.Regrowth = ids.Rank.RegrowthRank9;
	elseif IsSpellKnown(ids.Rank.RegrowthRank8) then ids.Ability.Regrowth = ids.Rank.RegrowthRank8;
	elseif IsSpellKnown(ids.Rank.RegrowthRank7) then ids.Ability.Regrowth = ids.Rank.RegrowthRank7;
	elseif IsSpellKnown(ids.Rank.RegrowthRank6) then ids.Ability.Regrowth = ids.Rank.RegrowthRank6;
	elseif IsSpellKnown(ids.Rank.RegrowthRank5) then ids.Ability.Regrowth = ids.Rank.RegrowthRank5;
	elseif IsSpellKnown(ids.Rank.RegrowthRank4) then ids.Ability.Regrowth = ids.Rank.RegrowthRank4;
	elseif IsSpellKnown(ids.Rank.RegrowthRank3) then ids.Ability.Regrowth = ids.Rank.RegrowthRank3;
	elseif IsSpellKnown(ids.Rank.RegrowthRank2) then ids.Ability.Regrowth = ids.Rank.RegrowthRank2; end

	if IsSpellKnown(ids.Rank.RejuvenationRank10) then ids.Ability.Rejuvenation = ids.Rank.RejuvenationRank10;
	elseif IsSpellKnown(ids.Rank.RejuvenationRank9) then ids.Ability.Rejuvenation = ids.Rank.RejuvenationRank9;
	elseif IsSpellKnown(ids.Rank.RejuvenationRank8) then ids.Ability.Rejuvenation = ids.Rank.RejuvenationRank8;
	elseif IsSpellKnown(ids.Rank.RejuvenationRank7) then ids.Ability.Rejuvenation = ids.Rank.RejuvenationRank7;
	elseif IsSpellKnown(ids.Rank.RejuvenationRank6) then ids.Ability.Rejuvenation = ids.Rank.RejuvenationRank6;
	elseif IsSpellKnown(ids.Rank.RejuvenationRank5) then ids.Ability.Rejuvenation = ids.Rank.RejuvenationRank5;
	elseif IsSpellKnown(ids.Rank.RejuvenationRank4) then ids.Ability.Rejuvenation = ids.Rank.RejuvenationRank4;
	elseif IsSpellKnown(ids.Rank.RejuvenationRank3) then ids.Ability.Rejuvenation = ids.Rank.RejuvenationRank3;
	elseif IsSpellKnown(ids.Rank.RejuvenationRank2) then ids.Ability.Rejuvenation = ids.Rank.RejuvenationRank2; end

	if IsSpellKnown(ids.Rank.TranquilityRank4) then ids.Ability.Tranquility = ids.Rank.TranquilityRank4;
	elseif IsSpellKnown(ids.Rank.TranquilityRank3) then ids.Ability.Tranquility = ids.Rank.TranquilityRank3;
	elseif IsSpellKnown(ids.Rank.TranquilityRank2) then ids.Ability.Tranquility = ids.Rank.TranquilityRank2; end

    if IsSpellKnown(ids.Rank.EntanglingRootsRank6) then ids.Ability.EntanglingRoots = ids.Rank.EntanglingRootsRank6;
    elseif IsSpellKnown(ids.Rank.EntanglingRootsRank5) then ids.Ability.EntanglingRoots = ids.Rank.EntanglingRootsRank5;
    elseif IsSpellKnown(ids.Rank.EntanglingRootsRank4) then ids.Ability.EntanglingRoots = ids.Rank.EntanglingRootsRank4;
    elseif IsSpellKnown(ids.Rank.EntanglingRootsRank3) then ids.Ability.EntanglingRoots = ids.Rank.EntanglingRootsRank3;
    elseif IsSpellKnown(ids.Rank.EntanglingRootsRank2) then ids.Ability.EntanglingRoots = ids.Rank.EntanglingRootsRank2; end

    if IsSpellKnown(ids.Rank.NaturesGraspRank6) then ids.Ability.NaturesGrasp = ids.Rank.NaturesGraspRank6;
    elseif IsSpellKnown(ids.Rank.NaturesGraspRank5) then ids.Ability.NaturesGrasp = ids.Rank.NaturesGraspRank5;
    elseif IsSpellKnown(ids.Rank.NaturesGraspRank4) then ids.Ability.NaturesGrasp = ids.Rank.NaturesGraspRank4;
    elseif IsSpellKnown(ids.Rank.NaturesGraspRank3) then ids.Ability.NaturesGrasp = ids.Rank.NaturesGraspRank3;
    elseif IsSpellKnown(ids.Rank.NaturesGraspRank2) then ids.Ability.NaturesGrasp = ids.Rank.NaturesGraspRank2; end

    if IsSpellKnown(ids.Rank.ThornsRank6) then ids.Ability.Thorns = ids.Rank.ThornsRank6;
    elseif IsSpellKnown(ids.Rank.ThornsRank5) then ids.Ability.Thorns = ids.Rank.ThornsRank5;
    elseif IsSpellKnown(ids.Rank.ThornsRank4) then ids.Ability.Thorns = ids.Rank.ThornsRank4;
    elseif IsSpellKnown(ids.Rank.ThornsRank3) then ids.Ability.Thorns = ids.Rank.ThornsRank3;
    elseif IsSpellKnown(ids.Rank.ThornsRank2) then ids.Ability.Thorns = ids.Rank.ThornsRank2; end

    if IsSpellKnown(ids.Rank.CowerRank3) then ids.Ability.Cower = ids.Rank.CowerRank3; 
    elseif IsSpellKnown(ids.Rank.CowerRank2) then ids.Ability.Cower = ids.Rank.CowerRank2; end

    if IsSpellKnown(ids.Rank.DemoralizingRoarRank5) then ids.Ability.DemoralizingRoar = ids.Rank.DemoralizingRoarRank5;
    elseif IsSpellKnown(ids.Rank.DemoralizingRoarRank4) then ids.Ability.DemoralizingRoar = ids.Rank.DemoralizingRoarRank4;
    elseif IsSpellKnown(ids.Rank.DemoralizingRoarRank3) then ids.Ability.DemoralizingRoar = ids.Rank.DemoralizingRoarRank3;
    elseif IsSpellKnown(ids.Rank.DemoralizingRoarRank2) then ids.Ability.DemoralizingRoar = ids.Rank.DemoralizingRoarRank2; end

    if IsSpellKnown(ids.Rank.FrenziedRegenerationRank3) then ids.Ability.FrenziedRegeneration = ids.Rank.FrenziedRegenerationRank3;
    elseif IsSpellKnown(ids.Rank.FrenziedRegenerationRank2) then ids.Ability.FrenziedRegeneration = ids.Rank.FrenziedRegenerationRank2; end
end