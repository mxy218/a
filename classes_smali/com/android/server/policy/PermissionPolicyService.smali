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
.field private static final DEBUG:Z

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
    .registers 5
    .param p1, "context"  # Landroid/content/Context;

    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    .line 87
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsStarted:Landroid/util/SparseBooleanArray;

    .line 98
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsPackageSyncsScheduled:Landroid/util/ArraySet;

    .line 104
    const-class v0, Lcom/android/server/policy/PermissionPolicyInternal;

    new-instance v1, Lcom/android/server/policy/PermissionPolicyService$Internal;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/PermissionPolicyService$Internal;-><init>(Lcom/android/server/policy/PermissionPolicyService;Lcom/android/server/policy/PermissionPolicyService$1;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/policy/PermissionPolicyService;I)Z
    .registers 3
    .param p0, "x0"  # Lcom/android/server/policy/PermissionPolicyService;
    .param p1, "x1"  # I

    .line 80
    invoke-direct {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->isStarted(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/policy/PermissionPolicyService;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/policy/PermissionPolicyService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # I

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PermissionPolicyService;->synchronizePackagePermissionsAndAppOpsForUser(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/policy/PermissionPolicyService;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/policy/PermissionPolicyService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # I

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PermissionPolicyService;->synchronizePackagePermissionsAndAppOpsAsyncForUser(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/String;)I
    .registers 2
    .param p0, "x0"  # Ljava/lang/String;

    .line 80
    invoke-static {p0}, Lcom/android/server/policy/PermissionPolicyService;->getSwitchOp(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .registers 1

    .line 80
    sget-object v0, Lcom/android/server/policy/PermissionPolicyService;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/policy/PermissionPolicyService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/PermissionPolicyService;

    .line 80
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/policy/PermissionPolicyService;Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;)Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/policy/PermissionPolicyService;
    .param p1, "x1"  # Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;

    .line 80
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService;->mOnInitializedCallback:Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;

    return-object p1
.end method

.method private static getSwitchOp(Ljava/lang/String;)I
    .registers 3
    .param p0, "permission"  # Ljava/lang/String;

    .line 186
    invoke-static {p0}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v0

    .line 187
    .local v0, "op":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 188
    return v1

    .line 191
    :cond_8
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1

    return v1
.end method

.method private static getUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;
    .registers 6
    .param p0, "context"  # Landroid/content/Context;
    .param p1, "user"  # Landroid/os/UserHandle;

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

    move-result-object v0
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_14} :catch_15

    return-object v0

    .line 321
    :catch_15
    move-exception v0

    .line 322
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v1, Lcom/android/server/policy/PermissionPolicyService;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot create context for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 323
    const/4 v1, 0x0

    return-object v1
.end method

.method private grantOrUpgradeDefaultRuntimePermissionsIfNeeded(I)V
    .registers 7
    .param p1, "userId"  # I

    .line 276
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 278
    .local v0, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->wereDefaultPermissionsGrantedSinceBoot(I)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 282
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 287
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
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
    .local v2, "permissionControllerManager":Landroid/permission/PermissionControllerManager;
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
    move-exception v3

    .line 310
    :goto_3b
    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v3, p1}, Landroid/content/pm/PackageManagerInternal;->setRuntimePermissionsFingerPrint(Ljava/lang/String;I)V

    .line 312
    .end local v1  # "latch":Ljava/util/concurrent/CountDownLatch;
    .end local v2  # "permissionControllerManager":Landroid/permission/PermissionControllerManager;
    :cond_40
    return-void
.end method

.method private isStarted(I)Z
    .registers 4
    .param p1, "userId"  # I

    .line 233
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 234
    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService;->mIsStarted:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 235
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
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
    .registers 5
    .param p0, "latch"  # Ljava/util/concurrent/CountDownLatch;
    .param p1, "success"  # Ljava/lang/Boolean;

    .line 294
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 301
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 302
    return-void

    .line 297
    :cond_a
    const-string v0, "Error granting/upgrading runtime permissions"

    .line 298
    .local v0, "message":Ljava/lang/String;
    sget-object v1, Lcom/android/server/policy/PermissionPolicyService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Error granting/upgrading runtime permissions"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic lambda$synchronizePermissionsAndAppOpsForUser$1(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;Landroid/content/pm/PackageParser$Package;)V
    .registers 3
    .param p0, "synchronizer"  # Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;
    .param p1, "pkg"  # Landroid/content/pm/PackageParser$Package;

    .line 377
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->addPackage(Ljava/lang/String;)V

    return-void
.end method

.method private synchronizePackagePermissionsAndAppOpsAsyncForUser(Ljava/lang/String;I)V
    .registers 7
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "changedUserId"  # I

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

    move-result-object v3

    .line 199
    invoke-static {v2, p0, p1, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 209
    :cond_2b
    monitor-exit v0

    goto :goto_30

    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_9 .. :try_end_2f} :catchall_2d

    throw v1

    .line 211
    :cond_30
    :goto_30
    return-void
.end method

.method private synchronizePackagePermissionsAndAppOpsForUser(Ljava/lang/String;I)V
    .registers 12
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

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
    .local v0, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    const/16 v1, 0x3e8

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageInfo(Ljava/lang/String;III)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 347
    .local v1, "pkg":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_24

    .line 348
    return-void

    .line 350
    :cond_24
    new-instance v3, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;

    .line 351
    invoke-virtual {p0}, Lcom/android/server/policy/PermissionPolicyService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/policy/PermissionPolicyService;->getUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;-><init>(Landroid/content/Context;)V

    .line 352
    .local v3, "synchroniser":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->addPackage(Ljava/lang/String;)V

    .line 353
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    invoke-virtual {v0, v4, p2}, Landroid/content/pm/PackageManagerInternal;->getPackagesForSharedUserId(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 355
    .local v4, "sharedPkgNames":[Ljava/lang/String;
    if-eqz v4, :cond_56

    .line 356
    array-length v5, v4

    :goto_43
    if-ge v2, v5, :cond_56

    aget-object v6, v4, v2

    .line 357
    .local v6, "sharedPkgName":Ljava/lang/String;
    nop

    .line 358
    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v7

    .line 359
    .local v7, "sharedPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v7, :cond_53

    .line 360
    iget-object v8, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v8}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->addPackage(Ljava/lang/String;)V

    .line 356
    .end local v6  # "sharedPkgName":Ljava/lang/String;
    .end local v7  # "sharedPkg":Landroid/content/pm/PackageParser$Package;
    :cond_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    .line 364
    :cond_56
    invoke-static {v3}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->access$400(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;)V

    .line 365
    return-void

    .line 335
    .end local v0  # "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    .end local v1  # "pkg":Landroid/content/pm/PackageInfo;
    .end local v3  # "synchroniser":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;
    .end local v4  # "sharedPkgNames":[Ljava/lang/String;
    :catchall_5a
    move-exception v1

    :try_start_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v1
.end method

.method private synchronizePermissionsAndAppOpsForUser(I)V
    .registers 6
    .param p1, "userId"  # I

    .line 373
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 375
    .local v0, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    new-instance v1, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;

    .line 376
    invoke-virtual {p0}, Lcom/android/server/policy/PermissionPolicyService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/policy/PermissionPolicyService;->getUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;-><init>(Landroid/content/Context;)V

    .line 377
    .local v1, "synchronizer":Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;
    new-instance v2, Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$K1QpWYLKz7rfj4y4fthPQy64Pek;

    invoke-direct {v2, v1}, Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$K1QpWYLKz7rfj4y4fthPQy64Pek;-><init>(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;)V

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 378
    invoke-static {v1}, Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;->access$400(Lcom/android/server/policy/PermissionPolicyService$PermissionToOpSynchroniser;)V

    .line 379
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 8
    .param p1, "phase"  # I

    .line 217
    const/16 v0, 0x226

    if-ne p1, v0, :cond_22

    .line 218
    const-class v0, Landroid/os/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    .line 221
    .local v0, "um":Landroid/os/UserManagerInternal;
    invoke-virtual {v0}, Landroid/os/UserManagerInternal;->getUserIds()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_22

    aget v4, v1, v3

    .line 222
    .local v4, "userId":I
    invoke-virtual {v0, v4}, Landroid/os/UserManagerInternal;->isUserRunning(I)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 223
    invoke-virtual {p0, v4}, Lcom/android/server/policy/PermissionPolicyService;->onStartUser(I)V

    .line 221
    .end local v4  # "userId":I
    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 227
    .end local v0  # "um":Landroid/os/UserManagerInternal;
    :cond_22
    return-void
.end method

.method public onStart()V
    .registers 13

    .line 109
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 111
    .local v0, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    const-class v1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 113
    .local v1, "permManagerInternal":Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    nop

    .line 114
    const-string v2, "appops"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 113
    invoke-static {v2}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v2

    .line 116
    .local v2, "appOpsService":Lcom/android/internal/app/IAppOpsService;
    new-instance v3, Lcom/android/server/policy/PermissionPolicyService$1;

    invoke-direct {v3, p0}, Lcom/android/server/policy/PermissionPolicyService$1;-><init>(Lcom/android/server/policy/PermissionPolicyService;)V

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageList(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)Landroid/content/pm/PackageList;

    .line 137
    new-instance v3, Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$V2gOjn4rTBH_rbxagOz-eOTvNfc;

    invoke-direct {v3, p0}, Lcom/android/server/policy/-$$Lambda$PermissionPolicyService$V2gOjn4rTBH_rbxagOz-eOTvNfc;-><init>(Lcom/android/server/policy/PermissionPolicyService;)V

    invoke-virtual {v1, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->addOnRuntimePermissionStateChangedListener(Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V

    .line 140
    new-instance v3, Lcom/android/server/policy/PermissionPolicyService$2;

    invoke-direct {v3, p0}, Lcom/android/server/policy/PermissionPolicyService$2;-><init>(Lcom/android/server/policy/PermissionPolicyService;)V

    .line 147
    .local v3, "appOpsListener":Lcom/android/internal/app/IAppOpsCallback;
    nop

    .line 148
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getAllPermissionWithProtectionLevel(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 152
    .local v4, "dangerousPerms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PermissionInfo;>;"
    :try_start_36
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 153
    .local v5, "numDangerousPerms":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3b
    if-ge v6, v5, :cond_7f

    .line 154
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PermissionInfo;

    .line 156
    .local v7, "perm":Landroid/content/pm/PermissionInfo;
    invoke-virtual {v7}, Landroid/content/pm/PermissionInfo;->isHardRestricted()Z

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_73

    iget-object v8, v7, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    if-eqz v8, :cond_4f

    goto :goto_73

    .line 158
    :cond_4f
    invoke-virtual {v7}, Landroid/content/pm/PermissionInfo;->isSoftRestricted()Z

    move-result v8

    if-eqz v8, :cond_7c

    .line 159
    iget-object v8, v7, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/server/policy/PermissionPolicyService;->getSwitchOp(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8, v9, v3}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V

    .line 161
    iget-object v8, v7, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 162
    invoke-static {v9, v9, v9, v8}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->forPermission(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/policy/SoftRestrictedPermissionPolicy;

    move-result-object v8

    .line 164
    .local v8, "policy":Lcom/android/server/policy/SoftRestrictedPermissionPolicy;
    invoke-virtual {v8}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->resolveAppOp()I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_7c

    .line 165
    invoke-virtual {v8}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->resolveAppOp()I

    move-result v10

    invoke-interface {v2, v10, v9, v3}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V

    goto :goto_7c

    .line 157
    .end local v8  # "policy":Lcom/android/server/policy/SoftRestrictedPermissionPolicy;
    :cond_73
    :goto_73
    iget-object v8, v7, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/server/policy/PermissionPolicyService;->getSwitchOp(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8, v9, v3}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_7c} :catch_80

    .line 153
    .end local v7  # "perm":Landroid/content/pm/PermissionInfo;
    :cond_7c
    :goto_7c
    add-int/lit8 v6, v6, 0x1

    goto :goto_3b

    .line 172
    .end local v5  # "numDangerousPerms":I
    .end local v6  # "i":I
    :cond_7f
    goto :goto_88

    .line 170
    :catch_80
    move-exception v5

    .line 171
    .local v5, "doesNotHappen":Landroid/os/RemoteException;
    sget-object v6, Lcom/android/server/policy/PermissionPolicyService;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Cannot set up app-ops listener"

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .end local v5  # "doesNotHappen":Landroid/os/RemoteException;
    :goto_88
    return-void
.end method

.method public onStartUser(I)V
    .registers 5
    .param p1, "userId"  # I

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
    .local v1, "callback":Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;
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
    .end local v1  # "callback":Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public onStopUser(I)V
    .registers 4
    .param p1, "userId"  # I

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
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
