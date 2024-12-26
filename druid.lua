ConROC.Druid = {};

local ConROC_Druid, ids = ...;

function ConROC:EnableRotationModule()
    self.Description = 'Druid';
    self.NextSpell = ConROC.Druid.Damage;

    self:RegisterEvent('UNIT_SPELLCAST_SUCCEEDED');
    self.lastSpellId = 0;

	ConROC:SpellmenuClass();

    ConROC:PowerShift();
end

function ConROC:EnableDefenseModule()
    self.NextDef = ConROC.Druid.Defense;
end

function ConROC:UNIT_SPELLCAST_SUCCEEDED(event, unitID, lineID, spellID)
    if unitID == 'player' then
        self.lastSpellId = spellID;
    end
end

local Racial, Spec, Ability, Rank, Bal_Talent, Feral_Talent, Resto_Talent, Engrave, Runes, Buff, Debuff = ids.Racial, ids.Spec, ids.Ability, ids.Rank, ids.Balance_Talent, ids.FeralCombat_Talent, ids.Restoration_Talent, ids.Engrave, ids.Runes, ids.Buff, ids.Debuff;

--Info
local _Player_Spec, _Player_Spec_ID = ConROC:currentSpec();
local _Player_Level = UnitLevel("player");
local _Player_Percent_Health = ConROC:PercentHealth('player');
local _is_PvP = ConROC:IsPvP();
local _in_combat = UnitAffectingCombat('player');
local _party_size = GetNumGroupMembers();
local _is_PC = UnitPlayerControlled("target");
local _is_Enemy = ConROC:TarHostile();
local _Target_Health = UnitHealth('target');
local _Target_Percent_Health = ConROC:PercentHealth('target');

--Resources
local _Combo, _Combo_Max = ConROC:PlayerPower('Combo');
local _Energy, _Energy_Max = ConROC:PlayerPower('Energy');
local _Mana, _Mana_Max, _Mana_Percent = ConROC:PlayerPower('Mana');
local _Rage, _Rage_Max = ConROC:PlayerPower('Rage');

--Conditions
local _Queue = 0;
local _is_moving = ConROC:PlayerSpeed();
local _enemies_in_melee, _target_in_melee = ConROC:Targets("Melee");
local _enemies_in_10yrds, _target_in_10yrds = ConROC:Targets("10");
local _enemies_in_20yrds, _target_in_20yrds = ConROC:Targets("20");
local _enemies_in_40yrds, _target_in_40yrds = ConROC:Targets("40");
local _can_Execute = _Target_Percent_Health < 20;

--Racials
local _Berserking, _Berserking_RDY = _, _;

function ConROC:Stats()
    _Player_Spec, _Player_Spec_ID = ConROC:currentSpec();
	_Player_Level = UnitLevel("player");
	_Player_Percent_Health = ConROC:PercentHealth('player');
	_is_PvP = ConROC:IsPvP();
	_in_combat = UnitAffectingCombat('player');
	_party_size = GetNumGroupMembers();
	_is_PC = UnitPlayerControlled("target");
	_is_Enemy = ConROC:TarHostile();
	_Target_Health = UnitHealth('target');
	_Target_Percent_Health = ConROC:PercentHealth('target');

	_Combo, _Combo_Max = ConROC:PlayerPower('Combo');
	_Energy, _Energy_Max = ConROC:PlayerPower('Energy');
	_Mana, _Mana_Max, _Mana_Percent = ConROC:PlayerPower('Mana');
	_Rage, _Rage_Max = ConROC:PlayerPower('Rage');

	_Queue = 0;
	_is_moving = ConROC:PlayerSpeed();
	_enemies_in_melee, _target_in_melee = ConROC:Targets("Melee");
	_enemies_in_10yrds, _target_in_10yrds = ConROC:Targets("10");
	_enemies_in_20yrds, _target_in_20yrds = ConROC:Targets("20");
	_enemies_in_40yrds, _target_in_40yrds = ConROC:Targets("40");
	_can_Execute = _Target_Percent_Health < 20;
end

function ConROC.Druid.Damage(_, timeShift, currentSpell, gcd)
    ConROC:UpdateSpellID();
	ConROC:Stats();

--Character
    local int                                               = UnitStat("player", 4);

--Resources
    local manaBase                                          = _Mana_Max - (math.min(20,int)+15*(int-math.min(20,int)))

--Abilities
    local _FaerieFire, _FaerieFire_RDY = ConROC:AbilityReady(Ability.FaerieFire, timeShift);
        local _, _, _, _FaerieFire_UP = ConROC:TargetAura(_FaerieFire, timeShift);
    local _Hurricane, _Hurricane_RDY = ConROC:AbilityReady(Ability.Hurricane, timeShift);
    local _Moonfire, _Moonfire_RDY = ConROC:AbilityReady(Ability.Moonfire, timeShift);
        local _Moonfire_RDY = ConROC:TargetAura(_Moonfire, timeShift);
    local _MoonkinForm, _MoonkinForm_RDY = ConROC:AbilityReady(Ability.MoonkinForm, timeShift);
        local _MoonkinForm_FORM = ConROC:Form(_MoonkinForm);
    local _SootheAnimal, _SootheAnimal_RDY = ConROC:AbilityReady(Ability.SootheAnimal, timeShift);
    local _Starfire, _Starfire_RDY = ConROC:AbilityReady(Ability.Starfire, timeShift);
    local _Wrath, _Wrath_RDY = ConROC:AbilityReady(Ability.Wrath, timeShift);

    local _Bash, _Bash_RDY = ConROC:AbilityReady(Ability.Bash, timeShift);
    local _BearForm, _BearForm_RDY = ConROC:AbilityReady(Ability.BearForm, timeShift);
        local _BearForm_FORM = ConROC:Form(_BearForm);
    local _CatForm, _CatForm_RDY = ConROC:AbilityReady(Ability.CatForm, timeShift);
        local _CatForm_FORM = ConROC:Form(_CatForm);
    local _ChallengingRoar, _ChallengingRoar_RDY = ConROC:AbilityReady(Ability.ChallengingRoar, timeShift);
    local _Claw, _Claw_RDY = ConROC:AbilityReady(Ability.Claw, timeShift);
    local _Dash, _Dash_RDY = ConROC:AbilityReady(Ability.Dash, timeShift);
    local _Enrage, _Enrage_RDY = ConROC:AbilityReady(Ability.Enrage, timeShift);
    local _FaerieFireFeral, _FaerieFireFeral_RDY = ConROC:AbilityReady(Ability.FaerieFireFeral, timeShift);
        local _, _, _, _FaerieFireFeral_UP = ConROC:TargetAura(_FaerieFireFeral, timeShift);
    local _FeralCharge, _FeralCharge_RDY = ConROC:AbilityReady(Ability.FeralCharge, timeShift);
    local _FerociousBite, _FerociousBite_RDY = ConROC:AbilityReady(Ability.FerociousBite, timeShift);
    local _Maul, _Maul_RDY = ConROC:AbilityReady(Ability.Maul, timeShift);
    local _Pounce, _Pounce_RDY = ConROC:AbilityReady(Ability.Pounce, timeShift);
    local _Prowl, _Prowl_RDY = ConROC:AbilityReady(Ability.Prowl, timeShift);
    local _Rake, _Rake_RDY = ConROC:AbilityReady(Ability.Rake, timeShift);
        local _Rake_DEBUFF = ConROC:TargetAura(_Rake, timeShift);
    local _Ravage, _Ravage_RDY = ConROC:AbilityReady(Ability.Ravage, timeShift);
    local _Rip, _Rip_RDY = ConROC:AbilityReady(Ability.Rip, timeShift);
        local _Rip_DEBUFF = ConROC:TargetAura(_Rip, timeShift);
    local _Shred, _Shred_RDY = ConROC:AbilityReady(Ability.Shred, timeShift);
    local _Swipe, _Swipe_RDY = ConROC:AbilityReady(Ability.Swipe, timeShift);
    local _TigersFury, _TigersFury_RDY = ConROC:AbilityReady(Ability.TigersFury, timeShift);
        local _TigersFury_BUFF = ConROC:Aura(_TigersFury, timeShift);

    local _Innervate, _Innervate_RDY = ConROC:AbilityReady(Ability.Innervate, timeShift);
    local _InsectSwarm, _InsectSwarm_RDY = ConROC:AbilityReady(Ability.InsectSwarm, timeShift);
        local _InsectSwarm_DEBUFF = ConROC:TargetAura(_InsectSwarm, timeShift);
    local _MarkoftheWild, _MarkoftheWild_RDY = ConROC:AbilityReady(Ability.MarkoftheWild, timeShift);
        local _MarkoftheWild_BUFF = ConROC:Aura(_MarkoftheWild, timeShift);
    local _NaturesSwiftness, _NaturesSwiftness_RDY = ConROC:AbilityReady(Ability.NaturesSwiftness, timeShift);

    local _, _, _, _ClearCasting_UP = ConROC:Aura(Buff.ClearCasting, timeShift);

--Runes
    local _Lacerate, _Lacerate_RDY = ConROC:AbilityReady(Runes.Lacerate, timeShift);
        local _, _Lacerate_COUNT, _Lacerate_DUR = ConROC:TargetAura(_Lacerate, timeShift);
    local _MangleBear, _MangleBear_RDY = ConROC:AbilityReady(Runes.MangleBear, timeShift);
        local _MangleBear_DEBUFF, _, _MangleBear_DUR = ConROC:TargetAura(_MangleBear, timeShift);
    local _MangleCat, _MangleCat_RDY = ConROC:AbilityReady(Runes.MangleCat, timeShift);
        local _, _, _MangleCat_DUR = ConROC:TargetAura(_MangleCat, timeShift);
    local _Sunfire, _Sunfire_RDY = ConROC:AbilityReady(Runes.Sunfire, timeShift);
        local _Sunfire_DEBUFF = ConROC:TargetAura(_Sunfire, timeShift);
    local _StarSurge, _StarSurge_RDY = ConROC:AbilityReady(Runes.StarSurge, timeShift);
    local _SavageRoar, _SavageRoar_RDY = ConROC:AbilityReady(Runes.SavageRoar, timeShift);
        local _, _, _SavageRoar_DUR, _SavageRoar_UP = ConROC:Aura(_SavageRoar, timeShift);
    local _SkullBash, _SkullBash_RDY = ConROC:AbilityReady(Runes.SkullBash, timeShift);

--Conditions
    local _is_stealthed = IsStealthed();

    local _Maul_COST = 15;
    local _Swipe_COST = 20;

    local _CatForm_COST = manaBase * (.55 * (1.0 - (.1 * select(2, ConROC:TalentChosen(Spec.Balance, Bal_Talent.NaturalShapeshifter)))))
    local _Rake_COST = 40;
    local _Claw_COST = 45;
    local _Shred_COST = 60;

    if ConROC:TalentChosen(Spec.Feral, Feral_Talent.Ferocity) then
        ferocityBonus = select(2, ConROC:TalentChosen(Spec.Feral, Feral_Talent.Ferocity));

        _Maul_COST = _Maul_COST - ferocityBonus;
        _Swipe_COST = _Swipe_COST - ferocityBonus;
        _Rake_COST = _Rake_COST - ferocityBonus;
        _Claw_COST = _Claw_COST - ferocityBonus;
    end

    if ConROC:TalentChosen(Spec.Feral, Feral_Talent.ImprovedShred) then
        shredBonus = select(2, ConROC:TalentChosen(Spec.Feral, Feral_Talent.ImprovedShred));

        _Shred_COST = _Shred_COST - (shredBonus * 6);
    end

    ConROCPowerShift:Hide();

--Warnings

--Indicators
    ConROC:AbilityRaidBuffs(_MarkoftheWild, _MarkoftheWild_RDY and not _MarkoftheWild_BUFF);
    ConROC:AbilityInterrupt(_SkullBash, ConROC:Interrupt() and _SkullBash_RDY)

--Rotations
    if ConROC.Seasons.IsSoD then
        if _is_stealthed and _CatForm_FORM then
            if _TigersFury_RDY and not _TigersFury_BUFF and _Energy >= 80 then
                return _TigersFury;
            end
            
            if _Ravage_RDY and _Combo < _Combo_Max and not ConROC:TarYou() then
                return _Ravage;
            end
            
            if _Shred_RDY and _Combo < _Combo_Max and not ConROC:TarYou() then
            --  if ConROC:TalentChosen(Spec.Restoration, Resto_Talent.Furor) and _CatForm_COST <= _Mana and _Energy - _Shred_COST <= 8 then
            --     ConROCPowerShift:Show(); --Shred cost is 60 and powershift now reset you at 40 energy
            --  end
                return _Shred;
            end
        end
        
        if _CatForm_FORM then
        --    if sRoarRDY and _Combo >= 1 then
        --        if ConROC:TalentChosen(Spec.Restoration, Resto_Talent.Furor) and _CatForm_COST <= _Mana and _Energy - 35 <= 8 then
        --            ConROCPowerShift:Show();
        --        end
        --        return _FerociousBite;
        --    end
            
            if ConROC:TalentChosen(Spec.Restoration, Resto_Talent.Furor) and _CatForm_COST <= _Mana and _Energy <= 8 then
                    ConROCPowerShift:Show();
            end
            
            if _TigersFury_RDY and not _TigersFury_BUFF and _Energy >= 80 and not _in_combat then
                return _TigersFury;
            end
            if _FaerieFireFeral_RDY and not (_FaerieFire_UP or _FaerieFireFeral_UP) and ConROC:CheckBox(ConROC_SM_Debuff_FaerieFireFeral) then
                return _FaerieFireFeral;
            end
            if _ClearCasting_UP and _Shred_RDY and not ConROC:TarYou() then
                return _Shred;
            end
            if _MangleCat_RDY and _Combo < 1 and _MangleCat_DUR <= 1.2 then
                return _MangleCat;
            end
            
            if _SavageRoar_RDY and _Combo > 1 and (not _SavageRoar_UP or _SavageRoar_DUR < 2) then
                return _SavageRoar;
            end
            
            if _MangleCat_RDY and _Combo ~= _Combo_Max and _MangleCat_DUR <= 1.2 then
                return _MangleCat;
            end

            if _Rip_RDY and not _Rip_DEBUFF and _SavageRoar_UP and _Combo == _Combo_Max and ConROC:CheckBox(ConROC_SM_DoT_Rip) then --and not (ConROC:CreatureType("Undead") or ConROC:CreatureType("Mechanical") or ConROC:CreatureType("Elemental")) then
                return _Rip;
            end --Not good output unless player wants chosen in SpellMenu
            
        --   if _FerociousBite_RDY and _Combo == _Combo_Max then
        --        if ConROC:TalentChosen(Spec.Restoration, Resto_Talent.Furor) and _CatForm_COST <= _Mana and _Energy - 35 <= 8 then
        --            ConROCPowerShift:Show();
        --        end
        --        return _FerociousBite;
        --    end

            if _Rake_RDY and not _Rake_DEBUFF and not (ConROC:CreatureType("Undead") or ConROC:CreatureType("Mechanical") or ConROC:CreatureType("Elemental")) then
                
                return _Rake;
            end
            if _MangleCat_RDY then
                return _MangleCat;
            end
            if not IsSpellKnownOrOverridesKnown(_MangleCat) then
                if _Claw_RDY and _Combo < _Combo_Max and (not IsSpellKnown(_Shred) or ConROC:TarYou()) then
                    return _Claw;
                end
            end
            return nil
        end

        if _BearForm_FORM then
            --print("You are in Bear form!")
            if _FaerieFireFeral_RDY and not (_FaerieFire_UP or _FaerieFireFeral_UP) and ConROC:CheckBox(ConROC_SM_Debuff_FaerieFireFeral) then
                return _FaerieFireFeral;
            end

            if _Lacerate_RDY and _Lacerate_COUNT == 5 and _Lacerate_DUR <=1.5 then
                return _Lacerate;
            end
            if _MangleBear_RDY and not _MangleBear_DEBUFF and _MangleBear_DUR <= 1.2 then
                return _BearMangle;
            end
            if _Lacerate_RDY and (_Lacerate_COUNT < 5 and _Lacerate_DUR <= 8) and _Rage >= 15 then
                return _Lacerate;
            end
            if _Swipe_RDY and (_Rage >= _Rage_Max - 40 or _target_in_melee >= 3) then
                return _Swipe;
            end
            --ConROC:AbilityTaunt(_Maul, _Maul_RDY);
            if _Maul_RDY then
                return _Maul;
            end
            return nil;
        end

    --elseif _Player_Spec == "Balance" then

        if _MoonkinForm_RDY and not _MoonkinForm_FORM then
            return _MoonkinForm;
        end
        if _MoonkinForm_FORM then        
        --    if not _in_combat then
        --        if _Starfire_RDY then
        --            return _Starfire;
        --        end
        --        
        --        if _Wrath_RDY then
        --           return _Wrath;
        --        end 
        --    end
        --    if _Hurricane_RDY and (_target_in_melee >= 4 or ConROC_AoEButton:IsVisible()) then
        --        return _Hurricane;
        --    end

            if _StarSurge_RDY then
                return _StarSurge;
            end

            if _Sunfire_RDY and not _Sunfire_DEBUFF then
                return _Sunfire;
            end

            if _Moonfire_RDY and not _Moonfire_RDY then
                return _Moonfire;
            end

        --    if _Moonfire_RDY and not _Moonfire_RDY and ConROC_AoEButton:IsVisible() then
        --        return _Moonfire;
        --    end

            if _FaerieFire_RDY and not (_FaerieFire_UP or _FaerieFireFeral_UP) and ConROC:CheckBox(ConROC_SM_Debuff_FaerieFire) then
                return _FaerieFire;
            end

            if _InsectSwarm_RDY and not _InsectSwarm_DEBUFF then
                return _InsectSwarm
            end

        --    if _Starfire_RDY then
        --        return _Starfire;
        --    end

            if _Wrath_RDY then
                return _Wrath;
            end
            return nil;
        end

        if _is_Enemy then
            if _StarSurge_RDY then
                return _StarSurge;
            end

            if _Sunfire_RDY and not _Sunfire_DEBUFF then
                return _Sunfire;
            end
            if _Moonfire_RDY and not _Moonfire_RDY then
                return _Moonfire;
            end

            if _FaerieFire_RDY and not (_FaerieFire_UP or _FaerieFireFeral_UP) and ConROC:CheckBox(ConROC_SM_Debuff_FaerieFire) then
                return _FaerieFire;
            end

            if _InsectSwarm_RDY and not _InsectSwarm_DEBUFF then
                return _InsectSwarm
            end

            if _Wrath_RDY then
                return _Wrath;
            end
        end
    else --not SoD
        if _is_stealthed and _CatForm_FORM then
            if _TigersFury_RDY and not _TigersFury_BUFF and _Energy >= 80 then
                return _TigersFury;
            end

            if _Ravage_RDY and _Combo < _Combo_Max and not ConROC:TarYou() then
                return _Ravage;
            end

            if _Shred_RDY and _Combo < _Combo_Max and not ConROC:TarYou() then
                if ConROC:TalentChosen(Spec.Restoration, Resto_Talent.Furor) and _CatForm_COST <= _Mana and _Energy - _Shred_COST <= 8 then
                    ConROCPowerShift:Show();
                end
                return _Shred;
            end
        end

        if _CatForm_FORM then
            if _FaerieFireFeral_RDY and not (_FaerieFire_UP or _FaerieFireFeral_UP) then
                return _FaerieFireFeral;
            end

            if _TigersFury_RDY and not _TigersFury_BUFF and _Energy >= 80 then
                return _TigersFury;
            end

            if _Rip_RDY and not _Rip_DEBUFF and _Combo >= 5 and ConROC:CheckBox(ConROC_SM_DoT_Rip) and not (ConROC:CreatureType("Undead") or ConROC:CreatureType("Mechanical") or ConROC:CreatureType("Elemental")) then
                return _Rip;
            end --Not good output unless player wants chosen in SpellMenu

            if _FerociousBite_RDY and _Combo >= 5 then
                if ConROC:TalentChosen(Spec.Restoration, Resto_Talent.Furor) and _CatForm_COST <= _Mana and _Energy - 35 <= 8 then
                    ConROCPowerShift:Show();
                end
                return _FerociousBite;
            end

            if _Rake_RDY and not _Rake_DEBUFF and not (ConROC:CreatureType("Undead") or ConROC:CreatureType("Mechanical") or ConROC:CreatureType("Elemental")) then
                if ConROC:TalentChosen(Spec.Restoration, Resto_Talent.Furor) and _CatForm_COST <= _Mana and _Energy - _Rake_COST <= 8 then
                    ConROCPowerShift:Show();
                end
                return _Rake;
            end

            if _Shred_RDY and _Combo < _Combo_Max and not ConROC:TarYou() then
                if ConROC:TalentChosen(Spec.Restoration, Resto_Talent.Furor) and _CatForm_COST <= _Mana and _Energy - _Shred_COST <= 8 then
                    ConROCPowerShift:Show();
                end
                return _Shred;
            end

            if _Claw_RDY and _Combo < _Combo_Max and (not IsSpellKnown(_Shred) or ConROC:TarYou()) then
                if ConROC:TalentChosen(Spec.Restoration, Resto_Talent.Furor) and _CatForm_COST <= _Mana and _Energy - _Claw_COST <= 8 then
                    ConROCPowerShift:Show();
                end
                return _Claw;
            end
            return nil
        end

        if _BearForm_FORM then
            --print("You are in Bear form!")
            if _FaerieFireFeral_RDY and not (_FaerieFire_UP or _FaerieFireFeral_UP) then
                return _FaerieFireFeral;
            end

            if _Maul_RDY then
                return _Maul;
            end

            if _Swipe_RDY and (_Rage >= _Rage_Max - 40 or _target_in_melee >= 3) then
                return _Swipe;
            end

            return nil;
        end

        if _MoonkinForm_RDY and not _MoonkinForm_FORM then
            return _MoonkinForm;
        end

        if _MoonkinForm_FORM then
            if not _in_combat then
                if _Starfire_RDY then
                    return _Starfire;
                end

                if _Wrath_RDY then
                    return _Wrath;
                end
            end

            if _Hurricane_RDY and (_target_in_melee >= 4 or ConROC_AoEButton:IsVisible()) then
                return _Hurricane;
            end

            if _Moonfire_RDY and not _Moonfire_RDY and ConROC_AoEButton:IsVisible() then
                return _Moonfire;
            end

            if _FaerieFire_RDY and not (_FaerieFire_UP or _FaerieFireFeral_UP) then
                return _FaerieFire;
            end

            if _InsectSwarm_RDY and not _InsectSwarm_DEBUFF then
                return _InsectSwarm
            end

            if _Moonfire_RDY and not _Moonfire_RDY then
                return _Moonfire;
            end

            if _Starfire_RDY then
                return _Starfire;
            end

            if _Wrath_RDY then
                return _Wrath;
            end
            return nil;
        end

        if _is_Enemy then
            if _FaerieFire_RDY and not (_FaerieFire_UP or _FaerieFireFeral_UP) then
                return _FaerieFire;
            end

            if _InsectSwarm_RDY and not _InsectSwarm_DEBUFF then
                return _InsectSwarm
            end

            if _Moonfire_RDY and not _Moonfire_RDY then
                return _Moonfire;
            end

            if _Wrath_RDY then
                return _Wrath;
            end
        end
    end
return nil;
end

function ConROC.Druid.Defense(_, timeShift, currentSpell, gcd)
	ConROC:UpdateSpellID();
	ConROC:Stats();

--Abilities 
    local _Barkskin, _Barkskin_RDY = ConROC:AbilityReady(Ability.Barkskin, timeShift);
    local _NaturesGrasp, _NaturesGrasp_RDY = ConROC:AbilityReady(Ability.NaturesGrasp, timeShift);
        local _NaturesGrasp_BUFF = ConROC:Aura(_NaturesGrasp, timeShift);
    local _OmenofClarity, _OmenofClarity_RDY = ConROC:AbilityReady(Ability.OmenofClarity, timeShift);
        local _OmenofClarity_BUFF = ConROC:Aura(_OmenofClarity, timeShift);
    local _Thorns, _Thorns_RDY = ConROC:AbilityReady(Ability.Thorns, timeShift);
        local _Thorns_BUFF = ConROC:Aura(_Thorns, timeShift);

        local _BearForm_FORM = ConROC:Form(_BearForm);
    local _DemoralizingRoar, _DemoralizingRoar_RDY = ConROC:AbilityReady(Ability.DemoralizingRoar, timeShift);
        local _DemoralizingRoar_DEBUFF = ConROC:TargetAura(_DemoralizingRoar, timeShift);
    local _FrenziedRegeneration, _FrenziedRegeneration_RDY = ConROC:AbilityReady(Ability.FrenziedRegeneration, timeShift);

    local _, _, _, _ClearCasting_UP = ConROC:Aura(Buff.ClearCasting, timeShift);
    local _, _, _, _FuryofStormrage_UP = ConROC:Aura(Buff.FuryofStormrage, timeShift);

--Rotations 
    if _Thorns_RDY and not _Thorns_BUFF then
        return _Thorns;
    end

    if _OmenofClarity_RDY and not _OmenofClarity_BUFF then
        return _OmenofClarity;
    end

    if _NaturesGrasp_RDY and not _NaturesGrasp_BUFF then
        return _NaturesGrasp;
    end

    if _BearForm_FORM then
        if _DemoralizingRoar_RDY and not _DemoralizingRoar_DEBUFF then
            return _DemoralizingRoar;
        end
    end

    if _Barkskin_RDY then
        return _Barkskin;
    end

    if (_ClearCasting_UP or _FuryofStormrage_UP) and _Player_Percent_Health < 60 then
        return _HealingTouch;
    end
return nil;
end

function ConROC:PowerShift()
    local frame = CreateFrame("Frame", "ConROCPowerShift", UIParent)
    frame:SetFrameStrata('MEDIUM');
    frame:SetFrameLevel('5')
    frame:SetSize(50, 10) -- 50 with Roles turned on. 20 when off.
    frame:SetAlpha(1)

    frame:SetPoint("LEFT", "ConROCWindow", "RIGHT", 15, -15)
    frame:SetMovable(false)
    frame:EnableMouse(true)
    frame:SetClampedToScreen(true)

    local fonttitle = frame:CreateFontString(nil, "ARTWORK", "GameFontNormalMed3");
        fonttitle:SetText("Powershift");
        fonttitle:SetPoint('TOP', frame, 'TOP', 0, 0);
    local fonttitle2 = frame:CreateFontString(nil, "ARTWORK", "GameFontNormalMed3");
        fonttitle2:SetText("Cat Next");
        fonttitle2:SetPoint('TOP', frame, 'TOP', 0, -15);

    frame:Hide();
end