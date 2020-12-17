.class public Lcom/android/server/hips/intercept/LinkWakenInterception;
.super Lcom/android/server/hips/intercept/Interception;
.source "LinkWakenInterception.java"


# static fields
.field private static mLinkWakenInterception:Lcom/android/server/hips/intercept/LinkWakenInterception;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/hips/intercept/LinkWakenInterception;->mLinkWakenInterception:Lcom/android/server/hips/intercept/LinkWakenInterception;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/android/server/hips/intercept/Interception;-><init>()V

    .line 23
    return-void
.end method

.method public static getInstance()Lcom/android/server/hips/intercept/LinkWakenInterception;
    .registers 2

    .line 26
    sget-object v0, Lcom/android/server/hips/intercept/LinkWakenInterception;->mLinkWakenInterception:Lcom/android/server/hips/intercept/LinkWakenInterception;

    if-nez v0, :cond_17

    .line 27
    const-class v0, Lcom/android/server/hips/intercept/LinkWakenInterception;

    monitor-enter v0

    .line 28
    :try_start_7
    sget-object v1, Lcom/android/server/hips/intercept/LinkWakenInterception;->mLinkWakenInterception:Lcom/android/server/hips/intercept/LinkWakenInterception;

    if-nez v1, :cond_12

    .line 29
    new-instance v1, Lcom/android/server/hips/intercept/LinkWakenInterception;

    invoke-direct {v1}, Lcom/android/server/hips/intercept/LinkWakenInterception;-><init>()V

    sput-object v1, Lcom/android/server/hips/intercept/LinkWakenInterception;->mLinkWakenInterception:Lcom/android/server/hips/intercept/LinkWakenInterception;

    .line 31
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 34
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/server/hips/intercept/LinkWakenInterception;->mLinkWakenInterception:Lcom/android/server/hips/intercept/LinkWakenInterception;

    return-object v0
.end method


# virtual methods
.method public isInterceptAsUsual(ZLjava/lang/String;Ljava/lang/String;ILandroid/content/Intent;Ljava/lang/String;IZZ)Z
    .registers 35
    .param p1, "isFgAction"  # Z
    .param p2, "callerPkg"  # Ljava/lang/String;
    .param p3, "calleePkg"  # Ljava/lang/String;
    .param p4, "calleeUid"  # I
    .param p5, "intent"  # Landroid/content/Intent;
    .param p6, "processName"  # Ljava/lang/String;
    .param p7, "runType"  # I
    .param p8, "delayed"  # Z
    .param p9, "isProviderRunning"  # Z

    .line 39
    move-object/from16 v0, p0

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move/from16 v13, p7

    const-string v1, ""

    .line 40
    .local v1, "calleeClass":Ljava/lang/String;
    if-eqz p5, :cond_1c

    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 41
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    goto :goto_1d

    .line 43
    :cond_1c
    move-object v12, v1

    .end local v1  # "calleeClass":Ljava/lang/String;
    .local v12, "calleeClass":Ljava/lang/String;
    :goto_1d
    const/4 v1, 0x1

    .line 44
    .local v1, "startProc":Z
    if-eqz p9, :cond_24

    .line 45
    const/4 v1, 0x0

    move/from16 v16, v1

    goto :goto_27

    .line 47
    :cond_24
    const/4 v1, 0x1

    move/from16 v16, v1

    .line 50
    .end local v1  # "startProc":Z
    .local v16, "startProc":Z
    :goto_27
    const-string v1, "app_name"

    const/4 v2, 0x2

    const/4 v11, 0x0

    const-string v3, ""

    const/4 v10, 0x1

    if-ne v13, v10, :cond_f4

    .line 51
    invoke-static {}, Lcom/android/server/hips/security/SecurityMargin;->getInstance()Lcom/android/server/hips/security/SecurityMargin;

    move-result-object v4

    .line 52
    invoke-virtual {v4, v14, v15, v12, v2}, Lcom/android/server/hips/security/SecurityMargin;->isInSecurityMargin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v17

    .line 54
    .local v17, "isInSecurityMargin":Z
    invoke-static/range {p2 .. p2}, Lcom/android/server/hips/utils/HipsUtils;->isSystemApp(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_47

    .line 55
    invoke-static/range {p3 .. p3}, Lcom/android/server/hips/utils/HipsUtils;->isSystemApp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_45

    goto :goto_47

    :cond_45
    move v4, v11

    goto :goto_48

    :cond_47
    :goto_47
    move v4, v10

    :goto_48
    move/from16 v18, v4

    .line 56
    .local v18, "isSystemApp":Z
    nop

    .line 57
    invoke-static/range {p2 .. p2}, Lcom/android/server/hips/utils/HipsUtils;->isHasSystemSignature(Ljava/lang/String;)Z

    move-result v19

    .line 59
    .local v19, "isHasSystemSignature":Z
    if-eqz v17, :cond_ab

    if-nez v18, :cond_ab

    if-nez v19, :cond_ab

    .line 60
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v11, v2

    .line 61
    .local v11, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v15, :cond_5e

    goto :goto_5f

    :cond_5e
    move-object v3, v15

    :goto_5f
    invoke-interface {v11, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string/jumbo v1, "interface_cover"

    invoke-static {v1, v11}, Lcom/android/server/hips/utils/HipsUtils;->saveUsageStatsData(Ljava/lang/String;Ljava/util/Map;)V

    .line 64
    const/4 v1, 0x1

    const/16 v9, 0xc

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v12

    move-object/from16 v6, p6

    move/from16 v7, v16

    move/from16 v8, p7

    invoke-static/range {v1 .. v9}, Lcom/android/server/hips/intercept/InterceptionReason;->printReason(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 65
    new-instance v20, Lcom/android/server/hips/intercept/InterceptionEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/16 v21, 0xc

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v1, v20

    move/from16 v6, p7

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object v9, v12

    move/from16 v10, v21

    move-object/from16 v21, v11

    .end local v11  # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v21, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move/from16 v11, p1

    move-object/from16 v24, v12

    .end local v12  # "calleeClass":Ljava/lang/String;
    .local v24, "calleeClass":Ljava/lang/String;
    move/from16 v12, v22

    move v0, v13

    move/from16 v13, v23

    invoke-direct/range {v1 .. v13}, Lcom/android/server/hips/intercept/InterceptionEvent;-><init>(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)V

    .line 66
    .local v1, "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    invoke-static {}, Lcom/android/server/hips/intercept/InterceptionEventStats;->getInstance()Lcom/android/server/hips/intercept/InterceptionEventStats;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/hips/intercept/InterceptionEventStats;->addInterceptEvent(Lcom/android/server/hips/intercept/InterceptionEvent;)V

    .line 67
    const/4 v13, 0x1

    return v13

    .line 59
    .end local v1  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    .end local v21  # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v24  # "calleeClass":Ljava/lang/String;
    .restart local v12  # "calleeClass":Ljava/lang/String;
    :cond_ab
    move-object/from16 v24, v12

    move v0, v13

    move v13, v10

    .line 71
    .end local v12  # "calleeClass":Ljava/lang/String;
    .restart local v24  # "calleeClass":Ljava/lang/String;
    if-eqz p1, :cond_f8

    if-eqz v14, :cond_f8

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f8

    if-eqz v15, :cond_f8

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f8

    .line 72
    invoke-virtual/range {p2 .. p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_df

    .line 73
    const/16 v3, 0xb

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/server/hips/intercept/LinkWakenInterception;->getLastInterceptionEvent()Lcom/android/server/hips/intercept/InterceptionEvent;

    move-result-object v10

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v4, v24

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p1

    move/from16 v9, v16

    invoke-static/range {v1 .. v10}, Lcom/android/server/hips/intercept/LinkWakenInterception;->activityCalleeStayTimeStats(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZZZLcom/android/server/hips/intercept/InterceptionEvent;)V

    .line 75
    :cond_df
    const/4 v1, 0x0

    const/16 v9, 0xb

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, v24

    move-object/from16 v6, p6

    move/from16 v7, v16

    move/from16 v8, p7

    invoke-static/range {v1 .. v9}, Lcom/android/server/hips/intercept/InterceptionReason;->printReason(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 76
    return v11

    .line 50
    .end local v17  # "isInSecurityMargin":Z
    .end local v18  # "isSystemApp":Z
    .end local v19  # "isHasSystemSignature":Z
    .end local v24  # "calleeClass":Ljava/lang/String;
    .restart local v12  # "calleeClass":Ljava/lang/String;
    :cond_f4
    move-object/from16 v24, v12

    move v0, v13

    move v13, v10

    .line 81
    .end local v12  # "calleeClass":Ljava/lang/String;
    .restart local v24  # "calleeClass":Ljava/lang/String;
    :cond_f8
    if-eqz v14, :cond_174

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_174

    invoke-virtual/range {p2 .. p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_174

    .line 82
    if-ne v0, v13, :cond_12e

    .line 83
    if-eqz p9, :cond_12c

    if-eqz v15, :cond_12c

    invoke-virtual/range {p2 .. p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12c

    .line 84
    const/16 v3, 0x10

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/server/hips/intercept/LinkWakenInterception;->getLastInterceptionEvent()Lcom/android/server/hips/intercept/InterceptionEvent;

    move-result-object v10

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v4, v24

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p1

    move/from16 v9, v16

    invoke-static/range {v1 .. v10}, Lcom/android/server/hips/intercept/LinkWakenInterception;->activityCalleeStayTimeStats(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZZZLcom/android/server/hips/intercept/InterceptionEvent;)V

    move v0, v11

    goto :goto_15f

    .line 83
    :cond_12c
    move v0, v11

    goto :goto_15f

    .line 87
    :cond_12e
    if-eqz p9, :cond_15e

    if-eqz v15, :cond_15e

    invoke-virtual/range {p2 .. p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15e

    .line 88
    new-instance v17, Lcom/android/server/hips/intercept/InterceptionEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/16 v10, 0x10

    const/4 v12, 0x0

    move-object/from16 v1, v17

    move/from16 v6, p7

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, v24

    move v13, v11

    move/from16 v11, p1

    move v0, v13

    move/from16 v13, v16

    invoke-direct/range {v1 .. v13}, Lcom/android/server/hips/intercept/InterceptionEvent;-><init>(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)V

    .line 89
    .restart local v1  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    invoke-static {}, Lcom/android/server/hips/intercept/InterceptionEventStats;->getInstance()Lcom/android/server/hips/intercept/InterceptionEventStats;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/hips/intercept/InterceptionEventStats;->addInterceptEvent(Lcom/android/server/hips/intercept/InterceptionEvent;)V

    goto :goto_15f

    .line 87
    .end local v1  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    :cond_15e
    move v0, v11

    .line 92
    :goto_15f
    const/4 v1, 0x0

    const/16 v9, 0x10

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, v24

    move-object/from16 v6, p6

    move/from16 v7, v16

    move/from16 v8, p7

    invoke-static/range {v1 .. v9}, Lcom/android/server/hips/intercept/InterceptionReason;->printReason(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 93
    return v0

    .line 81
    :cond_174
    move v0, v11

    .line 97
    move-object/from16 v12, p0

    move/from16 v11, p4

    move/from16 v10, p7

    invoke-virtual {v12, v15, v11}, Lcom/android/server/hips/intercept/LinkWakenInterception;->isCalleeRunning(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1ee

    .line 98
    if-ne v10, v13, :cond_1a9

    .line 99
    if-eqz p9, :cond_1d9

    if-eqz v14, :cond_1d9

    if-eqz v15, :cond_1d9

    invoke-virtual/range {p2 .. p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d9

    .line 100
    const/16 v3, 0x11

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/server/hips/intercept/LinkWakenInterception;->getLastInterceptionEvent()Lcom/android/server/hips/intercept/InterceptionEvent;

    move-result-object v13

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v4, v24

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p1

    move/from16 v9, v16

    move-object v10, v13

    invoke-static/range {v1 .. v10}, Lcom/android/server/hips/intercept/LinkWakenInterception;->activityCalleeStayTimeStats(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZZZLcom/android/server/hips/intercept/InterceptionEvent;)V

    goto :goto_1d9

    .line 103
    :cond_1a9
    if-eqz p9, :cond_1d9

    if-eqz v14, :cond_1d9

    if-eqz v15, :cond_1d9

    invoke-virtual/range {p2 .. p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d9

    .line 104
    new-instance v17, Lcom/android/server/hips/intercept/InterceptionEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/16 v10, 0x11

    const/4 v13, 0x0

    move-object/from16 v1, v17

    move/from16 v6, p7

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, v24

    move/from16 v11, p1

    move v12, v13

    move/from16 v13, v16

    invoke-direct/range {v1 .. v13}, Lcom/android/server/hips/intercept/InterceptionEvent;-><init>(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)V

    .line 105
    .restart local v1  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    invoke-static {}, Lcom/android/server/hips/intercept/InterceptionEventStats;->getInstance()Lcom/android/server/hips/intercept/InterceptionEventStats;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/hips/intercept/InterceptionEventStats;->addInterceptEvent(Lcom/android/server/hips/intercept/InterceptionEvent;)V

    .line 108
    .end local v1  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    :cond_1d9
    :goto_1d9
    const/4 v1, 0x0

    const/16 v9, 0x11

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, v24

    move-object/from16 v6, p6

    move/from16 v7, v16

    move/from16 v8, p7

    invoke-static/range {v1 .. v9}, Lcom/android/server/hips/intercept/InterceptionReason;->printReason(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 109
    return v0

    .line 112
    :cond_1ee
    invoke-static {}, Lcom/android/server/hips/security/SecurityMargin;->getInstance()Lcom/android/server/hips/security/SecurityMargin;

    move-result-object v4

    invoke-virtual {v4, v3, v3, v3, v0}, Lcom/android/server/hips/security/SecurityMargin;->isInSecurityMargin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_247

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 115
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v15, :cond_200

    goto :goto_201

    :cond_200
    move-object v3, v15

    :goto_201
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string/jumbo v1, "new_process"

    invoke-static {v1, v0}, Lcom/android/server/hips/utils/HipsUtils;->saveUsageStatsData(Ljava/lang/String;Ljava/util/Map;)V

    .line 118
    const/4 v1, 0x1

    const/16 v9, 0xc

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, v24

    move-object/from16 v6, p6

    move/from16 v7, v16

    move/from16 v8, p7

    invoke-static/range {v1 .. v9}, Lcom/android/server/hips/intercept/InterceptionReason;->printReason(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 119
    new-instance v17, Lcom/android/server/hips/intercept/InterceptionEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/16 v10, 0xc

    const/4 v12, 0x1

    const/16 v18, 0x0

    move-object/from16 v1, v17

    move/from16 v6, p7

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, v24

    move/from16 v11, p1

    move-object/from16 v19, v0

    move v0, v13

    .end local v0  # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local v19, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move/from16 v13, v18

    invoke-direct/range {v1 .. v13}, Lcom/android/server/hips/intercept/InterceptionEvent;-><init>(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)V

    .line 120
    .restart local v1  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    invoke-static {}, Lcom/android/server/hips/intercept/InterceptionEventStats;->getInstance()Lcom/android/server/hips/intercept/InterceptionEventStats;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/hips/intercept/InterceptionEventStats;->addInterceptEvent(Lcom/android/server/hips/intercept/InterceptionEvent;)V

    .line 121
    return v0

    .line 124
    .end local v1  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    .end local v19  # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_247
    move/from16 v17, v0

    move v0, v13

    move-object/from16 v13, p0

    invoke-virtual {v13, v15}, Lcom/android/server/hips/intercept/LinkWakenInterception;->getInterceptionItemState(Ljava/lang/String;)I

    move-result v12

    .line 125
    .local v12, "mode":I
    if-ne v12, v2, :cond_28f

    .line 126
    const/4 v1, 0x1

    const/4 v9, 0x2

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, v24

    move-object/from16 v6, p6

    move/from16 v7, v16

    move/from16 v8, p7

    invoke-static/range {v1 .. v9}, Lcom/android/server/hips/intercept/InterceptionReason;->printReason(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 127
    new-instance v17, Lcom/android/server/hips/intercept/InterceptionEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/4 v10, 0x2

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v1, v17

    move/from16 v6, p7

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, v24

    move/from16 v11, p1

    move/from16 v20, v12

    .end local v12  # "mode":I
    .local v20, "mode":I
    move/from16 v12, v18

    move/from16 v13, v19

    invoke-direct/range {v1 .. v13}, Lcom/android/server/hips/intercept/InterceptionEvent;-><init>(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)V

    .line 128
    .restart local v1  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    invoke-static {}, Lcom/android/server/hips/intercept/InterceptionEventStats;->getInstance()Lcom/android/server/hips/intercept/InterceptionEventStats;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/hips/intercept/InterceptionEventStats;->addInterceptEvent(Lcom/android/server/hips/intercept/InterceptionEvent;)V

    .line 129
    return v0

    .line 132
    .end local v1  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    .end local v20  # "mode":I
    .restart local v12  # "mode":I
    :cond_28f
    move/from16 v20, v12

    .end local v12  # "mode":I
    .restart local v20  # "mode":I
    if-nez v20, :cond_305

    invoke-static/range {p3 .. p3}, Lcom/android/server/hips/intercept/AutoRunInterception;->isAutoRunSwitchOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_305

    .line 133
    move/from16 v13, p7

    if-ne v13, v0, :cond_2c2

    .line 134
    if-eqz p9, :cond_2f0

    if-eqz v14, :cond_2f0

    if-eqz v15, :cond_2f0

    invoke-virtual/range {p2 .. p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f0

    .line 135
    const/16 v3, 0xd

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/server/hips/intercept/LinkWakenInterception;->getLastInterceptionEvent()Lcom/android/server/hips/intercept/InterceptionEvent;

    move-result-object v10

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v4, v24

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p1

    move/from16 v9, v16

    invoke-static/range {v1 .. v10}, Lcom/android/server/hips/intercept/LinkWakenInterception;->activityCalleeStayTimeStats(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZZZLcom/android/server/hips/intercept/InterceptionEvent;)V

    goto :goto_2f0

    .line 138
    :cond_2c2
    if-eqz p9, :cond_2f0

    if-eqz v14, :cond_2f0

    if-eqz v15, :cond_2f0

    invoke-virtual/range {p2 .. p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f0

    .line 139
    new-instance v0, Lcom/android/server/hips/intercept/InterceptionEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/16 v10, 0xd

    const/4 v12, 0x0

    move-object v1, v0

    move/from16 v6, p7

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, v24

    move/from16 v11, p1

    move/from16 v13, v16

    invoke-direct/range {v1 .. v13}, Lcom/android/server/hips/intercept/InterceptionEvent;-><init>(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)V

    .line 140
    .local v0, "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    invoke-static {}, Lcom/android/server/hips/intercept/InterceptionEventStats;->getInstance()Lcom/android/server/hips/intercept/InterceptionEventStats;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/hips/intercept/InterceptionEventStats;->addInterceptEvent(Lcom/android/server/hips/intercept/InterceptionEvent;)V

    .line 143
    .end local v0  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    :cond_2f0
    :goto_2f0
    const/4 v1, 0x0

    const/16 v9, 0xd

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, v24

    move-object/from16 v6, p6

    move/from16 v7, v16

    move/from16 v8, p7

    invoke-static/range {v1 .. v9}, Lcom/android/server/hips/intercept/InterceptionReason;->printReason(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 144
    return v17

    .line 147
    :cond_305
    if-eqz p1, :cond_341

    if-eqz v14, :cond_341

    if-eqz v15, :cond_341

    .line 148
    new-instance v0, Lcom/android/server/hips/intercept/InterceptionEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/16 v10, 0x17

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v1, v0

    move/from16 v6, p7

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, v24

    move/from16 v11, p1

    invoke-direct/range {v1 .. v13}, Lcom/android/server/hips/intercept/InterceptionEvent;-><init>(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)V

    .line 149
    .restart local v0  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    invoke-static {}, Lcom/android/server/hips/intercept/InterceptionEventStats;->getInstance()Lcom/android/server/hips/intercept/InterceptionEventStats;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/hips/intercept/InterceptionEventStats;->addInterceptEvent(Lcom/android/server/hips/intercept/InterceptionEvent;)V

    .line 150
    const/4 v1, 0x0

    const/16 v9, 0x17

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, v24

    move-object/from16 v6, p6

    move/from16 v7, v16

    move/from16 v8, p7

    invoke-static/range {v1 .. v9}, Lcom/android/server/hips/intercept/InterceptionReason;->printReason(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 151
    return v17

    .line 154
    .end local v0  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    :cond_341
    sget-boolean v1, Lcom/android/server/hips/intercept/InterceptionManager;->DEBUG_INTERCEPT_RULES:Z

    if-eqz v1, :cond_37b

    .line 155
    const/4 v1, 0x1

    const/16 v9, 0x19

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, v24

    move-object/from16 v6, p6

    move/from16 v7, v16

    move/from16 v8, p7

    invoke-static/range {v1 .. v9}, Lcom/android/server/hips/intercept/InterceptionReason;->printReason(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V

    .line 156
    new-instance v17, Lcom/android/server/hips/intercept/InterceptionEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/16 v10, 0x19

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object/from16 v1, v17

    move/from16 v6, p7

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, v24

    move/from16 v11, p1

    invoke-direct/range {v1 .. v13}, Lcom/android/server/hips/intercept/InterceptionEvent;-><init>(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)V

    .line 157
    .restart local v1  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    invoke-static {}, Lcom/android/server/hips/intercept/InterceptionEventStats;->getInstance()Lcom/android/server/hips/intercept/InterceptionEventStats;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/hips/intercept/InterceptionEventStats;->addInterceptEvent(Lcom/android/server/hips/intercept/InterceptionEvent;)V

    .line 160
    .end local v1  # "event":Lcom/android/server/hips/intercept/InterceptionEvent;
    :cond_37b
    return v0
.end method
