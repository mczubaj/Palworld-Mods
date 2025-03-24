local config = require "config"

local isHooked = false;

local function handlePercentageHeals(Context)
  if isHooked then return end
  isHooked = true

  local palUtility = StaticFindObject("/Script/Pal.Default__PalUtility")
  local playerStats = palUtility:GetPlayerCharacter(Context:get()):GetCharacterParameterComponent()
  local otomoHolder = palUtility:GetOtomoHolderComponent(Context:get())

  RegisterHook("/Script/Pal.PalPartnerSkillParameterComponent:GetActiveSkillMainValueByRank", function(Context)
    local invokedSkillParams = Context:get()
    local skillConfig = nil

    for _, v in pairs(config) do
      if v.skillName == invokedSkillParams:GetSkillName():ToString() then
        skillConfig = v
      end
    end

    if skillConfig == nil then return end

    if not skillConfig.isCooldownHooked and skillConfig.cooldown ~= 0 then
      invokedSkillParams.coolDownTimeMax.value = skillConfig.cooldown * 1000
      invokedSkillParams.CoolDownTime.value = skillConfig.cooldown * 1000
      skillConfig.isCooldownHooked = true
    end

    local spawnedPalRank = otomoHolder:TryGetSpawnedOtomo():GetCharacterParameterComponent():GetIndividualParameter()
        :GetRank()
    local percentageHealAmount = (playerStats:GetMaxHP().Value / 1000) *
        (skillConfig.healPercentagePerRank[spawnedPalRank] / 100)
    local customFlatHealAmount = skillConfig.healFlatValuePerRank[spawnedPalRank]
    local highestHealAmount = math.max(percentageHealAmount,
      (customFlatHealAmount ~= 0 and customFlatHealAmount) or
      invokedSkillParams.ActiveSkill_MainValueByRank[spawnedPalRank])

    return highestHealAmount
  end)
end

RegisterHook("/Script/Engine.PlayerController:ClientRestart", handlePercentageHeals)

RegisterHook("/Script/Engine.PlayerController:ServerAcknowledgePossession", handlePercentageHeals)
