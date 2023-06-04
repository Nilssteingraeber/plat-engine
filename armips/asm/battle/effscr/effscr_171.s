.nds
.thumb

.include "armips/include/battle_scrcmd.s"

.include "armips/include/abilities.s"
.include "armips/include/battle_consts.s"
.include "armips/include/item_hold_effects.s"
.include "armips/include/moves.s"

.create "build/battle/scr/effscr/be_seq_171.bin", 0

effscr_171:
    CheckSubstitute                     BATTLER_DEFENDER, 20
    IfMonData                           FLAG_EQ, BATTLER_DEFENDER, BATTLE_MON_CONDITION, 64, 6
    SetVar                              OP_SET, VAR_DAMAGE_MULTI, 10
    Branch                              8
    SetVar                              OP_SET, VAR_DAMAGE_MULTI, 20
    SetVar                              OP_SET, VAR_ADD_STATUS_INDIRECT, 536870948
    CriticalCalc                        
    DamageCalc                          
    End                                 

.close