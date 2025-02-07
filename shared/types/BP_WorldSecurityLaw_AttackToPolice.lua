---@meta

---@class UBP_WorldSecurityLaw_AttackToPolice_C : UPalWorldSecurityLawTrigger_CharacterDamaged
UBP_WorldSecurityLaw_AttackToPolice_C = {}

---@param Actor AActor
---@param bValid boolean
---@param CharacterParameter UPalCharacterParameterComponent
function UBP_WorldSecurityLaw_AttackToPolice_C:IsValidCharacterActor(Actor, bValid, CharacterParameter) end
---@param OrganizationType EPalOrganizationType
---@param bCitizen boolean
function UBP_WorldSecurityLaw_AttackToPolice_C:IsPolice(OrganizationType, bCitizen) end
---@param DamageResult FPalDamageResult
---@param CriminalHandle UPalIndividualCharacterHandle
---@return boolean
function UBP_WorldSecurityLaw_AttackToPolice_C:Condition(DamageResult, CriminalHandle) end


