.nds
.thumb

.include "armips/include/battle_scrcmd.s"

.include "armips/include/abilities.s"
.include "armips/include/battle_consts.s"
.include "armips/include/item_hold_effects.s"
.include "armips/include/moves.s"

.create "build/battle/scr/subscr/sub_seq_204.bin", 0

subscr_204:
    SetStatusEffect                     BATTLER_WORKING, 10
    Wait                                
    Message                             902, TAG_NICK_ITEM_MOVE, BATTLER_WORKING, BATTLER_WORKING, BATTLER_WORKING, NaN, NaN, NaN
    Wait                                
    WaitTime                            30
    JumpToSubscript                     290
    End                                 

.close