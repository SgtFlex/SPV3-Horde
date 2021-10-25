local commands = {
	spartan_shielding_health = 100,
	spartan_shielding_health_regen_start = 1000000,
	spartan_shielding_health_regen_time = 5,
	spartan_shielding_shield = 100,
	spartan_shielding_shield_regen_start = 5,
	spartan_shielding_shield_regen_time = 2,
	vj_spv3_DamageModifier = 0.5,
	vj_spv3_HealthModifier = 2,
	vj_spv3_ShieldModifier = 2,
	vj_spv3_PrecisionThreshold = 15.1,
	vj_spv3_floodOption = "infect_onlyHalo",
	vj_spv3_bonusInfForms = 1,
	vj_spv3_InfFormsExplode = 1,
	vj_spv3_covUNSCWeps = 0,
	vj_spv3_floodWeps = 30,
	vj_spv3_floodEliteShield = 30,
	vj_spv3_dropGrenades = 0,
	horde_base_runspeed = 200,
	horde_base_walkspeed = 180,
	horde_enable_ammobox = 0,
	horde_enable_starter = 0,
	horde_enable_perk = 0,
	horde_start_money = 2000,
}

if SERVER then
	CreateConVar("horde_spv3_balancing", 1, FCVAR_ARCHIVE, "Determines whether the SPV3 horde mode follows default balancing rules. Will change console commands to align balancing", 0, 1)
	if (engine.ActiveGamemode()=="horde" and GetConVar("horde_external_lua_config"):GetString()=="spv3") then
		if (GetConVar("horde_spv3_balancing"):GetInt()==1) then
			for k,v in pairs(commands) do
				RunConsoleCommand(k, v)
			end
		end
	end
end