.class public Lcom/android/server/pm/StagingManager;
.super Ljava/lang/Object;
.source "StagingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/StagingManager$LocalIntentReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StagingManager"


# instance fields
.field private final mApexManager:Lcom/android/server/pm/ApexManager;

.field private final mBgHandler:Landroid/os/Handler;

.field private final mPi:Lcom/android/server/pm/PackageInstallerService;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mStagedSessions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStagedSessions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageInstallerService;Lcom/android/server/pm/ApexManager;Landroid/content/Context;)V
    .registers 5

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    .line 81
    iput-object p1, p0, Lcom/android/server/pm/StagingManager;->mPi:Lcom/android/server/pm/PackageInstallerService;

    .line 82
    iput-object p2, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 83
    const-string/jumbo p1, "power"

    invoke-virtual {p3, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/server/pm/StagingManager;->mPowerManager:Landroid/os/PowerManager;

    .line 84
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/StagingManager;->mBgHandler:Landroid/os/Handler;

    .line 85
    return-void
.end method

.method private checkStateAndResume(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 4

    .line 651
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_7

    .line 653
    return-void

    .line 656
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isStagedSessionFailed()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isStagedSessionApplied()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_29

    .line 660
    :cond_14
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isStagedSessionReady()Z

    move-result v0

    if-nez v0, :cond_25

    .line 663
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/-$$Lambda$StagingManager$P2Wce7WbRVyHPDejgMPiovUuc0M;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/-$$Lambda$StagingManager$P2Wce7WbRVyHPDejgMPiovUuc0M;-><init>(Lcom/android/server/pm/StagingManager;Lcom/android/server/pm/PackageInstallerSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_28

    .line 667
    :cond_25
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->resumeSession(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 669
    :goto_28
    return-void

    .line 658
    :cond_29
    :goto_29
    return-void
.end method

.method private commitApkSession(Lcom/android/server/pm/PackageInstallerSession;IZ)Z
    .registers 6

    .line 435
    if-nez p3, :cond_1e

    .line 436
    iget-object p3, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget p3, p3, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v0, 0x40000

    and-int/2addr p3, v0

    if-eqz p3, :cond_1e

    .line 439
    nop

    .line 440
    const-string/jumbo p3, "rollback"

    invoke-static {p3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p3

    .line 439
    invoke-static {p3}, Landroid/content/rollback/IRollbackManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/rollback/IRollbackManager;

    move-result-object p3

    .line 442
    :try_start_17
    iget v0, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-interface {p3, p2, v0}, Landroid/content/rollback/IRollbackManager;->notifyStagedApkSession(II)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1c} :catch_1d

    .line 445
    goto :goto_1e

    .line 443
    :catch_1d
    move-exception p3

    .line 449
    :cond_1e
    :goto_1e
    new-instance p3, Lcom/android/server/pm/StagingManager$LocalIntentReceiver;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Lcom/android/server/pm/StagingManager$LocalIntentReceiver;-><init>(Lcom/android/server/pm/StagingManager$1;)V

    .line 450
    invoke-virtual {p3}, Lcom/android/server/pm/StagingManager$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/PackageInstallerSession;->commit(Landroid/content/IntentSender;Z)V

    .line 451
    invoke-virtual {p3}, Lcom/android/server/pm/StagingManager$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object p1

    .line 452
    const/4 p3, 0x1

    const-string v0, "android.content.pm.extra.STATUS"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 454
    if-nez v0, :cond_3a

    .line 455
    return p3

    .line 457
    :cond_3a
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failure to install APK staged session "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " ["

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    const-string p2, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 457
    const-string p2, "StagingManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    return v1
.end method

.method private createAndWriteApkSession(Lcom/android/server/pm/PackageInstallerSession;Z)Lcom/android/server/pm/PackageInstallerSession;
    .registers 14

    .line 388
    iget-object v0, p1, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    const/4 v1, 0x0

    const-string v2, "StagingManager"

    if-nez v0, :cond_d

    .line 389
    const-string p1, "Attempting to install a staged APK session with no staging dir"

    invoke-static {v2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return-object v1

    .line 392
    :cond_d
    iget-object v0, p1, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/server/pm/StagingManager;->findAPKsInDir(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    .line 393
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 394
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t find staged APK in "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    return-object v1

    .line 398
    :cond_34
    iget-object v3, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$SessionParams;->copy()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object v3

    .line 399
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    .line 400
    iget v5, v3, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v6, 0x200000

    or-int/2addr v5, v6

    iput v5, v3, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 402
    if-eqz p2, :cond_56

    .line 403
    iget p2, v3, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v5, -0x40001

    and-int/2addr p2, v5

    iput p2, v3, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 404
    iget p2, v3, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v5, 0x800000

    or-int/2addr p2, v5

    iput p2, v3, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_5d

    .line 406
    :cond_56
    iget p2, v3, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v5, 0x80000

    or-int/2addr p2, v5

    iput p2, v3, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 409
    :goto_5d
    :try_start_5d
    iget-object p2, p0, Lcom/android/server/pm/StagingManager;->mPi:Lcom/android/server/pm/PackageInstallerService;

    .line 410
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v5

    .line 409
    invoke-virtual {p2, v3, v5, v4}, Lcom/android/server/pm/PackageInstallerService;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    move-result p2

    .line 412
    iget-object v3, p0, Lcom/android/server/pm/StagingManager;->mPi:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {v3, p2}, Lcom/android/server/pm/PackageInstallerService;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object p2

    .line 413
    invoke-virtual {p2}, Lcom/android/server/pm/PackageInstallerSession;->open()V

    .line 414
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_74
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_bb

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 415
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 416
    const/high16 v5, 0x10000000

    invoke-static {v4, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v10

    .line 418
    if-nez v10, :cond_90

    const-wide/16 v5, -0x1

    goto :goto_94

    :cond_90
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v5

    :goto_94
    move-wide v8, v5

    .line 419
    const-wide/16 v5, 0x0

    cmp-long v5, v8, v5

    if-gez v5, :cond_b0

    .line 420
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to get size of: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    return-object v1

    .line 423
    :cond_b0
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    move-object v4, p2

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/pm/PackageInstallerSession;->write(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_ba} :catch_bc
    .catch Landroid/os/ParcelableException; {:try_start_5d .. :try_end_ba} :catch_bc

    .line 424
    goto :goto_74

    .line 425
    :cond_bb
    return-object p2

    .line 426
    :catch_bc
    move-exception p2

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure to install APK staged session "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 428
    return-object v1
.end method

.method private findAPKsInDir(Ljava/io/File;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 375
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 376
    if-eqz p1, :cond_31

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 377
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_31

    aget-object v3, p1, v2

    .line 378
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".apk"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 379
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 383
    :cond_31
    return-object v0
.end method

.method private installApksInSession(Lcom/android/server/pm/PackageInstallerSession;Z)Z
    .registers 8

    .line 464
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1b

    invoke-static {p1}, Lcom/android/server/pm/StagingManager;->isApexSession(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 466
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/StagingManager;->createAndWriteApkSession(Lcom/android/server/pm/PackageInstallerSession;Z)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v0

    .line 467
    if-nez v0, :cond_14

    .line 468
    return v1

    .line 470
    :cond_14
    iget p1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/pm/StagingManager;->commitApkSession(Lcom/android/server/pm/PackageInstallerSession;IZ)Z

    move-result p1

    return p1

    .line 471
    :cond_1b
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_c1

    .line 477
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 478
    nop

    .line 479
    :try_start_26
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionIds()[I

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v3

    new-instance v4, Lcom/android/server/pm/-$$Lambda$StagingManager$SBQcrV7wm5jyjLxIITacOTLs_k4;

    invoke-direct {v4, p0}, Lcom/android/server/pm/-$$Lambda$StagingManager$SBQcrV7wm5jyjLxIITacOTLs_k4;-><init>(Lcom/android/server/pm/StagingManager;)V

    .line 481
    invoke-interface {v3, v4}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v4, Lcom/android/server/pm/-$$Lambda$StagingManager$W4xn2etqxcpB6KS2WmEUcUMWK4M;->INSTANCE:Lcom/android/server/pm/-$$Lambda$StagingManager$W4xn2etqxcpB6KS2WmEUcUMWK4M;

    .line 483
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 484
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 485
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_26 .. :try_end_48} :catchall_be

    .line 486
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 488
    return v2

    .line 490
    :cond_4f
    iget-object v0, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionParams;->copy()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object v0

    .line 491
    iput-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    .line 492
    if-eqz p2, :cond_61

    .line 493
    iget v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v4, -0x40001

    and-int/2addr v2, v4

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 496
    :cond_61
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mPi:Lcom/android/server/pm/PackageInstallerService;

    .line 497
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v4

    .line 496
    invoke-virtual {v2, v0, v4, v1}, Lcom/android/server/pm/PackageInstallerService;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    move-result v0

    .line 499
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mPi:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {v2, v0}, Lcom/android/server/pm/PackageInstallerService;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v0

    .line 501
    :try_start_71
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->open()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_a4

    .line 506
    nop

    .line 508
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_79
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    .line 509
    nop

    .line 510
    invoke-direct {p0, v3, p2}, Lcom/android/server/pm/StagingManager;->createAndWriteApkSession(Lcom/android/server/pm/PackageInstallerSession;Z)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v3

    .line 511
    if-nez v3, :cond_8d

    .line 512
    return v1

    .line 515
    :cond_8d
    :try_start_8d
    iget v3, v3, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageInstallerSession;->addChildSessionId(I)V
    :try_end_92
    .catch Ljava/lang/IllegalStateException; {:try_start_8d .. :try_end_92} :catch_94

    .line 519
    nop

    .line 520
    goto :goto_79

    .line 516
    :catch_94
    move-exception p1

    .line 517
    const-string p2, "StagingManager"

    const-string v0, "Failed to add a child session for installing the APK files"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 518
    return v1

    .line 521
    :cond_9d
    iget p1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/pm/StagingManager;->commitApkSession(Lcom/android/server/pm/PackageInstallerSession;IZ)Z

    move-result p1

    return p1

    .line 502
    :catch_a4
    move-exception p2

    .line 503
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to prepare multi-package session for staged session "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StagingManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    return v1

    .line 485
    :catchall_be
    move-exception p1

    :try_start_bf
    monitor-exit v0
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_be

    throw p1

    .line 524
    :cond_c1
    return v2
.end method

.method private static isApexSession(Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 2

    .line 201
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget p0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v0, 0x20000

    and-int/2addr p0, v0

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method private static isApexSessionFailed(Landroid/apex/ApexSessionInfo;)Z
    .registers 2

    .line 593
    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isActivationFailed:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isUnknown:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isRolledBack:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isRollbackInProgress:Z

    if-nez v0, :cond_17

    iget-boolean p0, p0, Landroid/apex/ApexSessionInfo;->isRollbackFailed:Z

    if-eqz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method private isApexSessionFinalized(Landroid/apex/ApexSessionInfo;)Z
    .registers 3

    .line 586
    iget-boolean v0, p1, Landroid/apex/ApexSessionInfo;->isUnknown:Z

    if-nez v0, :cond_13

    iget-boolean v0, p1, Landroid/apex/ApexSessionInfo;->isActivationFailed:Z

    if-nez v0, :cond_13

    iget-boolean v0, p1, Landroid/apex/ApexSessionInfo;->isSuccess:Z

    if-nez v0, :cond_13

    iget-boolean p1, p1, Landroid/apex/ApexSessionInfo;->isRolledBack:Z

    if-eqz p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p1, 0x1

    :goto_14
    return p1
.end method

.method private isMultiPackageSessionComplete(Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStagedSessions"
        }
    .end annotation

    .line 603
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 605
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionIds()[I

    move-result-object p1

    array-length v0, p1

    move v2, v1

    :goto_d
    if-ge v2, v0, :cond_1d

    aget v3, p1, v2

    .line 606
    iget-object v4, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1a

    .line 607
    return v1

    .line 605
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 610
    :cond_1d
    const/4 p1, 0x1

    return p1

    .line 612
    :cond_1f
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 613
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/PackageInstallerSession;

    .line 614
    if-nez p1, :cond_34

    .line 615
    return v1

    .line 617
    :cond_34
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->isMultiPackageSessionComplete(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result p1

    return p1

    .line 619
    :cond_39
    const-string p1, "StagingManager"

    const-string v0, "Attempting to restore an invalid multi-package session."

    invoke-static {p1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    return v1
.end method

.method static synthetic lambda$installApksInSession$9(Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 1

    .line 483
    invoke-static {p0}, Lcom/android/server/pm/StagingManager;->isApexSession(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic lambda$preRebootVerification$2(Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 1

    .line 220
    invoke-static {p0}, Lcom/android/server/pm/StagingManager;->isApexSession(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$sessionContains$4(Ljava/util/function/Predicate;Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 2

    .line 298
    invoke-interface {p0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$sessionContainsApex$5(Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 1

    .line 305
    invoke-static {p0}, Lcom/android/server/pm/StagingManager;->isApexSession(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$sessionContainsApk$6(Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 1

    .line 309
    invoke-static {p0}, Lcom/android/server/pm/StagingManager;->isApexSession(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic lambda$submitSessionToApexService$0(Lcom/android/server/pm/PackageInstallerSession;)I
    .registers 1

    .line 150
    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    return p0
.end method

.method private preRebootVerification(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 9

    .line 205
    nop

    .line 207
    new-instance v0, Landroid/apex/ApexInfoList;

    invoke-direct {v0}, Landroid/apex/ApexInfoList;-><init>()V

    .line 210
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_19

    .line 211
    invoke-static {p1}, Lcom/android/server/pm/StagingManager;->isApexSession(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 212
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/pm/StagingManager;->submitSessionToApexService(Lcom/android/server/pm/PackageInstallerSession;Ljava/util/List;Landroid/apex/ApexInfoList;)Z

    move-result v1

    goto :goto_4d

    .line 214
    :cond_19
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 215
    nop

    .line 216
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionIds()[I

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v3, Lcom/android/server/pm/-$$Lambda$StagingManager$BE6qQjRTVtd2eql5RkbIXPjyDYY;

    invoke-direct {v3, p0}, Lcom/android/server/pm/-$$Lambda$StagingManager$BE6qQjRTVtd2eql5RkbIXPjyDYY;-><init>(Lcom/android/server/pm/StagingManager;)V

    .line 218
    invoke-interface {v1, v3}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v3, Lcom/android/server/pm/-$$Lambda$StagingManager$AgaT69AQKjTcEHdOPat7Y2rDy90;->INSTANCE:Lcom/android/server/pm/-$$Lambda$StagingManager$AgaT69AQKjTcEHdOPat7Y2rDy90;

    .line 220
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 221
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 222
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4c

    .line 223
    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/pm/StagingManager;->submitSessionToApexService(Lcom/android/server/pm/PackageInstallerSession;Ljava/util/List;Landroid/apex/ApexInfoList;)Z

    move-result v1

    goto :goto_4d

    .line 227
    :cond_4c
    move v1, v2

    :goto_4d
    if-nez v1, :cond_50

    .line 229
    return-void

    .line 232
    :cond_50
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->sessionContainsApk(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 233
    invoke-direct {p0, p1, v2}, Lcom/android/server/pm/StagingManager;->installApksInSession(Lcom/android/server/pm/PackageInstallerSession;Z)Z

    move-result v1

    if-nez v1, :cond_62

    .line 234
    const-string v0, "APK verification failed. Check logcat messages for more information."

    invoke-virtual {p1, v2, v0}, Lcom/android/server/pm/PackageInstallerSession;->setStagedSessionFailed(ILjava/lang/String;)V

    .line 238
    return-void

    .line 242
    :cond_62
    iget-object v1, v0, Landroid/apex/ApexInfoList;->apexInfos:[Landroid/apex/ApexInfo;

    if-eqz v1, :cond_a6

    iget-object v1, v0, Landroid/apex/ApexInfoList;->apexInfos:[Landroid/apex/ApexInfo;

    array-length v1, v1

    if-lez v1, :cond_a6

    .line 247
    iget-object v0, v0, Landroid/apex/ApexInfoList;->apexInfos:[Landroid/apex/ApexInfo;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_6f
    if-ge v3, v1, :cond_a6

    aget-object v4, v0, v3

    .line 248
    iget-object v5, v4, Landroid/apex/ApexInfo;->packagePath:Ljava/lang/String;

    iget-object v6, v4, Landroid/apex/ApexInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/android/server/pm/StagingManager;->validateApexSignature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a3

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "APK-container signature verification failed for package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v4, Landroid/apex/ApexInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Signature of file "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v4, Landroid/apex/ApexInfo;->packagePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not match the signature of  the package already installed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/android/server/pm/PackageInstallerSession;->setStagedSessionFailed(ILjava/lang/String;)V

    .line 256
    return-void

    .line 247
    :cond_a3
    add-int/lit8 v3, v3, 0x1

    goto :goto_6f

    .line 261
    :cond_a6
    iget-object v0, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-eqz v0, :cond_dd

    .line 265
    nop

    .line 266
    const-string/jumbo v0, "rollback"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 265
    invoke-static {v0}, Landroid/content/rollback/IRollbackManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/rollback/IRollbackManager;

    move-result-object v0

    .line 270
    :try_start_bb
    iget v1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-interface {v0, v1}, Landroid/content/rollback/IRollbackManager;->notifyStagedSession(I)Z

    move-result v0

    if-nez v0, :cond_db

    .line 271
    const-string v0, "StagingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to enable rollback for session: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_db
    .catch Landroid/os/RemoteException; {:try_start_bb .. :try_end_db} :catch_dc

    .line 275
    :cond_db
    goto :goto_dd

    .line 273
    :catch_dc
    move-exception v0

    .line 278
    :cond_dd
    :goto_dd
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->setStagedSessionReady()V

    .line 279
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->sessionContainsApex(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v0

    if-eqz v0, :cond_f5

    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget v1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 280
    invoke-virtual {v0, v1}, Lcom/android/server/pm/ApexManager;->markStagedSessionReady(I)Z

    move-result v0

    if-nez v0, :cond_f5

    .line 281
    const-string v0, "APEX staging failed, check logcat messages from apexd for more details."

    invoke-virtual {p1, v2, v0}, Lcom/android/server/pm/PackageInstallerSession;->setStagedSessionFailed(ILjava/lang/String;)V

    .line 285
    :cond_f5
    return-void
.end method

.method private resumeSession(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 7

    .line 313
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->sessionContainsApex(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v0

    .line 314
    const/4 v1, 0x2

    const-string v2, "StagingManager"

    if-eqz v0, :cond_73

    .line 316
    iget-object v3, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget v4, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v3, v4}, Lcom/android/server/pm/ApexManager;->getStagedSessionInfo(I)Landroid/apex/ApexSessionInfo;

    move-result-object v3

    .line 317
    if-nez v3, :cond_19

    .line 318
    const-string v0, "apexd did not know anything about a staged session supposed to beactivated"

    invoke-virtual {p1, v1, v0}, Lcom/android/server/pm/PackageInstallerSession;->setStagedSessionFailed(ILjava/lang/String;)V

    .line 321
    return-void

    .line 323
    :cond_19
    invoke-static {v3}, Lcom/android/server/pm/StagingManager;->isApexSessionFailed(Landroid/apex/ApexSessionInfo;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 324
    const-string v0, "APEX activation failed. Check logcat messages from apexd for more information."

    invoke-virtual {p1, v1, v0}, Lcom/android/server/pm/PackageInstallerSession;->setStagedSessionFailed(ILjava/lang/String;)V

    .line 327
    return-void

    .line 329
    :cond_25
    iget-boolean v4, v3, Landroid/apex/ApexSessionInfo;->isVerified:Z

    if-eqz v4, :cond_4f

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found pending staged session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " still to be verified, resuming pre-reboot verification"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/-$$Lambda$StagingManager$83GfAqr7qlzXNwZi6rOoUuwZb9c;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/-$$Lambda$StagingManager$83GfAqr7qlzXNwZi6rOoUuwZb9c;-><init>(Lcom/android/server/pm/StagingManager;Lcom/android/server/pm/PackageInstallerSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 336
    return-void

    .line 338
    :cond_4f
    iget-boolean v4, v3, Landroid/apex/ApexSessionInfo;->isActivated:Z

    if-nez v4, :cond_73

    iget-boolean v3, v3, Landroid/apex/ApexSessionInfo;->isSuccess:Z

    if-nez v3, :cond_73

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Staged session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " scheduled to be applied at boot didn\'t activate nor fail. This usually means that apexd will retry at next reboot."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    return-void

    .line 348
    :cond_73
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/android/server/pm/StagingManager;->installApksInSession(Lcom/android/server/pm/PackageInstallerSession;Z)Z

    move-result v3

    if-nez v3, :cond_9c

    .line 349
    const-string v3, "Staged installation of APKs failed. Check logcat messages formore information."

    invoke-virtual {p1, v1, v3}, Lcom/android/server/pm/PackageInstallerSession;->setStagedSessionFailed(ILjava/lang/String;)V

    .line 353
    if-nez v0, :cond_82

    .line 354
    return-void

    .line 357
    :cond_82
    iget-object p1, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {p1}, Lcom/android/server/pm/ApexManager;->abortActiveSession()Z

    move-result p1

    if-nez p1, :cond_90

    .line 358
    const-string p1, "Failed to abort APEXd session"

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9b

    .line 360
    :cond_90
    const-string p1, "Successfully aborted apexd session. Rebooting device in order to revert to the previous state of APEXd."

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object p1, p0, Lcom/android/server/pm/StagingManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 365
    :goto_9b
    return-void

    .line 368
    :cond_9c
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->setStagedSessionApplied()V

    .line 369
    if-eqz v0, :cond_a8

    .line 370
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget p1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ApexManager;->markStagedSessionSuccessful(I)V

    .line 372
    :cond_a8
    return-void
.end method

.method private sessionContains(Lcom/android/server/pm/PackageInstallerSession;Ljava/util/function/Predicate;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageInstallerSession;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;)Z"
        }
    .end annotation

    .line 290
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v0

    if-nez v0, :cond_b

    .line 291
    invoke-interface {p2, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 293
    :cond_b
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 294
    :try_start_e
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionIds()[I

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p1

    new-instance v1, Lcom/android/server/pm/-$$Lambda$StagingManager$zPvhMKF7o6jzlVNzE42Fq_qJt9I;

    invoke-direct {v1, p0}, Lcom/android/server/pm/-$$Lambda$StagingManager$zPvhMKF7o6jzlVNzE42Fq_qJt9I;-><init>(Lcom/android/server/pm/StagingManager;)V

    .line 296
    invoke-interface {p1, v1}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/server/pm/-$$Lambda$StagingManager$lOH9gVOKGitWaFqixZa09s5PphU;

    invoke-direct {v1, p2}, Lcom/android/server/pm/-$$Lambda$StagingManager$lOH9gVOKGitWaFqixZa09s5PphU;-><init>(Ljava/util/function/Predicate;)V

    .line 298
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 299
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 300
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3a

    const/4 p1, 0x1

    goto :goto_3b

    :cond_3a
    const/4 p1, 0x0

    :goto_3b
    monitor-exit v0

    .line 294
    return p1

    .line 301
    :catchall_3d
    move-exception p1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_e .. :try_end_3f} :catchall_3d

    throw p1
.end method

.method private sessionContainsApex(Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 3

    .line 305
    sget-object v0, Lcom/android/server/pm/-$$Lambda$StagingManager$HJyijsQNJwcPQ10-2tU6415xlVo;->INSTANCE:Lcom/android/server/pm/-$$Lambda$StagingManager$HJyijsQNJwcPQ10-2tU6415xlVo;

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/StagingManager;->sessionContains(Lcom/android/server/pm/PackageInstallerSession;Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method private sessionContainsApk(Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 3

    .line 309
    sget-object v0, Lcom/android/server/pm/-$$Lambda$StagingManager$j1RpPmMrsxcldNpyt2n2wcJbVA0;->INSTANCE:Lcom/android/server/pm/-$$Lambda$StagingManager$j1RpPmMrsxcldNpyt2n2wcJbVA0;

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/StagingManager;->sessionContains(Lcom/android/server/pm/PackageInstallerSession;Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method private submitSessionToApexService(Lcom/android/server/pm/PackageInstallerSession;Ljava/util/List;Landroid/apex/ApexInfoList;)Z
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageInstallerSession;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;",
            "Landroid/apex/ApexInfoList;",
            ")Z"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget v1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 149
    const/4 v2, 0x0

    if-eqz p2, :cond_16

    .line 150
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    sget-object v3, Lcom/android/server/pm/-$$Lambda$StagingManager$ox-u05b9FQec8uLfg6h5LkmV4gk;->INSTANCE:Lcom/android/server/pm/-$$Lambda$StagingManager$ox-u05b9FQec8uLfg6h5LkmV4gk;

    invoke-interface {p2, v3}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p2

    goto :goto_18

    .line 151
    :cond_16
    new-array p2, v2, [I

    .line 147
    :goto_18
    invoke-virtual {v0, v1, p2, p3}, Lcom/android/server/pm/ApexManager;->submitStagedSession(I[ILandroid/apex/ApexInfoList;)Z

    move-result p2

    .line 153
    const/4 v0, 0x1

    if-nez p2, :cond_25

    .line 154
    const-string p2, "APEX staging failed, check logcat messages from apexd for more details."

    invoke-virtual {p1, v0, p2}, Lcom/android/server/pm/PackageInstallerSession;->setStagedSessionFailed(ILjava/lang/String;)V

    .line 157
    return v2

    .line 159
    :cond_25
    iget-object p2, p3, Landroid/apex/ApexInfoList;->apexInfos:[Landroid/apex/ApexInfo;

    array-length p3, p2

    move v1, v2

    :goto_29
    if-ge v1, p3, :cond_f7

    aget-object v3, p2, v1

    .line 160
    iget-object v4, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget-object v5, v3, Landroid/apex/ApexInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/server/pm/ApexManager;->getPackageInfoForApexName(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 162
    if-nez v4, :cond_39

    .line 163
    goto/16 :goto_f3

    .line 165
    :cond_39
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide v5, v5, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    .line 166
    iget-object v7, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v7, v7, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    const-string v8, "Failed to abort apex session "

    const-string v9, "StagingManager"

    if-eqz v7, :cond_9a

    .line 168
    iget-object v7, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v10, v7, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    cmp-long v7, v5, v10

    if-eqz v7, :cond_9a

    .line 169
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Installed version of APEX package "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, v3, Landroid/apex/ApexInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " does not match required. Active version: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " required: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v3, p3, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/android/server/pm/PackageInstallerSession;->setStagedSessionFailed(ILjava/lang/String;)V

    .line 175
    iget-object p2, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {p2}, Lcom/android/server/pm/ApexManager;->abortActiveSession()Z

    move-result p2

    if-nez p2, :cond_99

    .line 176
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_99
    return v2

    .line 182
    :cond_9a
    iget-object v7, p1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v7, v7, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v7, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->isDowngradePermitted(II)Z

    move-result v4

    .line 184
    iget-wide v10, v3, Landroid/apex/ApexInfo;->versionCode:J

    cmp-long v7, v5, v10

    if-lez v7, :cond_f3

    if-nez v4, :cond_f3

    .line 185
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Downgrade of APEX package "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, v3, Landroid/apex/ApexInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " is not allowed. Active version: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " attempted: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v3, Landroid/apex/ApexInfo;->versionCode:J

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/android/server/pm/PackageInstallerSession;->setStagedSessionFailed(ILjava/lang/String;)V

    .line 191
    iget-object p2, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {p2}, Lcom/android/server/pm/ApexManager;->abortActiveSession()Z

    move-result p2

    if-nez p2, :cond_f2

    .line 192
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_f2
    return v2

    .line 159
    :cond_f3
    :goto_f3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_29

    .line 197
    :cond_f7
    return v0
.end method

.method private updateStoredSession(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 5

    .line 88
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 89
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    .line 92
    if-eqz v1, :cond_16

    .line 93
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    :cond_16
    monitor-exit v0

    .line 96
    return-void

    .line 95
    :catchall_18
    move-exception p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method private validateApexSignature(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    .line 112
    const-string v0, "Unable to parse APEX package: "

    const-string v1, "StagingManager"

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_6
    invoke-static {p1, v2}, Landroid/util/apk/ApkSignatureVerifier;->verify(Ljava/lang/String;I)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object p1
    :try_end_a
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_6 .. :try_end_a} :catch_5a

    .line 116
    nop

    .line 118
    iget-object v4, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v4, p2}, Lcom/android/server/pm/ApexManager;->getPackageInfoForApexName(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 120
    if-nez v4, :cond_2d

    .line 122
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Attempted to install a new apex "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". Rejecting"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return v3

    .line 128
    :cond_2d
    :try_start_2d
    iget-object p2, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {p2, v2}, Landroid/util/apk/ApkSignatureVerifier;->verify(Ljava/lang/String;I)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object p2
    :try_end_35
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_2d .. :try_end_35} :catch_42

    .line 134
    nop

    .line 137
    iget-object p2, p2, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    iget-object p1, p1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    invoke-static {p2, p1}, Landroid/content/pm/Signature;->areExactMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result p1

    if-eqz p1, :cond_41

    .line 138
    return v2

    .line 141
    :cond_41
    return v3

    .line 130
    :catch_42
    move-exception p1

    .line 131
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    return v3

    .line 113
    :catch_5a
    move-exception p2

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    return v3
.end method


# virtual methods
.method abortCommittedSession(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 5

    .line 566
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isStagedSessionApplied()Z

    move-result v0

    const-string v1, "StagingManager"

    if-eqz v0, :cond_1f

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot abort applied session : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    return-void

    .line 570
    :cond_1f
    invoke-virtual {p0, p1}, Lcom/android/server/pm/StagingManager;->abortSession(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 572
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->sessionContainsApex(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v0

    .line 573
    if-eqz v0, :cond_45

    .line 574
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    iget p1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ApexManager;->getStagedSessionInfo(I)Landroid/apex/ApexSessionInfo;

    move-result-object p1

    .line 575
    if-eqz p1, :cond_3f

    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->isApexSessionFinalized(Landroid/apex/ApexSessionInfo;)Z

    move-result p1

    if-eqz p1, :cond_39

    goto :goto_3f

    .line 580
    :cond_39
    iget-object p1, p0, Lcom/android/server/pm/StagingManager;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {p1}, Lcom/android/server/pm/ApexManager;->abortActiveSession()Z

    goto :goto_45

    .line 576
    :cond_3f
    :goto_3f
    const-string p1, "Cannot abort session because it is not active or APEXD is not reachable"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    return-void

    .line 582
    :cond_45
    :goto_45
    return-void
.end method

.method abortSession(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 4

    .line 560
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 561
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    iget p1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 562
    monitor-exit v0

    .line 563
    return-void

    .line 562
    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p1
.end method

.method commitSession(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 4

    .line 528
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->updateStoredSession(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 529
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/-$$Lambda$StagingManager$oTjNN2Q2v9Dr5k3q884ZdgcuSqA;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/-$$Lambda$StagingManager$oTjNN2Q2v9Dr5k3q884ZdgcuSqA;-><init>(Lcom/android/server/pm/StagingManager;Lcom/android/server/pm/PackageInstallerSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 530
    return-void
.end method

.method createSession(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 5

    .line 554
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 555
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 556
    monitor-exit v0

    .line 557
    return-void

    .line 556
    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p1
.end method

.method getActiveSession()Lcom/android/server/pm/PackageInstallerSession;
    .registers 5

    .line 534
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 535
    const/4 v1, 0x0

    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_33

    .line 536
    iget-object v2, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    .line 537
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->isCommitted()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 538
    goto :goto_30

    .line 540
    :cond_1b
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 543
    goto :goto_30

    .line 545
    :cond_22
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->isStagedSessionApplied()Z

    move-result v3

    if-nez v3, :cond_30

    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->isStagedSessionFailed()Z

    move-result v3

    if-nez v3, :cond_30

    .line 546
    monitor-exit v0

    return-object v2

    .line 535
    :cond_30
    :goto_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 549
    :cond_33
    monitor-exit v0

    .line 550
    const/4 v0, 0x0

    return-object v0

    .line 549
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_4 .. :try_end_38} :catchall_36

    throw v1
.end method

.method getSessions(I)Landroid/content/pm/ParceledListSlice;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v1

    .line 101
    const/4 v2, 0x0

    move v3, v2

    :goto_a
    :try_start_a
    iget-object v4, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_24

    .line 102
    iget-object v4, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageInstallerSession;

    .line 103
    invoke-virtual {v4, v2, p1}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoForCaller(ZI)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 105
    :cond_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_a .. :try_end_25} :catchall_2b

    .line 106
    new-instance p1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p1

    .line 105
    :catchall_2b
    move-exception p1

    :try_start_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method public synthetic lambda$checkStateAndResume$11$StagingManager(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 2

    .line 663
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->preRebootVerification(Lcom/android/server/pm/PackageInstallerSession;)V

    return-void
.end method

.method public synthetic lambda$commitSession$10$StagingManager(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 2

    .line 529
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->preRebootVerification(Lcom/android/server/pm/PackageInstallerSession;)V

    return-void
.end method

.method public synthetic lambda$installApksInSession$8$StagingManager(I)Lcom/android/server/pm/PackageInstallerSession;
    .registers 3

    .line 481
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/PackageInstallerSession;

    return-object p1
.end method

.method public synthetic lambda$preRebootVerification$1$StagingManager(I)Lcom/android/server/pm/PackageInstallerSession;
    .registers 3

    .line 218
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/PackageInstallerSession;

    return-object p1
.end method

.method public synthetic lambda$resumeSession$7$StagingManager(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 2

    .line 335
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->preRebootVerification(Lcom/android/server/pm/PackageInstallerSession;)V

    return-void
.end method

.method public synthetic lambda$sessionContains$3$StagingManager(I)Lcom/android/server/pm/PackageInstallerSession;
    .registers 3

    .line 296
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/PackageInstallerSession;

    return-object p1
.end method

.method restoreSession(Lcom/android/server/pm/PackageInstallerSession;Z)V
    .registers 6

    .line 624
    nop

    .line 625
    iget-object v0, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 626
    :try_start_4
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 629
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 630
    :cond_17
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->isMultiPackageSessionComplete(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 632
    monitor-exit v0

    return-void

    .line 635
    :cond_1f
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 636
    iget-object v1, p0, Lcom/android/server/pm/StagingManager;->mStagedSessions:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/PackageInstallerSession;

    .line 639
    :cond_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_45

    .line 642
    if-eqz p2, :cond_41

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isStagedAndInTerminalState()Z

    move-result p2

    if-nez p2, :cond_41

    .line 643
    const/4 p2, 0x2

    const-string v0, "Build fingerprint has changed"

    invoke-virtual {p1, p2, v0}, Lcom/android/server/pm/PackageInstallerSession;->setStagedSessionFailed(ILjava/lang/String;)V

    .line 645
    return-void

    .line 647
    :cond_41
    invoke-direct {p0, p1}, Lcom/android/server/pm/StagingManager;->checkStateAndResume(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 648
    return-void

    .line 639
    :catchall_45
    move-exception p1

    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw p1
.end method
