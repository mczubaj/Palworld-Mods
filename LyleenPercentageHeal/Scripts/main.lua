local config = require "config"

local LYLEEN_PARTNER_SKILL_NAME = FName("Heal_LilyQueen")

local isHooked = false;

local function handlePercentageHeals(Context)
  if isHooked then return end
  isHooked = true

  local palUtility = StaticFindObject("/Script/Pal.Default__PalUtility")
  local playerStats = palUtility:GetPlayerCharacter(Context:get()):GetCharacterParameterComponent()
  local otomoHolder = palUtility:GetOtomoHolderComponent(Context:get())

  RegisterHook("/Script/Pal.PalPartnerSkillParameterComponent:GetActiveSkillMainValueByRank", function(Context)
    local skillParams = Context:get()
    if skillParams:GetSkillName() ~= LYLEEN_PARTNER_SKILL_NAME then return end

    local spawnedPalRank = otomoHolder:TryGetSpawnedOtomo():GetCharacterParameterComponent():GetIndividualParameter()
        :GetRank()
    local percentageHealAmount = (playerStats:GetMaxHP().Value / 1000) *
        (config.HEAL_PERCENTAGE_PER_RANK[spawnedPalRank] / 100)
    local customFlatHealAmount = config.HEAL_FLAT_VALUE_PER_RANK[spawnedPalRank]
    local highestHealAmount = math.max(percentageHealAmount,
      (customFlatHealAmount ~= 0 and customFlatHealAmount) or skillParams.ActiveSkill_MainValueByRank[spawnedPalRank])

    return highestHealAmount
  end)
end

RegisterHook("/Script/Engine.PlayerController:ClientRestart", handlePercentageHeals)

RegisterHook("/Script/Engine.PlayerController:ServerAcknowledgePossession", handlePercentageHeals)
