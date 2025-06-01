local config = {
  skills = {
    -- config for Lyleen
    lyleen = {
      -- How much % of player's max hp will be healed for each pal rank (AKA stars)
      healPercentagePerRank = { 50, 55, 65, 80, 100 },

      -- Flat value. How much hp will be healed if % heal would end up healing less than this value
      -- 0 means original game value
      healFlatValuePerRank = { 0, 0, 0, 0, 0 },

      -- Cooldown in seconds. 0 means original game value
      cooldown = 0,

      -- Don't touch these unless you know what you're doing
      skillName = "Heal_LilyQueen",
      isCooldownHooked = false
    },

    -- config for Petallia
    petallia = {
      -- How much % of player's max hp will be healed for each pal rank (AKA stars)
      healPercentagePerRank = { 20, 22, 26, 32, 40 },

      -- Flat value. How much hp will be healed if % heal would end up healing less than this value
      -- 0 means original game value
      healFlatValuePerRank = { 0, 0, 0, 0, 0 },

      -- Cooldown in seconds. 0 means original game value
      cooldown = 0,

      -- Don't touch these unless you know what you're doing
      skillName = "Heal_FlowerDoll",
      isCooldownHooked = false
    },

    -- config for Teafant
    teafant = {
      -- How much % of player's max hp will be healed for each pal rank (AKA stars)
      healPercentagePerRank = { 10, 11, 13, 16, 20 },

      -- Flat value. How much hp will be healed if % heal would end up healing less than this value
      -- 0 means original game value
      healFlatValuePerRank = { 0, 0, 0, 0, 0 },

      -- Cooldown in seconds. 0 means original game value
      cooldown = 0,

      -- Don't touch these unless you know what you're doing
      skillName = "Heal",
      isCooldownHooked = false
    },
  },

  -- If you're getting crashes when using the heal, try changing this to true.
  -- Note that it's mainly for testing and might introduce other bugs!
  experimentalCtdFix = false,
}

return config
