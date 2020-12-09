.class public final Lcom/android/server/policy/PermissionPolicyService;
.super Lcom/android/server/SystemService;
.source "PermissionPolicyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/PermissionPolicyService$Internal;,
        Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mIsPackageSyncsScheduled:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mIsStarted:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mOnInitializedCallback:Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 81
    const-class v0, Lcom/android/server/policy/PermissionPolicyService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/PermissionPolicyService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 84
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    .line 87
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsStarted:Landroid/util/SparseBooleanArray;

    .line 98
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsPackageSyncsScheduled:Landroid/util/ArraySet;

    .line 104
    const-class p1, Lcom/android/server/policy/PermissionPolicyInternal;

    new-instance v0, Lcom/android/server/policy/PermissionPolicyService$Internal;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/PermissionPolicyService$Internal;-><init>(Lcom/android/server/policy/PermissionPolicyService;Lcom/android/server/policy/PermissionPolicyService$1;)V

    invoke-static {p1, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/policy/PermissionPolicyService;I)Z
    .registers 2

    .line 80
    invoke-direct {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->isStarted(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/server/policy/PermissionPolicyService;Ljava/lang/String;I)V
    .registers 3

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PermissionPolicyService;->synchronizePackagePermissionsAndAppOpsForUser(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/policy/PermissionPolicyService;Ljava/lang/String;I)V
    .registers 3

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PermissionPolicyService;->synchronizePackagePermissionsAndAppOpsAsyncForUser(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/String;)I
    .registers 1

    .line 80
    invoke-static {p0}, Lcom/android/server/policy/PermissionPolicyService;->getSwitchOp(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .registers 1

    .line 80
    sget-object v0, Lcom/android/server/policy/PermissionPolicyService;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/policy/PermissionPolicyService;)Ljava/lang/Object;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/server/policy/PermissionPolicyService;Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;)Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService;->mOnInitializedCallback:Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;

    return-object p1
.end method

.method private static getSwitchOp(Ljava/lang/String;)I
    .registers 2

    .line 186
    invoke-static {p0}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result p0

    .line 187
    const/4 v0, -0x1

    if-ne p0, v0, :cond_8

    .line 188
    return v0

    .line 191
    :cond_8
    invoke-static {p0}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result p0

    return p0
.end method

.method private static getUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;
    .registers 5

    .line 316
    invoke-virtual {p0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 317
    return-object p0

    .line 320
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_14} :catch_15

    return-object p0

    .line 321
    :catch_15
    move-exception p0

    .line 322
    sget-object v0, Lcom/android/server/policy/PermissionPolicyService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create context for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 323
    const/4 p0, 0x0

    return-object p0
.end method

.method private grantOrUpgradeDefaultRuntimePermissionsIfNeeded(I)V
    .registers 7

    .line 276
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 278
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->wereDefaultPermissionsGrantedSinceBoot(I)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 282
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 287
    new-instance v2, Landroid/permission/PermissionControllerManager;

    .line 289
    invoke-virtual {p0}, Lcom/android/server/policy/PermissionPolicyService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/policy/PermissionPolicyService;->getUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v3

    .line 290
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/permission/PermissionControllerManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 291
    nop

    .line 292
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$8D9Zbki65ND_Q20M-Trexl6cHcQ;

    invoke-direct {v4, v1}, Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$8D9Zbki65ND_Q20M-Trexl6cHcQ;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 291
    invoke-virtual {v2, v3, v4}, Landroid/permission/PermissionControllerManager;->grantOrUpgradeDefaultRuntimePermissions(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 305
    :try_start_36
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_39
    .catch Ljava/lang/InterruptedException; {:try_start_36 .. :try_end_39} :catch_3a

    .line 308
    goto :goto_3b

    .line 306
    :catch_3a
    move-exception v1

    .line 310
    :goto_3b
    sget-object v1, Landroid/os/Build;->DATE:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManagerInternal;->setRuntimePermissionsFingerPrint(Ljava/lang/String;I)V

    .line 312
    :cond_40
    return-void
.end method

.method private isStarted(I)Z
    .registers 4

    .line 233
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 234
    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsStarted:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 235
    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public static synthetic lambda$RYery4oeHNcS8uZ6BgM2MtZIvKw(Lcom/android/server/policy/PermissionPolicyService;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PermissionPolicyService;->synchronizePackagePermissionsAndAppOpsForUser(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic lambda$V2gOjn4rTBH_rbxagOz-eOTvNfc(Lcom/android/server/policy/PermissionPolicyService;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PermissionPolicyService;->synchronizePackagePermissionsAndAppOpsAsyncForUser(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic lambda$grantOrUpgradeDefaultRuntimePermissionsIfNeeded$0(Ljava/util/concurrent/CountDownLatch;Ljava/lang/Boolean;)V
    .registers 2

    .line 294
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 301
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 302
    return-void

    .line 297
    :cond_a
    nop

    .line 298
    sget-object p0, Lcom/android/server/policy/PermissionPolicyService;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Error granting/upgrading runtime permissions"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic lambda$synchronizePermissionsAndAppOpsForUser$1(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;Landroid/content/pm/PackageParser$Package;)V
    .registers 2

    .line 377
    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->addPackage(Ljava/lang/String;)V

    return-void
.end method

.method private synchronizePackagePermissionsAndAppOpsAsyncForUser(Ljava/lang/String;I)V
    .registers 7

    .line 196
    invoke-direct {p0, p2}, Lcom/android/server/policy/PermissionPolicyService;->isStarted(I)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 197
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_9
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsPackageSyncsScheduled:Landroid/util/ArraySet;

    new-instance v2, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 199
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$RYery4oeHNcS8uZ6BgM2MtZIvKw;->INSTANCE:Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$RYery4oeHNcS8uZ6BgM2MtZIvKw;

    .line 202
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 199
    invoke-static {v2, p0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 209
    :cond_2b
    monitor-exit v0

    goto :goto_30

    :catchall_2d
    move-exception p1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_9 .. :try_end_2f} :catchall_2d

    throw p1

    .line 211
    :cond_30
    :goto_30
    return-void
.end method

.method private synchronizePackagePermissionsAndAppOpsForUser(Ljava/lang/String;I)V
    .registers 8

    .line 333
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 334
    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsPackageSyncsScheduled:Landroid/util/ArraySet;

    new-instance v2, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 335
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_5a

    .line 343
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 345
    const/16 v1, 0x3e8

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageInfo(Ljava/lang/String;III)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 347
    if-nez p1, :cond_24

    .line 348
    return-void

    .line 350
    :cond_24
    new-instance v1, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;

    .line 351
    invoke-virtual {p0}, Lcom/android/server/policy/PermissionPolicyService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/policy/PermissionPolicyService;->getUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;-><init>(Landroid/content/Context;)V

    .line 352
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->addPackage(Ljava/lang/String;)V

    .line 353
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManagerInternal;->getPackagesForSharedUserId(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 355
    if-eqz p1, :cond_56

    .line 356
    array-length p2, p1

    :goto_43
    if-ge v2, p2, :cond_56

    aget-object v3, p1, v2

    .line 357
    nop

    .line 358
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 359
    if-eqz v3, :cond_53

    .line 360
    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->addPackage(Ljava/lang/String;)V

    .line 356
    :cond_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    .line 364
    :cond_56
    invoke-static {v1}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->access$400(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;)V

    .line 365
    return-void

    .line 335
    :catchall_5a
    move-exception p1

    :try_start_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw p1
.end method

.method private synchronizePermissionsAndAppOpsForUser(I)V
    .registers 5

    .line 373
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 375
    new-instance v1, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;

    .line 376
    invoke-virtual {p0}, Lcom/android/server/policy/PermissionPolicyService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/policy/PermissionPolicyService;->getUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;-><init>(Landroid/content/Context;)V

    .line 377
    new-instance p1, Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$K1QpWYLKz7rfj4y4fthPQy64Pek;

    invoke-direct {p1, v1}, Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$K1QpWYLKz7rfj4y4fthPQy64Pek;-><init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;)V

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 378
    invoke-static {v1}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->access$400(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;)V

    .line 379
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 7

    .line 217
    const/16 v0, 0x226

    if-ne p1, v0, :cond_22

    .line 218
    const-class p1, Landroid/os/UserManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManagerInternal;

    .line 221
    invoke-virtual {p1}, Landroid/os/UserManagerInternal;->getUserIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_22

    aget v3, v0, v2

    .line 222
    invoke-virtual {p1, v3}, Landroid/os/UserManagerInternal;->isUserRunning(I)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 223
    invoke-virtual {p0, v3}, Lcom/android/server/policy/PermissionPolicyService;->onStartUser(I)V

    .line 221
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 227
    :cond_22
    return-void
.end method

.method public onStart()V
    .registers 10

    .line 109
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 111
    const-class v1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 113
    nop

    .line 114
    const-string v2, "appops"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 113
    invoke-static {v2}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v2

    .line 116
    new-instance v3, Lcom/android/server/policy/PermissionPolicyService$1;

    invoke-direct {v3, p0}, Lcom/android/server/policy/PermissionPolicyService$1;-><init>(Lcom/android/server/policy/PermissionPolicyService;)V

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageList(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)Landroid/content/pm/PackageList;

    .line 137
    new-instance v0, Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$V2gOjn4rTBH_rbxagOz-eOTvNfc;

    invoke-direct {v0, p0}, Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$V2gOjn4rTBH_rbxagOz-eOTvNfc;-><init>(Lcom/android/server/policy/PermissionPolicyService;)V

    invoke-virtual {v1, v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->addOnRuntimePermissionStateChangedListener(Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V

    .line 140
    new-instance v0, Lcom/android/server/policy/PermissionPolicyService$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PermissionPolicyService$2;-><init>(Lcom/android/server/policy/PermissionPolicyService;)V

    .line 147
    nop

    .line 148
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getAllPermissionWithProtectionLevel(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 152
    :try_start_36
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 153
    const/4 v4, 0x0

    :goto_3b
    if-ge v4, v3, :cond_7f

    .line 154
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PermissionInfo;

    .line 156
    invoke-virtual {v5}, Landroid/content/pm/PermissionInfo;->isHardRestricted()Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_73

    iget-object v6, v5, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    if-eqz v6, :cond_4f

    goto :goto_73

    .line 158
    :cond_4f
    invoke-virtual {v5}, Landroid/content/pm/PermissionInfo;->isSoftRestricted()Z

    move-result v6

    if-eqz v6, :cond_7c

    .line 159
    iget-object v6, v5, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/policy/PermissionPolicyService;->getSwitchOp(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6, v7, v0}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V

    .line 161
    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 162
    invoke-static {v7, v7, v7, v5}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->forPermission(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/policy/SoftRestrictedPermissionPolicy;

    move-result-object v5

    .line 164
    invoke-virtual {v5}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->resolveAppOp()I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_7c

    .line 165
    invoke-virtual {v5}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->resolveAppOp()I

    move-result v5

    invoke-interface {v2, v5, v7, v0}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V

    goto :goto_7c

    .line 157
    :cond_73
    :goto_73
    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/policy/PermissionPolicyService;->getSwitchOp(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5, v7, v0}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_7c} :catch_80

    .line 153
    :cond_7c
    :goto_7c
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    .line 172
    :cond_7f
    goto :goto_88

    .line 170
    :catch_80
    move-exception v0

    .line 171
    sget-object v0, Lcom/android/server/policy/PermissionPolicyService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Cannot set up app-ops listener"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :goto_88
    return-void
.end method

.method public onStartUser(I)V
    .registers 5

    .line 242
    invoke-direct {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->isStarted(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 243
    return-void

    .line 246
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->grantOrUpgradeDefaultRuntimePermissionsIfNeeded(I)V

    .line 250
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 251
    :try_start_d
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsStarted:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 252
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mOnInitializedCallback:Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;

    .line 253
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_1f

    .line 256
    invoke-direct {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->synchronizePermissionsAndAppOpsForUser(I)V

    .line 259
    if-eqz v1, :cond_1e

    .line 260
    invoke-interface {v1, p1}, Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;->onInitialized(I)V

    .line 262
    :cond_1e
    return-void

    .line 253
    :catchall_1f
    move-exception p1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p1
.end method

.method public onStopUser(I)V
    .registers 4

    .line 268
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 269
    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsStarted:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 270
    monitor-exit v0

    .line 271
    return-void

    .line 270
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method
