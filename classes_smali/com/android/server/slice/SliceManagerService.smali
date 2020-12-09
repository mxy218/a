.class public Lcom/android/server/slice/SliceManagerService;
.super Landroid/app/slice/ISliceManager$Stub;
.source "SliceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/slice/SliceManagerService$SliceGrant;,
        Lcom/android/server/slice/SliceManagerService$Lifecycle;,
        Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SliceManagerService"


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

.field private final mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field private final mAssistantLookup:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHomeLookup:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field private final mPermissions:Lcom/android/server/slice/SlicePermissionManager;

.field private final mPinnedSlicesByUri:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/net/Uri;",
            "Lcom/android/server/slice/PinnedSliceState;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 103
    invoke-static {}, Lcom/android/server/slice/SliceManagerService;->createHandler()Lcom/android/server/ServiceThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/slice/SliceManagerService;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 104
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 107
    invoke-direct {p0}, Landroid/app/slice/ISliceManager$Stub;-><init>()V

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mLock:Ljava/lang/Object;

    .line 91
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mPinnedSlicesByUri:Landroid/util/ArrayMap;

    .line 93
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mAssistantLookup:Landroid/util/SparseArray;

    .line 95
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mHomeLookup:Landroid/util/SparseArray;

    .line 531
    new-instance v0, Lcom/android/server/slice/SliceManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/slice/SliceManagerService$1;-><init>(Lcom/android/server/slice/SliceManagerService;)V

    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 108
    iput-object p1, p0, Lcom/android/server/slice/SliceManagerService;->mContext:Landroid/content/Context;

    .line 109
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 110
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 109
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 111
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 112
    new-instance v0, Lcom/android/internal/app/AssistUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 113
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/slice/SliceManagerService;->mHandler:Landroid/os/Handler;

    .line 115
    const-class p1, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object p1, p0, Lcom/android/server/slice/SliceManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 117
    new-instance p1, Lcom/android/server/slice/SlicePermissionManager;

    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p2}, Lcom/android/server/slice/SlicePermissionManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    .line 119
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 120
    const-string p1, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    const-string p1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    const-string/jumbo p1, "package"

    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/android/server/slice/SliceManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/slice/SliceManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v6, p0, Lcom/android/server/slice/SliceManagerService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/slice/SliceManagerService;)Lcom/android/server/slice/SlicePermissionManager;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/slice/SliceManagerService;)V
    .registers 1

    .line 81
    invoke-direct {p0}, Lcom/android/server/slice/SliceManagerService;->systemReady()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/slice/SliceManagerService;I)V
    .registers 2

    .line 81
    invoke-direct {p0, p1}, Lcom/android/server/slice/SliceManagerService;->onUnlockUser(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/slice/SliceManagerService;I)V
    .registers 2

    .line 81
    invoke-direct {p0, p1}, Lcom/android/server/slice/SliceManagerService;->onStopUser(I)V

    return-void
.end method

.method private static createHandler()Lcom/android/server/ServiceThread;
    .registers 4

    .line 525
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "SliceManagerService"

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 527
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 528
    return-object v0
.end method

.method private enforceAccess(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 415
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/slice/SliceManagerService;->checkAccess(Ljava/lang/String;Landroid/net/Uri;II)I

    move-result v0

    if-eqz v0, :cond_42

    .line 417
    nop

    .line 418
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 417
    invoke-static {p2, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v0

    .line 419
    invoke-direct {p0, p2, v0}, Lcom/android/server/slice/SliceManagerService;->getProviderPkg(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_42

    .line 420
    :cond_26
    new-instance p1, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Access to slice "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is required"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 423
    :cond_42
    :goto_42
    invoke-direct {p0, p1, p2}, Lcom/android/server/slice/SliceManagerService;->enforceCrossUser(Ljava/lang/String;Landroid/net/Uri;)V

    .line 424
    return-void
.end method

.method private enforceCrossUser(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 4

    .line 407
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    .line 408
    invoke-static {p2, p1}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result p2

    if-eq p2, p1, :cond_19

    .line 409
    invoke-virtual {p0}, Lcom/android/server/slice/SliceManagerService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v0, "Slice interaction across users requires INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :cond_19
    return-void
.end method

.method private enforceOwner(Ljava/lang/String;Landroid/net/Uri;I)V
    .registers 5

    .line 340
    invoke-direct {p0, p2, p3}, Lcom/android/server/slice/SliceManagerService;->getProviderPkg(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_d

    if-eqz p1, :cond_d

    .line 343
    return-void

    .line 341
    :cond_d
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Caller must own "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getAssistant(I)Ljava/lang/String;
    .registers 3

    .line 468
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object p1

    .line 469
    if-nez p1, :cond_a

    .line 470
    const/4 p1, 0x0

    return-object p1

    .line 472
    :cond_a
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getAssistantMatcher(I)Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;
    .registers 4

    .line 450
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mAssistantLookup:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;

    .line 451
    if-nez v0, :cond_19

    .line 452
    new-instance v0, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;

    new-instance v1, Lcom/android/server/slice/-$$Lambda$SliceManagerService$ic_PW16x_KcVi-NszMwHhErqI0s;

    invoke-direct {v1, p0, p1}, Lcom/android/server/slice/-$$Lambda$SliceManagerService$ic_PW16x_KcVi-NszMwHhErqI0s;-><init>(Lcom/android/server/slice/SliceManagerService;I)V

    invoke-direct {v0, v1}, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;-><init>(Ljava/util/function/Supplier;)V

    .line 453
    iget-object v1, p0, Lcom/android/server/slice/SliceManagerService;->mAssistantLookup:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 455
    :cond_19
    return-object v0
.end method

.method private getHomeMatcher(I)Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;
    .registers 4

    .line 459
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mHomeLookup:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;

    .line 460
    if-nez v0, :cond_19

    .line 461
    new-instance v0, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;

    new-instance v1, Lcom/android/server/slice/-$$Lambda$SliceManagerService$LkusK1jmu9JKJTiMRWqWxNGEGbY;

    invoke-direct {v1, p0, p1}, Lcom/android/server/slice/-$$Lambda$SliceManagerService$LkusK1jmu9JKJTiMRWqWxNGEGbY;-><init>(Lcom/android/server/slice/SliceManagerService;I)V

    invoke-direct {v0, v1}, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;-><init>(Ljava/util/function/Supplier;)V

    .line 462
    iget-object v1, p0, Lcom/android/server/slice/SliceManagerService;->mHomeLookup:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 464
    :cond_19
    return-object v0
.end method

.method private getOrCreatePinnedSlice(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/server/slice/PinnedSliceState;
    .registers 5

    .line 363
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 364
    :try_start_3
    iget-object v1, p0, Lcom/android/server/slice/SliceManagerService;->mPinnedSlicesByUri:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/slice/PinnedSliceState;

    .line 365
    if-nez v1, :cond_16

    .line 366
    invoke-virtual {p0, p1, p2}, Lcom/android/server/slice/SliceManagerService;->createPinnedSlice(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/server/slice/PinnedSliceState;

    move-result-object v1

    .line 367
    iget-object p2, p0, Lcom/android/server/slice/SliceManagerService;->mPinnedSlicesByUri:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    :cond_16
    monitor-exit v0

    return-object v1

    .line 370
    :catchall_18
    move-exception p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method private getPinnedSlice(Landroid/net/Uri;)Lcom/android/server/slice/PinnedSliceState;
    .registers 7

    .line 352
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 353
    :try_start_3
    iget-object v1, p0, Lcom/android/server/slice/SliceManagerService;->mPinnedSlicesByUri:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/slice/PinnedSliceState;

    .line 354
    if-eqz v1, :cond_f

    .line 358
    monitor-exit v0

    return-object v1

    .line 355
    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Slice %s not pinned"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 356
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    .line 355
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 359
    :catchall_25
    move-exception p1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p1
.end method

.method private getProviderPkg(Landroid/net/Uri;I)Ljava/lang/String;
    .registers 8

    .line 395
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 397
    :try_start_4
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    .line 398
    iget-object v3, p0, Lcom/android/server/slice/SliceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    .line 399
    invoke-static {p1, p2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result p1

    .line 398
    invoke-virtual {v3, v2, v4, p1}, Landroid/content/pm/PackageManager;->resolveContentProviderAsUser(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object p1

    .line 400
    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_21

    .line 402
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 400
    return-object p1

    .line 402
    :catchall_21
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private hasFullSliceAccess(Ljava/lang/String;I)Z
    .registers 6

    .line 431
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 433
    :try_start_4
    invoke-direct {p0, p1, p2}, Lcom/android/server/slice/SliceManagerService;->isDefaultHomeApp(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_19

    invoke-direct {p0, p1, p2}, Lcom/android/server/slice/SliceManagerService;->isAssistant(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_19

    .line 434
    invoke-direct {p0, p1, p2}, Lcom/android/server/slice/SliceManagerService;->isGrantedFullAccess(Ljava/lang/String;I)Z

    move-result p1
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_1f

    if-eqz p1, :cond_17

    goto :goto_19

    :cond_17
    const/4 p1, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 p1, 0x1

    .line 435
    :goto_1a
    nop

    .line 437
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 435
    return p1

    .line 437
    :catchall_1f
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private isAssistant(Ljava/lang/String;I)Z
    .registers 3

    .line 442
    invoke-direct {p0, p2}, Lcom/android/server/slice/SliceManagerService;->getAssistantMatcher(I)Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;->matches(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private isDefaultHomeApp(Ljava/lang/String;I)Z
    .registers 3

    .line 446
    invoke-direct {p0, p2}, Lcom/android/server/slice/SliceManagerService;->getHomeMatcher(I)Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;->matches(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private isGrantedFullAccess(Ljava/lang/String;I)Z
    .registers 4

    .line 521
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/slice/SlicePermissionManager;->hasFullAccess(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method static synthetic lambda$onStopUser$0(ILcom/android/server/slice/PinnedSliceState;)Z
    .registers 2

    .line 135
    invoke-virtual {p1}, Lcom/android/server/slice/PinnedSliceState;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    move-result p1

    if-ne p1, p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private onStopUser(I)V
    .registers 5

    .line 134
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 135
    :try_start_3
    iget-object v1, p0, Lcom/android/server/slice/SliceManagerService;->mPinnedSlicesByUri:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Lcom/android/server/slice/-$$Lambda$SliceManagerService$EsoJb3dNe0G_qzoQixj72OS5gnw;

    invoke-direct {v2, p1}, Lcom/android/server/slice/-$$Lambda$SliceManagerService$EsoJb3dNe0G_qzoQixj72OS5gnw;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 136
    monitor-exit v0

    .line 137
    return-void

    .line 136
    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p1
.end method

.method private onUnlockUser(I)V
    .registers 2

    .line 131
    return-void
.end method

.method private systemReady()V
    .registers 1

    .line 128
    return-void
.end method

.method private verifyCaller(Ljava/lang/String;)V
    .registers 4

    .line 427
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 428
    return-void
.end method


# virtual methods
.method public applyRestore([BI)V
    .registers 5

    .line 310
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_5b

    .line 313
    const-string v0, "SliceManagerService"

    if-nez p1, :cond_21

    .line 314
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyRestore: no payload to restore for user "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return-void

    .line 318
    :cond_21
    if-eqz p2, :cond_38

    .line 319
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyRestore: cannot restore policy for user "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    return-void

    .line 322
    :cond_38
    new-instance p2, Ljava/io/ByteArrayInputStream;

    invoke-direct {p2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 324
    :try_start_3d
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object p1

    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p1

    .line 325
    sget-object v1, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-virtual {v1}, Landroid/util/Xml$Encoding;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 326
    iget-object p2, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    invoke-virtual {p2, p1}, Lcom/android/server/slice/SlicePermissionManager;->readRestore(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_53
    .catch Ljava/lang/NumberFormatException; {:try_start_3d .. :try_end_53} :catch_54
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3d .. :try_end_53} :catch_54
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_53} :catch_54

    .line 329
    goto :goto_5a

    .line 327
    :catch_54
    move-exception p1

    .line 328
    const-string p2, "applyRestore: error reading payload"

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 330
    :goto_5a
    return-void

    .line 311
    :cond_5b
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Caller must be system"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected checkAccess(Ljava/lang/String;Landroid/net/Uri;II)I
    .registers 12

    .line 391
    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v3, p1

    move v4, p4

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/slice/SliceManagerService;->checkSlicePermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public checkSlicePermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)I
    .registers 25

    .line 221
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v1, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 222
    const/4 v13, -0x1

    const/4 v14, 0x0

    if-nez v1, :cond_43

    .line 223
    iget-object v0, v7, Lcom/android/server/slice/SliceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v15

    array-length v6, v15

    move v5, v14

    :goto_22
    if-ge v5, v6, :cond_42

    aget-object v3, v15, v5

    .line 224
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p4

    move/from16 v16, v5

    move/from16 v5, p5

    move/from16 v17, v6

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/slice/SliceManagerService;->checkSlicePermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3d

    .line 226
    return v14

    .line 223
    :cond_3d
    add-int/lit8 v5, v16, 0x1

    move/from16 v6, v17

    goto :goto_22

    .line 229
    :cond_42
    return v13

    .line 231
    :cond_43
    invoke-direct {v7, v1, v2}, Lcom/android/server/slice/SliceManagerService;->hasFullSliceAccess(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 232
    return v14

    .line 234
    :cond_4a
    iget-object v0, v7, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/server/slice/SlicePermissionManager;->hasPermission(Ljava/lang/String;ILandroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 235
    return v14

    .line 237
    :cond_53
    if-eqz v12, :cond_7d

    if-eqz v9, :cond_7d

    .line 239
    invoke-direct {v7, v9, v8, v2}, Lcom/android/server/slice/SliceManagerService;->enforceOwner(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 240
    array-length v0, v12

    move v3, v14

    :goto_5c
    if-ge v3, v0, :cond_7d

    aget-object v4, v12, v3

    .line 241
    iget-object v5, v7, Lcom/android/server/slice/SliceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4, v10, v11}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    if-nez v4, :cond_7a

    .line 242
    invoke-static {v8, v2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v4

    .line 243
    invoke-direct {v7, v8, v4}, Lcom/android/server/slice/SliceManagerService;->getProviderPkg(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v3

    .line 244
    iget-object v0, v7, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    move-object/from16 v1, p3

    move-object/from16 v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/slice/SlicePermissionManager;->grantSliceAccess(Ljava/lang/String;ILjava/lang/String;ILandroid/net/Uri;)V

    .line 245
    return v14

    .line 240
    :cond_7a
    add-int/lit8 v3, v3, 0x1

    goto :goto_5c

    .line 250
    :cond_7d
    iget-object v0, v7, Lcom/android/server/slice/SliceManagerService;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-virtual {v0, v8, v10, v11, v1}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v0

    if-nez v0, :cond_87

    .line 252
    return v14

    .line 254
    :cond_87
    return v13
.end method

.method protected createPinnedSlice(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/server/slice/PinnedSliceState;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 375
    new-instance v0, Lcom/android/server/slice/PinnedSliceState;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/slice/PinnedSliceState;-><init>(Lcom/android/server/slice/SliceManagerService;Landroid/net/Uri;Ljava/lang/String;)V

    return-object v0
.end method

.method public getAllPackagesGranted(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    .line 561
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 562
    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 563
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 564
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 561
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/slice/SliceManagerService;->getProviderPkg(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object p1

    .line 565
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    invoke-virtual {v0, p1}, Lcom/android/server/slice/SlicePermissionManager;->getAllPackagesGranted(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getBackupPayload(I)[B
    .registers 7

    .line 285
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_5b

    .line 289
    const/4 v0, 0x0

    const-string v1, "SliceManagerService"

    if-eqz p1, :cond_22

    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBackupPayload: cannot backup policy for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    return-object v0

    .line 293
    :cond_22
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 295
    :try_start_27
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    .line 296
    sget-object v4, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-virtual {v4}, Landroid/util/Xml$Encoding;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 298
    iget-object v4, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    invoke-virtual {v4, v3}, Lcom/android/server/slice/SlicePermissionManager;->writeBackup(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 300
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 301
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_44} :catch_45
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_27 .. :try_end_44} :catch_45

    return-object p1

    .line 302
    :catch_45
    move-exception v2

    .line 303
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBackupPayload: error writing payload for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 305
    return-object v0

    .line 286
    :cond_5b
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Caller must be system"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 383
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getDefaultHome(I)Ljava/lang/String;
    .registers 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 479
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 481
    :try_start_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 484
    iget-object v3, p0, Lcom/android/server/slice/SliceManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 485
    invoke-virtual {v3, v2, p1}, Landroid/content/pm/PackageManagerInternal;->getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;

    move-result-object p1

    .line 487
    nop

    .line 488
    const/4 v3, 0x0

    if-eqz p1, :cond_14

    .line 489
    goto :goto_15

    .line 488
    :cond_14
    move-object p1, v3

    .line 492
    :goto_15
    if-nez p1, :cond_41

    .line 499
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 501
    const/high16 v5, -0x80000000

    .line 502
    const/4 v6, 0x0

    :goto_1e
    if-ge v6, v4, :cond_41

    .line 503
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 504
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v8

    if-nez v8, :cond_31

    .line 505
    goto :goto_3e

    .line 507
    :cond_31
    iget v8, v7, Landroid/content/pm/ResolveInfo;->priority:I

    if-ge v8, v5, :cond_36

    .line 508
    goto :goto_3e

    .line 510
    :cond_36
    iget-object p1, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    .line 511
    iget v5, v7, Landroid/content/pm/ResolveInfo;->priority:I

    .line 502
    :goto_3e
    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    .line 514
    :cond_41
    if-eqz p1, :cond_47

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3
    :try_end_47
    .catchall {:try_start_4 .. :try_end_47} :catchall_4b

    .line 516
    :cond_47
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 514
    return-object v3

    .line 516
    :catchall_4b
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    .line 387
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getLock()Ljava/lang/Object;
    .registers 2

    .line 379
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getPinnedSlices(Ljava/lang/String;)[Landroid/net/Uri;
    .registers 8

    .line 142
    invoke-direct {p0, p1}, Lcom/android/server/slice/SliceManagerService;->verifyCaller(Ljava/lang/String;)V

    .line 143
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 144
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 145
    iget-object v2, p0, Lcom/android/server/slice/SliceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 146
    :try_start_13
    iget-object v3, p0, Lcom/android/server/slice/SliceManagerService;->mPinnedSlicesByUri:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/slice/PinnedSliceState;

    .line 147
    invoke-virtual {v4}, Lcom/android/server/slice/PinnedSliceState;->getPkg()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 148
    invoke-virtual {v4}, Lcom/android/server/slice/PinnedSliceState;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 149
    invoke-static {v4, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v5

    .line 150
    if-ne v5, v0, :cond_44

    .line 151
    invoke-static {v4}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_44
    goto :goto_1d

    .line 155
    :cond_45
    monitor-exit v2
    :try_end_46
    .catchall {:try_start_13 .. :try_end_46} :catchall_53

    .line 156
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Landroid/net/Uri;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/net/Uri;

    return-object p1

    .line 155
    :catchall_53
    move-exception p1

    :try_start_54
    monitor-exit v2
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw p1
.end method

.method public getPinnedSpecs(Landroid/net/Uri;Ljava/lang/String;)[Landroid/app/slice/SliceSpec;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 196
    invoke-direct {p0, p2}, Lcom/android/server/slice/SliceManagerService;->verifyCaller(Ljava/lang/String;)V

    .line 197
    invoke-direct {p0, p2, p1}, Lcom/android/server/slice/SliceManagerService;->enforceAccess(Ljava/lang/String;Landroid/net/Uri;)V

    .line 198
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-static {p1, p2}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p1

    .line 199
    invoke-direct {p0, p1}, Lcom/android/server/slice/SliceManagerService;->getPinnedSlice(Landroid/net/Uri;)Lcom/android/server/slice/PinnedSliceState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/slice/PinnedSliceState;->getSpecs()[Landroid/app/slice/SliceSpec;

    move-result-object p1

    return-object p1
.end method

.method public grantPermissionFromUser(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 11

    .line 259
    invoke-direct {p0, p3}, Lcom/android/server/slice/SliceManagerService;->verifyCaller(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0}, Lcom/android/server/slice/SliceManagerService;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v0, "android.permission.MANAGE_SLICE_PERMISSIONS"

    const-string v1, "Slice granting requires MANAGE_SLICE_PERMISSIONS"

    invoke-virtual {p3, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 263
    if-eqz p4, :cond_1e

    .line 264
    iget-object p3, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    invoke-virtual {p3, p2, v2}, Lcom/android/server/slice/SlicePermissionManager;->grantFullAccess(Ljava/lang/String;I)V

    goto :goto_3a

    .line 267
    :cond_1e
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p3

    .line 268
    const-string p4, ""

    invoke-virtual {p3, p4}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p3

    .line 269
    invoke-virtual {p3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 270
    invoke-static {v5, v2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v4

    .line 271
    invoke-direct {p0, v5, v4}, Lcom/android/server/slice/SliceManagerService;->getProviderPkg(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v3

    .line 272
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/slice/SlicePermissionManager;->grantSliceAccess(Ljava/lang/String;ILjava/lang/String;ILandroid/net/Uri;)V

    .line 274
    :goto_3a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p2

    .line 276
    :try_start_3e
    iget-object p4, p0, Lcom/android/server/slice/SliceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p4

    const/4 v0, 0x0

    invoke-virtual {p4, p1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_48
    .catchall {:try_start_3e .. :try_end_48} :catchall_4d

    .line 278
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 279
    nop

    .line 280
    return-void

    .line 278
    :catchall_4d
    move-exception p1

    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public grantSlicePermission(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 204
    invoke-direct {p0, p1}, Lcom/android/server/slice/SliceManagerService;->verifyCaller(Ljava/lang/String;)V

    .line 205
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 206
    invoke-direct {p0, p1, p3, v5}, Lcom/android/server/slice/SliceManagerService;->enforceOwner(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 207
    iget-object v1, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    move-object v2, p2

    move v3, v5

    move-object v4, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/slice/SlicePermissionManager;->grantSliceAccess(Ljava/lang/String;ILjava/lang/String;ILandroid/net/Uri;)V

    .line 208
    return-void
.end method

.method public hasSliceAccess(Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 190
    invoke-direct {p0, p1}, Lcom/android/server/slice/SliceManagerService;->verifyCaller(Ljava/lang/String;)V

    .line 191
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/slice/SliceManagerService;->hasFullSliceAccess(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public synthetic lambda$getAssistantMatcher$2$SliceManagerService(I)Ljava/lang/String;
    .registers 2

    .line 452
    invoke-direct {p0, p1}, Lcom/android/server/slice/SliceManagerService;->getAssistant(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$getHomeMatcher$3$SliceManagerService(I)Ljava/lang/String;
    .registers 2

    .line 461
    invoke-virtual {p0, p1}, Lcom/android/server/slice/SliceManagerService;->getDefaultHome(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$pinSlice$1$SliceManagerService(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 170
    if-eqz p1, :cond_1f

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 171
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 172
    invoke-direct {p0, p2, p3}, Lcom/android/server/slice/SliceManagerService;->isAssistant(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-direct {p0, p2, p3}, Lcom/android/server/slice/SliceManagerService;->isDefaultHomeApp(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_17

    goto :goto_1a

    .line 173
    :cond_17
    const/16 p2, 0xe

    goto :goto_1c

    :cond_1a
    :goto_1a
    const/16 p2, 0xd

    .line 171
    :goto_1c
    invoke-virtual {v0, p1, p3, p2}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    .line 175
    :cond_1f
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 335
    new-instance v0, Lcom/android/server/slice/SliceShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/slice/SliceShellCommand;-><init>(Lcom/android/server/slice/SliceManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/slice/SliceShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 336
    return-void
.end method

.method public pinSlice(Ljava/lang/String;Landroid/net/Uri;[Landroid/app/slice/SliceSpec;Landroid/os/IBinder;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    invoke-direct {p0, p1}, Lcom/android/server/slice/SliceManagerService;->verifyCaller(Ljava/lang/String;)V

    .line 163
    invoke-direct {p0, p1, p2}, Lcom/android/server/slice/SliceManagerService;->enforceAccess(Ljava/lang/String;Landroid/net/Uri;)V

    .line 164
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 165
    invoke-static {p2, v0}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p2

    .line 166
    invoke-direct {p0, p2, v0}, Lcom/android/server/slice/SliceManagerService;->getProviderPkg(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-direct {p0, p2, v1}, Lcom/android/server/slice/SliceManagerService;->getOrCreatePinnedSlice(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/server/slice/PinnedSliceState;

    move-result-object p2

    invoke-virtual {p2, p1, p3, p4}, Lcom/android/server/slice/PinnedSliceState;->pin(Ljava/lang/String;[Landroid/app/slice/SliceSpec;Landroid/os/IBinder;)V

    .line 169
    iget-object p2, p0, Lcom/android/server/slice/SliceManagerService;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/server/slice/-$$Lambda$SliceManagerService$pJ39TkC3AEVezLFEPuJgSQSTDJM;

    invoke-direct {p3, p0, v1, p1, v0}, Lcom/android/server/slice/-$$Lambda$SliceManagerService$pJ39TkC3AEVezLFEPuJgSQSTDJM;-><init>(Lcom/android/server/slice/SliceManagerService;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 176
    return-void
.end method

.method protected removePinnedSlice(Landroid/net/Uri;)V
    .registers 4

    .line 346
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 347
    :try_start_3
    iget-object v1, p0, Lcom/android/server/slice/SliceManagerService;->mPinnedSlicesByUri:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/slice/PinnedSliceState;

    invoke-virtual {p1}, Lcom/android/server/slice/PinnedSliceState;->destroy()V

    .line 348
    monitor-exit v0

    .line 349
    return-void

    .line 348
    :catchall_10
    move-exception p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public revokeSlicePermission(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 212
    invoke-direct {p0, p1}, Lcom/android/server/slice/SliceManagerService;->verifyCaller(Ljava/lang/String;)V

    .line 213
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 214
    invoke-direct {p0, p1, p3, v5}, Lcom/android/server/slice/SliceManagerService;->enforceOwner(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 215
    iget-object v1, p0, Lcom/android/server/slice/SliceManagerService;->mPermissions:Lcom/android/server/slice/SlicePermissionManager;

    move-object v2, p2

    move v3, v5

    move-object v4, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/slice/SlicePermissionManager;->revokeSliceAccess(Ljava/lang/String;ILjava/lang/String;ILandroid/net/Uri;)V

    .line 216
    return-void
.end method

.method public unpinSlice(Ljava/lang/String;Landroid/net/Uri;Landroid/os/IBinder;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 180
    invoke-direct {p0, p1}, Lcom/android/server/slice/SliceManagerService;->verifyCaller(Ljava/lang/String;)V

    .line 181
    invoke-direct {p0, p1, p2}, Lcom/android/server/slice/SliceManagerService;->enforceAccess(Ljava/lang/String;Landroid/net/Uri;)V

    .line 182
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {p2, v0}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p2

    .line 183
    invoke-direct {p0, p2}, Lcom/android/server/slice/SliceManagerService;->getPinnedSlice(Landroid/net/Uri;)Lcom/android/server/slice/PinnedSliceState;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/android/server/slice/PinnedSliceState;->unpin(Ljava/lang/String;Landroid/os/IBinder;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 184
    invoke-virtual {p0, p2}, Lcom/android/server/slice/SliceManagerService;->removePinnedSlice(Landroid/net/Uri;)V

    .line 186
    :cond_1f
    return-void
.end method
