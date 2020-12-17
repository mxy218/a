.class public Lcom/android/server/hips/intercept/InterceptionReason;
.super Ljava/lang/Object;
.source "InterceptionReason.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hips/intercept/InterceptionReason$Trigger;,
        Lcom/android/server/hips/intercept/InterceptionReason$UnfreezeReason;,
        Lcom/android/server/hips/intercept/InterceptionReason$InterceptReason;,
        Lcom/android/server/hips/intercept/InterceptionReason$InterceptionType;
    }
.end annotation


# static fields
.field public static final REASON_AIR_RULE_BLACK:I = 0x15

.field public static final REASON_AIR_RULE_WHITE:I = 0x9

.field public static final REASON_BROADCAST_WHITE:I = 0xe

.field public static final REASON_CALLEE_RUNNING:I = 0x11

.field public static final REASON_CALLEE_SYSTEM:I = 0x3

.field public static final REASON_CALLER_CALLEE_SAME:I = 0x10

.field public static final REASON_CALLER_FOREGROUND:I = 0x17

.field public static final REASON_CALLER_SYSTEM_BLACK:I = 0x14

.field public static final REASON_CALLER_SYSTEM_WHITE:I = 0x4

.field public static final REASON_CTA_FIRMWARE:I = 0x6

.field public static final REASON_CTS_RUNNING:I = 0x5

.field public static final REASON_DEFAULT:I = 0x19

.field public static final REASON_FG_ACTIVITY:I = 0xb

.field public static final REASON_IN_AUTORUN:I = 0xd

.field public static final REASON_IN_MP3_MODE:I = 0x13

.field public static final REASON_IN_SECURITYMARGIN:I = 0xc

.field public static final REASON_LOCAL_RULE_BLACK:I = 0x16

.field public static final REASON_LOCAL_RULE_WHITE:I = 0xa

.field public static final REASON_MONKEY_RUNNING:I = 0x7

.field public static final REASON_SHELL_COMMAND:I = 0x8

.field public static final REASON_START_FROM_JOB_OR_SYNC:I = 0x18

.field public static final REASON_START_FROM_NOTIFICATION:I = 0xf

.field public static final REASON_USERSET_BLACK:I = 0x2

.field public static final REASON_USERSET_WHITE:I = 0x1

.field public static final REASON_USER_CLOSE_INTERCEPTION:I = 0x12

.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 13
    const-string v0, "Interception"

    sput-object v0, Lcom/android/server/hips/intercept/InterceptionReason;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInterceptionReason(I)Ljava/lang/String;
    .registers 4
    .param p0, "type"  # I

    .line 184
    const-string v0, ""

    .line 185
    .local v0, "reason":Ljava/lang/String;
    const/16 v1, 0x19

    if-gt p0, v1, :cond_6a

    const/4 v1, 0x1

    if-ge p0, v1, :cond_b

    goto/16 :goto_6a

    .line 188
    :cond_b
    packed-switch p0, :pswitch_data_7e

    goto/16 :goto_7c

    .line 262
    :pswitch_10  #0x19
    const-string v0, "default"

    goto/16 :goto_7c

    .line 259
    :pswitch_14  #0x18
    const-string/jumbo v0, "start from job or sync"

    .line 260
    goto/16 :goto_7c

    .line 256
    :pswitch_19  #0x17
    const-string v0, "caller foreground"

    .line 257
    goto/16 :goto_7c

    .line 253
    :pswitch_1d  #0x16
    const-string/jumbo v0, "local rule black"

    .line 254
    goto :goto_7c

    .line 250
    :pswitch_21  #0x15
    const-string v0, "air rule black"

    .line 251
    goto :goto_7c

    .line 247
    :pswitch_24  #0x14
    const-string v0, "caller is system black"

    .line 248
    goto :goto_7c

    .line 244
    :pswitch_27  #0x13
    const-string/jumbo v0, "in mp3 mode"

    .line 245
    goto :goto_7c

    .line 241
    :pswitch_2b  #0x12
    const-string/jumbo v0, "user close interception"

    .line 242
    goto :goto_7c

    .line 238
    :pswitch_2f  #0x11
    const-string v0, "callee is running"

    .line 239
    goto :goto_7c

    .line 235
    :pswitch_32  #0x10
    const-string v0, "caller callee are the same"

    .line 236
    goto :goto_7c

    .line 232
    :pswitch_35  #0xf
    const-string/jumbo v0, "start from notification"

    .line 233
    goto :goto_7c

    .line 229
    :pswitch_39  #0xe
    const-string v0, "broadcast white"

    .line 230
    goto :goto_7c

    .line 226
    :pswitch_3c  #0xd
    const-string/jumbo v0, "in autorun"

    .line 227
    goto :goto_7c

    .line 223
    :pswitch_40  #0xc
    const-string/jumbo v0, "in security margin"

    .line 224
    goto :goto_7c

    .line 220
    :pswitch_44  #0xb
    const-string v0, "caller fg activity"

    .line 221
    goto :goto_7c

    .line 217
    :pswitch_47  #0xa
    const-string/jumbo v0, "local rule white"

    .line 218
    goto :goto_7c

    .line 214
    :pswitch_4b  #0x9
    const-string v0, "air rule white"

    .line 215
    goto :goto_7c

    .line 211
    :pswitch_4e  #0x8
    const-string/jumbo v0, "run shell command"

    .line 212
    goto :goto_7c

    .line 208
    :pswitch_52  #0x7
    const-string/jumbo v0, "monkey is running"

    .line 209
    goto :goto_7c

    .line 205
    :pswitch_56  #0x6
    const-string v0, "cta firmware"

    .line 206
    goto :goto_7c

    .line 202
    :pswitch_59  #0x5
    const-string v0, "cts is running"

    .line 203
    goto :goto_7c

    .line 199
    :pswitch_5c  #0x4
    const-string v0, "caller system white"

    .line 200
    goto :goto_7c

    .line 196
    :pswitch_5f  #0x3
    const-string v0, "callee is system"

    .line 197
    goto :goto_7c

    .line 193
    :pswitch_62  #0x2
    const-string/jumbo v0, "user set black"

    .line 194
    goto :goto_7c

    .line 190
    :pswitch_66  #0x1
    const-string/jumbo v0, "user set white"

    .line 191
    goto :goto_7c

    .line 186
    :cond_6a
    :goto_6a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    :goto_7c
    return-object v0

    nop

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_66  #00000001
        :pswitch_62  #00000002
        :pswitch_5f  #00000003
        :pswitch_5c  #00000004
        :pswitch_59  #00000005
        :pswitch_56  #00000006
        :pswitch_52  #00000007
        :pswitch_4e  #00000008
        :pswitch_4b  #00000009
        :pswitch_47  #0000000a
        :pswitch_44  #0000000b
        :pswitch_40  #0000000c
        :pswitch_3c  #0000000d
        :pswitch_39  #0000000e
        :pswitch_35  #0000000f
        :pswitch_32  #00000010
        :pswitch_2f  #00000011
        :pswitch_2b  #00000012
        :pswitch_27  #00000013
        :pswitch_24  #00000014
        :pswitch_21  #00000015
        :pswitch_1d  #00000016
        :pswitch_19  #00000017
        :pswitch_14  #00000018
        :pswitch_10  #00000019
    .end packed-switch
.end method

.method public static getRunType(I)Ljava/lang/String;
    .registers 4
    .param p0, "type"  # I

    .line 270
    const-string v0, ""

    .line 271
    .local v0, "runType":Ljava/lang/String;
    const/4 v1, 0x5

    const/4 v2, 0x1

    if-ge p0, v2, :cond_1b

    if-le p0, v1, :cond_1b

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3a

    .line 274
    :cond_1b
    if-eq p0, v2, :cond_37

    const/4 v2, 0x2

    if-eq p0, v2, :cond_33

    const/4 v2, 0x3

    if-eq p0, v2, :cond_30

    const/4 v2, 0x4

    if-eq p0, v2, :cond_2c

    if-eq p0, v1, :cond_29

    goto :goto_3a

    .line 288
    :cond_29
    const-string v0, "backup"

    goto :goto_3a

    .line 285
    :cond_2c
    const-string/jumbo v0, "provider"

    .line 286
    goto :goto_3a

    .line 282
    :cond_30
    const-string v0, "broadcast"

    .line 283
    goto :goto_3a

    .line 279
    :cond_33
    const-string/jumbo v0, "retrieve_service"

    .line 280
    goto :goto_3a

    .line 276
    :cond_37
    const-string v0, "activity"

    .line 277
    nop

    .line 292
    :goto_3a
    return-object v0
.end method

.method public static getServiceTrigger(Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "callerPkg"  # Ljava/lang/String;
    .param p1, "isJob"  # Z
    .param p2, "isNotify"  # Z
    .param p3, "isCallerSystem"  # Z
    .param p4, "isCalleeSystem"  # Z
    .param p5, "calleePkg"  # Ljava/lang/String;
    .param p6, "callingPackage"  # Ljava/lang/String;
    .param p7, "focusedApp"  # Ljava/lang/String;

    .line 109
    invoke-static {p0}, Lcom/android/server/hips/intercept/InterceptionReason;->isMzLauncher(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 110
    const-string/jumbo v0, "launcher"

    return-object v0

    .line 112
    :cond_a
    if-eqz p1, :cond_30

    .line 113
    if-eqz p6, :cond_2c

    .line 114
    const-string v0, "android"

    invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 115
    const-string/jumbo v0, "job_system"

    return-object v0

    .line 117
    :cond_1a
    if-eqz p4, :cond_20

    .line 118
    const-string/jumbo v0, "job_system_app"

    return-object v0

    .line 119
    :cond_20
    invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    if-eqz p4, :cond_2c

    .line 120
    const-string/jumbo v0, "job_3party"

    return-object v0

    .line 123
    :cond_2c
    const-string/jumbo v0, "job"

    return-object v0

    .line 125
    :cond_30
    if-eqz p2, :cond_36

    .line 126
    const-string/jumbo v0, "notification"

    return-object v0

    .line 128
    :cond_36
    if-eqz p0, :cond_4b

    .line 129
    invoke-virtual {p0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 130
    const-string/jumbo v0, "self"

    return-object v0

    .line 131
    :cond_42
    invoke-virtual {p0, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 132
    const-string v0, "focus_wakeup_other"

    return-object v0

    .line 136
    :cond_4b
    if-eqz p6, :cond_61

    .line 137
    invoke-virtual {p6, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 138
    const-string/jumbo v0, "self_pending_intent"

    return-object v0

    .line 139
    :cond_57
    invoke-virtual {p6, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 140
    const-string/jumbo v0, "pending_focus_wakeup_other"

    return-object v0

    .line 144
    :cond_61
    const-string/jumbo v0, "unknown"

    return-object v0
.end method

.method public static info(IZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V
    .registers 12
    .param p0, "index"  # I
    .param p1, "isIntercept"  # Z
    .param p2, "isFgAction"  # Z
    .param p3, "callerPkg"  # Ljava/lang/String;
    .param p4, "calleePkg"  # Ljava/lang/String;
    .param p5, "processName"  # Ljava/lang/String;
    .param p6, "intent"  # Landroid/content/Intent;
    .param p7, "runType"  # Ljava/lang/String;

    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, "reason":Ljava/lang/String;
    packed-switch p0, :pswitch_data_ee

    goto/16 :goto_94

    .line 171
    :pswitch_6  #0x7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "caller = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " fg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " system, default as allow, intercpetion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    goto :goto_94

    .line 168
    :pswitch_28  #0x6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "6)finally, intercept as usual, interception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    goto :goto_94

    .line 165
    :pswitch_3a  #0x5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "5)local rules match, interception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    goto :goto_94

    .line 162
    :pswitch_4c  #0x4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "4)air rules match, interception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    goto :goto_94

    .line 159
    :pswitch_5e  #0x3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "3)cts is running, interception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    goto :goto_94

    .line 156
    :pswitch_70  #0x2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2)callee system_app, default as allow, interception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    goto :goto_94

    .line 153
    :pswitch_82  #0x1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1)user setting, user set calleePkg as allow, interception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    nop

    .line 176
    :goto_94
    sget-boolean v1, Lcom/android/server/hips/intercept/InterceptionManager;->DEBUG_INTERCEPT_RULES:Z

    if-eqz v1, :cond_ed

    .line 177
    sget-object v1, Lcom/android/server/hips/intercept/InterceptionReason;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  details<<runType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isFgAction:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " callerPkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " calleePkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " processName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    if-eqz p6, :cond_dc

    invoke-virtual {p6}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_de

    :cond_dc
    const-string v3, ""

    :goto_de
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ">>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 177
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_ed
    return-void

    :pswitch_data_ee
    .packed-switch 0x1
        :pswitch_82  #00000001
        :pswitch_70  #00000002
        :pswitch_5e  #00000003
        :pswitch_4c  #00000004
        :pswitch_3a  #00000005
        :pswitch_28  #00000006
        :pswitch_6  #00000007
    .end packed-switch
.end method

.method public static isMzLauncher(Ljava/lang/String;)Z
    .registers 2
    .param p0, "pkg"  # Ljava/lang/String;

    .line 93
    if-eqz p0, :cond_1c

    .line 94
    const-string v0, "com.meizu.flyme.easylauncher"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 95
    const-string v0, "com.meizu.flyme.childrenlauncher"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 96
    const-string v0, "com.meizu.flyme.launcher"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 97
    :cond_1a
    const/4 v0, 0x1

    return v0

    .line 100
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public static printReason(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V
    .registers 12
    .param p0, "isIntercept"  # Z
    .param p1, "isFgAction"  # Z
    .param p2, "callerPkg"  # Ljava/lang/String;
    .param p3, "calleePkg"  # Ljava/lang/String;
    .param p4, "calleeClass"  # Ljava/lang/String;
    .param p5, "processName"  # Ljava/lang/String;
    .param p6, "startProc"  # Z
    .param p7, "runType"  # I
    .param p8, "reasonType"  # I

    .line 298
    sget-object v0, Lcom/android/server/hips/intercept/InterceptionReason;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "runType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p7}, Lcom/android/server/hips/intercept/InterceptionReason;->getRunType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " fg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " caller:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " callee: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " calleeClass: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isIntercept: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " star proc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p8}, Lcom/android/server/hips/intercept/InterceptionReason;->getInterceptionReason(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    return-void
.end method
