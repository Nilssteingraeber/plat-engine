.nds
.thumb

.include "armips/include/battle_scrcmd.s"

.include "armips/include/abilities.s"
.include "armips/include/battle_consts.s"
.include "armips/include/item_hold_effects.s"
.include "armips/include/moves.s"

.create "build/battle/scr/effscr/be_seq_153.bin", 0

effscr_153:
    If                                  FLAG_EQ, VAR_BATTLE_TYPE, 1, 5
    SetVar                              OP_SET, VAR_ADD_STATUS_DIRECT, 536871013
    End                                 
    SetVar                              OP_SET_FLAG, VAR_MOVE_STATUS_FLAG, 64
    End                                 

.close