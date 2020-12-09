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
.field private static final DEBUG:Z = false

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
    .registers 4

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
    const-class p2, Landroid/os/UserManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManagerInternal;

    iput-object p2, p0, Lcom/android/server/role/RoleManagerService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    .line 153
    const-class p2, Landroid/app/AppOpsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/server/role/RoleManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 155
    const-class p1, Lcom/android/server/role/RoleManagerInternal;

    new-instance p2, Lcom/android/server/role/RoleManagerService$Internal;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/server/role/RoleManagerService$Internal;-><init>(Lcom/android/server/role/RoleManagerService;Lcom/android/server/role/RoleManagerService$1;)V

    invoke-static {p1, p2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 157
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    .line 159
    new-instance p2, Lcom/android/server/role/RoleManagerService$DefaultBrowserProvider;

    invoke-direct {p2, p0, v0}, Lcom/android/server/role/RoleManagerService$DefaultBrowserProvider;-><init>(Lcom/android/server/role/RoleManagerService;Lcom/android/server/role/RoleManagerService$1;)V

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManagerInternal;->setDefaultBrowserProvider(Landroid/content/pm/PackageManagerInternal$DefaultBrowserProvider;)V

    .line 160
    new-instance p2, Lcom/android/server/role/RoleManagerService$DefaultDialerProvider;

    invoke-direct {p2, p0, v0}, Lcom/android/server/role/RoleManagerService$DefaultDialerProvider;-><init>(Lcom/android/server/role/RoleManagerService;Lcom/android/server/role/RoleManagerService$1;)V

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManagerInternal;->setDefaultDialerProvider(Landroid/content/pm/PackageManagerInternal$DefaultDialerProvider;)V

    .line 161
    new-instance p2, Lcom/android/server/role/RoleManagerService$DefaultHomeProvider;

    invoke-direct {p2, p0, v0}, Lcom/android/server/role/RoleManagerService$DefaultHomeProvider;-><init>(Lcom/android/server/role/RoleManagerService;Lcom/android/server/role/RoleManagerService$1;)V

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManagerInternal;->setDefaultHomeProvider(Landroid/content/pm/PackageManagerInternal$DefaultHomeProvider;)V

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
    .registers 2

    .line 95
    invoke-direct {p0, p1}, Lcom/android/server/role/RoleManagerService;->getOrCreateController(I)Landroid/app/role/RoleControllerManager;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/server/role/RoleManagerService;I)Landroid/os/RemoteCallbackList;
    .registers 2

    .line 95
    invoke-direct {p0, p1}, Lcom/android/server/role/RoleManagerService;->getOrCreateListeners(I)Landroid/os/RemoteCallbackList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/server/role/RoleManagerService;I)Landroid/os/RemoteCallbackList;
    .registers 2

    .line 95
    invoke-direct {p0, p1}, Lcom/android/server/role/RoleManagerService;->getListeners(I)Landroid/os/RemoteCallbackList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/role/RoleManagerService;I)V
    .registers 2

    .line 95
    invoke-direct {p0, p1}, Lcom/android/server/role/RoleManagerService;->onRemoveUser(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/role/RoleManagerService;I)Ljava/util/concurrent/CompletableFuture;
    .registers 2

    .line 95
    invoke-direct {p0, p1}, Lcom/android/server/role/RoleManagerService;->performInitialGrantsIfNecessaryAsync(I)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/server/role/RoleManagerService;I)Lcom/android/server/role/RoleUserState;
    .registers 2

    .line 95
    invoke-direct {p0, p1}, Lcom/android/server/role/RoleManagerService;->getOrCreateUserState(I)Lcom/android/server/role/RoleUserState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/server/role/RoleManagerService;)Landroid/app/AppOpsManager;
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/android/server/role/RoleManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/server/role/RoleManagerService;)Landroid/os/UserManagerInternal;
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/android/server/role/RoleManagerService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    return-object p0
.end method

.method private static computeComponentStateHash(I)Ljava/lang/String;
    .registers 4

    .line 282
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 283
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 285
    new-instance v2, Lcom/android/server/role/-$$Lambda$RoleManagerService$rhPnAyxD4OKoR2nprS9wiayfZjw;

    invoke-direct {v2, v1, v0, p0}, Lcom/android/server/role/-$$Lambda$RoleManagerService$rhPnAyxD4OKoR2nprS9wiayfZjw;-><init>(Ljava/io/ByteArrayOutputStream;Landroid/content/pm/PackageManagerInternal;I)V

    invoke-static {v2}, Lcom/android/internal/util/FunctionalUtils;->uncheckExceptions(Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)Ljava/util/function/Consumer;

    move-result-object v2

    invoke-virtual {v0, v2, p0}, Landroid/content/pm/PackageManagerInternal;->forEachInstalledPackage(Ljava/util/function/Consumer;I)V

    .line 309
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Landroid/util/PackageUtils;->computeSha256Digest([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getListeners(I)Landroid/os/RemoteCallbackList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/role/IOnRoleHoldersChangedListener;",
            ">;"
        }
    .end annotation

    .line 347
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 348
    :try_start_3
    iget-object v1, p0, Lcom/android/server/role/RoleManagerService;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/RemoteCallbackList;

    monitor-exit v0

    return-object p1

    .line 349
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method private getOrCreateController(I)Landroid/app/role/RoleControllerManager;
    .registers 7

    .line 326
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 327
    :try_start_3
    iget-object v1, p0, Lcom/android/server/role/RoleManagerService;->mControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/role/RoleControllerManager;

    .line 328
    if-nez v1, :cond_35

    .line 329
    invoke-virtual {p0}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_37

    .line 332
    nop

    .line 333
    :try_start_12
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 332
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_1f} :catch_2e
    .catchall {:try_start_12 .. :try_end_1f} :catchall_37

    .line 336
    nop

    .line 338
    :try_start_20
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 337
    invoke-static {v2, v1}, Landroid/app/role/RoleControllerManager;->createWithInitializedRemoteServiceComponentName(Landroid/os/Handler;Landroid/content/Context;)Landroid/app/role/RoleControllerManager;

    move-result-object v1

    .line 339
    iget-object v2, p0, Lcom/android/server/role/RoleManagerService;->mControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_35

    .line 334
    :catch_2e
    move-exception p1

    .line 335
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 341
    :cond_35
    :goto_35
    monitor-exit v0

    return-object v1

    .line 342
    :catchall_37
    move-exception p1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_20 .. :try_end_39} :catchall_37

    throw p1
.end method

.method private getOrCreateListeners(I)Landroid/os/RemoteCallbackList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/role/IOnRoleHoldersChangedListener;",
            ">;"
        }
    .end annotation

    .line 355
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 356
    :try_start_3
    iget-object v1, p0, Lcom/android/server/role/RoleManagerService;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    .line 357
    if-nez v1, :cond_17

    .line 358
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 359
    iget-object v2, p0, Lcom/android/server/role/RoleManagerService;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 361
    :cond_17
    monitor-exit v0

    return-object v1

    .line 362
    :catchall_19
    move-exception p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method private getOrCreateUserState(I)Lcom/android/server/role/RoleUserState;
    .registers 5

    .line 314
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 315
    :try_start_3
    iget-object v1, p0, Lcom/android/server/role/RoleManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/role/RoleUserState;

    .line 316
    if-nez v1, :cond_17

    .line 317
    new-instance v1, Lcom/android/server/role/RoleUserState;

    invoke-direct {v1, p1, p0}, Lcom/android/server/role/RoleUserState;-><init>(ILcom/android/server/role/RoleUserState$Callback;)V

    .line 318
    iget-object v2, p0, Lcom/android/server/role/RoleManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 320
    :cond_17
    monitor-exit v0

    return-object v1

    .line 321
    :catchall_19
    move-exception p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public static synthetic lambda$TCTA4I2bhEypguZihxs4ezif6t0(Lcom/android/server/role/RoleManagerService;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/role/RoleManagerService;->notifyRoleHoldersChanged(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$computeComponentStateHash$1(Ljava/io/ByteArrayOutputStream;Landroid/content/pm/PackageManagerInternal;ILandroid/content/pm/PackageParser$Package;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 286
    iget-object v0, p3, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 287
    invoke-virtual {p3}, Landroid/content/pm/PackageParser$Package;->getLongVersionCode()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/internal/util/BitUtils;->toBytes(J)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 288
    iget-object v0, p3, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Landroid/content/pm/PackageManagerInternal;->getApplicationEnabledState(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 290
    iget-object v0, p3, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 291
    invoke-virtual {p1, v0, p2}, Landroid/content/pm/PackageManagerInternal;->getEnabledComponents(Ljava/lang/String;I)Landroid/util/ArraySet;

    move-result-object v0

    .line 292
    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v1

    .line 293
    invoke-virtual {p0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 294
    const/4 v2, 0x0

    move v3, v2

    :goto_2c
    if-ge v3, v1, :cond_3e

    .line 295
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 294
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 298
    :cond_3e
    iget-object v0, p3, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 299
    invoke-virtual {p1, v0, p2}, Landroid/content/pm/PackageManagerInternal;->getDisabledComponents(Ljava/lang/String;I)Landroid/util/ArraySet;

    move-result-object p1

    .line 300
    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result p2

    .line 301
    move v0, v2

    :goto_49
    if-ge v0, p2, :cond_5b

    .line 302
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 301
    add-int/lit8 v0, v0, 0x1

    goto :goto_49

    .line 304
    :cond_5b
    iget-object p1, p3, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object p1, p1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length p2, p1

    :goto_60
    if-ge v2, p2, :cond_6e

    aget-object p3, p1, v2

    .line 305
    invoke-virtual {p3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 304
    add-int/lit8 v2, v2, 0x1

    goto :goto_60

    .line 307
    :cond_6e
    return-void
.end method

.method static synthetic lambda$performInitialGrantsIfNecessaryAsync$0(Lcom/android/server/role/RoleUserState;Ljava/lang/String;Ljava/util/concurrent/CompletableFuture;Ljava/lang/Boolean;)V
    .registers 4

    .line 239
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_e

    .line 240
    invoke-virtual {p0, p1}, Lcom/android/server/role/RoleUserState;->setPackagesHash(Ljava/lang/String;)V

    .line 241
    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_16

    .line 243
    :cond_e
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {p2, p0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 245
    :goto_16
    return-void
.end method

.method private migrateRoleIfNecessary(Ljava/lang/String;I)V
    .registers 7

    .line 265
    invoke-direct {p0, p2}, Lcom/android/server/role/RoleManagerService;->getOrCreateUserState(I)Lcom/android/server/role/RoleUserState;

    move-result-object v0

    .line 266
    invoke-virtual {v0, p1}, Lcom/android/server/role/RoleUserState;->isRoleAvailable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 267
    iget-object v1, p0, Lcom/android/server/role/RoleManagerService;->mLegacyRoleResolver:Lcom/android/server/role/RoleManagerService$RoleHoldersResolver;

    invoke-interface {v1, p1, p2}, Lcom/android/server/role/RoleManagerService$RoleHoldersResolver;->getRoleHolders(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p2

    .line 268
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 269
    return-void

    .line 271
    :cond_17
    sget-object v1, Lcom/android/server/role/RoleManagerService;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Migrating "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", legacy holders: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-virtual {v0, p1}, Lcom/android/server/role/RoleUserState;->addRoleName(Ljava/lang/String;)Z

    .line 273
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 274
    const/4 v2, 0x0

    :goto_3d
    if-ge v2, v1, :cond_4b

    .line 275
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, p1, v3}, Lcom/android/server/role/RoleUserState;->addRoleHolder(Ljava/lang/String;Ljava/lang/String;)Z

    .line 274
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 278
    :cond_4b
    return-void
.end method

.method private notifyRoleHoldersChanged(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 392
    invoke-direct {p0, p2}, Lcom/android/server/role/RoleManagerService;->getListeners(I)Landroid/os/RemoteCallbackList;

    move-result-object v0

    .line 393
    if-eqz v0, :cond_9

    .line 394
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/role/RoleManagerService;->notifyRoleHoldersChangedForListeners(Landroid/os/RemoteCallbackList;Ljava/lang/String;I)V

    .line 397
    :cond_9
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/role/RoleManagerService;->getListeners(I)Landroid/os/RemoteCallbackList;

    move-result-object v0

    .line 399
    if-eqz v0, :cond_13

    .line 400
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/role/RoleManagerService;->notifyRoleHoldersChangedForListeners(Landroid/os/RemoteCallbackList;Ljava/lang/String;I)V

    .line 404
    :cond_13
    const-string v0, "android.app.role.SMS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 405
    invoke-virtual {p0}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-static {p1, p2, p3, p4}, Lcom/android/internal/telephony/SmsApplication;->broadcastSmsAppChange(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :cond_26
    return-void
.end method

.method private notifyRoleHoldersChangedForListeners(Landroid/os/RemoteCallbackList;Ljava/lang/String;I)V
    .registers 9
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

    .line 414
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 416
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_21

    .line 417
    :try_start_7
    invoke-virtual {p1, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/role/IOnRoleHoldersChangedListener;
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_1c

    .line 419
    :try_start_d
    invoke-interface {v2, p2, p3}, Landroid/app/role/IOnRoleHoldersChangedListener;->onRoleHoldersChanged(Ljava/lang/String;I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_11
    .catchall {:try_start_d .. :try_end_10} :catchall_1c

    .line 422
    goto :goto_19

    .line 420
    :catch_11
    move-exception v2

    .line 421
    :try_start_12
    sget-object v3, Lcom/android/server/role/RoleManagerService;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Error calling OnRoleHoldersChangedListener"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_1c

    .line 416
    :goto_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 425
    :catchall_1c
    move-exception p2

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw p2

    :cond_21
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 426
    nop

    .line 427
    return-void
.end method

.method private onRemoveUser(I)V
    .registers 5

    .line 368
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 369
    :try_start_3
    iget-object v1, p0, Lcom/android/server/role/RoleManagerService;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    .line 370
    iget-object v2, p0, Lcom/android/server/role/RoleManagerService;->mControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 371
    iget-object v2, p0, Lcom/android/server/role/RoleManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/role/RoleUserState;

    .line 372
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_24

    .line 373
    if-eqz v1, :cond_1e

    .line 374
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->kill()V

    .line 376
    :cond_1e
    if-eqz p1, :cond_23

    .line 377
    invoke-virtual {p1}, Lcom/android/server/role/RoleUserState;->destroy()V

    .line 379
    :cond_23
    return-void

    .line 372
    :catchall_24
    move-exception p1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p1
.end method

.method private performInitialGrantsIfNecessary(I)V
    .registers 6

    .line 255
    invoke-direct {p0, p1}, Lcom/android/server/role/RoleManagerService;->performInitialGrantsIfNecessaryAsync(I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 257
    const-wide/16 v1, 0x1e

    :try_start_6
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_b} :catch_c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6 .. :try_end_b} :catch_c
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6 .. :try_end_b} :catch_c

    .line 260
    goto :goto_23

    .line 258
    :catch_c
    move-exception v0

    .line 259
    sget-object v1, Lcom/android/server/role/RoleManagerService;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to grant defaults for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 261
    :goto_23
    return-void
.end method

.method private performInitialGrantsIfNecessaryAsync(I)Ljava/util/concurrent/CompletableFuture;
    .registers 7
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
    invoke-static {p1}, Lcom/android/server/role/RoleManagerService;->computeComponentStateHash(I)Ljava/lang/String;

    move-result-object v1

    .line 220
    invoke-virtual {v0}, Lcom/android/server/role/RoleUserState;->getPackagesHash()Ljava/lang/String;

    move-result-object v2

    .line 221
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 222
    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4a

    .line 227
    const-string v2, "android.app.role.ASSISTANT"

    invoke-direct {p0, v2, p1}, Lcom/android/server/role/RoleManagerService;->migrateRoleIfNecessary(Ljava/lang/String;I)V

    .line 228
    const-string v2, "android.app.role.BROWSER"

    invoke-direct {p0, v2, p1}, Lcom/android/server/role/RoleManagerService;->migrateRoleIfNecessary(Ljava/lang/String;I)V

    .line 229
    const-string v2, "android.app.role.DIALER"

    invoke-direct {p0, v2, p1}, Lcom/android/server/role/RoleManagerService;->migrateRoleIfNecessary(Ljava/lang/String;I)V

    .line 230
    const-string v2, "android.app.role.SMS"

    invoke-direct {p0, v2, p1}, Lcom/android/server/role/RoleManagerService;->migrateRoleIfNecessary(Ljava/lang/String;I)V

    .line 231
    const-string v2, "android.app.role.EMERGENCY"

    invoke-direct {p0, v2, p1}, Lcom/android/server/role/RoleManagerService;->migrateRoleIfNecessary(Ljava/lang/String;I)V

    .line 235
    sget-object v2, Lcom/android/server/role/RoleManagerService;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Granting default permissions..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance v2, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v2}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 237
    invoke-direct {p0, p1}, Lcom/android/server/role/RoleManagerService;->getOrCreateController(I)Landroid/app/role/RoleControllerManager;

    move-result-object p1

    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lcom/android/server/role/-$$Lambda$RoleManagerService$bWORjt1dBr7EfFhavgUePqPY2LM;

    invoke-direct {v4, v0, v1, v2}, Lcom/android/server/role/-$$Lambda$RoleManagerService$bWORjt1dBr7EfFhavgUePqPY2LM;-><init>(Lcom/android/server/role/RoleUserState;Ljava/lang/String;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {p1, v3, v4}, Landroid/app/role/RoleControllerManager;->grantDefaultRoles(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 246
    return-object v2

    .line 250
    :cond_4a
    const/4 p1, 0x0

    invoke-static {p1}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method private registerUserRemovedReceiver()V
    .registers 7

    .line 167
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 168
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/server/role/RoleManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/role/RoleManagerService$1;-><init>(Lcom/android/server/role/RoleManagerService;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 178
    return-void
.end method


# virtual methods
.method public onRoleHoldersChanged(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 384
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService;->mListenerHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/role/-$$Lambda$RoleManagerService$TCTA4I2bhEypguZihxs4ezif6t0;->INSTANCE:Lcom/android/server/role/-$$Lambda$RoleManagerService$TCTA4I2bhEypguZihxs4ezif6t0;

    .line 385
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 384
    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 387
    return-void
.end method

.method public onStart()V
    .registers 9

    .line 182
    new-instance v0, Lcom/android/server/role/RoleManagerService$Stub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/role/RoleManagerService$Stub;-><init>(Lcom/android/server/role/RoleManagerService;Lcom/android/server/role/RoleManagerService$1;)V

    const-string/jumbo v1, "role"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/role/RoleManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 186
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 187
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    const-string/jumbo v0, "package"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 191
    const/16 v0, 0x3e8

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 192
    invoke-virtual {p0}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/server/role/RoleManagerService$2;

    invoke-direct {v3, p0}, Lcom/android/server/role/RoleManagerService$2;-><init>(Lcom/android/server/role/RoleManagerService;)V

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 208
    return-void
.end method

.method public onStartUser(I)V
    .registers 2

    .line 212
    invoke-direct {p0, p1}, Lcom/android/server/role/RoleManagerService;->performInitialGrantsIfNecessary(I)V

    .line 213
    return-void
.end method
