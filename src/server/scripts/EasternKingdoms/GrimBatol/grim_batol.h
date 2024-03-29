/*
 * Copyright (C) 2005-2012 MaNGOS <http://www.getmangos.com/>
 * Copyright (C) 2008-2012 Trinity <http://www.trinitycore.org/>
 * Copyright (C) 2010-2012 Project SkyFire <http://www.projectskyfire.org/>
 * Copyright (C) 2011-2012 Darkpeninsula Project <http://www.darkpeninsula.eu/>
 * Copyright (C) 2011-2012 ArkCORE <http://www.arkania.net/>
 * 
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
 */

#ifndef DEF_GRIM_BATOL_H
#define DEF_GRIM_BATOL_H

enum Data
{
    DATA_GENERAL_UMBRISS_EVENT,
    DATA_FORGEMASTER_THRONGUS_EVENT,
    DATA_DRAHGA_SHADOWBURNER_EVENT,
    DATA_ERUDAX_EVENT,
    DATA_TEAM_IN_INSTANCE,
};

enum Data64
{
    DATA_GENERAL_UMBRISS,
    DATA_FORGEMASTER_THRONGUS,
    DATA_DRAHGA_SHADOWBURNER,
    DATA_ERUDAX,
};

enum CreatureIds
{
    //Dungeon Bosses

    BOSS_GENERAL_UMBRISS = 39625,
    BOSS_FORGEMASTER_THRONGUS = 40177,
    BOSS_DRAHGA_SHADOWBURNER = 40319,
    BOSS_ERUDAX = 40484,

    //Trash mobs

    NPC_ASCENDED_FLAMESEEKER = 39415,
    NPC_ASCENDED_ROCKBREAKER = 40272,
    NPC_ASCENDED_WATERLASHER = 40273,
    NPC_ASCENDED_WINDWALKER = 39414,
    NPC_AZURBORNE_GUARDIAN = 39854,
    NPC_AZURBORNE_SEER = 39855,
    NPC_AZURBORNE_WARLORD = 39909,
    NPC_BATTERED_RED_DRAKE = 48523,
    NPC_CRIMSONBORNE_GUARDIAN = 39381,
    NPC_CRIMSONBORNE_SEER = 40290,
    NPC_CRIMSONBORNE_WARLORD = 39626,
    NPC_ENSLAVED_BURNING_EMBER = 39892,
    NPC_ENSLAVED_ROCK_ELEMENTAL = 39900,
    NPC_ENSLAVED_THUNDER_SPIRIT = 40269,
    NPC_ENSLAVED_GRONN_BRUTE = 40166,
    NPC_ENSLAVED_WATER_SPIRIT = 39961,
    NPC_TWILIGHT_FIRE_CATCHER = 39870,
    NPC_TWILIGHT_SHADOW_WEAVER = 39954,
    NPC_TWILIGHT_STORM_BREAKER = 39962,
    NPC_TWILIGHT_THUNDER_CALLER = 40270,
    NPC_TWILIGHT_WYRM_CALLER = 39873,

    //Various NPCs

    NPC_VELASTRASZA = 50390,
    NPC_VALIONA = 40320,
    NPC_BALEFLAME = 50387,
    NPC_FARSEER_TOORANU = 50385,
	
	// Forgemaster Throngus
	NPC_FIRE_PATCH = 48711,
	NPC_TWILIGHT_ARCHER = 40197,
	
	// Drahga Shadowburner
	NPC_INVOCATION_OF_THE_FLAME_STALKER = 40355,
	NPC_INVOKED_FLAMING_SPIRIT = 40357,
	NPC_SEEPING_TWILIGHT_TRIGGER = 40365,
	
	// Erudax
	NPC_FACELESS = 40600,
	NPC_FACELESS_HC = 48844,
	NPC_FACELESS_PORTAL_STALKER = 44314,
	NPC_ALEXSTRASZAS_EGG = 40486,
	NPC_TWILIGHT_HATCHLING = 39388,
	NPC_SHADOW_GALE_STALKER = 40567,
};

enum GameObjectIds
{
    GO_DWARVEN_BONE_PILE = 207411,
};

#endif