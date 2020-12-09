.class public final Lcom/android/server/rollback/RollbackPackageHealthObserver;
.super Ljava/lang/Object;
.source "RollbackPackageHealthObserver.java"

# interfaces
.implements Lcom/android/server/PackageWatchdog$PackageHealthObserver;


# static fields
.field private static final INVALID_ROLLBACK_ID:I = -0x1

.field private static final NAME:Ljava/lang/String; = "rollback-observer"

.field private static final NATIVE_CRASH_POLLING_INTERVAL_MILLIS:J

.field private static final NUMBER_OF_NATIVE_CRASH_POLLS:J = 0xaL

.field private static final TAG:Ljava/lang/String; = "RollbackPackageHealthObserver"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mLastStagedRollbackIdFile:Ljava/io/File;

.field private mNumberOfNativeCrashPollsRemaining:J

.field private final mPendingStagedRollbackIds:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPendingStagedRollbackIds"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 78
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 79
    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->NATIVE_CRASH_POLLING_INTERVAL_MILLIS:J

    .line 78
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mPendingStagedRollbackIds:Ljava/util/Set;

    .line 93
    iput-object p1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    .line 94
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mNumberOfNativeCrashPollsRemaining:J

    .line 95
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "RollbackPackageHealthObserver"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 97
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mHandler:Landroid/os/Handler;

    .line 98
    new-instance p1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "rollback-observer"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 100
    new-instance v0, Ljava/io/File;

    const-string v1, "last-staged-rollback-id"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mLastStagedRollbackIdFile:Ljava/io/File;

    .line 101
    iget-object p1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/PackageWatchdog;->getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/PackageWatchdog;->registerHealthObserver(Lcom/android/server/PackageWatchdog$PackageHealthObserver;)V

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/rollback/RollbackPackageHealthObserver;Landroid/content/rollback/RollbackManager;ILandroid/content/BroadcastReceiver;Landroid/content/pm/VersionedPackage;)V
    .registers 5

    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->handleStagedSessionChange(Landroid/content/rollback/RollbackManager;ILandroid/content/BroadcastReceiver;Landroid/content/pm/VersionedPackage;)V

    return-void
.end method

.method private checkAndMitigateNativeCrashes()V
    .registers 5

    .line 397
    iget-wide v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mNumberOfNativeCrashPollsRemaining:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mNumberOfNativeCrashPollsRemaining:J

    .line 399
    const-string/jumbo v0, "ro.init.updatable_crashing"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 400
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->getModuleMetadataPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->execute(Landroid/content/pm/VersionedPackage;I)Z

    goto :goto_33

    .line 404
    :cond_1f
    iget-wide v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mNumberOfNativeCrashPollsRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_33

    .line 405
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$qxl9oIFwPlFs_BOCz2kdHqQtB0U;

    invoke-direct {v1, p0}, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$qxl9oIFwPlFs_BOCz2kdHqQtB0U;-><init>(Lcom/android/server/rollback/RollbackPackageHealthObserver;)V

    sget-wide v2, Lcom/android/server/rollback/RollbackPackageHealthObserver;->NATIVE_CRASH_POLLING_INTERVAL_MILLIS:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 409
    :cond_33
    :goto_33
    return-void
.end method

.method private getAvailableRollback(Landroid/content/rollback/RollbackManager;Landroid/content/pm/VersionedPackage;)Landroid/content/rollback/RollbackInfo;
    .registers 8

    .line 254
    invoke-virtual {p1}, Landroid/content/rollback/RollbackManager;->getAvailableRollbacks()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/rollback/RollbackInfo;

    .line 255
    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/rollback/PackageRollbackInfo;

    .line 256
    invoke-virtual {v2}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 257
    invoke-virtual {p2}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 256
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 258
    invoke-virtual {v2}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/VersionedPackage;->getVersionCode()I

    move-result v2

    .line 259
    invoke-virtual {p2}, Landroid/content/pm/VersionedPackage;->getVersionCode()I

    move-result v3

    if-ne v2, v3, :cond_46

    const/4 v2, 0x1

    goto :goto_47

    :cond_46
    const/4 v2, 0x0

    .line 260
    :goto_47
    if-eqz v2, :cond_4a

    .line 261
    return-object v0

    .line 263
    :cond_4a
    goto :goto_1c

    .line 264
    :cond_4b
    goto :goto_8

    .line 265
    :cond_4c
    const/4 p1, 0x0

    return-object p1
.end method

.method private getModuleMetadataPackage()Landroid/content/pm/VersionedPackage;
    .registers 6

    .line 280
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->getModuleMetadataPackageName()Ljava/lang/String;

    move-result-object v0

    .line 281
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 282
    return-object v1

    .line 286
    :cond_8
    :try_start_8
    new-instance v2, Landroid/content/pm/VersionedPackage;

    iget-object v3, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 287
    invoke-virtual {v3}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v3

    invoke-direct {v2, v0, v3, v4}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_1c} :catch_1d

    .line 286
    return-object v2

    .line 288
    :catch_1d
    move-exception v0

    .line 289
    const-string v0, "RollbackPackageHealthObserver"

    const-string v2, "Module metadata provider not found"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return-object v1
.end method

.method private getModuleMetadataPackageName()Ljava/lang/String;
    .registers 3

    .line 270
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104015f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 273
    const/4 v0, 0x0

    return-object v0

    .line 275
    :cond_15
    return-object v0
.end method

.method private handleStagedSessionChange(Landroid/content/rollback/RollbackManager;ILandroid/content/BroadcastReceiver;Landroid/content/pm/VersionedPackage;)V
    .registers 11

    .line 311
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    .line 312
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    .line 313
    nop

    .line 314
    invoke-virtual {p1}, Landroid/content/rollback/RollbackManager;->getRecentlyCommittedRollbacks()Ljava/util/List;

    move-result-object p1

    .line 315
    const/4 v1, 0x0

    move v2, v1

    :goto_11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_71

    .line 316
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/rollback/RollbackInfo;

    .line 317
    invoke-virtual {v3}, Landroid/content/rollback/RollbackInfo;->getCommittedSessionId()I

    move-result v4

    .line 318
    invoke-virtual {v3}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v3

    if-ne p2, v3, :cond_6e

    const/4 v3, -0x1

    if-eq v4, v3, :cond_6e

    .line 320
    nop

    .line 321
    invoke-virtual {v0, v4}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v3

    .line 322
    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionReady()Z

    move-result v4

    const-string v5, ""

    if-eqz v4, :cond_59

    invoke-direct {p0, p2}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->markStagedSessionHandled(I)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 323
    iget-object v3, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 324
    invoke-direct {p0, p2}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->saveLastStagedRollbackId(I)V

    .line 325
    const/4 v3, 0x4

    invoke-static {p4, v3, v1, v5}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->logEvent(Landroid/content/pm/VersionedPackage;IILjava/lang/String;)V

    .line 330
    iget-object v3, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    const-class v4, Landroid/os/PowerManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    const-string v4, "Rollback staged install"

    invoke-virtual {v3, v4}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    goto :goto_6e

    .line 331
    :cond_59
    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionFailed()Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 332
    invoke-direct {p0, p2}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->markStagedSessionHandled(I)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 333
    const/4 v3, 0x3

    invoke-static {p4, v3, v1, v5}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->logEvent(Landroid/content/pm/VersionedPackage;IILjava/lang/String;)V

    .line 337
    iget-object v3, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 315
    :cond_6e
    :goto_6e
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 341
    :cond_71
    return-void
.end method

.method static synthetic lambda$execute$1(Landroid/content/rollback/RollbackManager;Landroid/content/rollback/RollbackInfo;Landroid/content/pm/VersionedPackage;Lcom/android/server/rollback/LocalIntentReceiver;)V
    .registers 4

    .line 167
    invoke-virtual {p1}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result p1

    .line 168
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 169
    invoke-virtual {p3}, Lcom/android/server/rollback/LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p3

    .line 167
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/rollback/RollbackManager;->commitRollback(ILjava/util/List;Landroid/content/IntentSender;)V

    return-void
.end method

.method private listenForStagedSessionReady(Landroid/content/rollback/RollbackManager;ILandroid/content/pm/VersionedPackage;)Landroid/content/BroadcastReceiver;
    .registers 5

    .line 296
    new-instance v0, Lcom/android/server/rollback/RollbackPackageHealthObserver$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/rollback/RollbackPackageHealthObserver$1;-><init>(Lcom/android/server/rollback/RollbackPackageHealthObserver;Landroid/content/rollback/RollbackManager;ILandroid/content/pm/VersionedPackage;)V

    .line 303
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "android.content.pm.action.SESSION_UPDATED"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 305
    iget-object p2, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 306
    return-object v0
.end method

.method private static logEvent(Landroid/content/pm/VersionedPackage;IILjava/lang/String;)V
    .registers 12

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Watchdog event occurred of type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RollbackPackageHealthObserver"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    if-eqz p0, :cond_27

    .line 387
    invoke-virtual {p0}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 388
    invoke-virtual {p0}, Landroid/content/pm/VersionedPackage;->getVersionCode()I

    move-result p0

    int-to-long v4, p0

    .line 387
    move v2, p1

    move v6, p2

    move-object v7, p3

    invoke-static/range {v2 .. v7}, Landroid/util/StatsLog;->logWatchdogRollbackOccurred(ILjava/lang/String;JILjava/lang/String;)Z

    .line 390
    :cond_27
    return-void
.end method

.method private mapFailureReasonToMetric(I)I
    .registers 3

    .line 423
    const/4 v0, 0x1

    if-eq p1, v0, :cond_11

    const/4 v0, 0x2

    if-eq p1, v0, :cond_10

    const/4 v0, 0x3

    if-eq p1, v0, :cond_f

    const/4 v0, 0x4

    if-eq p1, v0, :cond_e

    .line 433
    const/4 p1, 0x0

    return p1

    .line 431
    :cond_e
    return v0

    .line 429
    :cond_f
    return v0

    .line 427
    :cond_10
    return v0

    .line 425
    :cond_11
    return v0
.end method

.method private markStagedSessionHandled(I)Z
    .registers 4

    .line 348
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mPendingStagedRollbackIds:Ljava/util/Set;

    monitor-enter v0

    .line 349
    :try_start_3
    iget-object v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mPendingStagedRollbackIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 350
    :catchall_f
    move-exception p1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p1
.end method

.method private onBootCompleted()V
    .registers 9

    .line 195
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    const-class v1, Landroid/content/rollback/RollbackManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/rollback/RollbackManager;

    .line 196
    iget-object v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v1

    .line 197
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->getModuleMetadataPackageName()Ljava/lang/String;

    move-result-object v2

    .line 198
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->getModuleMetadataPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v3

    .line 200
    invoke-direct {p0, v0, v3}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->getAvailableRollback(Landroid/content/rollback/RollbackManager;Landroid/content/pm/VersionedPackage;)Landroid/content/rollback/RollbackInfo;

    move-result-object v3

    if-eqz v3, :cond_25

    .line 201
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->scheduleCheckAndMitigateNativeCrashes()V

    .line 204
    :cond_25
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->popLastStagedRollbackId()I

    move-result v3

    .line 205
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2d

    .line 207
    return-void

    .line 210
    :cond_2d
    nop

    .line 211
    invoke-virtual {v0}, Landroid/content/rollback/RollbackManager;->getRecentlyCommittedRollbacks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/rollback/RollbackInfo;

    .line 212
    invoke-virtual {v4}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v6

    if-ne v3, v6, :cond_4b

    .line 213
    nop

    .line 214
    goto :goto_4d

    .line 216
    :cond_4b
    goto :goto_36

    .line 211
    :cond_4c
    move-object v4, v5

    .line 218
    :goto_4d
    const-string v0, "RollbackPackageHealthObserver"

    if-nez v4, :cond_67

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rollback info not found for last staged rollback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-void

    .line 225
    :cond_67
    nop

    .line 226
    invoke-virtual {v4}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_70
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/rollback/PackageRollbackInfo;

    .line 227
    invoke-virtual {v6}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8b

    .line 228
    invoke-virtual {v6}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    move-result-object v5

    .line 229
    goto :goto_8c

    .line 231
    :cond_8b
    goto :goto_70

    .line 233
    :cond_8c
    :goto_8c
    invoke-virtual {v4}, Landroid/content/rollback/RollbackInfo;->getCommittedSessionId()I

    move-result v2

    .line 234
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v1

    .line 235
    if-nez v1, :cond_ab

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "On boot completed, could not load session id "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-void

    .line 239
    :cond_ab
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionApplied()Z

    move-result v0

    const-string v2, ""

    const/4 v3, 0x0

    if-eqz v0, :cond_b9

    .line 240
    const/4 v0, 0x2

    invoke-static {v5, v0, v3, v2}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->logEvent(Landroid/content/pm/VersionedPackage;IILjava/lang/String;)V

    goto :goto_c4

    .line 243
    :cond_b9
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionReady()Z

    move-result v0

    if-eqz v0, :cond_c0

    goto :goto_c4

    .line 246
    :cond_c0
    const/4 v0, 0x3

    invoke-static {v5, v0, v3, v2}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->logEvent(Landroid/content/pm/VersionedPackage;IILjava/lang/String;)V

    .line 250
    :goto_c4
    return-void
.end method

.method private popLastStagedRollbackId()I
    .registers 5

    .line 368
    nop

    .line 369
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mLastStagedRollbackIdFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_b

    .line 370
    return v1

    .line 374
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mLastStagedRollbackIdFile:Ljava/io/File;

    .line 375
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 374
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1d} :catch_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_1d} :catch_1e

    .line 378
    goto :goto_26

    .line 376
    :catch_1e
    move-exception v0

    .line 377
    const-string v2, "RollbackPackageHealthObserver"

    const-string v3, "Failed to retrieve last staged rollback id"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 379
    :goto_26
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mLastStagedRollbackIdFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 380
    return v1
.end method

.method private saveLastStagedRollbackId(I)V
    .registers 4

    .line 355
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mLastStagedRollbackIdFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 356
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 357
    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(I)V

    .line 358
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 359
    invoke-static {v0}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 360
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_18} :catch_19

    .line 364
    goto :goto_26

    .line 361
    :catch_19
    move-exception p1

    .line 362
    const-string v0, "RollbackPackageHealthObserver"

    const-string v1, "Failed to save last staged rollback id"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 363
    iget-object p1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mLastStagedRollbackIdFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 365
    :goto_26
    return-void
.end method

.method private scheduleCheckAndMitigateNativeCrashes()V
    .registers 4

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scheduling "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mNumberOfNativeCrashPollsRemaining:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " polls to check and mitigate native crashes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RollbackPackageHealthObserver"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$0IN9novFyWgQaB1z9Q2H7ZQ6gqY;

    invoke-direct {v1, p0}, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$0IN9novFyWgQaB1z9Q2H7ZQ6gqY;-><init>(Lcom/android/server/rollback/RollbackPackageHealthObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 420
    return-void
.end method


# virtual methods
.method public execute(Landroid/content/pm/VersionedPackage;I)Z
    .registers 14

    .line 118
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    const-class v1, Landroid/content/rollback/RollbackManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/rollback/RollbackManager;

    .line 119
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->getModuleMetadataPackage()Landroid/content/pm/VersionedPackage;

    move-result-object v5

    .line 120
    invoke-direct {p0, v0, p1}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->getAvailableRollback(Landroid/content/rollback/RollbackManager;Landroid/content/pm/VersionedPackage;)Landroid/content/rollback/RollbackInfo;

    move-result-object v8

    .line 121
    invoke-direct {p0, p2}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mapFailureReasonToMetric(I)I

    move-result v6

    .line 124
    const/4 v9, 0x1

    if-ne p2, v9, :cond_24

    .line 125
    const-string/jumbo p2, "ro.init.updatable_crashing_process_name"

    const-string v1, ""

    invoke-static {p2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    move-object v7, p2

    goto :goto_29

    .line 128
    :cond_24
    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object p2

    move-object v7, p2

    .line 130
    :goto_29
    if-nez v8, :cond_58

    .line 131
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected rollback but no valid rollback found for package: [ "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] with versionCode: ["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getVersionCode()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 131
    const-string p2, "RollbackPackageHealthObserver"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 p1, 0x0

    return p1

    .line 137
    :cond_58
    invoke-static {v5, v9, v6, v7}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->logEvent(Landroid/content/pm/VersionedPackage;IILjava/lang/String;)V

    .line 140
    new-instance p2, Lcom/android/server/rollback/LocalIntentReceiver;

    new-instance v10, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$S-LBpORIptxKG87YS1jh9-oZbmc;

    move-object v1, v10

    move-object v2, p0

    move-object v3, v8

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$S-LBpORIptxKG87YS1jh9-oZbmc;-><init>(Lcom/android/server/rollback/RollbackPackageHealthObserver;Landroid/content/rollback/RollbackInfo;Landroid/content/rollback/RollbackManager;Landroid/content/pm/VersionedPackage;ILjava/lang/String;)V

    invoke-direct {p2, v10}, Lcom/android/server/rollback/LocalIntentReceiver;-><init>(Ljava/util/function/Consumer;)V

    .line 166
    iget-object v1, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$oOra6LB_hHJjBK__eXmSDqgCWsk;

    invoke-direct {v2, v0, v8, p1, p2}, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$oOra6LB_hHJjBK__eXmSDqgCWsk;-><init>(Landroid/content/rollback/RollbackManager;Landroid/content/rollback/RollbackInfo;Landroid/content/pm/VersionedPackage;Lcom/android/server/rollback/LocalIntentReceiver;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 171
    return v9
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 176
    const-string/jumbo v0, "rollback-observer"

    return-object v0
.end method

.method public synthetic lambda$checkAndMitigateNativeCrashes$3$RollbackPackageHealthObserver()V
    .registers 1

    .line 405
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->checkAndMitigateNativeCrashes()V

    return-void
.end method

.method public synthetic lambda$execute$0$RollbackPackageHealthObserver(Landroid/content/rollback/RollbackInfo;Landroid/content/rollback/RollbackManager;Landroid/content/pm/VersionedPackage;ILjava/lang/String;Landroid/content/Intent;)V
    .registers 9

    .line 141
    const-string v0, "android.content.rollback.extra.STATUS"

    const/4 v1, 0x1

    invoke-virtual {p6, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p6

    .line 143
    if-nez p6, :cond_31

    .line 144
    invoke-virtual {p1}, Landroid/content/rollback/RollbackInfo;->isStaged()Z

    move-result p6

    if-eqz p6, :cond_2c

    .line 145
    invoke-virtual {p1}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result p1

    .line 146
    iget-object p6, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mPendingStagedRollbackIds:Ljava/util/Set;

    monitor-enter p6

    .line 147
    :try_start_16
    iget-object p4, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mPendingStagedRollbackIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {p4, p5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 148
    monitor-exit p6
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_29

    .line 149
    nop

    .line 150
    invoke-direct {p0, p2, p1, p3}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->listenForStagedSessionReady(Landroid/content/rollback/RollbackManager;ILandroid/content/pm/VersionedPackage;)Landroid/content/BroadcastReceiver;

    move-result-object p4

    .line 152
    invoke-direct {p0, p2, p1, p4, p3}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->handleStagedSessionChange(Landroid/content/rollback/RollbackManager;ILandroid/content/BroadcastReceiver;Landroid/content/pm/VersionedPackage;)V

    .line 154
    goto :goto_35

    .line 148
    :catchall_29
    move-exception p1

    :try_start_2a
    monitor-exit p6
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p1

    .line 155
    :cond_2c
    const/4 p1, 0x2

    invoke-static {p3, p1, p4, p5}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->logEvent(Landroid/content/pm/VersionedPackage;IILjava/lang/String;)V

    goto :goto_35

    .line 160
    :cond_31
    const/4 p1, 0x3

    invoke-static {p3, p1, p4, p5}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->logEvent(Landroid/content/pm/VersionedPackage;IILjava/lang/String;)V

    .line 164
    :goto_35
    return-void
.end method

.method public synthetic lambda$onBootCompletedAsync$2$RollbackPackageHealthObserver()V
    .registers 1

    .line 191
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->onBootCompleted()V

    return-void
.end method

.method public synthetic lambda$scheduleCheckAndMitigateNativeCrashes$4$RollbackPackageHealthObserver()V
    .registers 1

    .line 419
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->checkAndMitigateNativeCrashes()V

    return-void
.end method

.method public onBootCompletedAsync()V
    .registers 3

    .line 191
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$AIuzQKXcl9vSW9YzEpmdp7QJz1M;

    invoke-direct {v1, p0}, Lcom/android/server/rollback/-$$Lambda$RollbackPackageHealthObserver$AIuzQKXcl9vSW9YzEpmdp7QJz1M;-><init>(Lcom/android/server/rollback/RollbackPackageHealthObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 192
    return-void
.end method

.method public onHealthCheckFailed(Landroid/content/pm/VersionedPackage;)I
    .registers 4

    .line 106
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    const-class v1, Landroid/content/rollback/RollbackManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/rollback/RollbackManager;

    invoke-direct {p0, v0, p1}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->getAvailableRollback(Landroid/content/rollback/RollbackManager;Landroid/content/pm/VersionedPackage;)Landroid/content/rollback/RollbackInfo;

    move-result-object p1

    if-nez p1, :cond_12

    .line 109
    const/4 p1, 0x0

    return p1

    .line 112
    :cond_12
    const/4 p1, 0x3

    return p1
.end method

.method public startObservingHealth(Ljava/util/List;J)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/android/server/rollback/RollbackPackageHealthObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/PackageWatchdog;->getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/server/PackageWatchdog;->startObservingHealth(Lcom/android/server/PackageWatchdog$PackageHealthObserver;Ljava/util/List;J)V

    .line 185
    return-void
.end method
