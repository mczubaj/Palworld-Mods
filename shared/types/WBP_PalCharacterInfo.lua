---@meta

---@class UWBP_PalCharacterInfo_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AttackIVText UTextBlock
---@field BossIcon UImage
---@field CurrentHPText UTextBlock
---@field CurrentHungerText UTextBlock
---@field CurrentSanityText UTextBlock
---@field CurrentStaminaText UTextBlock
---@field DefenseIVText UTextBlock
---@field GenderIcon UImage
---@field HealthIVText UTextBlock
---@field HPContainer UHorizontalBox
---@field HungerContainer UHorizontalBox
---@field Image UImage
---@field Image_1 UImage
---@field Image_2 UImage
---@field Image_3 UImage
---@field Image_4 UImage
---@field Image_5 UImage
---@field Image_6 UImage
---@field Image_7 UImage
---@field Image_8 UImage
---@field Image_101 UImage
---@field Image_218 UImage
---@field Image_343 UImage
---@field KeyGuideContainer UVerticalBox
---@field LevelText UTextBlock
---@field MaxHPText UTextBlock
---@field MaxHungerText UTextBlock
---@field MaxSanityText UTextBlock
---@field MaxStaminaText UTextBlock
---@field PassiveSkillList UVerticalBox
---@field PrimaryKeyGuideContainer UHorizontalBox
---@field PrimaryKeyGuideIcon UWBP_PalKeyGuideIcon_C
---@field PrimaryKeyGuideText UTextBlock
---@field RankContainer UHorizontalBox
---@field RankIcon1 UImage
---@field RankIcon2 UImage
---@field RankIcon3 UImage
---@field RankIcon4 UImage
---@field RareIcon UImage
---@field SecondaryKeyGuideContainer UHorizontalBox
---@field SecondaryKeyGuideIcon UWBP_PalKeyGuideIcon_C
---@field SecondaryKeyGuideText UTextBlock
---@field TitleBar UOverlay
---@field TitleText UTextBlock
---@field WBP_MainMenu_Pal_Skill_Passive UWBP_MainMenu_Pal_Skill_Passive_C
---@field WBP_MainMenu_Pal_Skill_Passive_1 UWBP_MainMenu_Pal_Skill_Passive_C
---@field WBP_MainMenu_Pal_Skill_Passive_2 UWBP_MainMenu_Pal_Skill_Passive_C
---@field WBP_MainMenu_Pal_Skill_Passive_3 UWBP_MainMenu_Pal_Skill_Passive_C
---@field WorkSpeedIVText UTextBlock
---@field bIsVisible boolean
UWBP_PalCharacterInfo_C = {}

function UWBP_PalCharacterInfo_C:Hide() end
---@param Button UWBP_MainMenu_Pal_Skill_Passive_C
---@param ID FName
function UWBP_PalCharacterInfo_C:SetPassive(Button, ID) end
---@param Param FPalIndividualCharacterSaveParameter
function UWBP_PalCharacterInfo_C:SetData(Param) end
---@param Title FText
function UWBP_PalCharacterInfo_C:SetTitle(Title) end
function UWBP_PalCharacterInfo_C:Construct() end
function UWBP_PalCharacterInfo_C:Show() end
---@param EntryPoint int32
function UWBP_PalCharacterInfo_C:ExecuteUbergraph_WBP_PalCharacterInfo(EntryPoint) end


