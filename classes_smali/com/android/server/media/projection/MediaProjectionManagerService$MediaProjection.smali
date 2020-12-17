.class final Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;
.super Landroid/media/projection/IMediaProjection$Stub;
.source "MediaProjectionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/projection/MediaProjectionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaProjection"
.end annotation


# instance fields
.field private mCallback:Landroid/media/projection/IMediaProjectionCallback;

.field private mDeathEater:Landroid/os/IBinder$DeathRecipient;

.field private final mIsPrivileged:Z

.field private final mTargetSdkVersion:I

.field private mToken:Landroid/os/IBinder;

.field private mType:I

.field public final packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

.field public final uid:I

.field public final userHandle:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Lcom/android/server/media/projection/MediaProjectionManagerService;IILjava/lang/String;IZ)V
    .registers 8
    .param p2, "type"  # I
    .param p3, "uid"  # I
    .param p4, "packageName"  # Ljava/lang/String;
    .param p5, "targetSdkVersion"  # I
    .param p6, "isPrivileged"  # Z

    .line 409
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-direct {p0}, Landroid/media/projection/IMediaProjection$Stub;-><init>()V

    .line 410
    iput p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mType:I

    .line 411
    iput p3, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    .line 412
    iput-object p4, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    .line 413
    new-instance p1, Landroid/os/UserHandle;

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p1, v0}, Landroid/os/UserHandle;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->userHandle:Landroid/os/UserHandle;

    .line 414
    iput p5, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mTargetSdkVersion:I

    .line 415
    iput-boolean p6, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mIsPrivileged:Z

    .line 416
    return-void
.end method


# virtual methods
.method public applyVirtualDisplayFlags(I)I
    .registers 4
    .param p1, "flags"  # I

    .line 438
    iget v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mType:I

    if-nez v0, :cond_9

    .line 439
    and-int/lit8 p1, p1, -0x9

    .line 440
    or-int/lit8 p1, p1, 0x12

    .line 442
    return p1

    .line 443
    :cond_9
    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 444
    and-int/lit8 p1, p1, -0x12

    .line 446
    or-int/lit8 p1, p1, 0xa

    .line 448
    return p1

    .line 449
    :cond_11
    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    .line 450
    and-int/lit8 p1, p1, -0x9

    .line 451
    or-int/lit8 p1, p1, 0x13

    .line 454
    return p1

    .line 456
    :cond_19
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown MediaProjection type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public canProjectAudio()Z
    .registers 4

    .line 431
    iget v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    const/4 v2, 0x2

    if-eq v0, v2, :cond_c

    if-nez v0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :cond_c
    :goto_c
    return v1
.end method

.method public canProjectSecureVideo()Z
    .registers 2

    .line 426
    const/4 v0, 0x0

    return v0
.end method

.method public canProjectVideo()Z
    .registers 3

    .line 420
    iget v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    if-nez v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :cond_9
    :goto_9
    return v1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mType:I

    invoke-static {v1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$1700(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 544
    return-void
.end method

.method public getProjectionInfo()Landroid/media/projection/MediaProjectionInfo;
    .registers 4

    .line 535
    new-instance v0, Landroid/media/projection/MediaProjectionInfo;

    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->userHandle:Landroid/os/UserHandle;

    invoke-direct {v0, v1, v2}, Landroid/media/projection/MediaProjectionInfo;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-object v0
.end method

.method public registerCallback(Landroid/media/projection/IMediaProjectionCallback;)V
    .registers 4
    .param p1, "callback"  # Landroid/media/projection/IMediaProjectionCallback;

    .line 520
    if-eqz p1, :cond_c

    .line 523
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$1400(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->add(Landroid/media/projection/IMediaProjectionCallback;)V

    .line 524
    return-void

    .line 521
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method requiresForegroundService()Z
    .registers 3

    .line 539
    iget v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mTargetSdkVersion:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_c

    iget-boolean v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mIsPrivileged:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public start(Landroid/media/projection/IMediaProjectionCallback;)V
    .registers 6
    .param p1, "callback"  # Landroid/media/projection/IMediaProjectionCallback;

    .line 462
    if-eqz p1, :cond_87

    .line 465
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$1200(Lcom/android/server/media/projection/MediaProjectionManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 466
    :try_start_9
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$700(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 467
    const-string v1, "MediaProjectionManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " attempted to start already started MediaProjection"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    monitor-exit v0

    return-void

    .line 472
    :cond_36
    nop

    .line 473
    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->requiresForegroundService()Z

    move-result v1

    if-eqz v1, :cond_56

    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 474
    invoke-static {v1}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$1300(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/app/ActivityManagerInternal;

    move-result-object v1

    iget v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityManagerInternal;->hasRunningForegroundService(II)Z

    move-result v1

    if-eqz v1, :cond_4e

    goto :goto_56

    .line 476
    :cond_4e
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Media projections require a foreground service of type ServiceInfo.FOREGROUND_SERVICE_TYPE_MEDIA_PROJECTION"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;
    .end local p1  # "callback":Landroid/media/projection/IMediaProjectionCallback;
    throw v1

    .line 480
    .restart local p0  # "this":Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;
    .restart local p1  # "callback":Landroid/media/projection/IMediaProjectionCallback;
    :cond_56
    :goto_56
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mCallback:Landroid/media/projection/IMediaProjectionCallback;

    .line 481
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mCallback:Landroid/media/projection/IMediaProjectionCallback;

    invoke-virtual {p0, v1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->registerCallback(Landroid/media/projection/IMediaProjectionCallback;)V
    :try_end_5d
    .catchall {:try_start_9 .. :try_end_5d} :catchall_84

    .line 483
    :try_start_5d
    invoke-interface {p1}, Landroid/media/projection/IMediaProjectionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mToken:Landroid/os/IBinder;

    .line 484
    new-instance v1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection$1;-><init>(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;Landroid/media/projection/IMediaProjectionCallback;)V

    iput-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mDeathEater:Landroid/os/IBinder$DeathRecipient;

    .line 491
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mDeathEater:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_72} :catch_7a
    .catchall {:try_start_5d .. :try_end_72} :catchall_84

    .line 496
    nop

    .line 497
    :try_start_73
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v1, p0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$1500(Lcom/android/server/media/projection/MediaProjectionManagerService;Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V

    .line 498
    monitor-exit v0

    .line 499
    return-void

    .line 492
    :catch_7a
    move-exception v1

    .line 493
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "MediaProjectionManagerService"

    const-string v3, "MediaProjectionCallbacks must be valid, aborting MediaProjection"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 495
    monitor-exit v0

    return-void

    .line 498
    .end local v1  # "e":Landroid/os/RemoteException;
    :catchall_84
    move-exception v1

    monitor-exit v0
    :try_end_86
    .catchall {:try_start_73 .. :try_end_86} :catchall_84

    throw v1

    .line 463
    :cond_87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stop()V
    .registers 5

    .line 503
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$1200(Lcom/android/server/media/projection/MediaProjectionManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 504
    :try_start_7
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$700(Lcom/android/server/media/projection/MediaProjectionManagerService;Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 505
    const-string v1, "MediaProjectionManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to stop inactive MediaProjection (uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 505
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    monitor-exit v0

    return-void

    .line 510
    :cond_40
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v1, p0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$1600(Lcom/android/server/media/projection/MediaProjectionManagerService;Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V

    .line 511
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mDeathEater:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 512
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mToken:Landroid/os/IBinder;

    .line 513
    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mCallback:Landroid/media/projection/IMediaProjectionCallback;

    invoke-virtual {p0, v2}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->unregisterCallback(Landroid/media/projection/IMediaProjectionCallback;)V

    .line 514
    iput-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->mCallback:Landroid/media/projection/IMediaProjectionCallback;

    .line 515
    monitor-exit v0

    .line 516
    return-void

    .line 515
    :catchall_59
    move-exception v1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_7 .. :try_end_5b} :catchall_59

    throw v1
.end method

.method public unregisterCallback(Landroid/media/projection/IMediaProjectionCallback;)V
    .registers 4
    .param p1, "callback"  # Landroid/media/projection/IMediaProjectionCallback;

    .line 528
    if-eqz p1, :cond_c

    .line 531
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$1400(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->remove(Landroid/media/projection/IMediaProjectionCallback;)V

    .line 532
    return-void

    .line 529
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
