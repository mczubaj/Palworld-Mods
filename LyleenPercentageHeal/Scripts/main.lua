local config = require "config"

local LYLEEN_PARTNER_SKILL_NAME = FName("Heal_LilyQueen")

local isHooked = false;

local function handlePercentageHeals(Context)
  if isHooked then return end

  local palUtil = StaticFindObject("/Script/Pal.Default__PalUtility")
  local playerStats = palUtil:GetPlayerCharacter(Context:get()):GetCharacterParameterComponent()
  local otomoHolder = palUtil:GetOtomoHolderComponent(Context:get())

  RegisterHook("/Script/Pal.PalPartnerSkillParameterComponent:GetActiveSkillMainValueByRank", function(Context)
    local skillParams = Context:get()

    if skillParams:GetSkillName() ~= LYLEEN_PARTNER_SKILL_NAME then return end

    local spawnedPalRank = otomoHolder:TryGetSpawnedOtomo():GetCharacterParameterComponent():GetIndividualParameter()
        :GetRank()
    local percentageHealAmount = (playerStats:GetMaxHP().Value / 1000) *
        (config.HEAL_PERCENTAGE_PER_RANK[spawnedPalRank] / 100)
    -- add handling custom flat values
    local bestHealAmount = math.max(percentageHealAmount, skillParams.ActiveSkill_MainValueByRank[spawnedPalRank])

    isHooked = true

    return bestHealAmount
  end)
end

RegisterHook("/Script/Engine.PlayerController:ClientRestart", handlePercentageHeals)

RegisterHook("/Script/Engine.PlayerController:ServerAcknowledgePossession", handlePercentageHeals)
