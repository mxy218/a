.class public Lcom/android/server/attention/AttentionManagerService;
.super Lcom/android/server/SystemService;
.source "AttentionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/attention/AttentionManagerService$BinderService;,
        Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;,
        Lcom/android/server/attention/AttentionManagerService$ScreenStateReceiver;,
        Lcom/android/server/attention/AttentionManagerService$AttentionHandler;,
        Lcom/android/server/attention/AttentionManagerService$UserState;,
        Lcom/android/server/attention/AttentionManagerService$AttentionCheck;,
        Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;,
        Lcom/android/server/attention/AttentionManagerService$LocalService;
    }
.end annotation


# static fields
.field private static final CONNECTION_TTL_MILLIS:J = 0xea60L

.field private static final DEBUG:Z = false

.field private static final DEFAULT_SERVICE_ENABLED:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "AttentionManagerService"

.field private static final SERVICE_ENABLED:Ljava/lang/String; = "service_enabled"

.field private static final STALE_AFTER_MILLIS:J = 0x1388L

.field private static sTestAttentionServicePackage:Ljava/lang/String;


# instance fields
.field private mAttentionHandler:Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

.field mComponentName:Landroid/content/ComponentName;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mUserStates:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/attention/AttentionManagerService$UserState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 103
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/attention/AttentionManagerService;-><init>(Landroid/content/Context;Landroid/os/PowerManager;Ljava/lang/Object;Lcom/android/server/attention/AttentionManagerService$AttentionHandler;)V

    .line 105
    new-instance p1, Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    invoke-direct {p1, p0}, Lcom/android/server/attention/AttentionManagerService$AttentionHandler;-><init>(Lcom/android/server/attention/AttentionManagerService;)V

    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionHandler:Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    .line 106
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/PowerManager;Ljava/lang/Object;Lcom/android/server/attention/AttentionManagerService$AttentionHandler;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 95
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 112
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService;->mContext:Landroid/content/Context;

    .line 113
    iput-object p2, p0, Lcom/android/server/attention/AttentionManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 114
    iput-object p3, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    .line 115
    iput-object p4, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionHandler:Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    .line 116
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/attention/AttentionManagerService;)Ljava/lang/Object;
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/server/attention/AttentionManagerService;)Z
    .registers 1

    .line 76
    invoke-direct {p0}, Lcom/android/server/attention/AttentionManagerService;->isAttentionServiceSupported()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/android/server/attention/AttentionManagerService;)Landroid/util/SparseArray;
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService;->mUserStates:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/server/attention/AttentionManagerService;Lcom/android/server/attention/AttentionManagerService$UserState;)V
    .registers 2

    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/attention/AttentionManagerService;->cancelAndUnbindLocked(Lcom/android/server/attention/AttentionManagerService$UserState;)V

    return-void
.end method

.method static synthetic access$2202(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 76
    sput-object p0, Lcom/android/server/attention/AttentionManagerService;->sTestAttentionServicePackage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/server/attention/AttentionManagerService;)Landroid/content/Context;
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2400(Landroid/content/Context;)Landroid/content/ComponentName;
    .registers 1

    .line 76
    invoke-static {p0}, Lcom/android/server/attention/AttentionManagerService;->resolveAttentionService(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/server/attention/AttentionManagerService;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 2

    .line 76
    invoke-direct {p0, p1}, Lcom/android/server/attention/AttentionManagerService;->dumpInternal(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method private cancelAfterTimeoutLocked(J)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionHandler:Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/attention/AttentionManagerService$AttentionHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 297
    return-void
.end method

.method private cancelAndUnbindLocked(Lcom/android/server/attention/AttentionManagerService$UserState;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 643
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 644
    if-nez p1, :cond_7

    .line 645
    :try_start_5
    monitor-exit v0

    return-void

    .line 648
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/attention/AttentionManagerService;->cancel(Lcom/android/server/attention/AttentionManagerService$UserState;)V

    .line 650
    iget-object v1, p1, Lcom/android/server/attention/AttentionManagerService$UserState;->mService:Landroid/service/attention/IAttentionService;

    if-nez v1, :cond_10

    .line 651
    monitor-exit v0

    return-void

    .line 654
    :cond_10
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionHandler:Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    new-instance v2, Lcom/android/server/attention/-$$Lambda$AttentionManagerService$2UthIuCIdjigpPv1U5Dxw_fo4nY;

    invoke-direct {v2, p0, p1}, Lcom/android/server/attention/-$$Lambda$AttentionManagerService$2UthIuCIdjigpPv1U5Dxw_fo4nY;-><init>(Lcom/android/server/attention/AttentionManagerService;Lcom/android/server/attention/AttentionManagerService$UserState;)V

    invoke-virtual {v1, v2}, Lcom/android/server/attention/AttentionManagerService$AttentionHandler;->post(Ljava/lang/Runnable;)Z

    .line 660
    invoke-static {p1}, Lcom/android/server/attention/AttentionManagerService$UserState;->access$2000(Lcom/android/server/attention/AttentionManagerService$UserState;)Lcom/android/server/attention/AttentionManagerService$UserState$AttentionServiceConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/attention/AttentionManagerService$UserState$AttentionServiceConnection;->cleanupService()V

    .line 661
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/android/server/attention/AttentionManagerService$UserState;->access$2100(Lcom/android/server/attention/AttentionManagerService$UserState;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 662
    monitor-exit v0

    .line 663
    return-void

    .line 662
    :catchall_2c
    move-exception p1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_5 .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method private createAttentionCheck(Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;Lcom/android/server/attention/AttentionManagerService$UserState;)Lcom/android/server/attention/AttentionManagerService$AttentionCheck;
    .registers 4

    .line 230
    new-instance v0, Lcom/android/server/attention/AttentionManagerService$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/attention/AttentionManagerService$1;-><init>(Lcom/android/server/attention/AttentionManagerService;Lcom/android/server/attention/AttentionManagerService$UserState;Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)V

    .line 263
    new-instance p2, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-direct {p2, p1, v0}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;-><init>(Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;Landroid/service/attention/IAttentionCallback;)V

    return-object p2
.end method

.method private dumpInternal(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7

    .line 377
    const-string v0, "Attention Manager Service (dumpsys attention) state:\n"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isServiceEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService;->isServiceEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AttentionServicePackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/attention/AttentionManagerService;->getServiceConfigPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 380
    const-string v0, "Resolved component:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_7a

    .line 382
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Component="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Class="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 388
    :cond_7a
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 389
    :try_start_7d
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 390
    const-string v2, "Number user states: "

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 392
    if-lez v1, :cond_af

    .line 393
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 394
    const/4 v2, 0x0

    :goto_91
    if-ge v2, v1, :cond_ac

    .line 395
    iget-object v3, p0, Lcom/android/server/attention/AttentionManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/attention/AttentionManagerService$UserState;

    .line 396
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 397
    const-string v4, ":"

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 398
    invoke-static {v3, p1}, Lcom/android/server/attention/AttentionManagerService$UserState;->access$1200(Lcom/android/server/attention/AttentionManagerService$UserState;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 399
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 394
    add-int/lit8 v2, v2, 0x1

    goto :goto_91

    .line 401
    :cond_ac
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 403
    :cond_af
    monitor-exit v0

    .line 404
    return-void

    .line 403
    :catchall_b1
    move-exception p1

    monitor-exit v0
    :try_end_b3
    .catchall {:try_start_7d .. :try_end_b3} :catchall_b1

    throw p1
.end method

.method private static getServiceConfigPackage(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 331
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getAttentionServicePackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isAttentionServiceSupported()Z
    .registers 2

    .line 154
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService;->isServiceEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/android/server/attention/AttentionManagerService;->isServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private isServiceAvailable()Z
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_c

    .line 145
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService;->resolveAttentionService(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mComponentName:Landroid/content/ComponentName;

    .line 147
    :cond_c
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public static isServiceConfigured(Landroid/content/Context;)Z
    .registers 1

    .line 139
    invoke-static {p0}, Lcom/android/server/attention/AttentionManagerService;->getServiceConfigPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private peekUserStateLocked(I)Lcom/android/server/attention/AttentionManagerService$UserState;
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/attention/AttentionManagerService$UserState;

    return-object p1
.end method

.method private static resolveAttentionService(Landroid/content/Context;)Landroid/content/ComponentName;
    .registers 9

    .line 339
    invoke-static {p0}, Lcom/android/server/attention/AttentionManagerService;->getServiceConfigPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 342
    nop

    .line 343
    sget-object v1, Lcom/android/server/attention/AttentionManagerService;->sTestAttentionServicePackage:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_13

    .line 344
    sget-object v1, Lcom/android/server/attention/AttentionManagerService;->sTestAttentionServicePackage:Ljava/lang/String;

    .line 345
    const/16 v3, 0x80

    goto :goto_1c

    .line 346
    :cond_13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_75

    .line 347
    const/high16 v3, 0x100000

    move-object v1, v0

    .line 352
    :goto_1c
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.service.attention.AttentionService"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 355
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v1, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    .line 356
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v6, "AttentionManagerService"

    if-eqz p0, :cond_65

    iget-object v7, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v7, :cond_3b

    goto :goto_65

    .line 363
    :cond_3b
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 364
    iget-object v0, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 365
    const-string v5, "android.permission.BIND_ATTENTION_SERVICE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 366
    invoke-virtual {p0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    .line 368
    :cond_4c
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 370
    invoke-virtual {p0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    aput-object v7, v0, v3

    aput-object v5, v0, v1

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    aput-object p0, v0, v4

    .line 368
    const-string p0, "Service %s should require %s permission. Found %s permission"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    return-object v2

    .line 357
    :cond_65
    :goto_65
    new-array p0, v4, [Ljava/lang/Object;

    aput-object v5, p0, v3

    aput-object v0, p0, v1

    const-string v0, "Service %s not found in package %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    return-object v2

    .line 349
    :cond_75
    return-object v2
.end method


# virtual methods
.method cancel(Lcom/android/server/attention/AttentionManagerService$UserState;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 616
    if-eqz p1, :cond_34

    iget-object v0, p1, Lcom/android/server/attention/AttentionManagerService$UserState;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    if-nez v0, :cond_7

    goto :goto_34

    .line 620
    :cond_7
    iget-object v0, p1, Lcom/android/server/attention/AttentionManagerService$UserState;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->access$800(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 624
    return-void

    .line 627
    :cond_10
    iget-object v0, p1, Lcom/android/server/attention/AttentionManagerService$UserState;->mService:Landroid/service/attention/IAttentionService;

    if-nez v0, :cond_1a

    .line 628
    iget-object p1, p1, Lcom/android/server/attention/AttentionManagerService$UserState;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-virtual {p1}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->cancelInternal()V

    .line 629
    return-void

    .line 633
    :cond_1a
    :try_start_1a
    iget-object v0, p1, Lcom/android/server/attention/AttentionManagerService$UserState;->mService:Landroid/service/attention/IAttentionService;

    iget-object v1, p1, Lcom/android/server/attention/AttentionManagerService$UserState;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    .line 634
    invoke-static {v1}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->access$900(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Landroid/service/attention/IAttentionCallback;

    move-result-object v1

    .line 633
    invoke-interface {v0, v1}, Landroid/service/attention/IAttentionService;->cancelAttentionCheck(Landroid/service/attention/IAttentionCallback;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_25} :catch_26

    .line 638
    goto :goto_33

    .line 635
    :catch_26
    move-exception v0

    .line 636
    const-string v0, "AttentionManagerService"

    const-string v1, "Unable to cancel attention check"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object p1, p1, Lcom/android/server/attention/AttentionManagerService$UserState;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-virtual {p1}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->cancelInternal()V

    .line 639
    :goto_33
    return-void

    .line 617
    :cond_34
    :goto_34
    return-void
.end method

.method cancelAttentionCheck(Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 270
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService;->peekCurrentUserStateLocked()Lcom/android/server/attention/AttentionManagerService$UserState;

    move-result-object v1

    .line 271
    if-nez v1, :cond_b

    .line 272
    monitor-exit v0

    return-void

    .line 274
    :cond_b
    iget-object v2, v1, Lcom/android/server/attention/AttentionManagerService$UserState;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-static {v2}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->access$1100(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    .line 275
    const-string p1, "AttentionManagerService"

    const-string v1, "Cannot cancel a non-current request"

    invoke-static {p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    monitor-exit v0

    return-void

    .line 278
    :cond_20
    invoke-virtual {p0, v1}, Lcom/android/server/attention/AttentionManagerService;->cancel(Lcom/android/server/attention/AttentionManagerService$UserState;)V

    .line 279
    monitor-exit v0

    .line 280
    return-void

    .line 279
    :catchall_25
    move-exception p1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p1
.end method

.method checkAttention(JLandroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)Z
    .registers 15
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 174
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    invoke-direct {p0}, Lcom/android/server/attention/AttentionManagerService;->isAttentionServiceSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    .line 177
    const-string p1, "AttentionManagerService"

    const-string p2, "Trying to call checkAttention() on an unsupported device."

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return v1

    .line 182
    :cond_12
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 183
    return v1

    .line 186
    :cond_1b
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 187
    :try_start_1e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 189
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService;->freeIfInactiveLocked()V

    .line 191
    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService;->getOrCreateCurrentUserStateLocked()Lcom/android/server/attention/AttentionManagerService$UserState;

    move-result-object v4

    .line 193
    invoke-static {v4}, Lcom/android/server/attention/AttentionManagerService$UserState;->access$300(Lcom/android/server/attention/AttentionManagerService$UserState;)V

    .line 196
    iget-object v5, v4, Lcom/android/server/attention/AttentionManagerService$UserState;->mAttentionCheckCache:Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;

    .line 197
    const/4 v6, 0x1

    if-eqz v5, :cond_49

    invoke-static {v5}, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->access$400(Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;)J

    move-result-wide v7

    const-wide/16 v9, 0x1388

    add-long/2addr v7, v9

    cmp-long v2, v2, v7

    if-gez v2, :cond_49

    .line 198
    invoke-static {v5}, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->access$500(Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;)I

    move-result p1

    invoke-static {v5}, Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;->access$600(Lcom/android/server/attention/AttentionManagerService$AttentionCheckCache;)J

    move-result-wide v1

    invoke-virtual {p3, p1, v1, v2}, Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;->onSuccess(IJ)V

    .line 199
    monitor-exit v0

    return v6

    .line 203
    :cond_49
    iget-object v2, v4, Lcom/android/server/attention/AttentionManagerService$UserState;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    if-eqz v2, :cond_5f

    .line 204
    iget-object v2, v4, Lcom/android/server/attention/AttentionManagerService$UserState;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-static {v2}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->access$700(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Z

    move-result v2

    if-eqz v2, :cond_5d

    iget-object v2, v4, Lcom/android/server/attention/AttentionManagerService$UserState;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    .line 205
    invoke-static {v2}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->access$800(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Z

    move-result v2

    if-nez v2, :cond_5f

    .line 206
    :cond_5d
    monitor-exit v0

    return v1

    .line 210
    :cond_5f
    invoke-direct {p0, p3, v4}, Lcom/android/server/attention/AttentionManagerService;->createAttentionCheck(Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;Lcom/android/server/attention/AttentionManagerService$UserState;)Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    move-result-object p3

    iput-object p3, v4, Lcom/android/server/attention/AttentionManagerService$UserState;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    .line 212
    iget-object p3, v4, Lcom/android/server/attention/AttentionManagerService$UserState;->mService:Landroid/service/attention/IAttentionService;
    :try_end_67
    .catchall {:try_start_1e .. :try_end_67} :catchall_89

    if-eqz p3, :cond_87

    .line 215
    :try_start_69
    invoke-direct {p0, p1, p2}, Lcom/android/server/attention/AttentionManagerService;->cancelAfterTimeoutLocked(J)V

    .line 216
    iget-object p1, v4, Lcom/android/server/attention/AttentionManagerService$UserState;->mService:Landroid/service/attention/IAttentionService;

    iget-object p2, v4, Lcom/android/server/attention/AttentionManagerService$UserState;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    .line 217
    invoke-static {p2}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->access$900(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;)Landroid/service/attention/IAttentionCallback;

    move-result-object p2

    .line 216
    invoke-interface {p1, p2}, Landroid/service/attention/IAttentionService;->checkAttention(Landroid/service/attention/IAttentionCallback;)V

    .line 218
    iget-object p1, v4, Lcom/android/server/attention/AttentionManagerService$UserState;->mCurrentAttentionCheck:Lcom/android/server/attention/AttentionManagerService$AttentionCheck;

    invoke-static {p1, v6}, Lcom/android/server/attention/AttentionManagerService$AttentionCheck;->access$702(Lcom/android/server/attention/AttentionManagerService$AttentionCheck;Z)Z
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_7c} :catch_7d
    .catchall {:try_start_69 .. :try_end_7c} :catchall_89

    .line 222
    goto :goto_87

    .line 219
    :catch_7d
    move-exception p1

    .line 220
    :try_start_7e
    const-string p1, "AttentionManagerService"

    const-string p2, "Cannot call into the AttentionService"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    monitor-exit v0

    return v1

    .line 224
    :cond_87
    :goto_87
    monitor-exit v0

    return v6

    .line 225
    :catchall_89
    move-exception p1

    monitor-exit v0
    :try_end_8b
    .catchall {:try_start_7e .. :try_end_8b} :catchall_89

    throw p1
.end method

.method protected freeIfInactiveLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionHandler:Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/attention/AttentionManagerService$AttentionHandler;->removeMessages(I)V

    .line 289
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionHandler:Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/attention/AttentionManagerService$AttentionHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 291
    return-void
.end method

.method protected getOrCreateCurrentUserStateLocked()Lcom/android/server/attention/AttentionManagerService$UserState;
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 303
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/attention/AttentionManagerService;->getOrCreateUserStateLocked(I)Lcom/android/server/attention/AttentionManagerService$UserState;

    move-result-object v0

    return-object v0
.end method

.method protected getOrCreateUserStateLocked(I)Lcom/android/server/attention/AttentionManagerService$UserState;
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 309
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/attention/AttentionManagerService$UserState;

    .line 310
    if-nez v0, :cond_1e

    .line 311
    new-instance v0, Lcom/android/server/attention/AttentionManagerService$UserState;

    iget-object v3, p0, Lcom/android/server/attention/AttentionManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/attention/AttentionManagerService;->mAttentionHandler:Lcom/android/server/attention/AttentionManagerService$AttentionHandler;

    iget-object v6, p0, Lcom/android/server/attention/AttentionManagerService;->mComponentName:Landroid/content/ComponentName;

    move-object v1, v0

    move v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/attention/AttentionManagerService$UserState;-><init>(ILandroid/content/Context;Ljava/lang/Object;Landroid/os/Handler;Landroid/content/ComponentName;)V

    .line 312
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 314
    :cond_1e
    return-object v0
.end method

.method protected isServiceEnabled()Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 159
    const-string v0, "attention_manager_service"

    const-string/jumbo v1, "service_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$cancelAndUnbindLocked$0$AttentionManagerService(Lcom/android/server/attention/AttentionManagerService$UserState;)V
    .registers 3

    .line 654
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/attention/AttentionManagerService$UserState;->access$2000(Lcom/android/server/attention/AttentionManagerService$UserState;)Lcom/android/server/attention/AttentionManagerService$UserState$AttentionServiceConnection;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public onBootPhase(I)V
    .registers 5

    .line 120
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_16

    .line 121
    iget-object p1, p0, Lcom/android/server/attention/AttentionManagerService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/attention/AttentionManagerService$ScreenStateReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/attention/AttentionManagerService$ScreenStateReceiver;-><init>(Lcom/android/server/attention/AttentionManagerService;Lcom/android/server/attention/AttentionManagerService$1;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 124
    :cond_16
    return-void
.end method

.method public onStart()V
    .registers 4

    .line 128
    new-instance v0, Lcom/android/server/attention/AttentionManagerService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/attention/AttentionManagerService$BinderService;-><init>(Lcom/android/server/attention/AttentionManagerService;Lcom/android/server/attention/AttentionManagerService$1;)V

    const-string v2, "attention"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/attention/AttentionManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 129
    const-class v0, Landroid/attention/AttentionManagerInternal;

    new-instance v2, Lcom/android/server/attention/AttentionManagerService$LocalService;

    invoke-direct {v2, p0, v1}, Lcom/android/server/attention/AttentionManagerService$LocalService;-><init>(Lcom/android/server/attention/AttentionManagerService;Lcom/android/server/attention/AttentionManagerService$1;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/server/attention/AttentionManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 130
    return-void
.end method

.method public onSwitchUser(I)V
    .registers 2

    .line 134
    invoke-direct {p0, p1}, Lcom/android/server/attention/AttentionManagerService;->peekUserStateLocked(I)Lcom/android/server/attention/AttentionManagerService$UserState;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/attention/AttentionManagerService;->cancelAndUnbindLocked(Lcom/android/server/attention/AttentionManagerService$UserState;)V

    .line 135
    return-void
.end method

.method protected peekCurrentUserStateLocked()Lcom/android/server/attention/AttentionManagerService$UserState;
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 321
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/attention/AttentionManagerService;->peekUserStateLocked(I)Lcom/android/server/attention/AttentionManagerService$UserState;

    move-result-object v0

    return-object v0
.end method
