local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1
L0_1 = {}
L0_1.group_id = 133102540
L1_1 = {}
L2_1 = {}
L2_1.config_id = 540001
L2_1.monster_id = 21010201
L3_1 = {}
L3_1.x = 1732.29
L3_1.y = 225.281
L3_1.z = 61.654
L2_1.pos = L3_1
L3_1 = {}
L3_1.x = 11.447
L3_1.y = 316.137
L3_1.z = 359.052
L2_1.rot = L3_1
L2_1.level = 16
L2_1.drop_tag = "\228\184\152\228\184\152\228\186\186"
L2_1.disableWander = true
L2_1.pose_id = 9003
L2_1.area_id = 5
L3_1 = {}
L3_1.config_id = 540004
L3_1.monster_id = 21010201
L4_1 = {}
L4_1.x = 1736.706
L4_1.y = 226.166
L4_1.z = 58.659
L3_1.pos = L4_1
L4_1 = {}
L4_1.x = 8.582
L4_1.y = 349.922
L4_1.z = 3.471
L3_1.rot = L4_1
L3_1.level = 16
L3_1.drop_tag = "\228\184\152\228\184\152\228\186\186"
L3_1.disableWander = true
L3_1.pose_id = 9003
L3_1.area_id = 5
L4_1 = {}
L4_1.config_id = 540005
L4_1.monster_id = 21010201
L5_1 = {}
L5_1.x = 1742.72
L5_1.y = 226.336
L5_1.z = 61.389
L4_1.pos = L5_1
L5_1 = {}
L5_1.x = 8.884
L5_1.y = 36.691
L5_1.z = 358.246
L4_1.rot = L5_1
L4_1.level = 16
L4_1.drop_tag = "\228\184\152\228\184\152\228\186\186"
L4_1.disableWander = true
L4_1.pose_id = 9003
L4_1.area_id = 5
L5_1 = {}
L5_1.config_id = 540006
L5_1.monster_id = 21010401
L6_1 = {}
L6_1.x = 1736.879
L6_1.y = 226.942
L6_1.z = 52.886
L5_1.pos = L6_1
L6_1 = {}
L6_1.x = 353.253
L6_1.y = 108.228
L6_1.z = 5.795
L5_1.rot = L6_1
L5_1.level = 16
L5_1.drop_tag = "\232\191\156\231\168\139\228\184\152\228\184\152\228\186\186"
L5_1.disableWander = true
L5_1.pose_id = 9003
L5_1.area_id = 5
L1_1[1] = L2_1
L1_1[2] = L3_1
L1_1[3] = L4_1
L1_1[4] = L5_1
monsters = L1_1
L1_1 = {}
npcs = L1_1
L1_1 = {}
L2_1 = {}
L2_1.config_id = 540002
L2_1.gadget_id = 70211002
L3_1 = {}
L3_1.x = 1738.785
L3_1.y = 226.334
L3_1.z = 58.748
L2_1.pos = L3_1
L3_1 = {}
L3_1.x = 8.0
L3_1.y = 358.187
L3_1.z = 4.665
L2_1.rot = L3_1
L2_1.level = 16
L2_1.drop_tag = "\230\136\152\230\150\151\228\189\142\231\186\167\231\146\131\230\156\136"
L3_1 = GadgetState
L3_1 = L3_1.ChestLocked
L2_1.state = L3_1
L2_1.isOneoff = true
L2_1.persistent = true
L3_1 = {}
L3_1.name = "chest"
L3_1.exp = 1
L2_1.explore = L3_1
L2_1.area_id = 5
L1_1[1] = L2_1
gadgets = L1_1
L1_1 = {}
regions = L1_1
L1_1 = {}
L2_1 = {}
L2_1.config_id = 1540003
L2_1.name = "ANY_MONSTER_DIE_540003"
L3_1 = EventType
L3_1 = L3_1.EVENT_ANY_MONSTER_DIE
L2_1.event = L3_1
L2_1.source = ""
L2_1.condition = "condition_EVENT_ANY_MONSTER_DIE_540003"
L2_1.action = "action_EVENT_ANY_MONSTER_DIE_540003"
L1_1[1] = L2_1
triggers = L1_1
L1_1 = {}
variables = L1_1
L1_1 = {}
L1_1.suite = 1
L1_1.end_suite = 0
L1_1.rand_suite = false
init_config = L1_1
L1_1 = {}
L2_1 = {}
L3_1 = {}
L4_1 = 540001
L5_1 = 540004
L6_1 = 540005
L7_1 = 540006
L3_1[1] = L4_1
L3_1[2] = L5_1
L3_1[3] = L6_1
L3_1[4] = L7_1
L2_1.monsters = L3_1
L3_1 = {}
L4_1 = 540002
L3_1[1] = L4_1
L2_1.gadgets = L3_1
L3_1 = {}
L2_1.regions = L3_1
L3_1 = {}
L4_1 = "ANY_MONSTER_DIE_540003"
L3_1[1] = L4_1
L2_1.triggers = L3_1
L2_1.rand_weight = 100
L1_1[1] = L2_1
suites = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = ScriptLib
  L2_2 = L2_2.GetGroupMonsterCount
  L3_2 = A0_2
  L2_2 = L2_2(L3_2)
  if L2_2 ~= 0 then
    L2_2 = false
    return L2_2
  end
  L2_2 = true
  return L2_2
end
condition_EVENT_ANY_MONSTER_DIE_540003 = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = ScriptLib
  L2_2 = L2_2.SetGadgetStateByConfigId
  L3_2 = A0_2
  L4_2 = 540002
  L5_2 = GadgetState
  L5_2 = L5_2.Default
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  if 0 ~= L2_2 then
    L2_2 = ScriptLib
    L2_2 = L2_2.PrintContextLog
    L3_2 = A0_2
    L4_2 = "@@ LUA_WARNING : set_gadget_state_by_configId"
    L2_2(L3_2, L4_2)
    L2_2 = -1
    return L2_2
  end
  L2_2 = 0
  return L2_2
end
action_EVENT_ANY_MONSTER_DIE_540003 = L1_1
