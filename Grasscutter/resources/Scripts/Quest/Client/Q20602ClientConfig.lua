local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = {}
L0_1.MainID = 20602
L0_1.ActorAlias = "20602"
L1_1 = {}
L1_1.q2060201 = 2060201
L1_1.q2060202 = 2060202
L1_1.q2060203 = 2060203
L1_1.q2060204 = 2060204
L1_1.q2060205 = 2060205
L1_1.q2060206 = 2060206
L1_1.q2060207 = 2060207
L1_1.q2060208 = 2060208
L1_1.q2060209 = 2060209
L1_1.q2060210 = 2060210
L1_1.q2060211 = 2060211
L1_1.q2060212 = 2060212
L1_1.q2060213 = 2060213
L0_1.SubIDs = L1_1
L1_1 = {}
L2_1 = {}
L2_1.id = 1409
L2_1.alias = "Npc1409"
L2_1.script = "Actor/Npc/NpcFSMBehaviour"
L3_1 = sceneData
L4_1 = L3_1
L3_1 = L3_1.GetDummyPoint
L5_1 = 3
L6_1 = "Q20601CyrusPos"
L3_1 = L3_1(L4_1, L5_1, L6_1)
L2_1.point = L3_1
L1_1.Npc1409Data = L2_1
L0_1.Npcs = L1_1
return L0_1
