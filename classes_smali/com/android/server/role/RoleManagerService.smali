.class public Lcom/android/server/role/RoleManagerService;
.super Lcom/android/server/SystemService;
.source "RoleManagerService.java"

# interfaces
.implements Lcom/android/server/role/RoleUserState$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/role/RoleManagerService$DefaultHomeProvider;,
        Lcom/android/server/role/RoleManagerService$DefaultDialerProvider;,
        Lcom/android/server/role/RoleManagerService$DefaultBrowserProvider;,
        Lcom/android/server/role/RoleManagerService$Internal;,
        Lcom/android/server/role/RoleManagerService$Stub;,
        Lcom/android/server/role/RoleManagerService$RoleHoldersResolver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mControllers:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/role/RoleControllerManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mLegacyRoleResolver:Lcom/android/server/role/RoleManagerService$RoleHoldersResolver;

.field private final mListenerHandler:Landroid/os/Handler;

.field private final mListeners:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/role/IOnRoleHoldersChangedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mUserManagerInternal:Landroid/os/UserManagerInternal;

.field private final mUserStates:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/role/RoleUserState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 97
    const-class v0, Lcom/android/server/role/RoleManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/role/RoleManagerService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/role/RoleManagerService$RoleHoldersResolver;)V
    .registers 6
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "legacyRoleResolver"  # Lcom/android/server/role/RoleManagerService$RoleHoldersResolver;

    .line 146
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/role/RoleManagerService;->mLock:Ljava/lang/Object;

    .line 122
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/role/RoleManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 129
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/role/RoleManagerService;->mControllers:Landroid/util/SparseArray;

    .line 136
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/role/RoleManagerService;->mListeners:Landroid/util/SparseArray;

    .line 141
    nop

    .line 142
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/role/RoleManagerService;->mListenerHandler:Landroid/os/Handler;

    .line 148
    iput-object p2, p0, Lcom/android/server/role/RoleManagerService;->mLegacyRoleResolver:Lcom/android/server/role/RoleManagerService$RoleHoldersResolver;

    .line 150
    invoke-static {p1}, Landroid/app/role/RoleControllerManager;->initializeRemoteServiceComponentName(Landroid/content/Context;)V

    .line 152
    const-class v0, Landroid/os/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/role/RoleManagerService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    .line 153
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/role/RoleManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 155
    const-class v0, Lcom/android/server/role/RoleManagerInternal;

    new-instance v1, Lcom/android/server/role/RoleManagerService$Internal;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/role/RoleManagerService$Internal;-><init>(Lcom/android/server/role/RoleManagerService;Lcom/android/server/role/RoleManagerService$1;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 157
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 159
    .local v0, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    new-instance v1, Lcom/android/server/role/RoleManagerService$DefaultBrowserProvider;

    invoke-direct {v1, p0, v2}, Lcom/android/server/role/RoleManagerService$DefaultBrowserProvider;-><init>(Lcom/android/server/role/RoleManagerService;Lcom/android/server/role/RoleManagerService$1;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->setDefaultBrowserProvider(Landroid/content/pm/PackageManagerInternal$DefaultBrowserProvider;)V

    .line 160
    new-instance v1, Lcom/android/server/role/RoleManagerService$DefaultDialerProvider;

    invoke-direct {v1, p0, v2}, Lcom/android/server/role/RoleManagerService$DefaultDialerProvider;-><init>(Lcom/android/server/role/RoleManagerService;Lcom/android/server/role/RoleManagerService$1;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->setDefaultDialerProvider(Landroid/content/pm/PackageManagerInternal$DefaultDialerProvider;)V

    .line 161
    new-instance v1, Lcom/android/server/role/RoleManagerService$DefaultHomeProvider;

    invoke-direct {v1, p0, v2}, Lcom/android/server/role/RoleManagerService$DefaultHomeProvider;-><init>(Lcom/android/server/role/RoleManagerService;Lcom/android/server/role/RoleManagerService$1;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->setDefaultHomeProvider(Landroid/content/pm/PackageManagerInternal$DefaultHomeProvider;)V

    .line 163
    invoke-direct {p0}, Lcom/android/server/role/RoleManagerService;->registerUserRemovedReceiver()V

    .line 164
    return-void
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .registers 1

    .line 95
    sget-object v0, Lcom/android/server/role/RoleManagerService;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/role/RoleManagerService;I)Landroid/app/role/RoleControllerManager;
    .registers 3
    .param p0, "x0"  # Lcom/android/server/role/RoleManagerService;
    .param p1, "x1"  # I

    .line 95
    invoke-direct {p0, p1}, Lcom/android/server/role/RoleManagerService;->getOrCreateController(I)Landroid/app/role/RoleControllerManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/role/RoleManagerService;I)Landroid/os/RemoteCallbackList;
    .registers 3
    .param p0, "x0"  # Lcom/android/server/role/RoleManagerService;
    .param p1, "x1"  # I

    .line 95
    invoke-direct {p0, p1}, Lcom/android/server/role/RoleManagerService;->getOrCreateListeners(I)Landroid/os/RemoteCallbackList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/role/RoleManagerService;I)Landroid/os/RemoteCallbackList;
    .registers 3
    .param p0, "x0"  # Lcom/android/server/role/RoleManagerService;
    .param p1, "x1"  # I

    .line 95
    invoke-direct {p0, p1}, Lcom/android/server/role/RoleManagerService;->getListeners(I)Landroid/os/RemoteCallbackList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/role/RoleManagerService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/role/RoleManagerService;
    .param p1, "x1"  # I

    .line 95
    invoke-direct {p0, p1}, Lcom/android/server/role/RoleManagerService;->onRemoveUser(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/role/RoleManagerService;I)Ljava/util/concurrent/CompletableFuture;
    .registers 3
    .param p0, "x0"  # Lcom/android/server/role/RoleManagerService;
    .param p1, "x1"  # I

    .line 95
    invoke-direct {p0, p1}, Lcom/android/server/role/RoleManagerService;->performInitialGrantsIfNecessaryAsync(I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/role/RoleManagerService;I)Lcom/android/server/role/RoleUserState;
    .registers 3
    .param p0, "x0"  # Lcom/android/server/role/RoleManagerService;
    .param p1, "x1"  # I

    .line 95
    invoke-direct {p0, p1}, Lcom/android/server/role/RoleManagerService;->getOrCreateUserState(I)Lcom/android/server/role/RoleUserState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/role/RoleManagerService;)Landroid/app/AppOpsManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/role/RoleManagerService;

    .line 95
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/role/RoleManagerService;)Landroid/os/UserManagerInternal;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/role/RoleManagerService;

    .line 95
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    return-object v0
.end method

.method private static computeComponentStateHash(I)Ljava/lang/String;
    .registers 4
    .param p0, "userId"  # I

    .line 281
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 282
    .local v0, "pm":Landroid/content/pm/PackageManagerInternal;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 284
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Lcom/android/server/role/-$$Lambda$RoleManagerService$rhPnAyxD4OKoR2nprS9wiayfZjw;

    invoke-direct {v2, v1, v0, p0}, Lcom/android/server/role/-$$Lambda$RoleManagerService$rhPnAyxD4OKoR2nprS9wiayfZjw;-><init>(Ljava/io/ByteArrayOutputStream;Landroid/content/pm/PackageManagerInternal;I)V

    invoke-static {v2}, Lcom/android/internal/util/FunctionalUtils;->uncheckExceptions(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)Ljava/util/function/Consumer;

    move-result-object v2

    invoke-virtual {v0, v2, p0}, Landroid/content/pm/PackageManagerInternal;->forEachInstalledPackage(Ljava/util/function/Consumer;I)V

    .line 308
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Landroid/util/PackageUtils;->computeSha256Digest([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getListeners(I)Landroid/os/RemoteCallbackList;
    .registers 4
    .param p1, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/role/IOnRoleHoldersChangedListener;",
            ">;"
        }
    .end annotation

    .line 346
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 347
    :try_start_3
    iget-object v1, p0, Lcom/android/server/role/RoleManagerService;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    monitor-exit v0

    return-object v1

    .line 348
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method private getOrCreateController(I)Landroid/app/role/RoleControllerManager;
    .registers 8
    .param p1, "userId"  # I

    .line 325
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 326
    :try_start_3
    iget-object v1, p0, Lcom/android/server/role/RoleManagerService;->mControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/role/RoleControllerManager;

    .line 327
    .local v1, "controller":Landroid/app/role/RoleControllerManager;
    if-nez v1, :cond_36

    .line 328
    invoke-virtual {p0}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v2
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_38

    .line 331
    .local v2, "systemContext":Landroid/content/Context;
    nop

    .line 332
    :try_start_12
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    .line 331
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v3
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_1f} :catch_2f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_38

    .line 335
    .local v3, "context":Landroid/content/Context;
    nop

    .line 337
    :try_start_20
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 336
    invoke-static {v4, v3}, Landroid/app/role/RoleControllerManager;->createWithInitializedRemoteServiceComponentName(Landroid/os/Handler;Landroid/content/Context;)Landroid/app/role/RoleControllerManager;

    move-result-object v4

    move-object v1, v4

    .line 338
    iget-object v4, p0, Lcom/android/server/role/RoleManagerService;->mControllers:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_36

    .line 333
    .end local v3  # "context":Landroid/content/Context;
    :catch_2f
    move-exception v3

    .line 334
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0  # "this":Lcom/android/server/role/RoleManagerService;
    .end local p1  # "userId":I
    throw v4

    .line 340
    .end local v2  # "systemContext":Landroid/content/Context;
    .end local v3  # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local p0  # "this":Lcom/android/server/role/RoleManagerService;
    .restart local p1  # "userId":I
    :cond_36
    :goto_36
    monitor-exit v0

    return-object v1

    .line 341
    .end local v1  # "controller":Landroid/app/role/RoleControllerManager;
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_20 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method private getOrCreateListeners(I)Landroid/os/RemoteCallbackList;
    .registers 5
    .param p1, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/role/IOnRoleHoldersChangedListener;",
            ">;"
        }
    .end annotation

    .line 354
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 355
    :try_start_3
    iget-object v1, p0, Lcom/android/server/role/RoleManagerService;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    .line 356
    .local v1, "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/role/IOnRoleHoldersChangedListener;>;"
    if-nez v1, :cond_18

    .line 357
    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    move-object v1, v2

    .line 358
    iget-object v2, p0, Lcom/android/server/role/RoleManagerService;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 360
    :cond_18
    monitor-exit v0

    return-object v1

    .line 361
    .end local v1  # "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/role/IOnRoleHoldersChangedListener;>;"
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method private getOrCreateUserState(I)Lcom/android/server/role/RoleUserState;
    .registers 5
    .param p1, "userId"  # I

    .line 313
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 314
    :try_start_3
    iget-object v1, p0, Lcom/android/server/role/RoleManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/role/RoleUserState;

    .line 315
    .local v1, "userState":Lcom/android/server/role/RoleUserState;
    if-nez v1, :cond_18

    .line 316
    new-instance v2, Lcom/android/server/role/RoleUserState;

    invoke-direct {v2, p1, p0}, Lcom/android/server/role/RoleUserState;-><init>(ILcom/android/server/role/RoleUserState$Callback;)V

    move-object v1, v2

    .line 317
    iget-object v2, p0, Lcom/android/server/role/RoleManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 319
    :cond_18
    monitor-exit v0

    return-object v1

    .line 320
    .end local v1  # "userState":Lcom/android/server/role/RoleUserState;
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public static synthetic lambda$TCTA4I2bhEypguZihxs4ezif6t0(Lcom/android/server/role/RoleManagerService;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/role/RoleManagerService;->notifyRoleHoldersChanged(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$computeComponentStateHash$1(Ljava/io/ByteArrayOutputStream;Landroid/content/pm/PackageManagerInternal;ILandroid/content/pm/PackageParser$Package;)V
    .registers 12
    .param p0, "out"  # Ljava/io/ByteArrayOutputStream;
    .param p1, "pm"  # Landroid/content/pm/PackageManagerInternal;
    .param p2, "userId"  # I
    .param p3, "pkg"  # Landroid/content/pm/PackageParser$Package;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 285
    iget-object v0, p3, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 286
    invoke-virtual {p3}, Landroid/content/pm/PackageParser$Package;->getLongVersionCode()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/internal/util/BitUtils;->toBytes(J)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 287
    iget-object v0, p3, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Landroid/content/pm/PackageManagerInternal;->getApplicationEnabledState(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 289
    iget-object v0, p3, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 290
    invoke-virtual {p1, v0, p2}, Landroid/content/pm/PackageManagerInternal;->getEnabledComponents(Ljava/lang/String;I)Landroid/util/ArraySet;

    move-result-object v0

    .line 291
    .local v0, "enabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v1

    .line 292
    .local v1, "numComponents":I
    invoke-virtual {p0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 293
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2b
    if-ge v2, v1, :cond_3d

    .line 294
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 293
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 297
    .end local v2  # "i":I
    :cond_3d
    iget-object v2, p3, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 298
    invoke-virtual {p1, v2, p2}, Landroid/content/pm/PackageManagerInternal;->getDisabledComponents(Ljava/lang/String;I)Landroid/util/ArraySet;

    move-result-object v2

    .line 299
    .local v2, "disabledComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-static {v2}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v1

    .line 300
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_48
    if-ge v3, v1, :cond_5a

    .line 301
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 300
    add-int/lit8 v3, v3, 0x1

    goto :goto_48

    .line 303
    .end local v3  # "i":I
    :cond_5a
    iget-object v3, p3, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v3, v3, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_60
    if-ge v5, v4, :cond_6e

    aget-object v6, v3, v5

    .line 304
    .local v6, "signature":Landroid/content/pm/Signature;
    invoke-virtual {v6}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 303
    .end local v6  # "signature":Landroid/content/pm/Signature;
    add-int/lit8 v5, v5, 0x1

    goto :goto_60

    .line 306
    :cond_6e
    return-void
.end method

.method static synthetic lambda$performInitialGrantsIfNecessaryAsync$0(Lcom/android/server/role/RoleUserState;Ljava/lang/String;Ljava/util/concurrent/CompletableFuture;Ljava/lang/Boolean;)V
    .registers 5
    .param p0, "userState"  # Lcom/android/server/role/RoleUserState;
    .param p1, "packagesHash"  # Ljava/lang/String;
    .param p2, "result"  # Ljava/util/concurrent/CompletableFuture;
    .param p3, "successful"  # Ljava/lang/Boolean;

    .line 238
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 239
    invoke-virtual {p0, p1}, Lcom/android/server/role/RoleUserState;->setPackagesHash(Ljava/lang/String;)V

    .line 240
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_16

    .line 242
    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {p2, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 244
    :goto_16
    return-void
.end method

.method private migrateRoleIfNecessary(Ljava/lang/String;I)V
    .registers 8
    .param p1, "role"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 264
    invoke-direct {p0, p2}, Lcom/android/server/role/RoleManagerService;->getOrCreateUserState(I)Lcom/android/server/role/RoleUserState;

    move-result-object v0

    .line 265
    .local v0, "userState":Lcom/android/server/role/RoleUserState;
    invoke-virtual {v0, p1}, Lcom/android/server/role/RoleUserState;->isRoleAvailable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 266
    iget-object v1, p0, Lcom/android/server/role/RoleManagerService;->mLegacyRoleResolver:Lcom/android/server/role/RoleManagerService$RoleHoldersResolver;

    invoke-interface {v1, p1, p2}, Lcom/android/server/role/RoleManagerService$RoleHoldersResolver;->getRoleHolders(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 267
    .local v1, "roleHolders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 268
    return-void

    .line 270
    :cond_17
    sget-object v2, Lcom/android/server/role/RoleManagerService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Migrating "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", legacy holders: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual {v0, p1}, Lcom/android/server/role/RoleUserState;->addRoleName(Ljava/lang/String;)Z

    .line 272
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 273
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3d
    if-ge v3, v2, :cond_4b

    .line 274
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, p1, v4}, Lcom/android/server/role/RoleUserState;->addRoleHolder(Ljava/lang/String;Ljava/lang/String;)Z

    .line 273
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    .line 277
    .end local v1  # "roleHolders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2  # "size":I
    .end local v3  # "i":I
    :cond_4b
    return-void
.end method

.method private notifyRoleHoldersChanged(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "roleName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .param p3, "removedHolder"  # Ljava/lang/String;
    .param p4, "addedHolder"  # Ljava/lang/String;

    .line 391
    invoke-direct {p0, p2}, Lcom/android/server/role/RoleManagerService;->getListeners(I)Landroid/os/RemoteCallbackList;

    move-result-object v0

    .line 392
    .local v0, "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/role/IOnRoleHoldersChangedListener;>;"
    if-eqz v0, :cond_9

    .line 393
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/role/RoleManagerService;->notifyRoleHoldersChangedForListeners(Landroid/os/RemoteCallbackList;Ljava/lang/String;I)V

    .line 396
    :cond_9
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/server/role/RoleManagerService;->getListeners(I)Landroid/os/RemoteCallbackList;

    move-result-object v1

    .line 398
    .local v1, "allUsersListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/role/IOnRoleHoldersChangedListener;>;"
    if-eqz v1, :cond_13

    .line 399
    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/role/RoleManagerService;->notifyRoleHoldersChangedForListeners(Landroid/os/RemoteCallbackList;Ljava/lang/String;I)V

    .line 403
    :cond_13
    const-string v2, "android.app.role.SMS"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 404
    invoke-virtual {p0}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-static {v2, v3, p3, p4}, Lcom/android/internal/telephony/SmsApplication;->broadcastSmsAppChange(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :cond_26
    return-void
.end method

.method private notifyRoleHoldersChangedForListeners(Landroid/os/RemoteCallbackList;Ljava/lang/String;I)V
    .registers 10
    .param p2, "roleName"  # Ljava/lang/String;
    .param p3, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/role/IOnRoleHoldersChangedListener;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 413
    .local p1, "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/role/IOnRoleHoldersChangedListener;>;"
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 415
    .local v0, "broadcastCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_21

    .line 416
    :try_start_7
    invoke-virtual {p1, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/role/IOnRoleHoldersChangedListener;
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_1c

    .line 418
    .local v2, "listener":Landroid/app/role/IOnRoleHoldersChangedListener;
    :try_start_d
    invoke-interface {v2, p2, p3}, Landroid/app/role/IOnRoleHoldersChangedListener;->onRoleHoldersChanged(Ljava/lang/String;I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_11
    .catchall {:try_start_d .. :try_end_10} :catchall_1c

    .line 421
    goto :goto_19

    .line 419
    :catch_11
    move-exception v3

    .line 420
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_12
    sget-object v4, Lcom/android/server/role/RoleManagerService;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Error calling OnRoleHoldersChangedListener"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_1c

    .line 415
    .end local v2  # "listener":Landroid/app/role/IOnRoleHoldersChangedListener;
    .end local v3  # "e":Landroid/os/RemoteException;
    :goto_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 424
    .end local v1  # "i":I
    :catchall_1c
    move-exception v1

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v1

    :cond_21
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 425
    nop

    .line 426
    return-void
.end method

.method private onRemoveUser(I)V
    .registers 5
    .param p1, "userId"  # I

    .line 367
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 368
    :try_start_3
    iget-object v1, p0, Lcom/android/server/role/RoleManagerService;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    .line 369
    .local v1, "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/role/IOnRoleHoldersChangedListener;>;"
    iget-object v2, p0, Lcom/android/server/role/RoleManagerService;->mControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 370
    iget-object v2, p0, Lcom/android/server/role/RoleManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/role/RoleUserState;

    .line 371
    .local v2, "userState":Lcom/android/server/role/RoleUserState;
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_24

    .line 372
    if-eqz v1, :cond_1e

    .line 373
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->kill()V

    .line 375
    :cond_1e
    if-eqz v2, :cond_23

    .line 376
    invoke-virtual {v2}, Lcom/android/server/role/RoleUserState;->destroy()V

    .line 378
    :cond_23
    return-void

    .line 371
    .end local v1  # "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/role/IOnRoleHoldersChangedListener;>;"
    .end local v2  # "userState":Lcom/android/server/role/RoleUserState;
    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v1
.end method

.method private performInitialGrantsIfNecessary(I)V
    .registers 7
    .param p1, "userId"  # I

    .line 254
    invoke-direct {p0, p1}, Lcom/android/server/role/RoleManagerService;->performInitialGrantsIfNecessaryAsync(I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 256
    .local v0, "result":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    const-wide/16 v1, 0x1e

    :try_start_6
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_b} :catch_c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6 .. :try_end_b} :catch_c
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6 .. :try_end_b} :catch_c

    .line 259
    goto :goto_23

    .line 257
    :catch_c
    move-exception v1

    .line 258
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/role/RoleManagerService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to grant defaults for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 260
    .end local v1  # "e":Ljava/lang/Exception;
    :goto_23
    return-void
.end method

.method private performInitialGrantsIfNecessaryAsync(I)Ljava/util/concurrent/CompletableFuture;
    .registers 10
    .param p1, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 217
    invoke-direct {p0, p1}, Lcom/android/server/role/RoleManagerService;->getOrCreateUserState(I)Lcom/android/server/role/RoleUserState;

    move-result-object v0

    .line 219
    .local v0, "userState":Lcom/android/server/role/RoleUserState;
    invoke-static {p1}, Lcom/android/server/role/RoleManagerService;->computeComponentStateHash(I)Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "packagesHash":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/server/role/RoleUserState;->getPackagesHash()Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, "oldPackagesHash":Ljava/lang/String;
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 222
    .local v3, "needGrant":Z
    if-eqz v3, :cond_45

    .line 227
    const-string v4, "android.app.role.SMS"

    invoke-direct {p0, v4, p1}, Lcom/android/server/role/RoleManagerService;->migrateRoleIfNecessary(Ljava/lang/String;I)V

    .line 228
    const-string v4, "android.app.role.ASSISTANT"

    invoke-direct {p0, v4, p1}, Lcom/android/server/role/RoleManagerService;->migrateRoleIfNecessary(Ljava/lang/String;I)V

    .line 229
    const-string v4, "android.app.role.DIALER"

    invoke-direct {p0, v4, p1}, Lcom/android/server/role/RoleManagerService;->migrateRoleIfNecessary(Ljava/lang/String;I)V

    .line 230
    const-string v4, "android.app.role.EMERGENCY"

    invoke-direct {p0, v4, p1}, Lcom/android/server/role/RoleManagerService;->migrateRoleIfNecessary(Ljava/lang/String;I)V

    .line 234
    sget-object v4, Lcom/android/server/role/RoleManagerService;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Granting default permissions..."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    new-instance v4, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v4}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 236
    .local v4, "result":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    invoke-direct {p0, p1}, Lcom/android/server/role/RoleManagerService;->getOrCreateController(I)Landroid/app/role/RoleControllerManager;

    move-result-object v5

    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v7, Lcom/android/server/role/-$$Lambda$RoleManagerService$bWORjt1dBr7EfFhavgUePqPY2LM;

    invoke-direct {v7, v0, v1, v4}, Lcom/android/server/role/-$$Lambda$RoleManagerService$bWORjt1dBr7EfFhavgUePqPY2LM;-><init>(Lcom/android/server/role/RoleUserState;Ljava/lang/String;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/role/RoleControllerManager;->grantDefaultRoles(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 245
    return-object v4

    .line 249
    .end local v4  # "result":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    :cond_45
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    return-object v4
.end method

.method private registerUserRemovedReceiver()V
    .registers 8

    .line 167
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 168
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/server/role/RoleManagerService$1;

    invoke-direct {v2, p0}, Lcom/android/server/role/RoleManagerService$1;-><init>(Lcom/android/server/role/RoleManagerService;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 178
    return-void
.end method


# virtual methods
.method public onRoleHoldersChanged(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "roleName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .param p3, "removedHolder"  # Ljava/lang/String;
    .param p4, "addedHolder"  # Ljava/lang/String;

    .line 383
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService;->mListenerHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/role/-$$Lambda$RoleManagerService$TCTA4I2bhEypguZihxs4ezif6t0;->INSTANCE:Lcom/android/server/role/-$$Lambda$RoleManagerService$TCTA4I2bhEypguZihxs4ezif6t0;

    .line 384
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 383
    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 386
    return-void
.end method

.method public onStart()V
    .registers 8

    .line 182
    new-instance v0, Lcom/android/server/role/RoleManagerService$Stub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/role/RoleManagerService$Stub;-><init>(Lcom/android/server/role/RoleManagerService;Lcom/android/server/role/RoleManagerService$1;)V

    const-string/jumbo v1, "role"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/role/RoleManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 186
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 187
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 191
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 192
    invoke-virtual {p0}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/server/role/RoleManagerService$2;

    invoke-direct {v2, p0}, Lcom/android/server/role/RoleManagerService$2;-><init>(Lcom/android/server/role/RoleManagerService;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 208
    return-void
.end method

.method public onStartUser(I)V
    .registers 2
    .param p1, "userId"  # I

    .line 212
    invoke-direct {p0, p1}, Lcom/android/server/role/RoleManagerService;->performInitialGrantsIfNecessary(I)V

    .line 213
    return-void
.end method
