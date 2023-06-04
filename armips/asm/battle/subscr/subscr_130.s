.nds
.thumb

.include "armips/include/battle_scrcmd.s"

.include "armips/include/abilities.s"
.include "armips/include/battle_consts.s"
.include "armips/include/item_hold_effects.s"
.include "armips/include/moves.s"

.create "build/battle/scr/subscr/sub_seq_130.bin", 0

subscr_130:
    IfMonData                           EQUAL, BATTLER_DEFENDER, BATTLE_MON_HP, 0, 15
    SetMonData                          OP_CLEAR_FLAG, BATTLER_DEFENDER, BATTLE_MON_CONDITION, 64
    Message                             136, TAG_NICK, BATTLER_DEFENDER, NaN, NaN, NaN, NaN, NaN
    Wait                                
    SetStatusIcon                       BATTLER_DEFENDER, STATUS_NORMAL
    WaitTime                            30
    End                                 

.close