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
    .param p1, "ctxt"  # Landroid/content/Context;

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

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mPackMan:Landroid/content/pm/PackageManager;

    .line 120
    return-void
.end method

.method private static anonymizeForPublicConsumption(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 5
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
    .local p0, "sysConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v0, "publicConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioRecordingConfiguration;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioRecordingConfiguration;

    .line 230
    .local v2, "config":Landroid/media/AudioRecordingConfiguration;
    invoke-static {v2}, Landroid/media/AudioRecordingConfiguration;->anonymizedCopy(Landroid/media/AudioRecordingConfiguration;)Landroid/media/AudioRecordingConfiguration;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    .end local v2  # "config":Landroid/media/AudioRecordingConfiguration;
    goto :goto_9

    .line 232
    :cond_1d
    return-object v0
.end method

.method private createRecordingConfiguration(III[IIZI[Landroid/media/audiofx/AudioEffect$Descriptor;[Landroid/media/audiofx/AudioEffect$Descriptor;)Landroid/media/AudioRecordingConfiguration;
    .registers 29
    .param p1, "uid"  # I
    .param p2, "session"  # I
    .param p3, "source"  # I
    .param p4, "recordingInfo"  # [I
    .param p5, "portId"  # I
    .param p6, "silenced"  # Z
    .param p7, "activeSource"  # I
    .param p8, "clientEffects"  # [Landroid/media/audiofx/AudioEffect$Descriptor;
    .param p9, "effects"  # [Landroid/media/audiofx/AudioEffect$Descriptor;

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

    move-result-object v0

    .line 345
    .local v0, "clientFormat":Landroid/media/AudioFormat;
    new-instance v2, Landroid/media/AudioFormat$Builder;

    invoke-direct {v2}, Landroid/media/AudioFormat$Builder;-><init>()V

    const/4 v3, 0x3

    aget v3, p4, v3

    .line 346
    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    const/4 v3, 0x4

    aget v3, p4, v3

    .line 348
    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    const/4 v3, 0x5

    aget v3, p4, v3

    .line 349
    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    .line 350
    invoke-virtual {v2}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v15

    .line 351
    .local v15, "deviceFormat":Landroid/media/AudioFormat;
    const/4 v2, 0x6

    aget v16, p4, v2

    .line 352
    .local v16, "patchHandle":I
    move-object/from16 v14, p0

    iget-object v2, v14, Lcom/android/server/audio/RecordingActivityMonitor;->mPackMan:Landroid/content/pm/PackageManager;

    move/from16 v13, p1

    invoke-virtual {v2, v13}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v12

    .line 354
    .local v12, "packages":[Ljava/lang/String;
    if-eqz v12, :cond_51

    array-length v2, v12

    if-lez v2, :cond_51

    .line 355
    aget-object v1, v12, v1

    .local v1, "packageName":Ljava/lang/String;
    goto :goto_53

    .line 357
    .end local v1  # "packageName":Ljava/lang/String;
    :cond_51
    const-string v1, ""

    .line 359
    .restart local v1  # "packageName":Ljava/lang/String;
    :goto_53
    new-instance v17, Landroid/media/AudioRecordingConfiguration;

    move-object/from16 v2, v17

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object v6, v0

    move-object v7, v15

    move/from16 v8, v16

    move-object v9, v1

    move/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v18, v12

    .end local v12  # "packages":[Ljava/lang/String;
    .local v18, "packages":[Ljava/lang/String;
    move/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    invoke-direct/range {v2 .. v14}, Landroid/media/AudioRecordingConfiguration;-><init>(IIILandroid/media/AudioFormat;Landroid/media/AudioFormat;ILjava/lang/String;IZI[Landroid/media/audiofx/AudioEffect$Descriptor;[Landroid/media/audiofx/AudioEffect$Descriptor;)V

    return-object v17
.end method

.method private dispatchCallbacks(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 187
    .local p1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
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

    :goto_14
    nop

    .line 196
    .local v1, "configsPublic":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    iget-object v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_42

    .line 198
    .local v3, "rmc":Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;
    :try_start_27
    iget-boolean v4, v3, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mIsPrivileged:Z

    if-eqz v4, :cond_31

    .line 199
    iget-object v4, v3, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mDispatcherCb:Landroid/media/IRecordingConfigDispatcher;

    invoke-interface {v4, p1}, Landroid/media/IRecordingConfigDispatcher;->dispatchRecordingConfigChange(Ljava/util/List;)V

    goto :goto_36

    .line 201
    :cond_31
    iget-object v4, v3, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mDispatcherCb:Landroid/media/IRecordingConfigDispatcher;

    invoke-interface {v4, v1}, Landroid/media/IRecordingConfigDispatcher;->dispatchRecordingConfigChange(Ljava/util/List;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_36} :catch_37
    .catchall {:try_start_27 .. :try_end_36} :catchall_42

    .line 205
    :goto_36
    goto :goto_3f

    .line 203
    :catch_37
    move-exception v4

    .line 204
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_38
    const-string v5, "AudioService.RecordingActivityMonitor"

    const-string v6, "Could not call dispatchRecordingConfigChange() on client"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    .end local v3  # "rmc":Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;
    .end local v4  # "e":Landroid/os/RemoteException;
    :goto_3f
    goto :goto_1b

    .line 207
    .end local v1  # "configsPublic":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    :cond_40
    monitor-exit v0

    .line 208
    return-void

    .line 207
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_42

    throw v1
.end method

.method private findStateByPortId(I)I
    .registers 5
    .param p1, "portId"  # I

    .line 449
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    monitor-enter v0

    .line 450
    const/4 v1, 0x0

    .local v1, "i":I
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
    .end local v1  # "i":I
    :cond_2d
    monitor-exit v0

    .line 457
    const/4 v0, -0x1

    return v0

    .line 456
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_30

    throw v1
.end method

.method private findStateByRiid(I)I
    .registers 5
    .param p1, "riid"  # I

    .line 437
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    monitor-enter v0

    .line 438
    const/4 v1, 0x0

    .local v1, "i":I
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
    .end local v1  # "i":I
    :cond_1f
    monitor-exit v0

    .line 444
    const/4 v0, -0x1

    return v0

    .line 443
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_22

    throw v1
.end method

.method private updateSnapshot(IILandroid/media/AudioRecordingConfiguration;)Ljava/util/List;
    .registers 15
    .param p1, "event"  # I
    .param p2, "riid"  # I
    .param p3, "config"  # Landroid/media/AudioRecordingConfiguration;
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
    const/4 v0, 0x0

    .line 375
    .local v0, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    iget-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    monitor-enter v1

    .line 376
    const/4 v2, -0x1

    .line 377
    .local v2, "stateIndex":I
    const/4 v3, -0x1

    if-eq p2, v3, :cond_11

    .line 378
    :try_start_8
    invoke-direct {p0, p2}, Lcom/android/server/audio/RecordingActivityMonitor;->findStateByRiid(I)I

    move-result v4

    move v2, v4

    goto :goto_1c

    .line 431
    .end local v2  # "stateIndex":I
    :catchall_e
    move-exception v2

    goto/16 :goto_d1

    .line 379
    .restart local v2  # "stateIndex":I
    :cond_11
    if-eqz p3, :cond_1c

    .line 380
    invoke-virtual {p3}, Landroid/media/AudioRecordingConfiguration;->getClientPortId()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/audio/RecordingActivityMonitor;->findStateByPortId(I)I

    move-result v4

    move v2, v4

    .line 382
    :cond_1c
    :goto_1c
    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v2, v3, :cond_55

    .line 383
    if-nez p1, :cond_38

    if-eqz p3, :cond_38

    .line 385
    iget-object v3, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    new-instance v7, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    invoke-direct {v7, p3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;-><init>(Landroid/media/AudioRecordingConfiguration;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    iget-object v3, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    goto :goto_55

    .line 388
    :cond_38
    if-nez p3, :cond_53

    .line 390
    const-string v3, "AudioService.RecordingActivityMonitor"

    const-string v7, "Unexpected event %d for riid %d"

    new-array v4, v4, [Ljava/lang/Object;

    .line 391
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 390
    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_53
    monitor-exit v1

    return-object v0

    .line 396
    :cond_55
    :goto_55
    iget-object v3, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    .line 399
    .local v3, "state":Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;
    if-eqz p1, :cond_aa

    if-eq p1, v6, :cond_9a

    if-eq p1, v4, :cond_95

    const/4 v7, 0x3

    if-eq p1, v7, :cond_8b

    .line 423
    const-string v8, "AudioService.RecordingActivityMonitor"

    const-string v9, "Unknown event %d for riid %d / portid %d"

    new-array v7, v7, [Ljava/lang/Object;

    .line 424
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v6

    invoke-virtual {v3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->getPortId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v4

    .line 423
    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const/4 v4, 0x0

    .local v4, "configChanged":Z
    goto :goto_ba

    .line 419
    .end local v4  # "configChanged":Z
    :cond_8b
    invoke-virtual {v3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->isActiveConfiguration()Z

    move-result v4

    .line 420
    .restart local v4  # "configChanged":Z
    iget-object v5, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 421
    goto :goto_ba

    .line 408
    .end local v4  # "configChanged":Z
    :cond_95
    invoke-virtual {v3, p3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->setConfig(Landroid/media/AudioRecordingConfiguration;)Z

    move-result v4

    .line 409
    .restart local v4  # "configChanged":Z
    goto :goto_ba

    .line 411
    .end local v4  # "configChanged":Z
    :cond_9a
    invoke-virtual {v3, v5}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->setActive(Z)Z

    move-result v4

    .line 412
    .restart local v4  # "configChanged":Z
    invoke-virtual {v3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->hasDeathHandler()Z

    move-result v5

    if-nez v5, :cond_ba

    .line 415
    iget-object v5, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_ba

    .line 401
    .end local v4  # "configChanged":Z
    :cond_aa
    invoke-virtual {v3, v6}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->setActive(Z)Z

    move-result v4

    .line 402
    .restart local v4  # "configChanged":Z
    if-eqz p3, :cond_ba

    .line 403
    invoke-virtual {v3, p3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->setConfig(Landroid/media/AudioRecordingConfiguration;)Z

    move-result v7

    if-nez v7, :cond_b8

    if-eqz v4, :cond_b9

    :cond_b8
    move v5, v6

    :cond_b9
    move v4, v5

    .line 427
    :cond_ba
    :goto_ba
    if-eqz v4, :cond_cf

    .line 428
    sget-object v5, Lcom/android/server/audio/RecordingActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v7, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;

    invoke-virtual {v3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->getConfig()Landroid/media/AudioRecordingConfiguration;

    move-result-object v8

    invoke-direct {v7, p1, p2, v8}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;-><init>(IILandroid/media/AudioRecordingConfiguration;)V

    invoke-virtual {v5, v7}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 429
    invoke-virtual {p0, v6}, Lcom/android/server/audio/RecordingActivityMonitor;->getActiveRecordingConfigurations(Z)Ljava/util/List;

    move-result-object v5

    move-object v0, v5

    .line 431
    .end local v2  # "stateIndex":I
    .end local v3  # "state":Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;
    .end local v4  # "configChanged":Z
    :cond_cf
    monitor-exit v1

    .line 432
    return-object v0

    .line 431
    :goto_d1
    monitor-exit v1
    :try_end_d2
    .catchall {:try_start_8 .. :try_end_d2} :catchall_e

    throw v2
.end method


# virtual methods
.method protected dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"  # Ljava/io/PrintWriter;

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
    .local v2, "state":Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;
    invoke-virtual {v2, p1}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->dump(Ljava/io/PrintWriter;)V

    .line 217
    .end local v2  # "state":Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;
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
    move-exception v1

    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v1
.end method

.method getActiveRecordingConfigurations(Z)Ljava/util/List;
    .registers 7
    .param p1, "isPrivileged"  # Z
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
    .local v0, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
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
    .local v3, "state":Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;
    invoke-virtual {v3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->isActiveConfiguration()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 307
    invoke-virtual {v3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->getConfig()Landroid/media/AudioRecordingConfiguration;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    .end local v3  # "state":Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;
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
    move-exception v2

    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v2
.end method

.method initMonitor()V
    .registers 1

    .line 236
    invoke-static {p0}, Landroid/media/AudioSystem;->setRecordingCallback(Landroid/media/AudioSystem$AudioRecordingCallback;)V

    .line 237
    return-void
.end method

.method onAudioServerDied()V
    .registers 11

    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    iget-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    monitor-enter v1

    .line 245
    const/4 v2, 0x0

    .line 246
    .local v2, "configChanged":Z
    :try_start_5
    iget-object v3, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;>;"
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 247
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    .line 248
    .local v4, "state":Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;
    invoke-virtual {v4}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->hasDeathHandler()Z

    move-result v5

    if-nez v5, :cond_3a

    .line 249
    invoke-virtual {v4}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->isActiveConfiguration()Z

    move-result v5

    if-eqz v5, :cond_37

    .line 250
    const/4 v2, 0x1

    .line 251
    sget-object v5, Lcom/android/server/audio/RecordingActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v6, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;

    const/4 v7, 0x3

    .line 253
    invoke-virtual {v4}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->getRiid()I

    move-result v8

    invoke-virtual {v4}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->getConfig()Landroid/media/AudioRecordingConfiguration;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;-><init>(IILandroid/media/AudioRecordingConfiguration;)V

    .line 251
    invoke-virtual {v5, v6}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 255
    :cond_37
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 257
    .end local v4  # "state":Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;
    :cond_3a
    goto :goto_b

    .line 258
    .end local v3  # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;>;"
    :cond_3b
    if-eqz v2, :cond_43

    .line 259
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/server/audio/RecordingActivityMonitor;->getActiveRecordingConfigurations(Z)Ljava/util/List;

    move-result-object v3

    move-object v0, v3

    .line 261
    .end local v2  # "configChanged":Z
    :cond_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_5 .. :try_end_44} :catchall_48

    .line 262
    invoke-direct {p0, v0}, Lcom/android/server/audio/RecordingActivityMonitor;->dispatchCallbacks(Ljava/util/List;)V

    .line 263
    return-void

    .line 261
    :catchall_48
    move-exception v2

    :try_start_49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw v2
.end method

.method public onRecordingConfigurationChanged(IIIIIIZ[I[Landroid/media/audiofx/AudioEffect$Descriptor;[Landroid/media/audiofx/AudioEffect$Descriptor;ILjava/lang/String;)V
    .registers 26
    .param p1, "event"  # I
    .param p2, "riid"  # I
    .param p3, "uid"  # I
    .param p4, "session"  # I
    .param p5, "source"  # I
    .param p6, "portId"  # I
    .param p7, "silenced"  # Z
    .param p8, "recordingInfo"  # [I
    .param p9, "clientEffects"  # [Landroid/media/audiofx/AudioEffect$Descriptor;
    .param p10, "effects"  # [Landroid/media/audiofx/AudioEffect$Descriptor;
    .param p11, "activeSource"  # I
    .param p12, "packName"  # Ljava/lang/String;

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
    .local v0, "config":Landroid/media/AudioRecordingConfiguration;
    invoke-static/range {p5 .. p5}, Landroid/media/MediaRecorder;->isSystemOnlyAudioSource(I)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 136
    sget-object v1, Lcom/android/server/audio/RecordingActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;

    invoke-direct {v2, p1, p2, v0}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;-><init>(IILandroid/media/AudioRecordingConfiguration;)V

    const-string v3, "AudioService.RecordingActivityMonitor"

    invoke-virtual {v2, v3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 137
    return-void

    .line 139
    :cond_31
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/audio/RecordingActivityMonitor;->updateSnapshot(IILandroid/media/AudioRecordingConfiguration;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/audio/RecordingActivityMonitor;->dispatchCallbacks(Ljava/util/List;)V

    .line 140
    return-void
.end method

.method public recorderEvent(II)V
    .registers 7
    .param p1, "riid"  # I
    .param p2, "event"  # I

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

    :goto_a
    nop

    .line 171
    .local v0, "configEvent":I
    const/4 v2, 0x0

    if-eq p1, v1, :cond_19

    if-ne v0, v1, :cond_11

    goto :goto_19

    .line 176
    :cond_11
    invoke-direct {p0, v0, p1, v2}, Lcom/android/server/audio/RecordingActivityMonitor;->updateSnapshot(IILandroid/media/AudioRecordingConfiguration;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/audio/RecordingActivityMonitor;->dispatchCallbacks(Ljava/util/List;)V

    .line 177
    return-void

    .line 173
    :cond_19
    :goto_19
    sget-object v1, Lcom/android/server/audio/RecordingActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v3, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;

    invoke-direct {v3, p2, p1, v2}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;-><init>(IILandroid/media/AudioRecordingConfiguration;)V

    const-string v2, "AudioService.RecordingActivityMonitor"

    invoke-virtual {v3, v2}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 174
    return-void
.end method

.method registerRecordingCallback(Landroid/media/IRecordingConfigDispatcher;Z)V
    .registers 6
    .param p1, "rcdb"  # Landroid/media/IRecordingConfigDispatcher;
    .param p2, "isPrivileged"  # Z

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
    .local v1, "rmc":Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;
    invoke-virtual {v1}, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->init()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 272
    if-nez p2, :cond_16

    .line 273
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mHasPublicClients:Z

    .line 275
    :cond_16
    iget-object v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    .end local v1  # "rmc":Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;
    :cond_1b
    monitor-exit v0

    .line 278
    return-void

    .line 277
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public releaseRecorder(I)V
    .registers 4
    .param p1, "riid"  # I

    .line 183
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/audio/RecordingActivityMonitor;->updateSnapshot(IILandroid/media/AudioRecordingConfiguration;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/audio/RecordingActivityMonitor;->dispatchCallbacks(Ljava/util/List;)V

    .line 184
    return-void
.end method

.method public trackRecorder(Landroid/os/IBinder;)I
    .registers 7
    .param p1, "recorder"  # Landroid/os/IBinder;

    .line 146
    const/4 v0, -0x1

    if-nez p1, :cond_c

    .line 147
    const-string v1, "AudioService.RecordingActivityMonitor"

    const-string/jumbo v2, "trackRecorder called with null token"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return v0

    .line 150
    :cond_c
    invoke-static {}, Landroid/media/AudioSystem;->newAudioRecorderId()I

    move-result v1

    .line 151
    .local v1, "newRiid":I
    new-instance v2, Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;

    invoke-direct {v2, v1, p1}, Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;-><init>(ILandroid/os/IBinder;)V

    .line 152
    .local v2, "handler":Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;
    invoke-virtual {v2}, Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;->init()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 154
    return v0

    .line 156
    :cond_1c
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    monitor-enter v0

    .line 157
    :try_start_1f
    iget-object v3, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    new-instance v4, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    invoke-direct {v4, v1, v2}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;-><init>(ILcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    monitor-exit v0

    .line 160
    return v1

    .line 158
    :catchall_2b
    move-exception v3

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_1f .. :try_end_2d} :catchall_2b

    throw v3
.end method

.method unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V
    .registers 7
    .param p1, "rcdb"  # Landroid/media/IRecordingConfigDispatcher;

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
    .local v1, "clientIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;>;"
    const/4 v2, 0x0

    .line 287
    .local v2, "hasPublicClients":Z
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 288
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;

    .line 289
    .local v3, "rmc":Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;
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
    iget-boolean v4, v3, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mIsPrivileged:Z

    if-nez v4, :cond_2d

    .line 294
    const/4 v2, 0x1

    .line 297
    .end local v3  # "rmc":Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;
    :cond_2d
    :goto_2d
    goto :goto_d

    .line 298
    :cond_2e
    iput-boolean v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mHasPublicClients:Z

    .line 299
    .end local v1  # "clientIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;>;"
    .end local v2  # "hasPublicClients":Z
    monitor-exit v0

    .line 300
    return-void

    .line 299
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_6 .. :try_end_34} :catchall_32

    throw v1
.end method
