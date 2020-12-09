.class Lcom/android/server/rollback/RollbackManagerServiceImpl;
.super Landroid/content/rollback/IRollbackManager$Stub;
.source "RollbackManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;,
        Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;
    }
.end annotation


# static fields
.field private static final DEFAULT_ROLLBACK_LIFETIME_DURATION_MILLIS:J

.field private static final HANDLER_THREAD_TIMEOUT_DURATION_MILLIS:J

.field private static final TAG:Ljava/lang/String; = "RollbackManager"


# instance fields
.field private final mAllocatedRollbackIds:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mAppDataRollbackHelper:Lcom/android/server/rollback/AppDataRollbackHelper;

.field private final mContext:Landroid/content/Context;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mInstaller:Lcom/android/server/pm/Installer;

.field private final mLock:Ljava/lang/Object;

.field private final mNewRollbacks:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageHealthObserver:Lcom/android/server/rollback/RollbackPackageHealthObserver;

.field private final mRandom:Ljava/util/Random;

.field private mRelativeBootTime:J

.field private mRollbackLifetimeDurationInMillis:J

.field private final mRollbackStore:Lcom/android/server/rollback/RollbackStore;

.field private mRollbacks:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/rollback/RollbackData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 91
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 92
    const-wide/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->DEFAULT_ROLLBACK_LIFETIME_DURATION_MILLIS:J

    .line 104
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 105
    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->HANDLER_THREAD_TIMEOUT_DURATION_MILLIS:J

    .line 104
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 137
    invoke-direct {p0}, Landroid/content/rollback/IRollbackManager$Stub;-><init>()V

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    .line 102
    sget-wide v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->DEFAULT_ROLLBACK_LIFETIME_DURATION_MILLIS:J

    iput-wide v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackLifetimeDurationInMillis:J

    .line 108
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRandom:Ljava/util/Random;

    .line 111
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAllocatedRollbackIds:Landroid/util/SparseBooleanArray;

    .line 115
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mNewRollbacks:Ljava/util/Set;

    .line 135
    invoke-static {}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->calculateRelativeBootTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRelativeBootTime:J

    .line 138
    iput-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 141
    new-instance p1, Lcom/android/server/pm/Installer;

    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/server/pm/Installer;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mInstaller:Lcom/android/server/pm/Installer;

    .line 142
    iget-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p1}, Lcom/android/server/pm/Installer;->onStart()V

    .line 143
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "RollbackManagerServiceHandler"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 144
    iget-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 147
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-wide v1, Lcom/android/server/rollback/RollbackManagerServiceImpl;->HANDLER_THREAD_TIMEOUT_DURATION_MILLIS:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;J)V

    .line 149
    new-instance p1, Lcom/android/server/rollback/RollbackStore;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "rollback"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/android/server/rollback/RollbackStore;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackStore:Lcom/android/server/rollback/RollbackStore;

    .line 151
    new-instance p1, Lcom/android/server/rollback/RollbackPackageHealthObserver;

    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mPackageHealthObserver:Lcom/android/server/rollback/RollbackPackageHealthObserver;

    .line 152
    new-instance p1, Lcom/android/server/rollback/AppDataRollbackHelper;

    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-direct {p1, v0}, Lcom/android/server/rollback/AppDataRollbackHelper;-><init>(Lcom/android/server/pm/Installer;)V

    iput-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAppDataRollbackHelper:Lcom/android/server/rollback/AppDataRollbackHelper;

    .line 161
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$2_NDf9EpLcTKkJVpkadZhudKips;

    invoke-direct {v0, p0}, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$2_NDf9EpLcTKkJVpkadZhudKips;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 165
    new-instance p1, Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;Lcom/android/server/rollback/RollbackManagerServiceImpl$1;)V

    .line 166
    iget-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ae

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 167
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->registerUserCallbacks(Landroid/os/UserHandle;)V

    .line 168
    goto :goto_9a

    .line 170
    :cond_ae
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 171
    const-string v1, "android.intent.action.PACKAGE_ENABLE_ROLLBACK"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    :try_start_b8
    const-string v1, "application/vnd.android.package-archive"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_bd
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_b8 .. :try_end_bd} :catch_be

    .line 176
    goto :goto_c6

    .line 174
    :catch_be
    move-exception v1

    .line 175
    const-string v2, "RollbackManager"

    const-string v3, "addDataType"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    :goto_c6
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;

    invoke-direct {v2, p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    .line 212
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 178
    invoke-virtual {v1, v2, p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 214
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 215
    const-string v1, "android.intent.action.CANCEL_ENABLE_ROLLBACK"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/rollback/RollbackManagerServiceImpl$2;

    invoke-direct {v2, p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl$2;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    .line 233
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 217
    invoke-virtual {v1, v2, p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 235
    new-instance p1, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_ADDED"

    invoke-direct {p1, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/rollback/RollbackManagerServiceImpl$3;

    invoke-direct {v2, p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl$3;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    .line 247
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 236
    invoke-virtual {v1, v2, p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 249
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->registerTimeChangeReceiver()V

    .line 250
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/rollback/RollbackManagerServiceImpl;)Landroid/os/Handler;
    .registers 1

    .line 86
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V
    .registers 1

    .line 86
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->ensureRollbackDataLoadedLocked()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/rollback/RollbackManagerServiceImpl;)Ljava/util/List;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/server/rollback/RollbackManagerServiceImpl;Lcom/android/server/rollback/RollbackData;)V
    .registers 2

    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->saveRollbackData(Lcom/android/server/rollback/RollbackData;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/rollback/RollbackManagerServiceImpl;Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;Z)Lcom/android/server/rollback/RollbackData;
    .registers 3

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->completeEnableRollback(Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;Z)Lcom/android/server/rollback/RollbackData;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/server/rollback/RollbackManagerServiceImpl;Lcom/android/server/rollback/RollbackData;)V
    .registers 2

    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->makeRollbackAvailable(Lcom/android/server/rollback/RollbackData;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/rollback/RollbackManagerServiceImpl;ILjava/io/File;[III)Z
    .registers 6

    .line 86
    invoke-direct/range {p0 .. p5}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->enableRollback(ILjava/io/File;[III)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/server/rollback/RollbackManagerServiceImpl;)Ljava/lang/Object;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/rollback/RollbackManagerServiceImpl;)Ljava/util/Set;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mNewRollbacks:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/server/rollback/RollbackManagerServiceImpl;Landroid/os/UserHandle;)V
    .registers 2

    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->registerUserCallbacks(Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/rollback/RollbackManagerServiceImpl;Ljava/lang/String;)V
    .registers 2

    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->onPackageReplaced(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/rollback/RollbackManagerServiceImpl;Ljava/lang/String;)V
    .registers 2

    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->onPackageFullyRemoved(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/rollback/RollbackManagerServiceImpl;)J
    .registers 3

    .line 86
    iget-wide v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRelativeBootTime:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/android/server/rollback/RollbackManagerServiceImpl;J)J
    .registers 3

    .line 86
    iput-wide p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRelativeBootTime:J

    return-wide p1
.end method

.method static synthetic access$900()J
    .registers 2

    .line 86
    invoke-static {}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->calculateRelativeBootTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private allocateRollbackIdLocked()I
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1441
    const/4 v0, 0x0

    move v1, v0

    .line 1444
    :goto_2
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRandom:Ljava/util/Random;

    const v3, 0x7ffffffe

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 1445
    iget-object v4, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAllocatedRollbackIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 1446
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAllocatedRollbackIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1447
    return v2

    .line 1449
    :cond_1b
    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x20

    if-ge v1, v3, :cond_23

    move v1, v2

    goto :goto_2

    .line 1451
    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to allocate rollback ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static calculateRelativeBootTime()J
    .registers 4

    .line 387
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private commitRollbackInternal(ILjava/util/List;Ljava/lang/String;Landroid/content/IntentSender;)V
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/IntentSender;",
            ")V"
        }
    .end annotation

    .line 397
    move-object/from16 v7, p0

    move-object/from16 v8, p4

    const-string v0, "RollbackManager"

    const-string v1, "Initiating rollback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-direct/range {p0 .. p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getRollbackForId(I)Lcom/android/server/rollback/RollbackData;

    move-result-object v0

    .line 400
    if-eqz v0, :cond_150

    iget v1, v0, Lcom/android/server/rollback/RollbackData;->state:I

    const/4 v9, 0x1

    if-eq v1, v9, :cond_18

    goto/16 :goto_150

    .line 408
    :cond_18
    nop

    .line 410
    :try_start_19
    iget-object v1, v7, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    move-object/from16 v3, p3

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_19 .. :try_end_22} :catch_149

    .line 415
    nop

    .line 417
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 419
    :try_start_27
    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v3

    .line 420
    new-instance v4, Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-direct {v4, v9}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 422
    invoke-virtual {v4, v9}, Landroid/content/pm/PackageInstaller$SessionParams;->setRequestDowngrade(Z)V

    .line 423
    invoke-virtual {v4}, Landroid/content/pm/PackageInstaller$SessionParams;->setMultiPackage()V

    .line 424
    invoke-virtual {v0}, Lcom/android/server/rollback/RollbackData;->isStaged()Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 425
    invoke-virtual {v4}, Landroid/content/pm/PackageInstaller$SessionParams;->setStaged()V

    .line 428
    :cond_3f
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v5

    .line 429
    invoke-virtual {v3, v5}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v10

    .line 431
    iget-object v4, v0, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v4}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_51
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_101

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/rollback/PackageRollbackInfo;

    .line 432
    new-instance v11, Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-direct {v11, v9}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 437
    invoke-virtual {v6}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    move-result v12

    if-nez v12, :cond_75

    .line 438
    invoke-virtual {v6}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 439
    if-eqz v12, :cond_75

    .line 440
    invoke-virtual {v11, v12}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallerPackageName(Ljava/lang/String;)V

    .line 443
    :cond_75
    invoke-virtual {v11, v9}, Landroid/content/pm/PackageInstaller$SessionParams;->setRequestDowngrade(Z)V

    .line 444
    nop

    .line 445
    invoke-virtual {v6}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v12

    .line 444
    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageInstaller$SessionParams;->setRequiredInstalledVersionCode(J)V

    .line 446
    invoke-virtual {v0}, Lcom/android/server/rollback/RollbackData;->isStaged()Z

    move-result v12

    if-eqz v12, :cond_8d

    .line 447
    invoke-virtual {v11}, Landroid/content/pm/PackageInstaller$SessionParams;->setStaged()V

    .line 449
    :cond_8d
    invoke-virtual {v6}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    move-result v12

    if-eqz v12, :cond_96

    .line 450
    invoke-virtual {v11}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallAsApex()V

    .line 452
    :cond_96
    invoke-virtual {v3, v11}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v11

    .line 453
    invoke-virtual {v3, v11}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v19

    .line 455
    nop

    .line 456
    invoke-virtual {v6}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 455
    invoke-static {v0, v6}, Lcom/android/server/rollback/RollbackStore;->getPackageCodePaths(Lcom/android/server/rollback/RollbackData;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v6

    .line 457
    if-nez v6, :cond_af

    .line 458
    const-string v0, "Backup copy of package inaccessible"

    invoke-direct {v7, v8, v9, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(Landroid/content/IntentSender;ILjava/lang/String;)V

    .line 460
    return-void

    .line 463
    :cond_af
    array-length v14, v6

    move v15, v2

    :goto_b1
    if-ge v15, v14, :cond_fc

    aget-object v12, v6, v15

    .line 464
    const/high16 v13, 0x10000000

    invoke-static {v12, v13}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v20
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_bb} :catch_128

    .line 466
    :try_start_bb
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v21
    :try_end_bf
    .catchall {:try_start_bb .. :try_end_bf} :catchall_eb

    .line 468
    :try_start_bf
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    const-wide/16 v16, 0x0

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v23

    move-object/from16 v12, v19

    move/from16 v25, v14

    move/from16 v26, v15

    move-wide/from16 v14, v16

    move-wide/from16 v16, v23

    move-object/from16 v18, v20

    invoke-virtual/range {v12 .. v18}, Landroid/content/pm/PackageInstaller$Session;->write(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V
    :try_end_d8
    .catchall {:try_start_bf .. :try_end_d8} :catchall_e6

    .line 471
    :try_start_d8
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_db
    .catchall {:try_start_d8 .. :try_end_db} :catchall_eb

    .line 472
    nop

    .line 473
    if-eqz v20, :cond_e1

    :try_start_de
    invoke-virtual/range {v20 .. v20}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_e1
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_e1} :catch_128

    .line 463
    :cond_e1
    add-int/lit8 v15, v26, 0x1

    move/from16 v14, v25

    goto :goto_b1

    .line 471
    :catchall_e6
    move-exception v0

    :try_start_e7
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_eb
    .catchall {:try_start_e7 .. :try_end_eb} :catchall_eb

    .line 464
    :catchall_eb
    move-exception v0

    move-object v1, v0

    :try_start_ed
    throw v1
    :try_end_ee
    .catchall {:try_start_ed .. :try_end_ee} :catchall_ee

    .line 473
    :catchall_ee
    move-exception v0

    move-object v2, v0

    if-eqz v20, :cond_fb

    :try_start_f2
    invoke-virtual/range {v20 .. v20}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_f5
    .catchall {:try_start_f2 .. :try_end_f5} :catchall_f6

    goto :goto_fb

    :catchall_f6
    move-exception v0

    move-object v3, v0

    :try_start_f8
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_fb
    :goto_fb
    throw v2

    .line 475
    :cond_fc
    invoke-virtual {v10, v11}, Landroid/content/pm/PackageInstaller$Session;->addChildSessionId(I)V

    .line 476
    goto/16 :goto_51

    .line 478
    :cond_101
    new-instance v11, Lcom/android/server/rollback/LocalIntentReceiver;

    new-instance v12, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$oAkfsZ2q5BUu35KwHn4M46EMuGw;

    move-object v1, v12

    move-object/from16 v2, p0

    move-object v3, v0

    move-object/from16 v4, p4

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$oAkfsZ2q5BUu35KwHn4M46EMuGw;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;Lcom/android/server/rollback/RollbackData;Landroid/content/IntentSender;ILjava/util/List;)V

    invoke-direct {v11, v12}, Lcom/android/server/rollback/LocalIntentReceiver;-><init>(Ljava/util/function/Consumer;)V

    .line 530
    iget-object v1, v7, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_116
    .catch Ljava/io/IOException; {:try_start_f8 .. :try_end_116} :catch_128

    .line 531
    const/4 v2, 0x3

    :try_start_117
    iput v2, v0, Lcom/android/server/rollback/RollbackData;->state:I

    .line 532
    iput-boolean v9, v0, Lcom/android/server/rollback/RollbackData;->restoreUserDataInProgress:Z

    .line 533
    monitor-exit v1
    :try_end_11c
    .catchall {:try_start_117 .. :try_end_11c} :catchall_125

    .line 534
    :try_start_11c
    invoke-virtual {v11}, Lcom/android/server/rollback/LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V
    :try_end_123
    .catch Ljava/io/IOException; {:try_start_11c .. :try_end_123} :catch_128

    .line 540
    nop

    .line 541
    return-void

    .line 533
    :catchall_125
    move-exception v0

    :try_start_126
    monitor-exit v1
    :try_end_127
    .catchall {:try_start_126 .. :try_end_127} :catchall_125

    :try_start_127
    throw v0
    :try_end_128
    .catch Ljava/io/IOException; {:try_start_127 .. :try_end_128} :catch_128

    .line 535
    :catch_128
    move-exception v0

    .line 536
    const-string v1, "RollbackManager"

    const-string v2, "Rollback failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 537
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 537
    invoke-direct {v7, v8, v9, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(Landroid/content/IntentSender;ILjava/lang/String;)V

    .line 539
    return-void

    .line 411
    :catch_149
    move-exception v0

    .line 412
    const-string v0, "Invalid callerPackageName"

    invoke-direct {v7, v8, v9, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(Landroid/content/IntentSender;ILjava/lang/String;)V

    .line 414
    return-void

    .line 401
    :cond_150
    :goto_150
    const/4 v0, 0x2

    const-string v1, "Rollback unavailable"

    invoke-direct {v7, v8, v0, v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(Landroid/content/IntentSender;ILjava/lang/String;)V

    .line 403
    return-void
.end method

.method private completeEnableRollback(Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;Z)Lcom/android/server/rollback/RollbackData;
    .registers 5

    .line 1340
    iget-object v0, p1, Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;->data:Lcom/android/server/rollback/RollbackData;

    .line 1341
    const/4 v1, 0x0

    if-nez p2, :cond_9

    .line 1343
    invoke-direct {p0, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->deleteRollback(Lcom/android/server/rollback/RollbackData;)V

    .line 1344
    return-object v1

    .line 1346
    :cond_9
    iget-boolean p2, p1, Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;->isCancelled:Z

    if-eqz p2, :cond_18

    .line 1347
    const-string p1, "RollbackManager"

    const-string p2, "Rollback has been cancelled by PackageManager"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    invoke-direct {p0, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->deleteRollback(Lcom/android/server/rollback/RollbackData;)V

    .line 1349
    return-object v1

    .line 1355
    :cond_18
    iget-object p2, v0, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {p2}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iget-object p1, p1, Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;->packageSessionIds:[I

    array-length p1, p1

    if-eq p2, p1, :cond_32

    .line 1356
    const-string p1, "RollbackManager"

    const-string p2, "Failed to enable rollback for all packages in session."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    invoke-direct {p0, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->deleteRollback(Lcom/android/server/rollback/RollbackData;)V

    .line 1358
    return-object v1

    .line 1361
    :cond_32
    invoke-direct {p0, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->saveRollbackData(Lcom/android/server/rollback/RollbackData;)V

    .line 1362
    iget-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1373
    :try_start_38
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->ensureRollbackDataLoadedLocked()V

    .line 1374
    iget-object p2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1375
    monitor-exit p1

    .line 1377
    return-object v0

    .line 1375
    :catchall_42
    move-exception p2

    monitor-exit p1
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_42

    throw p2
.end method

.method private deleteRollback(Lcom/android/server/rollback/RollbackData;)V
    .registers 9

    .line 1455
    iget-object v0, p1, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/rollback/PackageRollbackInfo;

    .line 1456
    invoke-virtual {v1}, Landroid/content/rollback/PackageRollbackInfo;->getInstalledUsers()Landroid/util/IntArray;

    move-result-object v2

    .line 1457
    const/4 v3, 0x0

    :goto_1b
    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_33

    .line 1458
    invoke-virtual {v2, v3}, Landroid/util/IntArray;->get(I)I

    move-result v4

    .line 1459
    iget-object v5, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAppDataRollbackHelper:Lcom/android/server/rollback/AppDataRollbackHelper;

    iget-object v6, p1, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v6}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v6

    invoke-virtual {v5, v6, v1, v4}, Lcom/android/server/rollback/AppDataRollbackHelper;->destroyAppDataSnapshot(ILandroid/content/rollback/PackageRollbackInfo;I)V

    .line 1457
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 1462
    :cond_33
    goto :goto_a

    .line 1463
    :cond_34
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackStore:Lcom/android/server/rollback/RollbackStore;

    invoke-virtual {v0, p1}, Lcom/android/server/rollback/RollbackStore;->deleteRollbackData(Lcom/android/server/rollback/RollbackData;)V

    .line 1464
    return-void
.end method

.method private enableRollback(ILjava/io/File;[III)Z
    .registers 21

    .line 878
    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v3

    .line 879
    const/4 v4, 0x0

    if-nez v3, :cond_18

    .line 880
    const-string v0, "RollbackManager"

    const-string v1, "Unable to create context for install session user."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    return v4

    .line 884
    :cond_18
    nop

    .line 885
    nop

    .line 886
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v3

    .line 887
    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller;->getAllSessions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    move-object v7, v6

    move-object v8, v7

    :goto_2d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_69

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 888
    invoke-virtual {v9}, Landroid/content/pm/PackageInstaller$SessionInfo;->isMultiPackage()Z

    move-result v10

    if-eqz v10, :cond_5d

    .line 889
    invoke-virtual {v9}, Landroid/content/pm/PackageInstaller$SessionInfo;->getChildSessionIds()[I

    move-result-object v10

    array-length v11, v10

    move v12, v4

    :goto_45
    if-ge v12, v11, :cond_5a

    aget v13, v10, v12

    .line 890
    invoke-virtual {v3, v13}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v13

    .line 891
    invoke-direct {p0, v13, v1, v2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sessionMatchesForEnableRollback(Landroid/content/pm/PackageInstaller$SessionInfo;ILjava/io/File;)Z

    move-result v14

    if-eqz v14, :cond_57

    .line 893
    nop

    .line 894
    nop

    .line 895
    move-object v7, v9

    goto :goto_5b

    .line 889
    :cond_57
    add-int/lit8 v12, v12, 0x1

    goto :goto_45

    :cond_5a
    move-object v13, v8

    :goto_5b
    move-object v8, v13

    goto :goto_68

    .line 898
    :cond_5d
    invoke-direct {p0, v9, v1, v2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sessionMatchesForEnableRollback(Landroid/content/pm/PackageInstaller$SessionInfo;ILjava/io/File;)Z

    move-result v10

    if-eqz v10, :cond_68

    .line 900
    nop

    .line 901
    nop

    .line 902
    move-object v7, v9

    move-object v8, v7

    goto :goto_69

    .line 904
    :cond_68
    :goto_68
    goto :goto_2d

    .line 906
    :cond_69
    :goto_69
    if-eqz v7, :cond_111

    if-nez v8, :cond_6f

    goto/16 :goto_111

    .line 914
    :cond_6f
    nop

    .line 915
    iget-object v1, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 916
    :try_start_73
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->ensureRollbackDataLoadedLocked()V

    .line 917
    move v2, v4

    :goto_77
    iget-object v3, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_94

    .line 918
    iget-object v3, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/rollback/RollbackData;

    .line 919
    iget v5, v3, Lcom/android/server/rollback/RollbackData;->apkSessionId:I

    invoke-virtual {v7}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v9

    if-ne v5, v9, :cond_91

    .line 920
    nop

    .line 921
    goto :goto_95

    .line 917
    :cond_91
    add-int/lit8 v2, v2, 0x1

    goto :goto_77

    :cond_94
    move-object v3, v6

    .line 924
    :goto_95
    monitor-exit v1
    :try_end_96
    .catchall {:try_start_73 .. :try_end_96} :catchall_10e

    .line 926
    if-eqz v3, :cond_e6

    .line 929
    nop

    .line 931
    :try_start_99
    new-instance v0, Ljava/io/File;

    iget-object v1, v8, Landroid/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0
    :try_end_a4
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_99 .. :try_end_a4} :catch_dd

    .line 936
    nop

    .line 937
    iget-object v0, v0, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    .line 938
    iget-object v1, v3, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/rollback/PackageRollbackInfo;

    .line 939
    invoke-virtual {v2}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d4

    .line 940
    invoke-virtual {v2}, Landroid/content/rollback/PackageRollbackInfo;->getInstalledUsers()Landroid/util/IntArray;

    move-result-object v0

    invoke-static/range {p3 .. p3}, Landroid/util/IntArray;->wrap([I)Landroid/util/IntArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->addAll(Landroid/util/IntArray;)V

    .line 941
    const/4 v0, 0x1

    return v0

    .line 943
    :cond_d4
    goto :goto_b1

    .line 944
    :cond_d5
    const-string v0, "RollbackManager"

    const-string v1, "Unable to find package in apk session"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    return v4

    .line 933
    :catch_dd
    move-exception v0

    .line 934
    const-string v1, "RollbackManager"

    const-string v2, "Unable to parse new package"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 935
    return v4

    .line 949
    :cond_e6
    iget-object v2, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 953
    :try_start_e9
    invoke-virtual {v8}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getNewRollbackForPackageSessionLocked(I)Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;

    move-result-object v1

    .line 954
    if-nez v1, :cond_fc

    .line 955
    invoke-virtual {p0, v7}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->createNewRollbackLocked(Landroid/content/pm/PackageInstaller$SessionInfo;)Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;

    move-result-object v1

    .line 956
    iget-object v3, v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mNewRollbacks:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 958
    :cond_fc
    monitor-exit v2
    :try_end_fd
    .catchall {:try_start_e9 .. :try_end_fd} :catchall_10b

    .line 959
    move/from16 v2, p5

    invoke-virtual {v1, v2}, Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;->addToken(I)V

    .line 961
    iget-object v1, v1, Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;->data:Lcom/android/server/rollback/RollbackData;

    move-object/from16 v2, p3

    invoke-direct {p0, v1, v8, v2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->enableRollbackForPackageSession(Lcom/android/server/rollback/RollbackData;Landroid/content/pm/PackageInstaller$SessionInfo;[I)Z

    move-result v0

    return v0

    .line 958
    :catchall_10b
    move-exception v0

    :try_start_10c
    monitor-exit v2
    :try_end_10d
    .catchall {:try_start_10c .. :try_end_10d} :catchall_10b

    throw v0

    .line 924
    :catchall_10e
    move-exception v0

    :try_start_10f
    monitor-exit v1
    :try_end_110
    .catchall {:try_start_10f .. :try_end_110} :catchall_10e

    throw v0

    .line 907
    :cond_111
    :goto_111
    const-string v0, "RollbackManager"

    const-string v1, "Unable to find session for enabled rollback."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    return v4
.end method

.method private enableRollbackAllowed(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    .line 1223
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1224
    return v0

    .line 1227
    :cond_4
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1228
    const-string v2, "android.permission.MANAGE_ROLLBACKS"

    invoke-virtual {v1, v2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_15

    move v2, v3

    goto :goto_16

    :cond_15
    move v2, v0

    .line 1232
    :goto_16
    const-string v4, "android.permission.TEST_MANAGE_ROLLBACKS"

    invoke-virtual {v1, v4, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_20

    move p1, v3

    goto :goto_21

    :cond_20
    move p1, v0

    .line 1237
    :goto_21
    invoke-direct {p0, p2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->isModule(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_29

    if-nez v2, :cond_2b

    :cond_29
    if-eqz p1, :cond_2c

    :cond_2b
    move v0, v3

    :cond_2c
    return v0
.end method

.method private enableRollbackForPackageSession(Lcom/android/server/rollback/RollbackData;Landroid/content/pm/PackageInstaller$SessionInfo;[I)Z
    .registers 16

    .line 974
    iget v0, p2, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    .line 975
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_10

    .line 976
    const-string p1, "RollbackManager"

    const-string p2, "Rollback is not enabled."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    return v2

    .line 979
    :cond_10
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_1c

    .line 980
    const-string p1, "RollbackManager"

    const-string p2, "Rollbacks not supported for instant app install"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    return v2

    .line 984
    :cond_1c
    iget-object v1, p2, Landroid/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    if-nez v1, :cond_28

    .line 985
    const-string p1, "RollbackManager"

    const-string p2, "Session code path has not been resolved."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    return v2

    .line 990
    :cond_28
    nop

    .line 992
    :try_start_29
    new-instance v1, Ljava/io/File;

    iget-object v3, p2, Landroid/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v1
    :try_end_34
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_29 .. :try_end_34} :catch_11b

    .line 996
    nop

    .line 998
    iget-object v3, v1, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    .line 999
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enabling rollback for install of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", session:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p2, Landroid/content/pm/PackageInstaller$SessionInfo;->sessionId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RollbackManager"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    invoke-virtual {p2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallerPackageName()Ljava/lang/String;

    move-result-object p2

    .line 1003
    invoke-direct {p0, p2, v3}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->enableRollbackAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_80

    .line 1004
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Installer "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not allowed to enable rollback on "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RollbackManager"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    return v2

    .line 1009
    :cond_80
    new-instance v5, Landroid/content/pm/VersionedPackage;

    iget p2, v1, Landroid/content/pm/PackageParser$PackageLite;->versionCode:I

    invoke-direct {v5, v3, p2}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    .line 1010
    const/high16 p2, 0x20000

    and-int/2addr p2, v0

    const/4 v0, 0x1

    if-eqz p2, :cond_8f

    move v9, v0

    goto :goto_90

    :cond_8f
    move v9, v2

    .line 1013
    :goto_90
    iget-object p2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1016
    :try_start_95
    invoke-direct {p0, v3}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p2
    :try_end_99
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_95 .. :try_end_99} :catch_103

    .line 1022
    nop

    .line 1024
    new-instance v6, Landroid/content/pm/VersionedPackage;

    .line 1025
    invoke-virtual {p2}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v7

    invoke-direct {v6, v3, v7, v8}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    .line 1027
    new-instance v1, Landroid/content/rollback/PackageRollbackInfo;

    new-instance v7, Landroid/util/IntArray;

    invoke-direct {v7}, Landroid/util/IntArray;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1030
    invoke-static {p3}, Landroid/util/IntArray;->wrap([I)Landroid/util/IntArray;

    move-result-object v10

    new-instance v11, Landroid/util/SparseLongArray;

    invoke-direct {v11}, Landroid/util/SparseLongArray;-><init>()V

    move-object v4, v1

    invoke-direct/range {v4 .. v11}, Landroid/content/rollback/PackageRollbackInfo;-><init>(Landroid/content/pm/VersionedPackage;Landroid/content/pm/VersionedPackage;Landroid/util/IntArray;Ljava/util/ArrayList;ZLandroid/util/IntArray;Landroid/util/SparseLongArray;)V

    .line 1034
    :try_start_bc
    iget-object p2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1035
    iget-object p3, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {p1, v3, p3}, Lcom/android/server/rollback/RollbackStore;->backupPackageCodePath(Lcom/android/server/rollback/RollbackData;Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    iget-object p3, p2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_d9

    .line 1037
    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length p3, p2

    move v4, v2

    :goto_cf
    if-ge v4, p3, :cond_d9

    aget-object v5, p2, v4

    .line 1038
    invoke-static {p1, v3, v5}, Lcom/android/server/rollback/RollbackStore;->backupPackageCodePath(Lcom/android/server/rollback/RollbackData;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_d6} :catch_eb

    .line 1037
    add-int/lit8 v4, v4, 0x1

    goto :goto_cf

    .line 1044
    :cond_d9
    nop

    .line 1046
    iget-object p2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1047
    :try_start_dd
    iget-object p1, p1, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {p1}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1048
    monitor-exit p2

    .line 1049
    return v0

    .line 1048
    :catchall_e8
    move-exception p1

    monitor-exit p2
    :try_end_ea
    .catchall {:try_start_dd .. :try_end_ea} :catchall_e8

    throw p1

    .line 1041
    :catch_eb
    move-exception p1

    .line 1042
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to copy package for rollback for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "RollbackManager"

    invoke-static {p3, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1043
    return v2

    .line 1017
    :catch_103
    move-exception p1

    .line 1020
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not installed"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RollbackManager"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    return v2

    .line 993
    :catch_11b
    move-exception p1

    .line 994
    const-string p2, "RollbackManager"

    const-string p3, "Unable to parse new package"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 995
    return v2
.end method

.method private enforceManageRollbacks(Ljava/lang/String;)V
    .registers 6

    .line 1519
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_ROLLBACKS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 1521
    const-string v2, "android.permission.TEST_MANAGE_ROLLBACKS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    goto :goto_37

    .line 1523
    :cond_15
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " requires "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " or "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1527
    :cond_37
    :goto_37
    return-void
.end method

.method private ensureRollbackDataLoaded()V
    .registers 3

    .line 685
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 686
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->ensureRollbackDataLoadedLocked()V

    .line 687
    monitor-exit v0

    .line 688
    return-void

    .line 687
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private ensureRollbackDataLoadedLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 696
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    if-nez v0, :cond_7

    .line 697
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->loadAllRollbackDataLocked()V

    .line 699
    :cond_7
    return-void
.end method

.method private getContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;
    .registers 5

    .line 849
    :try_start_0
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p1
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_d} :catch_e

    return-object p1

    .line 850
    :catch_e
    move-exception p1

    .line 851
    const/4 p1, 0x0

    return-object p1
.end method

.method private getHandler()Landroid/os/Handler;
    .registers 2

    .line 827
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method private getInstalledPackageVersion(Ljava/lang/String;)Landroid/content/pm/VersionedPackage;
    .registers 6

    .line 1261
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1262
    nop

    .line 1264
    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_a} :catch_15

    .line 1267
    nop

    .line 1269
    new-instance v1, Landroid/content/pm/VersionedPackage;

    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2

    invoke-direct {v1, p1, v2, v3}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    return-object v1

    .line 1265
    :catch_15
    move-exception p1

    .line 1266
    const/4 p1, 0x0

    return-object p1
.end method

.method private getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1279
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1285
    const/high16 v1, 0x400000

    :try_start_8
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_c} :catch_d

    return-object p1

    .line 1286
    :catch_d
    move-exception v1

    .line 1287
    const/high16 v1, 0x40000000  # 2.0f

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1
.end method

.method private static getPackageRollbackInfo(Lcom/android/server/rollback/RollbackData;Ljava/lang/String;)Landroid/content/rollback/PackageRollbackInfo;
    .registers 4

    .line 1430
    iget-object p0, p0, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {p0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/rollback/PackageRollbackInfo;

    .line 1431
    invoke-virtual {v0}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1432
    return-object v0

    .line 1434
    :cond_21
    goto :goto_a

    .line 1436
    :cond_22
    const/4 p0, 0x0

    return-object p0
.end method

.method private getRollbackForId(I)Lcom/android/server/rollback/RollbackData;
    .registers 6

    .line 1409
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1412
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->ensureRollbackDataLoadedLocked()V

    .line 1413
    const/4 v1, 0x0

    :goto_7
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 1414
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/rollback/RollbackData;

    .line 1415
    iget-object v3, v2, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v3}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v3

    if-ne v3, p1, :cond_21

    .line 1416
    monitor-exit v0

    return-object v2

    .line 1413
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1419
    :cond_24
    monitor-exit v0

    .line 1421
    const/4 p1, 0x0

    return-object p1

    .line 1419
    :catchall_27
    move-exception p1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw p1
.end method

.method private isModule(Ljava/lang/String;)Z
    .registers 4

    .line 1245
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1248
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;

    move-result-object p1
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_b} :catch_10

    .line 1251
    nop

    .line 1253
    if-eqz p1, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1

    .line 1249
    :catch_10
    move-exception p1

    .line 1250
    return v1
.end method

.method static synthetic lambda$getAvailableRollbacks$1(Ljava/util/concurrent/LinkedBlockingQueue;)V
    .registers 2

    .line 305
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method private loadAllRollbackDataLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 709
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackStore:Lcom/android/server/rollback/RollbackStore;

    invoke-virtual {v0}, Lcom/android/server/rollback/RollbackStore;->loadAllRollbackData()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    .line 710
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/rollback/RollbackData;

    .line 711
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAllocatedRollbackIds:Landroid/util/SparseBooleanArray;

    iget-object v1, v1, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v1

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 712
    goto :goto_e

    .line 713
    :cond_27
    return-void
.end method

.method private makeRollbackAvailable(Lcom/android/server/rollback/RollbackData;)V
    .registers 5

    .line 1384
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1385
    const/4 v1, 0x1

    :try_start_4
    iput v1, p1, Lcom/android/server/rollback/RollbackData;->state:I

    .line 1386
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    iput-object v1, p1, Lcom/android/server/rollback/RollbackData;->timestamp:Ljava/time/Instant;

    .line 1387
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_45

    .line 1388
    invoke-direct {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->saveRollbackData(Lcom/android/server/rollback/RollbackData;)V

    .line 1395
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1396
    const/4 v1, 0x0

    :goto_16
    iget-object v2, p1, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_38

    .line 1397
    iget-object v2, p1, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/rollback/PackageRollbackInfo;

    invoke-virtual {v2}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1396
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 1399
    :cond_38
    iget-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mPackageHealthObserver:Lcom/android/server/rollback/RollbackPackageHealthObserver;

    iget-wide v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackLifetimeDurationInMillis:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->startObservingHealth(Ljava/util/List;J)V

    .line 1401
    iget-wide v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackLifetimeDurationInMillis:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->scheduleExpiration(J)V

    .line 1402
    return-void

    .line 1387
    :catchall_45
    move-exception p1

    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw p1
.end method

.method private onPackageFullyRemoved(Ljava/lang/String;)V
    .registers 2

    .line 753
    invoke-virtual {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->expireRollbackForPackage(Ljava/lang/String;)V

    .line 754
    return-void
.end method

.method private onPackageReplaced(Ljava/lang/String;)V
    .registers 9

    .line 723
    invoke-direct {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getInstalledPackageVersion(Ljava/lang/String;)Landroid/content/pm/VersionedPackage;

    move-result-object v0

    .line 725
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 726
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->ensureRollbackDataLoadedLocked()V

    .line 727
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 728
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_58

    .line 729
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/rollback/RollbackData;

    .line 731
    iget v4, v3, Lcom/android/server/rollback/RollbackData;->state:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_25

    iget v4, v3, Lcom/android/server/rollback/RollbackData;->state:I

    if-nez v4, :cond_57

    .line 733
    :cond_25
    iget-object v4, v3, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v4}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_57

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/rollback/PackageRollbackInfo;

    .line 734
    invoke-virtual {v5}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_56

    .line 736
    invoke-virtual {v5}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    move-result-object v5

    .line 735
    invoke-direct {p0, v5, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->packageVersionsEqual(Landroid/content/pm/VersionedPackage;Landroid/content/pm/VersionedPackage;)Z

    move-result v5

    if-nez v5, :cond_56

    .line 738
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 739
    invoke-direct {p0, v3}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->deleteRollback(Lcom/android/server/rollback/RollbackData;)V

    .line 740
    goto :goto_57

    .line 742
    :cond_56
    goto :goto_2f

    .line 744
    :cond_57
    :goto_57
    goto :goto_10

    .line 745
    :cond_58
    monitor-exit v1

    .line 746
    return-void

    .line 745
    :catchall_5a
    move-exception p1

    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_7 .. :try_end_5c} :catchall_5a

    throw p1
.end method

.method private packageVersionsEqual(Landroid/content/pm/VersionedPackage;Landroid/content/pm/VersionedPackage;)Z
    .registers 5

    .line 1293
    if-eqz p1, :cond_20

    if-eqz p2, :cond_20

    .line 1294
    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1295
    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide p1

    cmp-long p1, v0, p1

    if-nez p1, :cond_20

    const/4 p1, 0x1

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    .line 1293
    :goto_21
    return p1
.end method

.method private registerTimeChangeReceiver()V
    .registers 6

    .line 361
    new-instance v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$5;

    invoke-direct {v0, p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl$5;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    .line 380
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 381
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 382
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 383
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 382
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 384
    return-void
.end method

.method private registerUserCallbacks(Landroid/os/UserHandle;)V
    .registers 6

    .line 253
    invoke-direct {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 254
    if-nez v0, :cond_1d

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to register user callbacks for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RollbackManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    return-void

    .line 262
    :cond_1d
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object p1

    new-instance v1, Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;Lcom/android/server/rollback/RollbackManagerServiceImpl$1;)V

    .line 263
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/content/pm/PackageInstaller;->registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;Landroid/os/Handler;)V

    .line 265
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 266
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 267
    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 268
    const-string/jumbo v1, "package"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 269
    new-instance v1, Lcom/android/server/rollback/RollbackManagerServiceImpl$4;

    invoke-direct {v1, p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl$4;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    .line 282
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 269
    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 283
    return-void
.end method

.method private restoreUserDataInternal(Ljava/lang/String;[IIJLjava/lang/String;I)V
    .registers 14

    .line 1102
    nop

    .line 1103
    nop

    .line 1104
    iget-object p4, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter p4

    .line 1105
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->ensureRollbackDataLoadedLocked()V

    .line 1106
    const/4 p5, 0x0

    const/4 p7, 0x0

    move v0, p5

    move-object v1, p7

    :goto_c
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2d

    .line 1107
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/rollback/RollbackData;

    .line 1108
    iget-boolean v3, v2, Lcom/android/server/rollback/RollbackData;->restoreUserDataInProgress:Z

    if-eqz v3, :cond_2a

    .line 1109
    invoke-static {v2, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getPackageRollbackInfo(Lcom/android/server/rollback/RollbackData;Ljava/lang/String;)Landroid/content/rollback/PackageRollbackInfo;

    move-result-object v1

    .line 1110
    if-eqz v1, :cond_2a

    .line 1111
    nop

    .line 1112
    move-object p1, v1

    move-object p7, v2

    goto :goto_2e

    .line 1106
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_2d
    move-object p1, v1

    .line 1116
    :goto_2e
    monitor-exit p4
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_4f

    .line 1118
    if-nez p7, :cond_32

    .line 1119
    return-void

    .line 1122
    :cond_32
    array-length p4, p2

    :goto_33
    if-ge p5, p4, :cond_4e

    aget v3, p2, p5

    .line 1123
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAppDataRollbackHelper:Lcom/android/server/rollback/AppDataRollbackHelper;

    iget-object v1, p7, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    .line 1124
    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v1

    .line 1123
    move-object v2, p1

    move v4, p3

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/rollback/AppDataRollbackHelper;->restoreAppData(ILandroid/content/rollback/PackageRollbackInfo;IILjava/lang/String;)Z

    move-result v0

    .line 1127
    if-eqz v0, :cond_4b

    .line 1128
    invoke-direct {p0, p7}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->saveRollbackData(Lcom/android/server/rollback/RollbackData;)V

    .line 1122
    :cond_4b
    add-int/lit8 p5, p5, 0x1

    goto :goto_33

    .line 1131
    :cond_4e
    return-void

    .line 1116
    :catchall_4f
    move-exception p1

    :try_start_50
    monitor-exit p4
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw p1
.end method

.method private runExpiration()V
    .registers 9

    .line 792
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    .line 793
    nop

    .line 794
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 795
    :try_start_8
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->ensureRollbackDataLoadedLocked()V

    .line 797
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    .line 798
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    .line 799
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/rollback/RollbackData;

    .line 800
    iget v5, v4, Lcom/android/server/rollback/RollbackData;->state:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_24

    .line 801
    goto :goto_12

    .line 803
    :cond_24
    iget-object v5, v4, Lcom/android/server/rollback/RollbackData;->timestamp:Ljava/time/Instant;

    iget-wide v6, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackLifetimeDurationInMillis:J

    invoke-virtual {v5, v6, v7}, Ljava/time/Instant;->plusMillis(J)Ljava/time/Instant;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    move-result v5

    if-nez v5, :cond_39

    .line 804
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 805
    invoke-direct {p0, v4}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->deleteRollback(Lcom/android/server/rollback/RollbackData;)V

    goto :goto_45

    .line 806
    :cond_39
    if-eqz v3, :cond_43

    iget-object v5, v4, Lcom/android/server/rollback/RollbackData;->timestamp:Ljava/time/Instant;

    invoke-virtual {v3, v5}, Ljava/time/Instant;->isAfter(Ljava/time/Instant;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 807
    :cond_43
    iget-object v3, v4, Lcom/android/server/rollback/RollbackData;->timestamp:Ljava/time/Instant;

    .line 809
    :cond_45
    :goto_45
    goto :goto_12

    .line 810
    :cond_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_8 .. :try_end_47} :catchall_59

    .line 812
    if-eqz v3, :cond_58

    .line 813
    iget-wide v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackLifetimeDurationInMillis:J

    invoke-virtual {v3, v1, v2}, Ljava/time/Instant;->plusMillis(J)Ljava/time/Instant;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v0, v1, v2}, Ljava/time/Instant;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->scheduleExpiration(J)V

    .line 816
    :cond_58
    return-void

    .line 810
    :catchall_59
    move-exception v0

    :try_start_5a
    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw v0
.end method

.method private saveRollbackData(Lcom/android/server/rollback/RollbackData;)V
    .registers 5

    .line 1474
    :try_start_0
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackStore:Lcom/android/server/rollback/RollbackStore;

    invoke-virtual {v0, p1}, Lcom/android/server/rollback/RollbackStore;->saveRollbackData(Lcom/android/server/rollback/RollbackData;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1478
    goto :goto_23

    .line 1475
    :catch_6
    move-exception v0

    .line 1476
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to save rollback info for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    .line 1477
    invoke-virtual {p1}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1476
    const-string v1, "RollbackManager"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1479
    :goto_23
    return-void
.end method

.method private scheduleExpiration(J)V
    .registers 5

    .line 823
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$CAasF8x0yNQCLBmx5TOpEjeyeEM;

    invoke-direct {v1, p0}, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$CAasF8x0yNQCLBmx5TOpEjeyeEM;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 824
    return-void
.end method

.method private sendFailure(Landroid/content/IntentSender;ILjava/lang/String;)V
    .registers 11

    .line 765
    const-string v0, "RollbackManager"

    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :try_start_5
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 768
    const-string v0, "android.content.rollback.extra.STATUS"

    invoke-virtual {v4, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 769
    const-string p2, "android.content.rollback.extra.STATUS_MESSAGE"

    invoke-virtual {v4, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 770
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_1d
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_5 .. :try_end_1d} :catch_1e

    .line 773
    goto :goto_1f

    .line 771
    :catch_1e
    move-exception p1

    .line 774
    :goto_1f
    return-void
.end method

.method private sendSuccess(Landroid/content/IntentSender;)V
    .registers 8

    .line 781
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 782
    const-string v0, "android.content.rollback.extra.STATUS"

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 783
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_14
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_14} :catch_15

    .line 786
    goto :goto_16

    .line 784
    :catch_15
    move-exception p1

    .line 787
    :goto_16
    return-void
.end method

.method private sessionMatchesForEnableRollback(Landroid/content/pm/PackageInstaller$SessionInfo;ILjava/io/File;)Z
    .registers 7

    .line 835
    const/4 v0, 0x0

    if-eqz p1, :cond_20

    iget-object v1, p1, Landroid/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    if-nez v1, :cond_8

    goto :goto_20

    .line 839
    :cond_8
    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Landroid/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 840
    invoke-virtual {p3, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1f

    iget p1, p1, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    if-ne p2, p1, :cond_1f

    .line 841
    const/4 p1, 0x1

    return p1

    .line 844
    :cond_1f
    return v0

    .line 836
    :cond_20
    :goto_20
    return v0
.end method

.method private snapshotUserDataInternal(Ljava/lang/String;)V
    .registers 8

    .line 1070
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1072
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->ensureRollbackDataLoadedLocked()V

    .line 1073
    const/4 v1, 0x0

    :goto_7
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4f

    .line 1074
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/rollback/RollbackData;

    .line 1075
    iget v3, v2, Lcom/android/server/rollback/RollbackData;->state:I

    if-eqz v3, :cond_1c

    .line 1076
    goto :goto_4c

    .line 1079
    :cond_1c
    iget-object v3, v2, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v3}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/rollback/PackageRollbackInfo;

    .line 1080
    invoke-virtual {v4}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 1081
    iget-object v3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAppDataRollbackHelper:Lcom/android/server/rollback/AppDataRollbackHelper;

    iget-object v5, v2, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v5}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v5

    invoke-virtual {v3, v5, v4}, Lcom/android/server/rollback/AppDataRollbackHelper;->snapshotAppData(ILandroid/content/rollback/PackageRollbackInfo;)V

    .line 1082
    invoke-direct {p0, v2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->saveRollbackData(Lcom/android/server/rollback/RollbackData;)V

    .line 1083
    goto :goto_4c

    .line 1085
    :cond_4b
    goto :goto_26

    .line 1073
    :cond_4c
    :goto_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1089
    :cond_4f
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mNewRollbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_55
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;

    .line 1090
    iget-object v3, v2, Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;->data:Lcom/android/server/rollback/RollbackData;

    invoke-static {v3, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getPackageRollbackInfo(Lcom/android/server/rollback/RollbackData;Ljava/lang/String;)Landroid/content/rollback/PackageRollbackInfo;

    move-result-object v3

    .line 1091
    if-eqz v3, :cond_7b

    .line 1092
    iget-object v4, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAppDataRollbackHelper:Lcom/android/server/rollback/AppDataRollbackHelper;

    iget-object v5, v2, Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;->data:Lcom/android/server/rollback/RollbackData;

    iget-object v5, v5, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v5}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Lcom/android/server/rollback/AppDataRollbackHelper;->snapshotAppData(ILandroid/content/rollback/PackageRollbackInfo;)V

    .line 1094
    iget-object v2, v2, Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;->data:Lcom/android/server/rollback/RollbackData;

    invoke-direct {p0, v2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->saveRollbackData(Lcom/android/server/rollback/RollbackData;)V

    .line 1096
    :cond_7b
    goto :goto_55

    .line 1097
    :cond_7c
    monitor-exit v0

    .line 1098
    return-void

    .line 1097
    :catchall_7e
    move-exception p1

    monitor-exit v0
    :try_end_80
    .catchall {:try_start_3 .. :try_end_80} :catchall_7e

    throw p1
.end method

.method private updateRollbackLifetimeDurationInMillis()V
    .registers 5

    .line 596
    sget-wide v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->DEFAULT_ROLLBACK_LIFETIME_DURATION_MILLIS:J

    const-string/jumbo v2, "rollback_boot"

    const-string/jumbo v3, "rollback_lifetime_in_millis"

    invoke-static {v2, v3, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackLifetimeDurationInMillis:J

    .line 600
    iget-wide v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackLifetimeDurationInMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1a

    .line 601
    sget-wide v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->DEFAULT_ROLLBACK_LIFETIME_DURATION_MILLIS:J

    iput-wide v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackLifetimeDurationInMillis:J

    .line 603
    :cond_1a
    return-void
.end method


# virtual methods
.method public commitRollback(ILandroid/content/pm/ParceledListSlice;Ljava/lang/String;Landroid/content/IntentSender;)V
    .registers 13

    .line 349
    const-string v0, "executeRollback"

    invoke-direct {p0, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->enforceManageRollbacks(Ljava/lang/String;)V

    .line 351
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 352
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 353
    invoke-virtual {v1, v0, p3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 355
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$aG_9_cawiXbCo0CF-5aX0ns2oy8;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$aG_9_cawiXbCo0CF-5aX0ns2oy8;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;ILandroid/content/pm/ParceledListSlice;Ljava/lang/String;Landroid/content/IntentSender;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 358
    return-void
.end method

.method createNewRollbackLocked(Landroid/content/pm/PackageInstaller$SessionInfo;)Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;
    .registers 5

    .line 1575
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->allocateRollbackIdLocked()I

    move-result v0

    .line 1577
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v1

    .line 1579
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1580
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackStore:Lcom/android/server/rollback/RollbackStore;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/rollback/RollbackStore;->createStagedRollback(II)Lcom/android/server/rollback/RollbackData;

    move-result-object v0

    goto :goto_1b

    .line 1582
    :cond_15
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackStore:Lcom/android/server/rollback/RollbackStore;

    invoke-virtual {v2, v0}, Lcom/android/server/rollback/RollbackStore;->createNonStagedRollback(I)Lcom/android/server/rollback/RollbackData;

    move-result-object v0

    .line 1586
    :goto_1b
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->isMultiPackage()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1587
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getChildSessionIds()[I

    move-result-object p1

    goto :goto_2c

    .line 1589
    :cond_26
    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v2, 0x0

    aput v1, p1, v2

    .line 1592
    :goto_2c
    new-instance v1, Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;

    invoke-direct {v1, v0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;-><init>(Lcom/android/server/rollback/RollbackData;[I)V

    return-object v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11

    .line 1483
    iget-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string p3, "RollbackManager"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 1485
    :cond_b
    new-instance p1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string p3, "  "

    invoke-direct {p1, p2, p3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1486
    iget-object p2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1487
    :try_start_15
    iget-object p3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1b
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_141

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/rollback/RollbackData;

    .line 1488
    iget-object v1, v0, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    .line 1489
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1490
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1491
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/rollback/RollbackData;->getStateAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1492
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-timestamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/rollback/RollbackData;->timestamp:Ljava/time/Instant;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1493
    iget v2, v0, Lcom/android/server/rollback/RollbackData;->stagedSessionId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_8d

    .line 1494
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-stagedSessionId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/rollback/RollbackData;->stagedSessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1496
    :cond_8d
    const-string v2, "-packages:"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1497
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1498
    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_dd

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/rollback/PackageRollbackInfo;

    .line 1499
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1500
    invoke-virtual {v3}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1501
    invoke-virtual {v3}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackTo()Landroid/content/pm/VersionedPackage;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1499
    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1502
    goto :goto_9d

    .line 1503
    :cond_dd
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1504
    iget v0, v0, Lcom/android/server/rollback/RollbackData;->state:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_13c

    .line 1505
    const-string v0, "-causePackages:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1506
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1507
    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getCausePackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_121

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/VersionedPackage;

    .line 1508
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/pm/VersionedPackage;->getLongVersionCode()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1509
    goto :goto_f5

    .line 1510
    :cond_121
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-committedSessionId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getCommittedSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1513
    :cond_13c
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1514
    goto/16 :goto_1b

    .line 1515
    :cond_141
    monitor-exit p2

    .line 1516
    return-void

    .line 1515
    :catchall_143
    move-exception p1

    monitor-exit p2
    :try_end_145
    .catchall {:try_start_15 .. :try_end_145} :catchall_143

    throw p1
.end method

.method public expireRollbackForPackage(Ljava/lang/String;)V
    .registers 7

    .line 560
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_MANAGE_ROLLBACKS"

    const-string v2, "expireRollbackForPackage"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 564
    :try_start_c
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->ensureRollbackDataLoadedLocked()V

    .line 565
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 566
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 567
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/rollback/RollbackData;

    .line 568
    iget-object v3, v2, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v3}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/rollback/PackageRollbackInfo;

    .line 569
    invoke-virtual {v4}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 570
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 571
    invoke-direct {p0, v2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->deleteRollback(Lcom/android/server/rollback/RollbackData;)V

    .line 572
    goto :goto_49

    .line 574
    :cond_48
    goto :goto_2b

    .line 575
    :cond_49
    :goto_49
    goto :goto_15

    .line 576
    :cond_4a
    monitor-exit v0

    .line 577
    return-void

    .line 576
    :catchall_4c
    move-exception p1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_c .. :try_end_4e} :catchall_4c

    throw p1
.end method

.method public getAvailableRollbacks()Landroid/content/pm/ParceledListSlice;
    .registers 7

    .line 292
    const-string v0, "getAvailableRollbacks"

    invoke-direct {p0, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->enforceManageRollbacks(Ljava/lang/String;)V

    .line 293
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    .line 304
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 305
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$oLwS8G_DUyKmAeNKhLfFpV3VJTA;

    invoke-direct {v2, v0}, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$oLwS8G_DUyKmAeNKhLfFpV3VJTA;-><init>(Ljava/util/concurrent/LinkedBlockingQueue;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 308
    :try_start_22
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_25} :catch_26

    .line 314
    goto :goto_2e

    .line 309
    :catch_26
    move-exception v0

    .line 313
    const-string v0, "RollbackManager"

    const-string v1, "Interrupted while waiting for handler thread in getAvailableRollbacks"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :goto_2e
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 317
    :try_start_31
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->ensureRollbackDataLoadedLocked()V

    .line 318
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 319
    const/4 v2, 0x0

    :goto_3a
    iget-object v3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_57

    .line 320
    iget-object v3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/rollback/RollbackData;

    .line 321
    iget v4, v3, Lcom/android/server/rollback/RollbackData;->state:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_54

    .line 322
    iget-object v3, v3, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 325
    :cond_57
    new-instance v2, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v2, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v0

    return-object v2

    .line 326
    :catchall_5e
    move-exception v1

    monitor-exit v0
    :try_end_60
    .catchall {:try_start_31 .. :try_end_60} :catchall_5e

    throw v1

    .line 294
    :cond_61
    const-string v0, "RollbackManager"

    const-string v1, "Calling getAvailableRollbacks from mHandlerThread causes a deadlock"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call RollbackManager#getAvailableRollbacks from the handler thread!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getNewRollbackForPackageSessionLocked(I)Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;
    .registers 8

    .line 1603
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mNewRollbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;

    .line 1604
    iget-object v2, v1, Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;->packageSessionIds:[I

    array-length v3, v2

    const/4 v4, 0x0

    :goto_16
    if-ge v4, v3, :cond_20

    aget v5, v2, v4

    .line 1605
    if-ne v5, p1, :cond_1d

    .line 1606
    return-object v1

    .line 1604
    :cond_1d
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 1609
    :cond_20
    goto :goto_6

    .line 1610
    :cond_21
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRecentlyExecutedRollbacks()Landroid/content/pm/ParceledListSlice;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/rollback/RollbackInfo;",
            ">;"
        }
    .end annotation

    .line 331
    const-string v0, "getRecentlyCommittedRollbacks"

    invoke-direct {p0, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->enforceManageRollbacks(Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 334
    :try_start_8
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->ensureRollbackDataLoadedLocked()V

    .line 335
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 336
    const/4 v2, 0x0

    :goto_11
    iget-object v3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2e

    .line 337
    iget-object v3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/rollback/RollbackData;

    .line 338
    iget v4, v3, Lcom/android/server/rollback/RollbackData;->state:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2b

    .line 339
    iget-object v3, v3, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 342
    :cond_2e
    new-instance v2, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v2, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v0

    return-object v2

    .line 343
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_8 .. :try_end_37} :catchall_35

    throw v1
.end method

.method public synthetic lambda$commitRollback$2$RollbackManagerServiceImpl(ILandroid/content/pm/ParceledListSlice;Ljava/lang/String;Landroid/content/IntentSender;)V
    .registers 5

    .line 356
    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->commitRollbackInternal(ILjava/util/List;Ljava/lang/String;Landroid/content/IntentSender;)V

    return-void
.end method

.method public synthetic lambda$commitRollbackInternal$3$RollbackManagerServiceImpl(Landroid/content/Intent;Lcom/android/server/rollback/RollbackData;Landroid/content/IntentSender;ILjava/util/List;)V
    .registers 9

    .line 482
    const/4 v0, 0x1

    const-string v1, "android.content.pm.extra.STATUS"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 484
    const/4 v2, 0x0

    if-eqz v1, :cond_31

    .line 493
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 497
    :try_start_d
    iput v0, p2, Lcom/android/server/rollback/RollbackData;->state:I

    .line 498
    iput-boolean v2, p2, Lcom/android/server/rollback/RollbackData;->restoreUserDataInProgress:Z

    .line 499
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_2e

    .line 500
    const/4 p2, 0x3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Rollback downgrade install failed: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    const-string p5, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {p1, p5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 500
    invoke-direct {p0, p3, p2, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(Landroid/content/IntentSender;ILjava/lang/String;)V

    .line 504
    return-void

    .line 499
    :catchall_2e
    move-exception p1

    :try_start_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw p1

    .line 507
    :cond_31
    iget-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 508
    :try_start_34
    invoke-virtual {p2}, Lcom/android/server/rollback/RollbackData;->isStaged()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 511
    iput-boolean v2, p2, Lcom/android/server/rollback/RollbackData;->restoreUserDataInProgress:Z

    .line 514
    :cond_3c
    iget-object v0, p2, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0, p4}, Landroid/content/rollback/RollbackInfo;->setCommittedSessionId(I)V

    .line 515
    iget-object p4, p2, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {p4}, Landroid/content/rollback/RollbackInfo;->getCausePackages()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 516
    monitor-exit p1
    :try_end_4b
    .catchall {:try_start_34 .. :try_end_4b} :catchall_67

    .line 517
    iget-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackStore:Lcom/android/server/rollback/RollbackStore;

    invoke-static {p2}, Lcom/android/server/rollback/RollbackStore;->deletePackageCodePaths(Lcom/android/server/rollback/RollbackData;)V

    .line 518
    invoke-direct {p0, p2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->saveRollbackData(Lcom/android/server/rollback/RollbackData;)V

    .line 520
    invoke-direct {p0, p3}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendSuccess(Landroid/content/IntentSender;)V

    .line 522
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.ROLLBACK_COMMITTED"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 524
    iget-object p2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    sget-object p3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const-string p4, "android.permission.MANAGE_ROLLBACKS"

    invoke-virtual {p2, p1, p3, p4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 526
    return-void

    .line 516
    :catchall_67
    move-exception p2

    :try_start_68
    monitor-exit p1
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    throw p2
.end method

.method public synthetic lambda$commitRollbackInternal$4$RollbackManagerServiceImpl(Lcom/android/server/rollback/RollbackData;Landroid/content/IntentSender;ILjava/util/List;Landroid/content/Intent;)V
    .registers 15

    .line 480
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v8, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$YVdIiq4-wvEBANvFTdY79W4LaS8;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$YVdIiq4-wvEBANvFTdY79W4LaS8;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;Landroid/content/Intent;Lcom/android/server/rollback/RollbackData;Landroid/content/IntentSender;ILjava/util/List;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 527
    return-void
.end method

.method public synthetic lambda$new$0$RollbackManagerServiceImpl()V
    .registers 1

    .line 161
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->ensureRollbackDataLoaded()V

    return-void
.end method

.method public synthetic lambda$notifyStagedApkSession$12$RollbackManagerServiceImpl(II)V
    .registers 7

    .line 1199
    nop

    .line 1200
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1201
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->ensureRollbackDataLoadedLocked()V

    .line 1202
    const/4 v1, 0x0

    :goto_8
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 1203
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/rollback/RollbackData;

    .line 1204
    iget v3, v2, Lcom/android/server/rollback/RollbackData;->stagedSessionId:I

    if-ne v3, p1, :cond_20

    .line 1205
    iput p2, v2, Lcom/android/server/rollback/RollbackData;->apkSessionId:I

    .line 1206
    nop

    .line 1207
    goto :goto_24

    .line 1202
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_23
    const/4 v2, 0x0

    .line 1210
    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_2b

    .line 1212
    if-eqz v2, :cond_2a

    .line 1213
    invoke-direct {p0, v2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->saveRollbackData(Lcom/android/server/rollback/RollbackData;)V

    .line 1215
    :cond_2a
    return-void

    .line 1210
    :catchall_2b
    move-exception p1

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method public synthetic lambda$notifyStagedSession$11$RollbackManagerServiceImpl(ILjava/util/concurrent/LinkedBlockingQueue;)V
    .registers 13

    .line 1143
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    .line 1145
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v1

    .line 1146
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    if-nez v1, :cond_2f

    .line 1147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No matching install session for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RollbackManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    invoke-virtual {p2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 1149
    return-void

    .line 1153
    :cond_2f
    iget-object v4, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1154
    :try_start_32
    invoke-virtual {p0, v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->createNewRollbackLocked(Landroid/content/pm/PackageInstaller$SessionInfo;)Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;

    move-result-object v5

    .line 1155
    monitor-exit v4
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_c4

    .line 1157
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionInfo;->isMultiPackage()Z

    move-result v4

    if-nez v4, :cond_61

    .line 1158
    iget-object v0, v5, Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;->data:Lcom/android/server/rollback/RollbackData;

    new-array v4, v2, [I

    invoke-direct {p0, v0, v1, v4}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->enableRollbackForPackageSession(Lcom/android/server/rollback/RollbackData;Landroid/content/pm/PackageInstaller$SessionInfo;[I)Z

    move-result v0

    if-nez v0, :cond_b3

    .line 1160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to enable rollback for session: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RollbackManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    invoke-virtual {p2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 1162
    return-void

    .line 1165
    :cond_61
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getChildSessionIds()[I

    move-result-object v1

    array-length v4, v1

    move v6, v2

    :goto_67
    if-ge v6, v4, :cond_b3

    aget v7, v1, v6

    .line 1166
    nop

    .line 1167
    invoke-virtual {v0, v7}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v8

    .line 1168
    if-nez v8, :cond_8c

    .line 1169
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No matching child install session for: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RollbackManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    invoke-virtual {p2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 1171
    return-void

    .line 1173
    :cond_8c
    iget-object v7, v5, Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;->data:Lcom/android/server/rollback/RollbackData;

    new-array v9, v2, [I

    invoke-direct {p0, v7, v8, v9}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->enableRollbackForPackageSession(Lcom/android/server/rollback/RollbackData;Landroid/content/pm/PackageInstaller$SessionInfo;[I)Z

    move-result v7

    if-nez v7, :cond_b0

    .line 1175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to enable rollback for session: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RollbackManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    invoke-virtual {p2, v3}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 1177
    return-void

    .line 1165
    :cond_b0
    add-int/lit8 v6, v6, 0x1

    goto :goto_67

    .line 1182
    :cond_b3
    const/4 p1, 0x1

    invoke-direct {p0, v5, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->completeEnableRollback(Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;Z)Lcom/android/server/rollback/RollbackData;

    move-result-object v0

    if-eqz v0, :cond_bb

    goto :goto_bc

    :cond_bb
    move p1, v2

    :goto_bc
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 1183
    return-void

    .line 1155
    :catchall_c4
    move-exception p1

    :try_start_c5
    monitor-exit v4
    :try_end_c6
    .catchall {:try_start_c5 .. :try_end_c6} :catchall_c4

    throw p1
.end method

.method public synthetic lambda$onBootCompleted$7$RollbackManagerServiceImpl()V
    .registers 1

    .line 606
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->updateRollbackLifetimeDurationInMillis()V

    return-void
.end method

.method public synthetic lambda$onBootCompleted$8$RollbackManagerServiceImpl()V
    .registers 9

    .line 613
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 614
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 615
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 616
    iget-object v3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 617
    :try_start_12
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->ensureRollbackDataLoadedLocked()V

    .line 618
    iget-object v4, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_61

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/rollback/RollbackData;

    .line 619
    invoke-virtual {v5}, Lcom/android/server/rollback/RollbackData;->isStaged()Z

    move-result v6

    if-eqz v6, :cond_60

    .line 620
    iget v6, v5, Lcom/android/server/rollback/RollbackData;->state:I

    if-nez v6, :cond_35

    .line 621
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    .line 622
    :cond_35
    iget-boolean v6, v5, Lcom/android/server/rollback/RollbackData;->restoreUserDataInProgress:Z

    if-eqz v6, :cond_3c

    .line 623
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    :cond_3c
    :goto_3c
    iget-object v5, v5, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v5}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_46
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_60

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/rollback/PackageRollbackInfo;

    .line 627
    invoke-virtual {v6}, Landroid/content/rollback/PackageRollbackInfo;->isApex()Z

    move-result v7

    if-eqz v7, :cond_5f

    .line 628
    invoke-virtual {v6}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 630
    :cond_5f
    goto :goto_46

    .line 632
    :cond_60
    goto :goto_1b

    .line 633
    :cond_61
    monitor-exit v3
    :try_end_62
    .catchall {:try_start_12 .. :try_end_62} :catchall_ef

    .line 635
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_66
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_98

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/rollback/RollbackData;

    .line 636
    iget-object v4, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v4

    .line 637
    iget v5, v3, Lcom/android/server/rollback/RollbackData;->stagedSessionId:I

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v4

    .line 640
    if-eqz v4, :cond_97

    .line 641
    invoke-virtual {v4}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionApplied()Z

    move-result v5

    if-eqz v5, :cond_8e

    .line 642
    invoke-direct {p0, v3}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->makeRollbackAvailable(Lcom/android/server/rollback/RollbackData;)V

    goto :goto_97

    .line 643
    :cond_8e
    invoke-virtual {v4}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionFailed()Z

    move-result v4

    if-eqz v4, :cond_97

    .line 648
    invoke-direct {p0, v3}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->deleteRollback(Lcom/android/server/rollback/RollbackData;)V

    .line 651
    :cond_97
    :goto_97
    goto :goto_66

    .line 653
    :cond_98
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/rollback/RollbackData;

    .line 654
    iget-object v3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v3

    .line 655
    iget v4, v1, Lcom/android/server/rollback/RollbackData;->stagedSessionId:I

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v3

    .line 658
    if-eqz v3, :cond_d4

    .line 659
    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionApplied()Z

    move-result v4

    if-nez v4, :cond_c6

    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionFailed()Z

    move-result v3

    if-eqz v3, :cond_d4

    .line 660
    :cond_c6
    iget-object v3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 661
    const/4 v4, 0x0

    :try_start_ca
    iput-boolean v4, v1, Lcom/android/server/rollback/RollbackData;->restoreUserDataInProgress:Z

    .line 662
    monitor-exit v3
    :try_end_cd
    .catchall {:try_start_ca .. :try_end_cd} :catchall_d1

    .line 663
    invoke-direct {p0, v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->saveRollbackData(Lcom/android/server/rollback/RollbackData;)V

    goto :goto_d4

    .line 662
    :catchall_d1
    move-exception v0

    :try_start_d2
    monitor-exit v3
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_d1

    throw v0

    .line 666
    :cond_d4
    :goto_d4
    goto :goto_9c

    .line 668
    :cond_d5
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 673
    invoke-direct {p0, v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->onPackageReplaced(Ljava/lang/String;)V

    .line 674
    goto :goto_d9

    .line 675
    :cond_e9
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mPackageHealthObserver:Lcom/android/server/rollback/RollbackPackageHealthObserver;

    invoke-virtual {v0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->onBootCompletedAsync()V

    .line 676
    return-void

    .line 633
    :catchall_ef
    move-exception v0

    :try_start_f0
    monitor-exit v3
    :try_end_f1
    .catchall {:try_start_f0 .. :try_end_f1} :catchall_ef

    throw v0
.end method

.method public synthetic lambda$onUnlockUser$6$RollbackManagerServiceImpl(I)V
    .registers 5

    .line 582
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 583
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 584
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_26

    .line 586
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAppDataRollbackHelper:Lcom/android/server/rollback/AppDataRollbackHelper;

    .line 587
    invoke-virtual {v0, p1, v1}, Lcom/android/server/rollback/AppDataRollbackHelper;->commitPendingBackupAndRestoreForUser(ILjava/util/List;)Ljava/util/Set;

    move-result-object p1

    .line 589
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/rollback/RollbackData;

    .line 590
    invoke-direct {p0, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->saveRollbackData(Lcom/android/server/rollback/RollbackData;)V

    .line 591
    goto :goto_15

    .line 592
    :cond_25
    return-void

    .line 584
    :catchall_26
    move-exception p1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p1
.end method

.method public synthetic lambda$reloadPersistedData$5$RollbackManagerServiceImpl()V
    .registers 1

    .line 553
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->updateRollbackLifetimeDurationInMillis()V

    .line 554
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->ensureRollbackDataLoaded()V

    .line 555
    return-void
.end method

.method public synthetic lambda$scheduleExpiration$9$RollbackManagerServiceImpl()V
    .registers 1

    .line 823
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->runExpiration()V

    return-void
.end method

.method public synthetic lambda$snapshotAndRestoreUserData$10$RollbackManagerServiceImpl(Ljava/lang/String;[IIJLjava/lang/String;I)V
    .registers 8

    .line 1061
    invoke-direct {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->snapshotUserDataInternal(Ljava/lang/String;)V

    .line 1062
    invoke-direct/range {p0 .. p7}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->restoreUserDataInternal(Ljava/lang/String;[IIJLjava/lang/String;I)V

    .line 1063
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    .line 1065
    const/4 p2, 0x0

    invoke-virtual {p1, p7, p2}, Landroid/content/pm/PackageManagerInternal;->finishPackageInstall(IZ)V

    .line 1066
    return-void
.end method

.method public notifyStagedApkSession(II)V
    .registers 5

    .line 1195
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_15

    .line 1198
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$ohlyqMiNlQtoY5XHz6vC79CRKAA;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$ohlyqMiNlQtoY5XHz6vC79CRKAA;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1216
    return-void

    .line 1196
    :cond_15
    new-instance p1, Ljava/lang/SecurityException;

    const-string/jumbo p2, "notifyStagedApkSession may only be called by the system."

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public notifyStagedSession(I)Z
    .registers 5

    .line 1135
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_2e

    .line 1138
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 1142
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$GitEUZMj6F_TZMXHx8fkTXAcvdo;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$GitEUZMj6F_TZMXHx8fkTXAcvdo;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;ILjava/util/concurrent/LinkedBlockingQueue;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1186
    :try_start_19
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_23} :catch_24

    return p1

    .line 1187
    :catch_24
    move-exception p1

    .line 1188
    const-string p1, "RollbackManager"

    const-string v0, "Interrupted while waiting for notifyStagedSession response"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    const/4 p1, 0x0

    return p1

    .line 1136
    :cond_2e
    new-instance p1, Ljava/lang/SecurityException;

    const-string/jumbo v0, "notifyStagedSession may only be called by the system."

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method onBootCompleted()V
    .registers 3

    .line 606
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$pS5jbfXLgvSVqxzjSkJaMnydaOY;

    invoke-direct {v1, p0}, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$pS5jbfXLgvSVqxzjSkJaMnydaOY;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 608
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->scheduleExpiration(J)V

    .line 610
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$V7__18jactj68mqbmRTGjsuUOik;

    invoke-direct {v1, p0}, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$V7__18jactj68mqbmRTGjsuUOik;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 677
    return-void
.end method

.method onUnlockUser(I)V
    .registers 4

    .line 580
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$5wr7eOUmDTfGrVye83nSq68E9AA;

    invoke-direct {v1, p0, p1}, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$5wr7eOUmDTfGrVye83nSq68E9AA;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 593
    return-void
.end method

.method public reloadPersistedData()V
    .registers 4

    .line 545
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_MANAGE_ROLLBACKS"

    const-string/jumbo v2, "reloadPersistedData"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 550
    const/4 v1, 0x0

    :try_start_e
    iput-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    .line 551
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_1e

    .line 552
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$p7U0gtaH93R3VtUt6jx4Xkt2Avs;

    invoke-direct {v1, p0}, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$p7U0gtaH93R3VtUt6jx4Xkt2Avs;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 556
    return-void

    .line 551
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public snapshotAndRestoreUserData(Ljava/lang/String;[IIJLjava/lang/String;I)V
    .registers 19

    .line 1055
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1f

    .line 1060
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v10, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$o7MYzpkOoXbj0yHHTqdCNjmpt8U;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$o7MYzpkOoXbj0yHHTqdCNjmpt8U;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;Ljava/lang/String;[IIJLjava/lang/String;I)V

    invoke-virtual {v0, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1067
    return-void

    .line 1056
    :cond_1f
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "snapshotAndRestoreUserData may only be called by the system."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
