.nds
.thumb

.include "armips/include/battle_scrcmd.s"

.include "armips/include/abilities.s"
.include "armips/include/battle_consts.s"
.include "armips/include/item_hold_effects.s"
.include "armips/include/moves.s"

.create "build/battle/scr/effscr/be_seq_50.bin", 0

effscr_050:
    SetVar                              OP_SET, VAR_ADD_STATUS_DIRECT, 1073741863
    End                                 

.close