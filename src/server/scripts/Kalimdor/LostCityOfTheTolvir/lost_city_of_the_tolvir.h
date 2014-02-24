#ifndef DEF_LOST_CITY_OF_THE_TOLVIR_H
#define DEF_LOST_CITY_OF_THE_TOLVIR_H

enum BossDatas
{
    DATA_GENERAL_HUSAM          = 1,
    DATA_LOCKMAW                = 2,
    DATA_HIGH_PROPHET_BARIM     = 3,
    DATA_SIAMAT                 = 4,
};

enum Creatures
{
    // Dungeon Bosses
    BOSS_GENERAL_HUSAM              = 44577,
    BOSS_HIGH_PROPHET_BARIM         = 43612,
    BOSS_LOCKMAW                    = 43614,
    BOSS_AUGH                       = 49045,
    BOSS_SIAMAT                     = 44819,

    // General Husam Encounter
    NPC_TOLVIR_LANDMINE_DUMMY       = 44840,
    NPC_TOLVIR_LANDMINE_VEHICLE     = 44798,
    NPC_TOLVIR_LANDMINE_PASSENGER   = 44796,
    NPC_BAD_INTENTIONS_TARGET       = 44586,

    // Lockmaw Encounter
    NPC_AUGH_INTRO                  = 45377,
    NPC_ADD_STALKER                 = 45124,
    NPC_FRENZIED_CROCOLISK          = 43658,
    NPC_DUST_FLAIL_FACING_DUMMY     = 43655,
    NPC_DUST_FLAIL_TARGET           = 43650,

    NPC_AUGH_1                      = 45379,
    NPC_AUGH_2                      = 45378,

    // Generetic Npc's
    NPC_WIND_TUNNEL                 = 48092,
    NPC_SHOCKWAVE_TRIGGER           = 44711,
};

enum GameObjectIds
{
    GO_SIAMAT_PLATFORM  = 205365,
};

#endif
