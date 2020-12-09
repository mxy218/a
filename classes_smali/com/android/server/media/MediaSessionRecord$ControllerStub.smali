.class Lcom/android/server/media/MediaSessionRecord$ControllerStub;
.super Landroid/media/session/ISessionController$Stub;
.source "MediaSessionRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ControllerStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaSessionRecord;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 2

    .line 1232
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-direct {p0}, Landroid/media/session/ISessionController$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public adjustVolume(Ljava/lang/String;Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;II)V
    .registers 19

    .line 1317
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 1318
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1319
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 1321
    move-object v0, p0

    :try_start_d
    iget-object v1, v0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v6, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/media/MediaSessionRecord;->adjustVolume(Ljava/lang/String;Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;ZIIZ)V
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_21

    .line 1324
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1325
    nop

    .line 1326
    return-void

    .line 1324
    :catchall_21
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public fastForward(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;)V
    .registers 6

    .line 1424
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->fastForward(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V

    .line 1426
    return-void
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 3

    .line 1485
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1500(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1486
    :try_start_7
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$2200(Lcom/android/server/media/MediaSessionRecord;)Landroid/os/Bundle;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1487
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getFlags()J
    .registers 3

    .line 1306
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1200(Lcom/android/server/media/MediaSessionRecord;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLaunchPendingIntent()Landroid/app/PendingIntent;
    .registers 2

    .line 1301
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1400(Lcom/android/server/media/MediaSessionRecord;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata()Landroid/media/MediaMetadata;
    .registers 3

    .line 1461
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1500(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1462
    :try_start_7
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$1600(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/MediaMetadata;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1463
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 1286
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$3400(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackState()Landroid/media/session/PlaybackState;
    .registers 2

    .line 1468
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$3900(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/PlaybackState;

    move-result-object v0

    return-object v0
.end method

.method public getQueue()Landroid/content/pm/ParceledListSlice;
    .registers 4

    .line 1473
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1500(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1474
    :try_start_7
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$2000(Lcom/android/server/media/MediaSessionRecord;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_11

    const/4 v1, 0x0

    goto :goto_1c

    :cond_11
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->access$2000(Lcom/android/server/media/MediaSessionRecord;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    :goto_1c
    monitor-exit v0

    return-object v1

    .line 1475
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public getQueueTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 1480
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2100(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getRatingType()I
    .registers 2

    .line 1492
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2300(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v0

    return v0
.end method

.method public getSessionInfo()Landroid/os/Bundle;
    .registers 2

    .line 1296
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$3600(Lcom/android/server/media/MediaSessionRecord;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 1291
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$3500(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVolumeAttributes()Landroid/media/session/MediaController$PlaybackInfo;
    .registers 2

    .line 1311
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$3700(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v0

    return-object v0
.end method

.method public next(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;)V
    .registers 6

    .line 1413
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->next(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V

    .line 1414
    return-void
.end method

.method public pause(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;)V
    .registers 6

    .line 1403
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->pause(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V

    .line 1404
    return-void
.end method

.method public play(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;)V
    .registers 6

    .line 1370
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->play(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V

    .line 1371
    return-void
.end method

.method public playFromMediaId(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 13

    .line 1376
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->playFromMediaId(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1378
    return-void
.end method

.method public playFromSearch(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 13

    .line 1383
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->playFromSearch(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1385
    return-void
.end method

.method public playFromUri(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 13

    .line 1390
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->playFromUri(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 1392
    return-void
.end method

.method public prepare(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;)V
    .registers 6

    .line 1344
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->prepare(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V

    .line 1345
    return-void
.end method

.method public prepareFromMediaId(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 13

    .line 1350
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1351
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1350
    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->prepareFromMediaId(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1352
    return-void
.end method

.method public prepareFromSearch(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 13

    .line 1357
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1358
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1357
    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->prepareFromSearch(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1359
    return-void
.end method

.method public prepareFromUri(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 13

    .line 1364
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->prepareFromUri(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 1366
    return-void
.end method

.method public previous(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;)V
    .registers 6

    .line 1418
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->previous(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V

    .line 1420
    return-void
.end method

.method public rate(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;Landroid/media/Rating;)V
    .registers 11

    .line 1441
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->rate(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Landroid/media/Rating;)V

    .line 1443
    return-void
.end method

.method public registerCallback(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;)V
    .registers 8

    .line 1249
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1500(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1252
    :try_start_7
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$3000(Lcom/android/server/media/MediaSessionRecord;)Z

    move-result v1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_59

    if-eqz v1, :cond_16

    .line 1254
    :try_start_f
    invoke-interface {p2}, Landroid/media/session/ISessionControllerCallback;->onSessionDestroyed()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_12} :catch_13
    .catchall {:try_start_f .. :try_end_12} :catchall_59

    .line 1257
    goto :goto_14

    .line 1255
    :catch_13
    move-exception p1

    .line 1258
    :goto_14
    :try_start_14
    monitor-exit v0

    return-void

    .line 1260
    :cond_16
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1, p2}, Lcom/android/server/media/MediaSessionRecord;->access$3100(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionControllerCallback;)I

    move-result v1

    if-gez v1, :cond_57

    .line 1261
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$3200(Lcom/android/server/media/MediaSessionRecord;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;

    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 1262
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {v2, v3, p2, p1, v4}, Lcom/android/server/media/MediaSessionRecord$ISessionControllerCallbackHolder;-><init>(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionControllerCallback;Ljava/lang/String;I)V

    .line 1261
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1263
    invoke-static {}, Lcom/android/server/media/MediaSessionRecord;->access$3300()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 1264
    const-string v1, "MediaSessionRecord"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registering controller callback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " from controller"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    :cond_57
    monitor-exit v0

    .line 1269
    return-void

    .line 1268
    :catchall_59
    move-exception p1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_14 .. :try_end_5b} :catchall_59

    throw p1
.end method

.method public rewind(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;)V
    .registers 6

    .line 1430
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->rewind(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V

    .line 1431
    return-void
.end method

.method public seekTo(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;J)V
    .registers 13

    .line 1435
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v2, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->seekTo(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;J)V

    .line 1437
    return-void
.end method

.method public sendCommand(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 1236
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->sendCommand(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 1238
    return-void
.end method

.method public sendCustomAction(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 13

    .line 1455
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->sendCustomAction(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1457
    return-void
.end method

.method public sendMediaButton(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;Landroid/view/KeyEvent;)Z
    .registers 12

    .line 1243
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1244
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1243
    const/4 v6, 0x0

    move-object v2, p1

    move-object v5, p2

    move-object v7, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->sendMediaButton(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;ZLandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setPlaybackSpeed(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;F)V
    .registers 11

    .line 1448
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v2, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->setPlaybackSpeed(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;F)V

    .line 1450
    return-void
.end method

.method public setVolumeTo(Ljava/lang/String;Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;II)V
    .registers 16

    .line 1331
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1332
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1333
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1335
    :try_start_c
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/android/server/media/MediaSessionRecord;->access$3800(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;II)V
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_1b

    .line 1338
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1339
    nop

    .line 1340
    return-void

    .line 1338
    :catchall_1b
    move-exception p1

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public skipToQueueItem(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;J)V
    .registers 13

    .line 1397
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v2, p1

    move-object v5, p2

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->skipToTrack(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;J)V

    .line 1399
    return-void
.end method

.method public stop(Ljava/lang/String;Landroid/media/session/ISessionControllerCallback;)V
    .registers 6

    .line 1408
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$2900(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->stop(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V

    .line 1409
    return-void
.end method

.method public unregisterCallback(Landroid/media/session/ISessionControllerCallback;)V
    .registers 6

    .line 1273
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->access$1500(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1274
    :try_start_7
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1, p1}, Lcom/android/server/media/MediaSessionRecord;->access$3100(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionControllerCallback;)I

    move-result v1

    .line 1275
    const/4 v2, -0x1

    if-eq v1, v2, :cond_19

    .line 1276
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->access$3200(Lcom/android/server/media/MediaSessionRecord;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1278
    :cond_19
    invoke-static {}, Lcom/android/server/media/MediaSessionRecord;->access$3300()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1279
    const-string v1, "MediaSessionRecord"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregistering callback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/media/session/ISessionControllerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    :cond_3a
    monitor-exit v0

    .line 1282
    return-void

    .line 1281
    :catchall_3c
    move-exception p1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_7 .. :try_end_3e} :catchall_3c

    throw p1
.end method
