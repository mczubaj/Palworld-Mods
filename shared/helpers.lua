local M = {}

--- @param name string
--- @param value any
function M.PrintProps(name, value)
  assert(name ~= nil, "Error: 'name' argument is required in PrintType helper")
  assert(value ~= nil, "Error: 'value' argument is required in PrintType helper")

  if value == nil then
    print(name .. " is nil")
    return
  end

  if type(value.IsValid) == "function" and not value:IsValid() then
    print(name .. " is invalid")
    return
  end

  print(name .. " Props: ")
  print("lua type: " .. type(value))
  print("UE type: " .. value:type())

  if value:type() == "UObject" then
    print("FName: " .. value:GetFName():ToString())
    print("Class: " .. value:GetClass():GetFName():ToString())
  end
end

function M.PrintTable(table)
  print("Table length:", #table)
  for index = 1, #table do
    local value = table[index]
    print("Value", index, ":", value)
  end
end

function M.PrintTableMemberProps(name, table)
  assert(name ~= nil, "Error: 'name' argument is required in PrintPrintTableMemberPropsType helper")
  assert(table ~= nil, "Error: 'table' argument is required in PrintTableMemberProps helper")

  print("Table name:", name, "length:", #table)

  for index = 1, #table do
    local value = table[index]
    M.PrintProps(tostring(index), value)
  end
end

-- for k, v in pairs(recipe) do
--   print("  " .. k .. ":", tostring(v))
-- end

-- print("[Mobility] PassiveSkill FName: ", passiveSkill:GetFName():ToString())
-- print("[Mobility] PassiveSkill Class: ", passiveSkill:GetClass():GetFName():ToString())
-- passiveSkill:GetClass():GetSuperStruct():ForEachProperty(function(prop)
--   print("[Mobility] Property: ", prop:GetFName():ToString())
-- end)
-- passiveSkill:GetClass():GetSuperStruct():ForEachFunction(function(prop)
--   print("[Mobility] Function: ", prop:GetFName():ToString())
-- end)

return M
