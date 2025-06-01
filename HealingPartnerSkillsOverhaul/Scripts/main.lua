local config = require "config"

local isHooked = false;

local function handlePercentageHeals(Context)
  if isHooked then return end
  isHooked = true

  RegisterHook("/Script/Pal.PalPartnerSkillParameterComponent:GetActiveSkillMainValueByRank", function(Context)
    ---@type UPalPartnerSkillParameterComponent
    ---@diagnostic disable-next-line: undefined-field
    local invokedSkillParams = Context:get()

    local skillConfig = nil

    for _, v in pairs(config.skills) do
      if v.skillName == invokedSkillParams:GetSkillName():ToString() then
        skillConfig = v
      end
    end

    if skillConfig == nil then return end

    if not skillConfig.isCooldownHooked and skillConfig.cooldown ~= 0 then
      invokedSkillParams.coolDownTimeMax.Value = skillConfig.cooldown * 1000
      invokedSkillParams.CoolDownTime.Value = skillConfig.cooldown * 1000
      skillConfig.isCooldownHooked = true
    end

    ---@type UPalUtility
    ---@diagnostic disable-next-line: assign-type-mismatch
    local palUtility = StaticFindObject("/Script/Pal.Default__PalUtility")
    local playerStats = palUtility:GetPlayerCharacter(invokedSkillParams):GetCharacterParameterComponent()
    local otomoHolder = palUtility:GetOtomoHolderComponent(invokedSkillParams)

    local spawnedPalRank = otomoHolder:TryGetSpawnedOtomo():GetCharacterParameterComponent():GetIndividualParameter()
        :GetRank()
    local percentageHealAmount = (playerStats:GetMaxHP().Value / 1000) *
        (skillConfig.healPercentagePerRank[spawnedPalRank] / 100)
    local customFlatHealAmount = skillConfig.healFlatValuePerRank[spawnedPalRank]
    local highestHealAmount = math.max(percentageHealAmount,
      (customFlatHealAmount ~= 0 and customFlatHealAmount) or
      invokedSkillParams.ActiveSkill_MainValueByRank[spawnedPalRank])

    if config.experimentalCtdFix then
      invokedSkillParams.ActiveSkill_MainValueByRank[spawnedPalRank] = highestHealAmount
      return
    end

    ---@diagnostic disable-next-line: redundant-return-value
    return highestHealAmount
  end)
end

RegisterHook("/Script/Engine.PlayerController:ClientRestart", handlePercentageHeals)

RegisterHook("/Script/Engine.PlayerController:ServerAcknowledgePossession", handlePercentageHeals)
