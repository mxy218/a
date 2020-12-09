.class public final Lcom/android/server/audio/RecordingActivityMonitor;
.super Ljava/lang/Object;
.source "RecordingActivityMonitor.java"

# interfaces
.implements Landroid/media/AudioSystem$AudioRecordingCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;,
        Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;,
        Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;,
        Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AudioService.RecordingActivityMonitor"

.field private static final sEventLogger:Lcom/android/server/audio/AudioEventLogger;


# instance fields
.field private mClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;",
            ">;"
        }
    .end annotation
.end field

.field private mHasPublicClients:Z

.field private final mPackMan:Landroid/content/pm/PackageManager;

.field private mRecordStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 577
    new-instance v0, Lcom/android/server/audio/AudioEventLogger;

    const/16 v1, 0x32

    const-string/jumbo v2, "recording activity received by AudioService"

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/audio/RecordingActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mHasPublicClients:Z

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    .line 117
    sput-object p0, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->sMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    .line 118
    sput-object p0, Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;->sMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mPackMan:Landroid/content/pm/PackageManager;

    .line 120
    return-void
.end method

.method private static anonymizeForPublicConsumption(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;"
        }
    .end annotation

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 229
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioRecordingConfiguration;

    .line 230
    invoke-static {v1}, Landroid/media/AudioRecordingConfiguration;->anonymizedCopy(Landroid/media/AudioRecordingConfiguration;)Landroid/media/AudioRecordingConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    goto :goto_9

    .line 232
    :cond_1d
    return-object v0
.end method

.method private createRecordingConfiguration(III[IIZI[Landroid/media/audiofx/AudioEffect$Descriptor;[Landroid/media/audiofx/AudioEffect$Descriptor;)Landroid/media/AudioRecordingConfiguration;
    .registers 25

    .line 339
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    const/4 v1, 0x0

    aget v2, p4, v1

    .line 340
    invoke-virtual {v0, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    const/4 v2, 0x1

    aget v2, p4, v2

    .line 342
    invoke-virtual {v0, v2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    const/4 v2, 0x2

    aget v2, p4, v2

    .line 343
    invoke-virtual {v0, v2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 344
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v6

    .line 345
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    const/4 v2, 0x3

    aget v2, p4, v2

    .line 346
    invoke-virtual {v0, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    const/4 v2, 0x4

    aget v2, p4, v2

    .line 348
    invoke-virtual {v0, v2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    const/4 v2, 0x5

    aget v2, p4, v2

    .line 349
    invoke-virtual {v0, v2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 350
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v7

    .line 351
    const/4 v0, 0x6

    aget v8, p4, v0

    .line 352
    move-object v0, p0

    iget-object v0, v0, Lcom/android/server/audio/RecordingActivityMonitor;->mPackMan:Landroid/content/pm/PackageManager;

    move/from16 v3, p1

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 354
    if-eqz v0, :cond_51

    array-length v2, v0

    if-lez v2, :cond_51

    .line 355
    aget-object v0, v0, v1

    move-object v9, v0

    goto :goto_54

    .line 357
    :cond_51
    const-string v0, ""

    move-object v9, v0

    .line 359
    :goto_54
    new-instance v0, Landroid/media/AudioRecordingConfiguration;

    move-object v2, v0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    invoke-direct/range {v2 .. v14}, Landroid/media/AudioRecordingConfiguration;-><init>(IIILandroid/media/AudioFormat;Landroid/media/AudioFormat;ILjava/lang/String;IZI[Landroid/media/audiofx/AudioEffect$Descriptor;[Landroid/media/audiofx/AudioEffect$Descriptor;)V

    return-object v0
.end method

.method private dispatchCallbacks(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 187
    if-nez p1, :cond_3

    .line 188
    return-void

    .line 190
    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 193
    :try_start_6
    iget-boolean v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mHasPublicClients:Z

    if-eqz v1, :cond_f

    .line 194
    invoke-static {p1}, Lcom/android/server/audio/RecordingActivityMonitor;->anonymizeForPublicConsumption(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_14

    .line 195
    :cond_f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 196
    :goto_14
    iget-object v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_41

    .line 198
    :try_start_26
    iget-boolean v4, v3, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mIsPrivileged:Z

    if-eqz v4, :cond_30

    .line 199
    iget-object v3, v3, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mDispatcherCb:Landroid/media/IRecordingConfigDispatcher;

    invoke-interface {v3, p1}, Landroid/media/IRecordingConfigDispatcher;->dispatchRecordingConfigChange(Ljava/util/List;)V

    goto :goto_35

    .line 201
    :cond_30
    iget-object v3, v3, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mDispatcherCb:Landroid/media/IRecordingConfigDispatcher;

    invoke-interface {v3, v1}, Landroid/media/IRecordingConfigDispatcher;->dispatchRecordingConfigChange(Ljava/util/List;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_35} :catch_36
    .catchall {:try_start_26 .. :try_end_35} :catchall_41

    .line 205
    :goto_35
    goto :goto_3e

    .line 203
    :catch_36
    move-exception v3

    .line 204
    :try_start_37
    const-string v4, "AudioService.RecordingActivityMonitor"

    const-string v5, "Could not call dispatchRecordingConfigChange() on client"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    :goto_3e
    goto :goto_1a

    .line 207
    :cond_3f
    monitor-exit v0

    .line 208
    return-void

    .line 207
    :catchall_41
    move-exception p1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_37 .. :try_end_43} :catchall_41

    throw p1
.end method

.method private findStateByPortId(I)I
    .registers 5

    .line 449
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    monitor-enter v0

    .line 450
    const/4 v1, 0x0

    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2d

    .line 451
    iget-object v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    invoke-virtual {v2}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->hasDeathHandler()Z

    move-result v2

    if-nez v2, :cond_2a

    iget-object v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    .line 452
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    invoke-virtual {v2}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->getPortId()I

    move-result v2

    if-ne v2, p1, :cond_2a

    .line 453
    monitor-exit v0

    return v1

    .line 450
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 456
    :cond_2d
    monitor-exit v0

    .line 457
    const/4 p1, -0x1

    return p1

    .line 456
    :catchall_30
    move-exception p1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_30

    throw p1
.end method

.method private findStateByRiid(I)I
    .registers 5

    .line 437
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    monitor-enter v0

    .line 438
    const/4 v1, 0x0

    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 439
    iget-object v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    invoke-virtual {v2}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->getRiid()I

    move-result v2

    if-ne v2, p1, :cond_1c

    .line 440
    monitor-exit v0

    return v1

    .line 438
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 443
    :cond_1f
    monitor-exit v0

    .line 444
    const/4 p1, -0x1

    return p1

    .line 443
    :catchall_22
    move-exception p1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_22

    throw p1
.end method

.method private updateSnapshot(IILandroid/media/AudioRecordingConfiguration;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/media/AudioRecordingConfiguration;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;"
        }
    .end annotation

    .line 374
    nop

    .line 375
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    monitor-enter v0

    .line 376
    nop

    .line 377
    const/4 v1, -0x1

    if-eq p2, v1, :cond_10

    .line 378
    :try_start_8
    invoke-direct {p0, p2}, Lcom/android/server/audio/RecordingActivityMonitor;->findStateByRiid(I)I

    move-result v2

    goto :goto_1c

    .line 431
    :catchall_d
    move-exception p1

    goto/16 :goto_d1

    .line 379
    :cond_10
    if-eqz p3, :cond_1b

    .line 380
    invoke-virtual {p3}, Landroid/media/AudioRecordingConfiguration;->getClientPortId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/audio/RecordingActivityMonitor;->findStateByPortId(I)I

    move-result v2

    goto :goto_1c

    .line 379
    :cond_1b
    move v2, v1

    .line 382
    :goto_1c
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v2, v1, :cond_56

    .line 383
    if-nez p1, :cond_39

    if-eqz p3, :cond_39

    .line 385
    iget-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    new-instance v2, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    invoke-direct {v2, p3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;-><init>(Landroid/media/AudioRecordingConfiguration;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    iget-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    goto :goto_56

    .line 388
    :cond_39
    if-nez p3, :cond_54

    .line 390
    const-string p3, "AudioService.RecordingActivityMonitor"

    const-string v1, "Unexpected event %d for riid %d"

    new-array v2, v3, [Ljava/lang/Object;

    .line 391
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v5

    .line 390
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_54
    monitor-exit v0

    return-object v6

    .line 396
    :cond_56
    :goto_56
    iget-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    .line 399
    if-eqz p1, :cond_aa

    if-eq p1, v5, :cond_9a

    if-eq p1, v3, :cond_95

    const/4 p3, 0x3

    if-eq p1, p3, :cond_8b

    .line 423
    const-string v2, "AudioService.RecordingActivityMonitor"

    const-string v7, "Unknown event %d for riid %d / portid %d"

    new-array p3, p3, [Ljava/lang/Object;

    .line 424
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, p3, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, p3, v5

    invoke-virtual {v1}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->getPortId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, p3, v3

    .line 423
    invoke-static {v7, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    goto :goto_bb

    .line 419
    :cond_8b
    invoke-virtual {v1}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->isActiveConfiguration()Z

    move-result v4

    .line 420
    iget-object p3, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {p3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 421
    goto :goto_bb

    .line 408
    :cond_95
    invoke-virtual {v1, p3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->setConfig(Landroid/media/AudioRecordingConfiguration;)Z

    move-result v4

    .line 409
    goto :goto_bb

    .line 411
    :cond_9a
    invoke-virtual {v1, v4}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->setActive(Z)Z

    move-result v4

    .line 412
    invoke-virtual {v1}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->hasDeathHandler()Z

    move-result p3

    if-nez p3, :cond_bb

    .line 415
    iget-object p3, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {p3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_bb

    .line 401
    :cond_aa
    invoke-virtual {v1, v5}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->setActive(Z)Z

    move-result v2

    .line 402
    if-eqz p3, :cond_ba

    .line 403
    invoke-virtual {v1, p3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->setConfig(Landroid/media/AudioRecordingConfiguration;)Z

    move-result p3

    if-nez p3, :cond_b8

    if-eqz v2, :cond_bb

    :cond_b8
    move v4, v5

    goto :goto_bb

    .line 402
    :cond_ba
    move v4, v2

    .line 427
    :cond_bb
    :goto_bb
    if-eqz v4, :cond_cf

    .line 428
    sget-object p3, Lcom/android/server/audio/RecordingActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;

    invoke-virtual {v1}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->getConfig()Landroid/media/AudioRecordingConfiguration;

    move-result-object v1

    invoke-direct {v2, p1, p2, v1}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;-><init>(IILandroid/media/AudioRecordingConfiguration;)V

    invoke-virtual {p3, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 429
    invoke-virtual {p0, v5}, Lcom/android/server/audio/RecordingActivityMonitor;->getActiveRecordingConfigurations(Z)Ljava/util/List;

    move-result-object v6

    .line 431
    :cond_cf
    monitor-exit v0

    .line 432
    return-object v6

    .line 431
    :goto_d1
    monitor-exit v0
    :try_end_d2
    .catchall {:try_start_8 .. :try_end_d2} :catchall_d

    throw p1
.end method


# virtual methods
.method protected dump(Ljava/io/PrintWriter;)V
    .registers 5

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nRecordActivityMonitor dump time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-static {}, Ljava/text/DateFormat;->getTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    monitor-enter v0

    .line 215
    :try_start_24
    iget-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    .line 216
    invoke-virtual {v2, p1}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->dump(Ljava/io/PrintWriter;)V

    .line 217
    goto :goto_2a

    .line 218
    :cond_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_24 .. :try_end_3b} :catchall_46

    .line 219
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 221
    sget-object v0, Lcom/android/server/audio/RecordingActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 222
    return-void

    .line 218
    :catchall_46
    move-exception p1

    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw p1
.end method

.method getActiveRecordingConfigurations(Z)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;"
        }
    .end annotation

    .line 303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 304
    iget-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    monitor-enter v1

    .line 305
    :try_start_8
    iget-object v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    .line 306
    invoke-virtual {v3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->isActiveConfiguration()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 307
    invoke-virtual {v3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->getConfig()Landroid/media/AudioRecordingConfiguration;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    :cond_27
    goto :goto_e

    .line 310
    :cond_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 313
    if-nez p1, :cond_2f

    .line 314
    invoke-static {v0}, Lcom/android/server/audio/RecordingActivityMonitor;->anonymizeForPublicConsumption(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 316
    :cond_2f
    return-object v0

    .line 310
    :catchall_30
    move-exception p1

    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw p1
.end method

.method initMonitor()V
    .registers 1

    .line 236
    invoke-static {p0}, Landroid/media/AudioSystem;->setRecordingCallback(Landroid/media/AudioSystem$AudioRecordingCallback;)V

    .line 237
    return-void
.end method

.method onAudioServerDied()V
    .registers 9

    .line 243
    nop

    .line 244
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    monitor-enter v0

    .line 245
    const/4 v1, 0x0

    .line 246
    :try_start_5
    iget-object v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3d

    .line 247
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    .line 248
    invoke-virtual {v3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->hasDeathHandler()Z

    move-result v5

    if-nez v5, :cond_3c

    .line 249
    invoke-virtual {v3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->isActiveConfiguration()Z

    move-result v5

    if-eqz v5, :cond_39

    .line 250
    nop

    .line 251
    sget-object v1, Lcom/android/server/audio/RecordingActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v5, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;

    const/4 v6, 0x3

    .line 253
    invoke-virtual {v3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->getRiid()I

    move-result v7

    invoke-virtual {v3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->getConfig()Landroid/media/AudioRecordingConfiguration;

    move-result-object v3

    invoke-direct {v5, v6, v7, v3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;-><init>(IILandroid/media/AudioRecordingConfiguration;)V

    .line 251
    invoke-virtual {v1, v5}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    move v1, v4

    .line 255
    :cond_39
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 257
    :cond_3c
    goto :goto_b

    .line 258
    :cond_3d
    if-eqz v1, :cond_44

    .line 259
    invoke-virtual {p0, v4}, Lcom/android/server/audio/RecordingActivityMonitor;->getActiveRecordingConfigurations(Z)Ljava/util/List;

    move-result-object v1

    goto :goto_45

    .line 258
    :cond_44
    const/4 v1, 0x0

    .line 261
    :goto_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_5 .. :try_end_46} :catchall_4a

    .line 262
    invoke-direct {p0, v1}, Lcom/android/server/audio/RecordingActivityMonitor;->dispatchCallbacks(Ljava/util/List;)V

    .line 263
    return-void

    .line 261
    :catchall_4a
    move-exception v1

    :try_start_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method public onRecordingConfigurationChanged(IIIIIIZ[I[Landroid/media/audiofx/AudioEffect$Descriptor;[Landroid/media/audiofx/AudioEffect$Descriptor;ILjava/lang/String;)V
    .registers 26

    .line 131
    move-object v10, p0

    move v11, p1

    move v12, p2

    move-object v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p8

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p11

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/android/server/audio/RecordingActivityMonitor;->createRecordingConfiguration(III[IIZI[Landroid/media/audiofx/AudioEffect$Descriptor;[Landroid/media/audiofx/AudioEffect$Descriptor;)Landroid/media/AudioRecordingConfiguration;

    move-result-object v0

    .line 134
    invoke-static/range {p5 .. p5}, Landroid/media/MediaRecorder;->isSystemOnlyAudioSource(I)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 136
    sget-object v1, Lcom/android/server/audio/RecordingActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;

    invoke-direct {v2, p1, p2, v0}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;-><init>(IILandroid/media/AudioRecordingConfiguration;)V

    const-string v0, "AudioService.RecordingActivityMonitor"

    invoke-virtual {v2, v0}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 137
    return-void

    .line 139
    :cond_31
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/audio/RecordingActivityMonitor;->updateSnapshot(IILandroid/media/AudioRecordingConfiguration;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/audio/RecordingActivityMonitor;->dispatchCallbacks(Ljava/util/List;)V

    .line 140
    return-void
.end method

.method public recorderEvent(II)V
    .registers 6

    .line 167
    const/4 v0, 0x1

    const/4 v1, -0x1

    if-nez p2, :cond_6

    .line 168
    const/4 v0, 0x0

    goto :goto_a

    .line 169
    :cond_6
    if-ne p2, v0, :cond_9

    .line 170
    goto :goto_a

    :cond_9
    move v0, v1

    .line 171
    :goto_a
    const/4 v2, 0x0

    if-eq p1, v1, :cond_18

    if-ne v0, v1, :cond_10

    goto :goto_18

    .line 176
    :cond_10
    invoke-direct {p0, v0, p1, v2}, Lcom/android/server/audio/RecordingActivityMonitor;->updateSnapshot(IILandroid/media/AudioRecordingConfiguration;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/audio/RecordingActivityMonitor;->dispatchCallbacks(Ljava/util/List;)V

    .line 177
    return-void

    .line 173
    :cond_18
    :goto_18
    sget-object v0, Lcom/android/server/audio/RecordingActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;

    invoke-direct {v1, p2, p1, v2}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;-><init>(IILandroid/media/AudioRecordingConfiguration;)V

    const-string p1, "AudioService.RecordingActivityMonitor"

    invoke-virtual {v1, p1}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 174
    return-void
.end method

.method registerRecordingCallback(Landroid/media/IRecordingConfigDispatcher;Z)V
    .registers 5

    .line 266
    if-nez p1, :cond_3

    .line 267
    return-void

    .line 269
    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 270
    :try_start_6
    new-instance v1, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;

    invoke-direct {v1, p1, p2}, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;-><init>(Landroid/media/IRecordingConfigDispatcher;Z)V

    .line 271
    invoke-virtual {v1}, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->init()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 272
    if-nez p2, :cond_16

    .line 273
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mHasPublicClients:Z

    .line 275
    :cond_16
    iget-object p1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_1b
    monitor-exit v0

    .line 278
    return-void

    .line 277
    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public releaseRecorder(I)V
    .registers 4

    .line 183
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/audio/RecordingActivityMonitor;->updateSnapshot(IILandroid/media/AudioRecordingConfiguration;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/audio/RecordingActivityMonitor;->dispatchCallbacks(Ljava/util/List;)V

    .line 184
    return-void
.end method

.method public trackRecorder(Landroid/os/IBinder;)I
    .registers 6

    .line 146
    const/4 v0, -0x1

    if-nez p1, :cond_c

    .line 147
    const-string p1, "AudioService.RecordingActivityMonitor"

    const-string/jumbo v1, "trackRecorder called with null token"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return v0

    .line 150
    :cond_c
    invoke-static {}, Landroid/media/AudioSystem;->newAudioRecorderId()I

    move-result v1

    .line 151
    new-instance v2, Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;

    invoke-direct {v2, v1, p1}, Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;-><init>(ILandroid/os/IBinder;)V

    .line 152
    invoke-virtual {v2}, Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;->init()Z

    move-result p1

    if-nez p1, :cond_1c

    .line 154
    return v0

    .line 156
    :cond_1c
    iget-object p1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    monitor-enter p1

    .line 157
    :try_start_1f
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    new-instance v3, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    invoke-direct {v3, v1, v2}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;-><init>(ILcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    monitor-exit p1

    .line 160
    return v1

    .line 158
    :catchall_2b
    move-exception v0

    monitor-exit p1
    :try_end_2d
    .catchall {:try_start_1f .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V
    .registers 7

    .line 281
    if-nez p1, :cond_3

    .line 282
    return-void

    .line 284
    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 285
    :try_start_6
    iget-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 286
    const/4 v2, 0x0

    .line 287
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 288
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;

    .line 289
    iget-object v4, v3, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mDispatcherCb:Landroid/media/IRecordingConfigDispatcher;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 290
    invoke-virtual {v3}, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->release()V

    .line 291
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_2d

    .line 293
    :cond_28
    iget-boolean v3, v3, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mIsPrivileged:Z

    if-nez v3, :cond_2d

    .line 294
    const/4 v2, 0x1

    .line 297
    :cond_2d
    :goto_2d
    goto :goto_d

    .line 298
    :cond_2e
    iput-boolean v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mHasPublicClients:Z

    .line 299
    monitor-exit v0

    .line 300
    return-void

    .line 299
    :catchall_32
    move-exception p1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_6 .. :try_end_34} :catchall_32

    throw p1
.end method
