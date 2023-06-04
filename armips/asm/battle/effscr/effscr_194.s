.nds
.thumb

.include "armips/include/battle_scrcmd.s"

.include "armips/include/abilities.s"
.include "armips/include/battle_consts.s"
.include "armips/include/item_hold_effects.s"
.include "armips/include/moves.s"

.create "build/battle/scr/effscr/be_seq_194.bin", 0

effscr_194:
    IfMonData                           FLAG_EQ, BATTLER_ATTACKER, BATTLE_MON_MOVE_EFFECTS, 16384, 14
    SetMonData                          OP_SET_FLAG, BATTLER_ATTACKER, BATTLE_MON_MOVE_EFFECTS, 16384
    PrepareMessage                      565, TAG_NICK, BATTLER_ATTACKER, NaN, NaN, NaN, NaN, NaN
    SetVar                              OP_SET, VAR_ADD_STATUS_INDIRECT, 536871002
    End                                 
    SetVar                              OP_SET_FLAG, VAR_MOVE_STATUS_FLAG, 64
    End                                 

.close