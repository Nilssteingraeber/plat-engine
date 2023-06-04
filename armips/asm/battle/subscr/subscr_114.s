.nds
.thumb

.include "armips/include/battle_scrcmd.s"

.include "armips/include/abilities.s"
.include "armips/include/battle_consts.s"
.include "armips/include/item_hold_effects.s"
.include "armips/include/moves.s"

.create "build/battle/scr/subscr/sub_seq_114.bin", 0

subscr_114:
    TrySwitchInMon                      BATTLER_ATTACKER, 1, 26
    JumpToSubscript                     76
    TryNaturalCure                      BATTLER_ATTACKER, 5
    SetMonData                          OP_SET, BATTLER_ATTACKER, BATTLE_MON_CONDITION, 0
    PokemonDelete                       BATTLER_ATTACKER
    Wait                                
    HPGaugeSlideOut                     BATTLER_ATTACKER
    Wait                                
    SetVarFromVar                       OP_SET, VAR_SWITCHED_BATTLER, VAR_ATTACKER
    SetVar                              OP_SET_FLAG, VAR_SERVER_STATUS_FLAG, 256
    JumpTo                              10
    SetVar                              OP_SET_FLAG, VAR_MOVE_STATUS_FLAG, 64
    End                                 

.close