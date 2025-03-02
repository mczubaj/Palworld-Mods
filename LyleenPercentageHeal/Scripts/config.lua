local config = {
  -- How much % of player's max hp will be healed for each pal rank (AKA stars)
  HEAL_PERCENTAGE_PER_RANK = { 20, 40, 55, 70, 85 },

  -- Flat value. How much hp will be healed if % heal would end up healing less than this value
  -- 0 = default
  HEAL_FLAT_VALUE_PER_RANK = { 0, 0, 0, 0, 0 }
}

return config
