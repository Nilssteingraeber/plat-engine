.nds
.thumb

.include "armips/include/battle_scrcmd.s"

.include "armips/include/abilities.s"
.include "armips/include/battle_consts.s"
.include "armips/include/item_hold_effects.s"
.include "armips/include/moves.s"

.create "build/battle/scr/effscr/be_seq_37.bin", 0

effscr_037:
    SetVar                              OP_SET, VAR_ADD_STATUS_DIRECT, 536870921
    End                                 

.close