.nds
.thumb

.include "armips/include/battle_scrcmd.s"

.include "armips/include/abilities.s"
.include "armips/include/battle_consts.s"
.include "armips/include/item_hold_effects.s"
.include "armips/include/moves.s"

.create "build/battle/scr/subscr/sub_seq_31.bin", 0

subscr_031:
    MoldBreakerAbilityCheck             MODE_HAVE, BATTLER_EFFECTSRC, ABILITY_LIMBER, 166
    CheckCloudNine                      10
    If                                  FLAG_NEQ, VAR_FIELD_CONDITIONS, 48, 5
    MoldBreakerAbilityCheck             MODE_HAVE, BATTLER_EFFECTSRC, ABILITY_LEAF_GUARD, 154
    If                                  NOT_EQUAL, VAR_EFFECT_TYPE, 2, 5
    MoldBreakerAbilityCheck             MODE_HAVE, BATTLER_EFFECTSRC, ABILITY_SHIELD_DUST, 97
    If                                  NOT_EQUAL, VAR_EFFECT_TYPE, 1, 2
    AttackMessage                       
    Wait                                
    If                                  EQUAL, VAR_EFFECT_TYPE, 3, 3
    CheckSubstitute                     BATTLER_EFFECTSRC, 82
    IfMonData                           FLAG_EQ, BATTLER_EFFECTSRC, BATTLE_MON_CONDITION, 64, 92
    IfMonData                           NOT_EQUAL, BATTLER_EFFECTSRC, BATTLE_MON_CONDITION, 0, 70
    If                                  EQUAL, VAR_EFFECT_TYPE, 3, 18
    If                                  FLAG_EQ, VAR_MOVE_STATUS_FLAG, 65537, 60
    If                                  FLAG_EQ, VAR_EFFECTSRC_SIDE_CONDITIONS, 8, 132
    If                                  NOT_EQUAL, VAR_EFFECT_TYPE, 1, 3
    PlayAnimation                       BATTLER_ATTACKER
    Wait                                
    SetStatusEffect                     BATTLER_EFFECTSRC, 5
    Wait                                
    SetMonData                          OP_SET_FLAG, BATTLER_EFFECTSRC, BATTLE_MON_CONDITION, 64
    If                                  EQUAL, VAR_EFFECT_TYPE, 3, 6
    Message                             120, TAG_NICK, BATTLER_EFFECTSRC, NaN, NaN, NaN, NaN, NaN
    Branch                              6
    Message                             123, TAG_NICK_ABILITY_NICK, BATTLER_WORKING, BATTLER_CLIENT_WORK, BATTLER_EFFECTSRC, NaN, NaN, NaN
    Wait                                
    SetStatusIcon                       BATTLER_EFFECTSRC, STATUS_PARALYZED
    WaitTime                            30
    If                                  FLAG_EQ, VAR_SERVER_STATUS_FLAG, 128, 5
    SetVar                              OP_SET_FLAG, VAR_SERVER_STATUS_FLAG, 128
    End                                 
    SetVar                              OP_CLEAR_FLAG, VAR_SERVER_STATUS_FLAG, 128
    End                                 
    If                                  EQUAL, VAR_EFFECT_TYPE, 2, 90
    If                                  EQUAL, VAR_EFFECT_TYPE, 3, 85
    WaitTime                            30
    JumpToSubscript                     75
    Branch                              79
    If                                  EQUAL, VAR_EFFECT_TYPE, 2, 74
    If                                  EQUAL, VAR_EFFECT_TYPE, 3, 69
    WaitTime                            30
    Message                             133, TAG_NICK, BATTLER_EFFECTSRC, NaN, NaN, NaN, NaN, NaN
    Branch                              54
    If                                  EQUAL, VAR_EFFECT_TYPE, 2, 56
    WaitTime                            30
    Message                             27, TAG_NICK, BATTLER_EFFECTSRC, NaN, NaN, NaN, NaN, NaN
    Branch                              41
    If                                  EQUAL, VAR_EFFECT_TYPE, 2, 43
    If                                  EQUAL, VAR_EFFECT_TYPE, 3, 38
    AttackMessage                       
    Wait                                
    WaitTime                            30
    Message                             644, TAG_NICK_ABILITY, BATTLER_EFFECTSRC, BATTLER_EFFECTSRC, NaN, NaN, NaN, NaN
    Branch                              20
    Message                             727, TAG_NICK_ABILITY_NICK_ABILITY, BATTLER_EFFECTSRC, BATTLER_EFFECTSRC, BATTLER_WORKING, BATTLER_CLIENT_WORK, NaN, NaN
    Branch                              11
    If                                  EQUAL, VAR_EFFECT_TYPE, 2, 13
    WaitTime                            30
    Message                             200, TAG_NICK, BATTLER_EFFECTSRC, NaN, NaN, NaN, NaN, NaN
    Wait                                
    WaitTime                            30
    SetVar                              OP_SET_FLAG, VAR_MOVE_STATUS_FLAG, 2147483648
    End                                 

.close