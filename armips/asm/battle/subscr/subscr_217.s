.nds
.thumb

.include "armips/include/battle_scrcmd.s"

.include "armips/include/abilities.s"
.include "armips/include/battle_consts.s"
.include "armips/include/item_hold_effects.s"
.include "armips/include/moves.s"

.create "build/battle/scr/subscr/sub_seq_217.bin", 0

subscr_217:
    PlayAnimation                       BATTLER_ATTACKER
    Wait                                
    IfMonData                           FLAG_NEQ, BATTLER_ATTACKER, BATTLE_MON_MOVE_EFFECTS, 537133248, 3
    ToggleVanish                        1, 1
    MessagePrepared                     
    Wait                                
    WaitTime                            30
    SetStatusEffect                     BATTLER_ATTACKER, 10
    Wait                                
    Message                             1251, TAG_NICK_ITEM, BATTLER_ATTACKER, BATTLER_ATTACKER, NaN, NaN, NaN, NaN
    Wait                                
    WaitTime                            30
    RemoveItem                          BATTLER_ATTACKER
    SetVar                              OP_CLEAR_FLAG, VAR_SERVER_STATUS_FLAG, 16384
    End                                 

.close