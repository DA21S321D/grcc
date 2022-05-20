local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = {}
L0_1.group_id = 133222024
L1_1 = {}
L2_1 = {}
L2_1.config_id = 24001
L2_1.monster_id = 25100201
L3_1 = {}
L3_1.x = -4530.871
L3_1.y = 200.744
L3_1.z = -4242.249
L2_1.pos = L3_1
L3_1 = {}
L3_1.x = 0.0
L3_1.y = 204.5
L3_1.z = 0.0
L2_1.rot = L3_1
L2_1.level = 30
L2_1.drop_tag = "\233\171\152\233\152\182\230\173\166\229\163\171"
L2_1.pose_id = 1
L2_1.climate_area_id = 10
L2_1.area_id = 14
L3_1 = {}
L3_1.config_id = 24005
L3_1.monster_id = 25100101
L4_1 = {}
L4_1.x = -4541.121
L4_1.y = 204.658
L4_1.z = -4270.784
L3_1.pos = L4_1
L4_1 = {}
L4_1.x = 0.0
L4_1.y = 66.05
L4_1.z = 0.0
L3_1.rot = L4_1
L3_1.level = 30
L3_1.drop_tag = "\233\171\152\233\152\182\230\173\166\229\163\171"
L3_1.pose_id = 1002
L3_1.climate_area_id = 10
L3_1.area_id = 14
L1_1[1] = L2_1
L1_1[2] = L3_1
monsters = L1_1
L1_1 = {}
npcs = L1_1
L1_1 = {}
L2_1 = {}
L2_1.config_id = 24002
L2_1.gadget_id = 70211002
L3_1 = {}
L3_1.x = -4521.207
L3_1.y = 200.737
L3_1.z = -4263.346
L2_1.pos = L3_1
L3_1 = {}
L3_1.x = 355.109
L3_1.y = 354.44
L3_1.z = 10.634
L2_1.rot = L3_1
L2_1.level = 26
L2_1.drop_tag = "\230\136\152\230\150\151\228\189\142\231\186\167\231\168\187\229\166\187"
L3_1 = GadgetState
L3_1 = L3_1.ChestLocked
L2_1.state = L3_1
L2_1.isOneoff = true
L2_1.persistent = true
L3_1 = {}
L3_1.name = "chest"
L3_1.exp = 1
L2_1.explore = L3_1
L2_1.area_id = 14
L1_1[1] = L2_1
gadgets = L1_1
L1_1 = {}
regions = L1_1
L1_1 = {}
L2_1 = {}
L2_1.config_id = 1024003
L2_1.name = "ANY_MONSTER_DIE_24003"
L3_1 = EventType
L3_1 = L3_1.EVENT_ANY_MONSTER_DIE
L2_1.event = L3_1
L2_1.source = ""
L2_1.condition = "condition_EVENT_ANY_MONSTER_DIE_24003"
L2_1.action = "action_EVENT_ANY_MONSTER_DIE_24003"
L1_1[1] = L2_1
triggers = L1_1
L1_1 = {}
variables = L1_1
L1_1 = {}
L2_1 = {}
L3_1 = {}
L3_1.config_id = 24004
L3_1.monster_id = 25100101
L4_1 = {}
L4_1.x = -4521.737
L4_1.y = 200.139
L4_1.z = -4275.875
L3_1.pos = L4_1
L4_1 = {}
L4_1.x = 0.0
L4_1.y = 91.261
L4_1.z = 0.0
L3_1.rot = L4_1
L3_1.level = 30
L3_1.drop_tag = "\233\171\152\233\152\182\230\173\166\229\163\171"
L3_1.pose_id = 1001
L3_1.climate_area_id = 10
L3_1.area_id = 14
L2_1[1] = L3_1
L1_1.monsters = L2_1
garbages = L1_1
L1_1 = {}
L1_1.suite = 2
L1_1.end_suite = 1
L1_1.rand_suite = false
init_config = L1_1
L1_1 = {}
L2_1 = {}
L3_1 = {}
L4_1 = 24001
L5_1 = 24005
L3_1[1] = L4_1
L3_1[2] = L5_1
L2_1.monsters = L3_1
L3_1 = {}
L4_1 = 24002
L3_1[1] = L4_1
L2_1.gadgets = L3_1
L3_1 = {}
L2_1.regions = L3_1
L3_1 = {}
L4_1 = "ANY_MONSTER_DIE_24003"
L3_1[1] = L4_1
L2_1.triggers = L3_1
L2_1.rand_weight = 100
L3_1 = {}
L4_1 = {}
L3_1.monsters = L4_1
L4_1 = {}
L3_1.gadgets = L4_1
L4_1 = {}
L3_1.regions = L4_1
L4_1 = {}
L3_1.triggers = L4_1
L3_1.rand_weight = 100
L1_1[1] = L2_1
L1_1[2] = L3_1
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
condition_EVENT_ANY_MONSTER_DIE_24003 = L1_1
function L1_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2
  L2_2 = ScriptLib
  L2_2 = L2_2.SetGadgetStateByConfigId
  L3_2 = A0_2
  L4_2 = 24002
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
  L2_2 = ScriptLib
  L2_2 = L2_2.MarkPlayerAction
  L3_2 = A0_2
  L4_2 = 4000
  L5_2 = 3
  L6_2 = 1
  L2_2 = L2_2(L3_2, L4_2, L5_2, L6_2)
  if 0 ~= L2_2 then
    L2_2 = ScriptLib
    L2_2 = L2_2.PrintContextLog
    L3_2 = A0_2
    L4_2 = "@@ LUA_WARNING : mark_playerAction"
    L2_2(L3_2, L4_2)
    L2_2 = -1
    return L2_2
  end
  L2_2 = 0
  return L2_2
end
action_EVENT_ANY_MONSTER_DIE_24003 = L1_1