local LYLEEN_PARTNER_SKILL_NAME = FName("Heal_LilyQueen")
local HEAL_PERCENTAGE_BY_RANK = { 10, 20, 40, 60 }

local isHooked = false;

RegisterHook("/Script/Engine.PlayerController:ClientRestart", function()
  if isHooked then return end
  print("Not yet hooked, continuing")

  local playerHP = FindFirstOf("PalPlayerCharacter")

  RegisterHook("/Script/Pal.PalPartnerSkillParameterComponent:GetActiveSkillMainValueByRank", function(self)
    -- Get owner player? or is it Pal? maybe get player from Pal?
    -- OnInitializedCharacter(APalCharacter* OwnerCharacter);
    -- bool IsRestrictedByItems(AActor* Trainer) const;
    -- void CallOnStartSearchEffect_ToAll(const FGuid& RequestPlayerUId, const FPalCoopSkillSearchEffectParameter& EffectParam);

    print("Fired")

    local skillParams = self:get()

    if skillParams.GetSkillName() ~= LYLEEN_PARTNER_SKILL_NAME then return end
    print("Skill name correct, continuing")

    for index = 1, #skillParams.ActiveSkill_MainValueByRank - 1 do
      local value = skillParams.ActiveSkill_MainValueByRank[index]
      print("Value", index, ":", value)
    end

    -- get skill's rank / decide how much % it will heal
    -- get player's health
    -- calculate how much hp the percentage based heal will heal
    -- choose higher number between flat and percentage
    -- return the chosen value in GetActiveSkillMainValueByRank

    isHooked = true

    return 200
  end)
end)
