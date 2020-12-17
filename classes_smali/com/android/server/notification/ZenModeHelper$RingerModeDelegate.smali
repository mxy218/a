.class public final Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"

# interfaces
.implements Landroid/media/AudioManagerInternal$RingerModeDelegate;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "RingerModeDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method protected constructor <init>(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/notification/ZenModeHelper;

    .line 1271
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canVolumeDownEnterSilent()Z
    .registers 2

    .line 1366
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v0, v0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public getRingerModeAffectedStreams(I)I
    .registers 5
    .param p1, "streams"  # I

    .line 1373
    or-int/lit8 p1, p1, 0x26

    .line 1377
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v0, v0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 1379
    or-int/lit8 p1, p1, 0x18

    goto :goto_e

    .line 1382
    :cond_c
    and-int/lit8 p1, p1, -0x19

    .line 1386
    :goto_e
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v0, v0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_22

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget-object v0, v0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 1387
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyNotificationZenSoundsMuted(Landroid/service/notification/ZenModeConfig;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1390
    and-int/lit8 p1, p1, -0x3

    goto :goto_23

    .line 1392
    :cond_22
    or-int/2addr p1, v1

    .line 1394
    :goto_23
    return p1
.end method

.method public onSetRingerModeExternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .registers 22
    .param p1, "ringerModeOld"  # I
    .param p2, "ringerModeNew"  # I
    .param p3, "caller"  # Ljava/lang/String;
    .param p4, "ringerModeInternal"  # I
    .param p5, "policy"  # Landroid/media/VolumePolicy;

    .line 1330
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p2

    .line 1331
    .local v4, "ringerModeInternalOut":I
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v1, v2, :cond_10

    move v7, v6

    goto :goto_11

    :cond_10
    move v7, v5

    .line 1332
    .local v7, "isChange":Z
    :goto_11
    if-ne v3, v6, :cond_15

    move v8, v6

    goto :goto_16

    :cond_15
    move v8, v5

    .line 1334
    .local v8, "isVibrate":Z
    :goto_16
    const/4 v9, -0x1

    .line 1335
    .local v9, "newZen":I
    if-eqz v2, :cond_27

    if-eq v2, v6, :cond_1f

    const/4 v5, 0x2

    if-eq v2, v5, :cond_1f

    goto :goto_3a

    .line 1349
    :cond_1f
    iget-object v5, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v5, v5, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz v5, :cond_3a

    .line 1350
    const/4 v9, 0x0

    goto :goto_3a

    .line 1337
    :cond_27
    if-eqz v7, :cond_37

    .line 1338
    iget-object v10, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v10, v10, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-nez v10, :cond_30

    .line 1339
    const/4 v9, 0x1

    .line 1341
    :cond_30
    if-eqz v8, :cond_34

    move v5, v6

    goto :goto_35

    .line 1342
    :cond_34
    nop

    :goto_35
    move v4, v5

    goto :goto_3a

    .line 1344
    :cond_37
    move/from16 v4, p4

    .line 1346
    nop

    .line 1354
    :cond_3a
    :goto_3a
    const/4 v5, -0x1

    if-eq v9, v5, :cond_4a

    .line 1355
    iget-object v10, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    const/4 v12, 0x0

    const/4 v15, 0x0

    const-string/jumbo v13, "ringerModeExternal"

    move v11, v9

    move-object/from16 v14, p3

    invoke-static/range {v10 .. v15}, Lcom/android/server/notification/ZenModeHelper;->access$600(Lcom/android/server/notification/ZenModeHelper;ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1359
    :cond_4a
    move-object/from16 v5, p3

    invoke-static {v1, v2, v5, v3, v4}, Lcom/android/server/notification/ZenLog;->traceSetRingerModeExternal(IILjava/lang/String;II)V

    .line 1361
    return v4
.end method

.method public onSetRingerModeInternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .registers 22
    .param p1, "ringerModeOld"  # I
    .param p2, "ringerModeNew"  # I
    .param p3, "caller"  # Ljava/lang/String;
    .param p4, "ringerModeExternal"  # I
    .param p5, "policy"  # Landroid/media/VolumePolicy;

    .line 1280
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    const/4 v4, 0x1

    if-eq v1, v2, :cond_d

    move v5, v4

    goto :goto_e

    :cond_d
    const/4 v5, 0x0

    .line 1282
    .local v5, "isChange":Z
    :goto_e
    move/from16 v6, p2

    .line 1284
    .local v6, "ringerModeExternalOut":I
    iget-object v7, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v7, v7, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz v7, :cond_26

    iget-object v7, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v7, v7, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-ne v7, v4, :cond_2f

    iget-object v7, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget-object v7, v7, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 1286
    invoke-static {v7}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyNotificationZenSoundsMuted(Landroid/service/notification/ZenModeConfig;)Z

    move-result v7

    if-nez v7, :cond_2f

    .line 1289
    :cond_26
    iget-object v7, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/notification/ZenModeHelper;->access$500(Lcom/android/server/notification/ZenModeHelper;Ljava/lang/Integer;)V

    .line 1291
    :cond_2f
    const/4 v7, -0x1

    .line 1292
    .local v7, "newZen":I
    if-eqz v2, :cond_6c

    const/4 v8, 0x2

    if-eq v2, v4, :cond_3a

    if-eq v2, v8, :cond_3a

    move-object/from16 v4, p5

    goto :goto_87

    .line 1303
    :cond_3a
    if-eqz v5, :cond_5f

    if-nez v1, :cond_5f

    iget-object v9, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v9, v9, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eq v9, v8, :cond_5b

    iget-object v8, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v8, v8, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v9, 0x3

    if-eq v8, v9, :cond_5b

    iget-object v8, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v8, v8, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-ne v8, v4, :cond_5f

    iget-object v4, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget-object v4, v4, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 1307
    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyNotificationZenSoundsMuted(Landroid/service/notification/ZenModeConfig;)Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 1309
    :cond_5b
    const/4 v7, 0x0

    move-object/from16 v4, p5

    goto :goto_87

    .line 1310
    :cond_5f
    iget-object v4, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v4, v4, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz v4, :cond_69

    .line 1311
    const/4 v6, 0x0

    move-object/from16 v4, p5

    goto :goto_87

    .line 1310
    :cond_69
    move-object/from16 v4, p5

    goto :goto_87

    .line 1294
    :cond_6c
    if-eqz v5, :cond_85

    move-object/from16 v4, p5

    iget-boolean v8, v4, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    if-eqz v8, :cond_87

    .line 1295
    iget-object v8, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v8, v8, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-nez v8, :cond_7b

    .line 1296
    const/4 v7, 0x1

    .line 1298
    :cond_7b
    iget-object v8, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/notification/ZenModeHelper;->access$500(Lcom/android/server/notification/ZenModeHelper;Ljava/lang/Integer;)V

    goto :goto_87

    .line 1294
    :cond_85
    move-object/from16 v4, p5

    .line 1316
    :cond_87
    :goto_87
    const/4 v8, -0x1

    if-eq v7, v8, :cond_96

    .line 1317
    iget-object v10, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string/jumbo v13, "ringerModeInternal"

    move v11, v7

    invoke-static/range {v10 .. v15}, Lcom/android/server/notification/ZenModeHelper;->access$600(Lcom/android/server/notification/ZenModeHelper;ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1320
    :cond_96
    if-nez v5, :cond_a0

    if-ne v7, v8, :cond_a0

    if-eq v3, v6, :cond_9d

    goto :goto_a0

    :cond_9d
    move-object/from16 v8, p3

    goto :goto_a5

    .line 1321
    :cond_a0
    :goto_a0
    move-object/from16 v8, p3

    invoke-static {v1, v2, v8, v3, v6}, Lcom/android/server/notification/ZenLog;->traceSetRingerModeInternal(IILjava/lang/String;II)V

    .line 1324
    :goto_a5
    return v6
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1274
    const-string v0, "ZenModeHelper"

    return-object v0
.end method
