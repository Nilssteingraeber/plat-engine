.nds
.thumb

.include "armips/include/battle_scrcmd.s"

.include "armips/include/abilities.s"
.include "armips/include/battle_consts.s"
.include "armips/include/item_hold_effects.s"
.include "armips/include/moves.s"

.create "build/battle/scr/effscr/be_seq_126.bin", 0

effscr_126:
    SetVar                              OP_SET_FLAG, VAR_SERVER_STATUS_FLAG, 8
    SetVar                              OP_SET, VAR_DAMAGE_MULTI, 10
    IfMonData                           FLAG_NEQ, BATTLER_DEFENDER, BATTLE_MON_MOVE_EFFECTS, 128, 4
    SetVar                              OP_SET, VAR_DAMAGE_MULTI, 20
    SetVar                              OP_SET, VAR_ADD_STATUS_DIRECT, 2684354658
    MagnitudeDamageCalc                 
    CriticalCalc                        
    DamageCalc                          
    End                                 

.close