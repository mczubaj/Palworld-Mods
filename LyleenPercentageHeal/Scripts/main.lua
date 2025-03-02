-- move these to config:
local HEAL_PERCENTAGE_BY_RANK = { 20, 40, 55, 70, 85 }
local HEAL_FLAT_VALUE_BY_RANK = { 0, 0, 0, 0, 0 }

local LYLEEN_PARTNER_SKILL_NAME = FName("Heal_LilyQueen")

local isHooked = false;

RegisterHook("/Script/Engine.PlayerController:ClientRestart", function(Context)
  if isHooked then return end
  print(
    "======================**********************************========================= Not yet hooked, continuing ======================**********************************=========================")

  local palUtil = StaticFindObject("/Script/Pal.Default__PalUtility")
  local playerStats = palUtil:GetPlayerCharacter(Context:get()):GetCharacterParameterComponent()
  local otomoHolder = palUtil:GetOtomoHolderComponent(Context:get())

  RegisterHook("/Script/Pal.PalPartnerSkillParameterComponent:GetActiveSkillMainValueByRank", function(Context)
    local skillParams = Context:get()

    if skillParams:GetSkillName() ~= LYLEEN_PARTNER_SKILL_NAME then return end

    local spawnedPalRank = otomoHolder:TryGetSpawnedOtomo():GetCharacterParameterComponent():GetIndividualParameter()
        :GetRank()
    -- make sure maxhp doesn't get stale on subsequent runs of GetActiveSkillMainValueByRank
    local playerMaxHP = playerStats:GetMaxHP().Value / 1000
    print("playerMaxHP: ", playerMaxHP)

    local percentageHealAmount = (playerStats:GetMaxHP().Value / 1000) * (HEAL_PERCENTAGE_BY_RANK[spawnedPalRank] / 100)
    -- add handling custom flat values
    local bestHealAmount = math.max(percentageHealAmount, skillParams.ActiveSkill_MainValueByRank[spawnedPalRank])

    isHooked = true

    return bestHealAmount
  end)
end)

-- add the other hook besides ClientRestart
-- add gitignore to repo to include only my mods
