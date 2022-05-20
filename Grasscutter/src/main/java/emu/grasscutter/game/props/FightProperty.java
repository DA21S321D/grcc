package emu.grasscutter.game.props;

import java.util.HashMap;
import java.util.Map;
import java.util.stream.Stream;

import it.unimi.dsi.fastutil.ints.Int2ObjectMap;
import it.unimi.dsi.fastutil.ints.Int2ObjectOpenHashMap;

public enum FightProperty {
	FIGHT_PROP_NONE(0),
	FIGHT_PROP_BASE_HP(1),
	FIGHT_PROP_HP(2),
	FIGHT_PROP_HP_PERCENT(3),
	FIGHT_PROP_BASE_ATTACK(4),
	FIGHT_PROP_ATTACK(5),
	FIGHT_PROP_ATTACK_PERCENT(6),
	FIGHT_PROP_BASE_DEFENSE(7),
	FIGHT_PROP_DEFENSE(8),
	FIGHT_PROP_DEFENSE_PERCENT(9),
	FIGHT_PROP_BASE_SPEED(10),
	FIGHT_PROP_SPEED_PERCENT(11),
	FIGHT_PROP_HP_MP_PERCENT(12),
	FIGHT_PROP_ATTACK_MP_PERCENT(13),
	FIGHT_PROP_CRITICAL(20),
	FIGHT_PROP_ANTI_CRITICAL(21),
	FIGHT_PROP_CRITICAL_HURT(22),
	FIGHT_PROP_CHARGE_EFFICIENCY(23),
	FIGHT_PROP_ADD_HURT(24),
	FIGHT_PROP_SUB_HURT(25),
	FIGHT_PROP_HEAL_ADD(26),
	FIGHT_PROP_HEALED_ADD(27),
	FIGHT_PROP_ELEMENT_MASTERY(28),
	FIGHT_PROP_PHYSICAL_SUB_HURT(29),
	FIGHT_PROP_PHYSICAL_ADD_HURT(30),
	FIGHT_PROP_DEFENCE_IGNORE_RATIO(31),
	FIGHT_PROP_DEFENCE_IGNORE_DELTA(32),
	FIGHT_PROP_FIRE_ADD_HURT(40),
	FIGHT_PROP_ELEC_ADD_HURT(41),
	FIGHT_PROP_WATER_ADD_HURT(42),
	FIGHT_PROP_GRASS_ADD_HURT(43),
	FIGHT_PROP_WIND_ADD_HURT(44),
	FIGHT_PROP_ROCK_ADD_HURT(45),
	FIGHT_PROP_ICE_ADD_HURT(46),
	FIGHT_PROP_HIT_HEAD_ADD_HURT(47),
	FIGHT_PROP_FIRE_SUB_HURT(50),
	FIGHT_PROP_ELEC_SUB_HURT(51),
	FIGHT_PROP_WATER_SUB_HURT(52),
	FIGHT_PROP_GRASS_SUB_HURT(53),
	FIGHT_PROP_WIND_SUB_HURT(54),
	FIGHT_PROP_ROCK_SUB_HURT(55),
	FIGHT_PROP_ICE_SUB_HURT(56),
	FIGHT_PROP_EFFECT_HIT(60),
	FIGHT_PROP_EFFECT_RESIST(61),
	FIGHT_PROP_FREEZE_RESIST(62),
	FIGHT_PROP_TORPOR_RESIST(63),
	FIGHT_PROP_DIZZY_RESIST(64),
	FIGHT_PROP_FREEZE_SHORTEN(65),
	FIGHT_PROP_TORPOR_SHORTEN(66),
	FIGHT_PROP_DIZZY_SHORTEN(67),
	FIGHT_PROP_MAX_FIRE_ENERGY(70),
	FIGHT_PROP_MAX_ELEC_ENERGY(71),
	FIGHT_PROP_MAX_WATER_ENERGY(72),
	FIGHT_PROP_MAX_GRASS_ENERGY(73),
	FIGHT_PROP_MAX_WIND_ENERGY(74),
	FIGHT_PROP_MAX_ICE_ENERGY(75),
	FIGHT_PROP_MAX_ROCK_ENERGY(76),
	FIGHT_PROP_SKILL_CD_MINUS_RATIO(80),
	FIGHT_PROP_SHIELD_COST_MINUS_RATIO(81),
	FIGHT_PROP_CUR_FIRE_ENERGY(1000),
	FIGHT_PROP_CUR_ELEC_ENERGY(1001),
	FIGHT_PROP_CUR_WATER_ENERGY(1002),
	FIGHT_PROP_CUR_GRASS_ENERGY(1003),
	FIGHT_PROP_CUR_WIND_ENERGY(1004),
	FIGHT_PROP_CUR_ICE_ENERGY(1005),
	FIGHT_PROP_CUR_ROCK_ENERGY(1006),
	FIGHT_PROP_CUR_HP(1010),
	FIGHT_PROP_MAX_HP(2000),
	FIGHT_PROP_CUR_ATTACK(2001),
	FIGHT_PROP_CUR_DEFENSE(2002),
	FIGHT_PROP_CUR_SPEED(2003),
	FIGHT_PROP_NONEXTRA_ATTACK(3000),
	FIGHT_PROP_NONEXTRA_DEFENSE(3001),
	FIGHT_PROP_NONEXTRA_CRITICAL(3002),
	FIGHT_PROP_NONEXTRA_ANTI_CRITICAL(3003),
	FIGHT_PROP_NONEXTRA_CRITICAL_HURT(3004),
	FIGHT_PROP_NONEXTRA_CHARGE_EFFICIENCY(3005),
	FIGHT_PROP_NONEXTRA_ELEMENT_MASTERY(3006),
	FIGHT_PROP_NONEXTRA_PHYSICAL_SUB_HURT(3007),
	FIGHT_PROP_NONEXTRA_FIRE_ADD_HURT(3008),
	FIGHT_PROP_NONEXTRA_ELEC_ADD_HURT(3009),
	FIGHT_PROP_NONEXTRA_WATER_ADD_HURT(3010),
	FIGHT_PROP_NONEXTRA_GRASS_ADD_HURT(3011),
	FIGHT_PROP_NONEXTRA_WIND_ADD_HURT(3012),
	FIGHT_PROP_NONEXTRA_ROCK_ADD_HURT(3013),
	FIGHT_PROP_NONEXTRA_ICE_ADD_HURT(3014),
	FIGHT_PROP_NONEXTRA_FIRE_SUB_HURT(3015),
	FIGHT_PROP_NONEXTRA_ELEC_SUB_HURT(3016),
	FIGHT_PROP_NONEXTRA_WATER_SUB_HURT(3017),
	FIGHT_PROP_NONEXTRA_GRASS_SUB_HURT(3018),
	FIGHT_PROP_NONEXTRA_WIND_SUB_HURT(3019),
	FIGHT_PROP_NONEXTRA_ROCK_SUB_HURT(3020),
	FIGHT_PROP_NONEXTRA_ICE_SUB_HURT(3021),
	FIGHT_PROP_NONEXTRA_SKILL_CD_MINUS_RATIO(3022),
	FIGHT_PROP_NONEXTRA_SHIELD_COST_MINUS_RATIO(3023),
	FIGHT_PROP_NONEXTRA_PHYSICAL_ADD_HURT(3024);
	
	private final int id;
	private static final Int2ObjectMap<FightProperty> map = new Int2ObjectOpenHashMap<>();
	private static final Map<String, FightProperty> stringMap = new HashMap<>();
	
	public static final int[] fightProps = new int[] {1, 4, 7, 20, 21, 22, 23, 26, 27, 28, 29, 30, 40, 41, 42, 43, 44, 45, 46, 50, 51, 52, 53, 54, 55, 56, 2000, 2001, 2002, 2003, 1010};
	
	static {
		Stream.of(values()).forEach(e -> {
			map.put(e.getId(), e);
			stringMap.put(e.name(), e);
		});
	}
	
	private FightProperty(int id) {
		this.id = id;
	}

	public int getId() {
		return id;
	}
	
	public static FightProperty getPropById(int value) {
		return map.getOrDefault(value, FIGHT_PROP_NONE);
	}
	
	public static FightProperty getPropByName(String name) {
		return stringMap.getOrDefault(name, FIGHT_PROP_NONE);
	}
}
