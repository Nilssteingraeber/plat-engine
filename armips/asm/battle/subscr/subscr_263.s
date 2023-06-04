.nds
.thumb

.include "armips/include/battle_scrcmd.s"

.include "armips/include/abilities.s"
.include "armips/include/battle_consts.s"
.include "armips/include/item_hold_effects.s"
.include "armips/include/moves.s"

.create "build/battle/scr/subscr/sub_seq_263.bin", 0

subscr_263:
    SetVar                              OP_SET, VAR_ATTACKER_WORK, 0
    If                                  FLAG_NEQ, VAR_TEMP_WORK, 1, 21
    Message                             1121, TAG_NICK_ABILITY_NICK, BATTLER_ATTACKER_WORK, BATTLER_ATTACKER_WORK, BATTLER_WORKING, NaN, NaN, NaN
    Wait                                
    WaitTime                            30
    SetVar                              OP_SET_FLAG, VAR_SERVER_STATUS_FLAG, 64
    JumpToSubscript                     2
    IfMonData                           EQUAL, BATTLER_WORKING, BATTLE_MON_HP, 0, 13
    SetVar                              OP_ADD, VAR_ATTACKER_WORK, 1
    SetVar                              OP_RSH, VAR_TEMP_WORK, 1
    If                                  NOT_EQUAL, VAR_TEMP_WORK, 0, 4294967257
    End                                 

.close