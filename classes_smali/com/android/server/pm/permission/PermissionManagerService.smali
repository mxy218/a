.class public Lcom/android/server/pm/permission/PermissionManagerService;
.super Ljava/lang/Object;
.source "PermissionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;
    }
.end annotation


# static fields
.field private static final BACKUP_TIMEOUT_MILLIS:J

.field private static final BLOCKING_PERMISSION_FLAGS:I = 0x34

.field private static final EMPTY_INT_ARRAY:[I

.field private static final FULLER_PERMISSION_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final GRANT_DENIED:I = 0x1

.field private static final GRANT_INSTALL:I = 0x2

.field private static final GRANT_RUNTIME:I = 0x3

.field private static final GRANT_UPGRADE:I = 0x4

.field private static final MAX_PERMISSION_TREE_FOOTPRINT:I = 0x8000

.field private static final TAG:Ljava/lang/String; = "PackageManager"

.field private static final UPDATE_PERMISSIONS_ALL:I = 0x1

.field private static final UPDATE_PERMISSIONS_REPLACE_ALL:I = 0x4

.field private static final UPDATE_PERMISSIONS_REPLACE_PKG:I = 0x2

.field private static final USER_PERMISSION_FLAGS:I = 0x3


# instance fields
.field private mBackgroundPermissions:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

.field private final mGlobalGids:[I

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

.field private mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

.field private mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mPrivappPermissionsViolations:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettings:Lcom/android/server/pm/permission/PermissionSettings;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mSystemPermissions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSystemReady:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mUserManagerInt:Landroid/os/UserManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 134
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/permission/PermissionManagerService;->BACKUP_TIMEOUT_MILLIS:J

    .line 139
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->EMPTY_INT_ARRAY:[I

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    .line 157
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 9

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 219
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;

    .line 229
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    .line 230
    iput-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    .line 231
    const-class p2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/PackageManagerInternal;

    iput-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 232
    const-class p2, Landroid/os/UserManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManagerInternal;

    iput-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    .line 233
    new-instance p2, Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    invoke-direct {p2, v0}, Lcom/android/server/pm/permission/PermissionSettings;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    .line 235
    new-instance p2, Lcom/android/server/ServiceThread;

    const/4 v0, 0x1

    const-string v1, "PackageManager"

    const/16 v2, 0xa

    invoke-direct {p2, v1, v2, v0}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 237
    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 238
    new-instance p2, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandler:Landroid/os/Handler;

    .line 239
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object p2

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v1}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;)V

    .line 241
    new-instance p2, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 242
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p2, p1, v1, p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/pm/permission/PermissionManagerService;)V

    iput-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 243
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object p1

    .line 244
    invoke-virtual {p1}, Lcom/android/server/SystemConfig;->getSystemPermissions()Landroid/util/SparseArray;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSystemPermissions:Landroid/util/SparseArray;

    .line 245
    invoke-virtual {p1}, Lcom/android/server/SystemConfig;->getGlobalGids()[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mGlobalGids:[I

    .line 249
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/SystemConfig;->getPermissions()Landroid/util/ArrayMap;

    move-result-object p1

    .line 250
    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 251
    const/4 v1, 0x0

    :goto_89
    :try_start_89
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_bd

    .line 252
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/SystemConfig$PermissionEntry;

    .line 253
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v4, v2, Lcom/android/server/SystemConfig$PermissionEntry;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v3

    .line 254
    if-nez v3, :cond_af

    .line 255
    new-instance v3, Lcom/android/server/pm/permission/BasePermission;

    iget-object v4, v2, Lcom/android/server/SystemConfig$PermissionEntry;->name:Ljava/lang/String;

    const-string v5, "android"

    invoke-direct {v3, v4, v5, v0}, Lcom/android/server/pm/permission/BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 256
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v5, v2, Lcom/android/server/SystemConfig$PermissionEntry;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/pm/permission/PermissionSettings;->putPermissionLocked(Ljava/lang/String;Lcom/android/server/pm/permission/BasePermission;)V

    .line 258
    :cond_af
    iget-object v4, v2, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    if-eqz v4, :cond_ba

    .line 259
    iget-object v4, v2, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    iget-boolean v2, v2, Lcom/android/server/SystemConfig$PermissionEntry;->perUser:Z

    invoke-virtual {v3, v4, v2}, Lcom/android/server/pm/permission/BasePermission;->setGids([IZ)V

    .line 251
    :cond_ba
    add-int/lit8 v1, v1, 0x1

    goto :goto_89

    .line 262
    :cond_bd
    monitor-exit p2
    :try_end_be
    .catchall {:try_start_89 .. :try_end_be} :catchall_cf

    .line 264
    new-instance p1, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/PermissionManagerService$1;)V

    .line 266
    const-class p2, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {p2, p1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 267
    const-class p2, Landroid/permission/PermissionManagerInternal;

    invoke-static {p2, p1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 268
    return-void

    .line 262
    :catchall_cf
    move-exception p1

    :try_start_d0
    monitor-exit p2
    :try_end_d1
    .catchall {:try_start_d0 .. :try_end_d1} :catchall_cf

    throw p1
.end method

.method static synthetic access$100(Lcom/android/server/pm/permission/PermissionManagerService;)V
    .registers 1

    .line 122
    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->systemReady()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;[I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 6

    .line 122
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRequestedRuntimePermissions(Landroid/content/pm/PackageParser$Package;[I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;II)Ljava/util/List;
    .registers 4

    .line 122
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->getWhitelistedRestrictedPermissions(Landroid/content/pm/PackageParser$Package;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;[ILjava/util/List;IILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 7

    .line 122
    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/permission/PermissionManagerService;->setWhitelistedRestrictedPermissions(Landroid/content/pm/PackageParser$Package;[ILjava/util/List;IILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 4

    .line 122
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRuntimePermissionsGrantedToDisabledPackageLocked(Landroid/content/pm/PackageParser$Package;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;ZILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 6

    .line 122
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 6

    .line 122
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 5

    .line 122
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->updateAllPermissions(Ljava/lang/String;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    .line 122
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;II)I
    .registers 5

    .line 122
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 9

    .line 122
    invoke-direct/range {p0 .. p8}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;I)Z
    .registers 3

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->isPermissionsReviewRequired(Landroid/content/pm/PackageParser$Package;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2000(Lcom/android/server/pm/permission/PermissionManagerService;IIIILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)Z
    .registers 7

    .line 122
    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionFlagsForAllApps(IIIILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2100(Lcom/android/server/pm/permission/PermissionManagerService;IIZZZLjava/lang/String;)V
    .registers 7

    .line 122
    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;)V
    .registers 2

    .line 122
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;II)I
    .registers 5

    .line 122
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Landroid/content/pm/PackageParser$Package;II)I
    .registers 5

    .line 122
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->checkUidPermission(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;II)I

    move-result p0

    return p0
.end method

.method static synthetic access$2500(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;II)Landroid/content/pm/PermissionGroupInfo;
    .registers 4

    .line 122
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionGroupInfo(Ljava/lang/String;II)Landroid/content/pm/PermissionGroupInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/server/pm/permission/PermissionManagerService;II)Ljava/util/List;
    .registers 3

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getAllPermissionGroups(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2700(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;II)Landroid/content/pm/PermissionInfo;
    .registers 5

    .line 122
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionInfo(Ljava/lang/String;Ljava/lang/String;II)Landroid/content/pm/PermissionInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2800(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;II)Ljava/util/List;
    .registers 4

    .line 122
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionInfoByGroup(Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2900(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionSettings;
    .registers 1

    .line 122
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;Ljava/util/ArrayList;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 5

    .line 122
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermissionsIfGroupChanged(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;Ljava/util/ArrayList;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
    .registers 1

    .line 122
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/android/server/pm/permission/PermissionManagerService;)Ljava/lang/Object;
    .registers 1

    .line 122
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/os/UserHandle;)[B
    .registers 2

    .line 122
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->backupRuntimePermissions(Landroid/os/UserHandle;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3300(Lcom/android/server/pm/permission/PermissionManagerService;[BLandroid/os/UserHandle;)V
    .registers 3

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->restoreRuntimePermissions([BLandroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 3

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->restoreDelayedRuntimePermissions(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V
    .registers 2

    .line 122
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->addOnRuntimePermissionStateChangedListener(Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V
    .registers 2

    .line 122
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->removeOnRuntimePermissionStateChangedListener(Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;Z)V
    .registers 3

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->addAllPermissions(Landroid/content/pm/PackageParser$Package;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;Z)V
    .registers 3

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->addAllPermissionGroups(Landroid/content/pm/PackageParser$Package;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;Z)V
    .registers 3

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->removeAllPermissions(Landroid/content/pm/PackageParser$Package;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PermissionInfo;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)Z
    .registers 4

    .line 122
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->addDynamicPermission(Landroid/content/pm/PermissionInfo;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 4

    .line 122
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->removeDynamicPermission(Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 7

    .line 122
    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method private addAllPermissionGroups(Landroid/content/pm/PackageParser$Package;Z)V
    .registers 9

    .line 708
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 709
    nop

    .line 710
    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_77

    .line 711
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$PermissionGroup;

    .line 712
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v3, v3, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    iget-object v4, v2, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v4, v4, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$PermissionGroup;

    .line 713
    if-nez v3, :cond_24

    const/4 v4, 0x0

    goto :goto_28

    :cond_24
    iget-object v4, v3, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v4, v4, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    .line 714
    :goto_28
    iget-object v5, v2, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v5, v5, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 715
    if-eqz v3, :cond_68

    if-eqz v4, :cond_35

    goto :goto_68

    .line 729
    :cond_35
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission group "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v5, v5, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ignored: original from "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    goto :goto_74

    .line 716
    :cond_68
    :goto_68
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v3, v3, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    iget-object v4, v2, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v4, v4, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    nop

    .line 710
    :goto_74
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 743
    :cond_77
    nop

    .line 747
    return-void
.end method

.method private addAllPermissions(Landroid/content/pm/PackageParser$Package;Z)V
    .registers 9

    .line 670
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 671
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_7c

    .line 672
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Permission;

    .line 675
    iget-object v3, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v4, v3, Landroid/content/pm/PermissionInfo;->flags:I

    const v5, -0x40000001  # -1.9999999f

    and-int/2addr v4, v5

    iput v4, v3, Landroid/content/pm/PermissionInfo;->flags:I

    .line 677
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 682
    :try_start_1e
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0x16

    if-le v4, v5, :cond_36

    .line 683
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    iget-object v5, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$PermissionGroup;

    iput-object v4, v2, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    .line 692
    :cond_36
    iget-boolean v4, v2, Landroid/content/pm/PackageParser$Permission;->tree:Z

    if-eqz v4, :cond_58

    .line 693
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v5, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 694
    invoke-virtual {v4, v5}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionTreeLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    .line 695
    invoke-virtual {v5}, Lcom/android/server/pm/permission/PermissionSettings;->getAllPermissionTreesLocked()Ljava/util/Collection;

    move-result-object v5

    .line 693
    invoke-static {v4, v2, p1, v5, p2}, Lcom/android/server/pm/permission/BasePermission;->createOrUpdate(Lcom/android/server/pm/permission/BasePermission;Landroid/content/pm/PackageParser$Permission;Landroid/content/pm/PackageParser$Package;Ljava/util/Collection;Z)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    .line 696
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v2, v4}, Lcom/android/server/pm/permission/PermissionSettings;->putPermissionTreeLocked(Ljava/lang/String;Lcom/android/server/pm/permission/BasePermission;)V

    .line 697
    goto :goto_75

    .line 698
    :cond_58
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v5, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 699
    invoke-virtual {v4, v5}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    .line 700
    invoke-virtual {v5}, Lcom/android/server/pm/permission/PermissionSettings;->getAllPermissionTreesLocked()Ljava/util/Collection;

    move-result-object v5

    .line 698
    invoke-static {v4, v2, p1, v5, p2}, Lcom/android/server/pm/permission/BasePermission;->createOrUpdate(Lcom/android/server/pm/permission/BasePermission;Landroid/content/pm/PackageParser$Permission;Landroid/content/pm/PackageParser$Package;Ljava/util/Collection;Z)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    .line 701
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v2, v4}, Lcom/android/server/pm/permission/PermissionSettings;->putPermissionLocked(Ljava/lang/String;Lcom/android/server/pm/permission/BasePermission;)V

    .line 703
    :goto_75
    monitor-exit v3

    .line 671
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 703
    :catchall_79
    move-exception p1

    monitor-exit v3
    :try_end_7b
    .catchall {:try_start_1e .. :try_end_7b} :catchall_79

    throw p1

    .line 705
    :cond_7c
    return-void
.end method

.method private addDynamicPermission(Landroid/content/pm/PermissionInfo;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)Z
    .registers 11

    .line 804
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_81

    .line 807
    iget v0, p1, Landroid/content/pm/PermissionInfo;->labelRes:I

    if-nez v0, :cond_19

    iget-object v0, p1, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_11

    goto :goto_19

    .line 808
    :cond_11
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Label must be specified in permission"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 810
    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/pm/permission/PermissionSettings;->enforcePermissionTree(Ljava/lang/String;I)Lcom/android/server/pm/permission/BasePermission;

    move-result-object p2

    .line 813
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 814
    :try_start_24
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v2, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v1

    .line 815
    if-nez v1, :cond_30

    const/4 v2, 0x1

    goto :goto_31

    :cond_30
    const/4 v2, 0x0

    .line 816
    :goto_31
    iget v3, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-static {v3}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    move-result v3

    .line 817
    if-eqz v2, :cond_49

    .line 818
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->enforcePermissionCapLocked(Landroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/BasePermission;)V

    .line 819
    new-instance v1, Lcom/android/server/pm/permission/BasePermission;

    iget-object v4, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-direct {v1, v4, v5, v6}, Lcom/android/server/pm/permission/BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_4f

    .line 821
    :cond_49
    invoke-virtual {v1}, Lcom/android/server/pm/permission/BasePermission;->isDynamic()Z

    move-result v4

    if-eqz v4, :cond_65

    .line 825
    :goto_4f
    invoke-virtual {v1, v3, p1, p2}, Lcom/android/server/pm/permission/BasePermission;->addToTree(ILandroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/BasePermission;)Z

    move-result p2

    .line 826
    if-eqz v2, :cond_5c

    .line 827
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, p1, v1}, Lcom/android/server/pm/permission/PermissionSettings;->putPermissionLocked(Ljava/lang/String;Lcom/android/server/pm/permission/BasePermission;)V

    .line 829
    :cond_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_24 .. :try_end_5d} :catchall_7e

    .line 830
    if-eqz p2, :cond_64

    if-eqz p3, :cond_64

    .line 831
    invoke-virtual {p3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onPermissionChanged()V

    .line 833
    :cond_64
    return v2

    .line 822
    :cond_65
    :try_start_65
    new-instance p2, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not allowed to modify non-dynamic permission "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 829
    :catchall_7e
    move-exception p1

    monitor-exit v0
    :try_end_80
    .catchall {:try_start_65 .. :try_end_80} :catchall_7e

    throw p1

    .line 805
    :cond_81
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Instant apps can\'t add permissions"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private addOnRuntimePermissionStateChangedListener(Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V
    .registers 4

    .line 448
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 449
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    monitor-exit v0

    .line 451
    return-void

    .line 450
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method private adjustPermissionProtectionFlagsLocked(ILjava/lang/String;I)I
    .registers 7

    .line 560
    and-int/lit8 v0, p1, 0x3

    .line 564
    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 565
    return p1

    .line 568
    :cond_6
    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p3

    .line 569
    const/16 v1, 0x3e8

    if-eq p3, v1, :cond_36

    if-eqz p3, :cond_36

    const/16 v1, 0x7d0

    if-ne p3, v1, :cond_15

    goto :goto_36

    .line 574
    :cond_15
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object p2

    .line 575
    if-nez p2, :cond_1e

    .line 576
    return p1

    .line 578
    :cond_1e
    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_27

    .line 579
    return v0

    .line 582
    :cond_27
    iget-object p2, p2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast p2, Lcom/android/server/pm/PackageSetting;

    .line 583
    if-nez p2, :cond_2e

    .line 584
    return p1

    .line 586
    :cond_2e
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result p2

    if-eq p2, p3, :cond_35

    .line 587
    return p1

    .line 589
    :cond_35
    return p1

    .line 571
    :cond_36
    :goto_36
    return p1
.end method

.method private backupRuntimePermissions(Landroid/os/UserHandle;)[B
    .registers 6

    .line 388
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 389
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/android/server/pm/permission/-$$Lambda$js2BSmz1ucAEj8fgl3jw5trxIjw;

    invoke-direct {v3, v0}, Lcom/android/server/pm/permission/-$$Lambda$js2BSmz1ucAEj8fgl3jw5trxIjw;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v1, p1, v2, v3}, Landroid/permission/PermissionControllerManager;->getRuntimePermissionBackup(Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Landroid/permission/PermissionControllerManager$OnGetRuntimePermissionBackupCallback;)V

    .line 393
    :try_start_15
    sget-wide v1, Lcom/android/server/pm/permission/PermissionManagerService;->BACKUP_TIMEOUT_MILLIS:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_1f} :catch_20
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_15 .. :try_end_1f} :catch_20
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_15 .. :try_end_1f} :catch_20

    return-object v0

    .line 394
    :catch_20
    move-exception v0

    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create permission backup for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PackageManager"

    invoke-static {v1, p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 396
    const/4 p1, 0x0

    return-object p1
.end method

.method private calculateCurrentPermissionFootprintLocked(Lcom/android/server/pm/permission/BasePermission;)I
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSettings.mLock",
            "mLock"
        }
    .end annotation

    .line 2948
    nop

    .line 2949
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/BasePermission;

    .line 2950
    invoke-virtual {p1, v2}, Lcom/android/server/pm/permission/BasePermission;->calculateFootprint(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v2

    add-int/2addr v1, v2

    .line 2951
    goto :goto_e

    .line 2952
    :cond_20
    return v1
.end method

.method private static canGrantOemPermission(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Z
    .registers 5

    .line 1910
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->isOem()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1911
    return v1

    .line 1915
    :cond_8
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemConfig;->getOemPermissions(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1916
    if-eqz v0, :cond_20

    .line 1920
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p0, v0, :cond_1f

    const/4 v1, 0x1

    :cond_1f
    return v1

    .line 1917
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OEM permission"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " requested by package "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " must be explicitly declared granted or not"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkIfLegacyStorageOpsNeedToBeUpdated(Landroid/content/pm/PackageParser$Package;Z[I)[I
    .registers 5

    .line 1516
    if-eqz p2, :cond_27

    iget-object p2, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->hasRequestedLegacyExternalStorage()Z

    move-result p2

    if-eqz p2, :cond_27

    iget-object p2, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 1517
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1e

    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 1518
    const-string p2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 1519
    :cond_1e
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object p1

    return-object p1

    .line 1522
    :cond_27
    return-object p3
.end method

.method private checkPermission(Ljava/lang/String;Ljava/lang/String;II)I
    .registers 8

    .line 297
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, p4}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_a

    .line 298
    return v1

    .line 301
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object p2

    .line 302
    if-eqz p2, :cond_54

    iget-object v0, p2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-eqz v0, :cond_54

    .line 303
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2, p3, p4}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Landroid/content/pm/PackageParser$Package;II)Z

    move-result p3

    if-eqz p3, :cond_1f

    .line 304
    return v1

    .line 306
    :cond_1f
    iget-object p2, p2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast p2, Lcom/android/server/pm/PackageSetting;

    .line 307
    invoke-virtual {p2, p4}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result p3

    .line 308
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object p2

    .line 309
    invoke-virtual {p2, p1, p4}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4d

    .line 310
    if-eqz p3, :cond_4c

    .line 311
    iget-object p3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 312
    :try_start_37
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v0

    .line 313
    if-eqz v0, :cond_47

    invoke-virtual {v0}, Lcom/android/server/pm/permission/BasePermission;->isInstant()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 314
    monitor-exit p3

    return v2

    .line 316
    :cond_47
    monitor-exit p3

    goto :goto_4d

    :catchall_49
    move-exception p1

    monitor-exit p3
    :try_end_4b
    .catchall {:try_start_37 .. :try_end_4b} :catchall_49

    throw p1

    .line 318
    :cond_4c
    return v2

    .line 321
    :cond_4d
    :goto_4d
    invoke-static {p2, p1, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->isImpliedPermissionGranted(Lcom/android/server/pm/permission/PermissionsState;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_54

    .line 322
    return v2

    .line 326
    :cond_54
    return v1
.end method

.method private checkUidPermission(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;II)I
    .registers 12

    .line 331
    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 332
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 333
    invoke-virtual {v1, p4}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_10

    move v1, v2

    goto :goto_11

    :cond_10
    move v1, v3

    .line 334
    :goto_11
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 335
    invoke-virtual {v4, p3}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1a

    goto :goto_1b

    :cond_1a
    move v2, v3

    .line 336
    :goto_1b
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 337
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v5, v4}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v5

    const/4 v6, -0x1

    if-nez v5, :cond_29

    .line 338
    return v6

    .line 341
    :cond_29
    if-eqz p2, :cond_5d

    .line 342
    iget-object p3, p2, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    if-eqz p3, :cond_32

    .line 343
    if-eqz v1, :cond_3b

    .line 344
    return v6

    .line 346
    :cond_32
    iget-object p3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p3, p2, p4, v0}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Landroid/content/pm/PackageParser$Package;II)Z

    move-result p3

    if-eqz p3, :cond_3b

    .line 347
    return v6

    .line 349
    :cond_3b
    iget-object p2, p2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast p2, Lcom/android/server/pm/PackageSetting;

    .line 350
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object p2

    .line 351
    invoke-virtual {p2, p1, v4}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_55

    .line 352
    if-eqz v2, :cond_54

    .line 353
    iget-object p3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {p3, p1}, Lcom/android/server/pm/permission/PermissionSettings;->isPermissionInstant(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_55

    .line 354
    return v3

    .line 357
    :cond_54
    return v3

    .line 360
    :cond_55
    invoke-static {p2, p1, v4}, Lcom/android/server/pm/permission/PermissionManagerService;->isImpliedPermissionGranted(Lcom/android/server/pm/permission/PermissionsState;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_5c

    .line 361
    return v3

    .line 363
    :cond_5c
    goto :goto_83

    .line 364
    :cond_5d
    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSystemPermissions:Landroid/util/SparseArray;

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArraySet;

    .line 365
    if-eqz p2, :cond_83

    .line 366
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6e

    .line 367
    return v3

    .line 369
    :cond_6e
    sget-object p3, Lcom/android/server/pm/permission/PermissionManagerService;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_83

    sget-object p3, Lcom/android/server/pm/permission/PermissionManagerService;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    .line 370
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_83

    .line 371
    return v3

    .line 375
    :cond_83
    :goto_83
    return v6
.end method

.method public static create(Landroid/content/Context;Ljava/lang/Object;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .registers 3

    .line 281
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 282
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 283
    if-eqz v0, :cond_b

    .line 284
    return-object v0

    .line 286
    :cond_b
    new-instance v0, Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 287
    const-class p0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    return-object p0
.end method

.method private doNotifyRuntimePermissionStateChanged(Ljava/lang/String;I)V
    .registers 7

    .line 470
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 471
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 472
    monitor-exit v0

    return-void

    .line 474
    :cond_d
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 475
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_29

    .line 476
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 477
    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v0, :cond_28

    .line 478
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;

    invoke-interface {v3, p1, p2}, Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;->onRuntimePermissionStateChanged(Ljava/lang/String;I)V

    .line 477
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 480
    :cond_28
    return-void

    .line 475
    :catchall_29
    move-exception p1

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p1
.end method

.method private enforceCrossUserPermission(IIZZZLjava/lang/String;)V
    .registers 7

    .line 2922
    if-ltz p2, :cond_32

    .line 2925
    if-eqz p4, :cond_a

    .line 2926
    const-string/jumbo p4, "no_debugging_features"

    invoke-static {p4, p1, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceShellRestriction(Ljava/lang/String;II)V

    .line 2929
    :cond_a
    if-nez p5, :cond_13

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p4

    if-ne p2, p4, :cond_13

    return-void

    .line 2930
    :cond_13
    const/16 p2, 0x3e8

    if-eq p1, p2, :cond_31

    if-eqz p1, :cond_31

    .line 2931
    const-string p1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    if-eqz p3, :cond_23

    .line 2932
    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1, p6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31

    .line 2936
    :cond_23
    :try_start_23
    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1, p6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/SecurityException; {:try_start_23 .. :try_end_28} :catch_29

    .line 2941
    goto :goto_31

    .line 2938
    :catch_29
    move-exception p1

    .line 2939
    iget-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string p2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p1, p2, p6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2944
    :cond_31
    :goto_31
    return-void

    .line 2923
    :cond_32
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid userId "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private enforceGrantRevokeGetRuntimePermissionPermissions(Ljava/lang/String;)V
    .registers 7

    .line 2900
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GET_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    .line 2902
    const-string v2, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    .line 2904
    const-string v3, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_47

    .line 2906
    :cond_1f
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " requires "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " or "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2911
    :cond_47
    :goto_47
    return-void
.end method

.method private enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V
    .registers 6

    .line 2889
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    .line 2891
    const-string v2, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    goto :goto_37

    .line 2893
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

    .line 2897
    :cond_37
    :goto_37
    return-void
.end method

.method private enforcePermissionCapLocked(Landroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/BasePermission;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSettings.mLock",
            "mLock"
        }
    .end annotation

    .line 2959
    invoke-virtual {p2}, Lcom/android/server/pm/permission/BasePermission;->getUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1f

    .line 2960
    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->calculateCurrentPermissionFootprintLocked(Lcom/android/server/pm/permission/BasePermission;)I

    move-result p2

    .line 2961
    invoke-virtual {p1}, Landroid/content/pm/PermissionInfo;->calculateFootprint()I

    move-result p1

    add-int/2addr p2, p1

    const p1, 0x8000

    if-gt p2, p1, :cond_17

    goto :goto_1f

    .line 2962
    :cond_17
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Permission tree size cap exceeded"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2965
    :cond_1f
    :goto_1f
    return-void
.end method

.method private getAllPermissionGroups(II)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    .line 506
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 507
    const/4 p1, 0x0

    return-object p1

    .line 509
    :cond_a
    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 510
    :try_start_d
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 511
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 513
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$PermissionGroup;

    .line 514
    invoke-static {v2, p1}, Landroid/content/pm/PackageParser;->generatePermissionGroupInfo(Landroid/content/pm/PackageParser$PermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    goto :goto_26

    .line 516
    :cond_3a
    monitor-exit p2

    return-object v1

    .line 517
    :catchall_3c
    move-exception p1

    monitor-exit p2
    :try_end_3e
    .catchall {:try_start_d .. :try_end_3e} :catchall_3c

    throw p1
.end method

.method private getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    .line 2517
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 2518
    return-object v1

    .line 2520
    :cond_e
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2521
    :try_start_11
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionSettings;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArraySet;

    .line 2522
    if-nez p1, :cond_1f

    .line 2523
    monitor-exit v0

    return-object v1

    .line 2525
    :cond_1f
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    monitor-exit v0

    return-object p1

    .line 2526
    :catchall_2d
    move-exception p1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_11 .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method private getPermissionFlags(Ljava/lang/String;Ljava/lang/String;II)I
    .registers 14

    .line 2531
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, p4}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 2532
    return v1

    .line 2535
    :cond_a
    const-string v0, "getPermissionFlags"

    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceGrantRevokeGetRuntimePermissionPermissions(Ljava/lang/String;)V

    .line 2537
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "getPermissionFlags"

    move-object v2, p0

    move v3, p3

    move v4, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    .line 2543
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object p2

    .line 2544
    if-eqz p2, :cond_4e

    iget-object v0, p2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-nez v0, :cond_27

    goto :goto_4e

    .line 2547
    :cond_27
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2548
    :try_start_2a
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v2

    if-nez v2, :cond_34

    .line 2549
    monitor-exit v0

    return v1

    .line 2551
    :cond_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_2a .. :try_end_35} :catchall_4b

    .line 2552
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2, p3, p4}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Landroid/content/pm/PackageParser$Package;II)Z

    move-result p3

    if-eqz p3, :cond_3e

    .line 2553
    return v1

    .line 2555
    :cond_3e
    iget-object p2, p2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast p2, Lcom/android/server/pm/PackageSetting;

    .line 2556
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object p2

    .line 2557
    invoke-virtual {p2, p1, p4}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result p1

    return p1

    .line 2551
    :catchall_4b
    move-exception p1

    :try_start_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw p1

    .line 2545
    :cond_4e
    :goto_4e
    return v1
.end method

.method private getPermissionGroupInfo(Ljava/lang/String;II)Landroid/content/pm/PermissionGroupInfo;
    .registers 5

    .line 496
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p3}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_a

    .line 497
    const/4 p1, 0x0

    return-object p1

    .line 499
    :cond_a
    iget-object p3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 500
    :try_start_d
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    .line 501
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageParser$PermissionGroup;

    .line 500
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->generatePermissionGroupInfo(Landroid/content/pm/PackageParser$PermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object p1

    monitor-exit p3

    return-object p1

    .line 502
    :catchall_1d
    move-exception p1

    monitor-exit p3
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method private getPermissionInfo(Ljava/lang/String;Ljava/lang/String;II)Landroid/content/pm/PermissionInfo;
    .registers 8

    .line 522
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p4}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 523
    return-object v1

    .line 526
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 527
    :try_start_d
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object p1

    .line 528
    if-nez p1, :cond_17

    .line 529
    monitor-exit v0

    return-object v1

    .line 531
    :cond_17
    nop

    .line 532
    invoke-virtual {p1}, Lcom/android/server/pm/permission/BasePermission;->getProtectionLevel()I

    move-result v1

    .line 531
    invoke-direct {p0, v1, p2, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->adjustPermissionProtectionFlagsLocked(ILjava/lang/String;I)I

    move-result p2

    .line 533
    invoke-virtual {p1, p2, p3}, Lcom/android/server/pm/permission/BasePermission;->generatePermissionInfo(II)Landroid/content/pm/PermissionInfo;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 534
    :catchall_26
    move-exception p1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_d .. :try_end_28} :catchall_26

    throw p1
.end method

.method private getPermissionInfoByGroup(Ljava/lang/String;II)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .line 539
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p3}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_a

    .line 540
    return-object v0

    .line 542
    :cond_a
    iget-object p3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 543
    if-eqz p1, :cond_1b

    :try_start_f
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v1, v1, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 544
    monitor-exit p3

    return-object v0

    .line 546
    :cond_1b
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 547
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v1, v1, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/BasePermission;

    .line 548
    invoke-virtual {v2, p1, p2}, Lcom/android/server/pm/permission/BasePermission;->generatePermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v2

    .line 549
    if-eqz v2, :cond_43

    .line 550
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    :cond_43
    goto :goto_2e

    .line 553
    :cond_44
    monitor-exit p3

    return-object v0

    .line 554
    :catchall_46
    move-exception p1

    monitor-exit p3
    :try_end_48
    .catchall {:try_start_f .. :try_end_48} :catchall_46

    throw p1
.end method

.method private getSplitPermissions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/permission/PermissionManager$SplitPermissionInfo;",
            ">;"
        }
    .end annotation

    .line 1615
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getSplitPermissions()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static getVolumeUuidForPackage(Landroid/content/pm/PackageParser$Package;)Ljava/lang/String;
    .registers 2

    .line 2979
    if-nez p0, :cond_5

    .line 2980
    sget-object p0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object p0

    .line 2982
    :cond_5
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$Package;->isExternal()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2983
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->volumeUuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2984
    const-string/jumbo p0, "primary_physical"

    return-object p0

    .line 2986
    :cond_17
    iget-object p0, p0, Landroid/content/pm/PackageParser$Package;->volumeUuid:Ljava/lang/String;

    return-object p0

    .line 2989
    :cond_1a
    sget-object p0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object p0
.end method

.method private getWhitelistedRestrictedPermissions(Landroid/content/pm/PackageParser$Package;II)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1995
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1996
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1997
    return-object v1

    .line 2000
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    .line 2002
    nop

    .line 2003
    and-int/lit8 v2, p2, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_15

    .line 2004
    const/16 v2, 0x1000

    goto :goto_16

    .line 2003
    :cond_15
    move v2, v3

    .line 2006
    :goto_16
    and-int/lit8 v4, p2, 0x4

    if-eqz v4, :cond_1c

    .line 2007
    or-int/lit16 v2, v2, 0x2000

    .line 2009
    :cond_1c
    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_22

    .line 2010
    or-int/lit16 v2, v2, 0x800

    .line 2013
    :cond_22
    nop

    .line 2015
    iget-object p2, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 2016
    nop

    :goto_2a
    if-ge v3, p2, :cond_48

    .line 2017
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2018
    invoke-virtual {v0, v4, p3}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v5

    .line 2019
    and-int/2addr v5, v2

    if-eqz v5, :cond_45

    .line 2020
    if-nez v1, :cond_42

    .line 2021
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2023
    :cond_42
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2016
    :cond_45
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 2027
    :cond_48
    return-object v1
.end method

.method private grantRequestedRuntimePermissions(Landroid/content/pm/PackageParser$Package;[I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 14

    .line 1986
    array-length v0, p2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_11

    aget v4, p2, v1

    .line 1987
    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRequestedRuntimePermissionsForUser(Landroid/content/pm/PackageParser$Package;I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 1986
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1990
    :cond_11
    return-void
.end method

.method private grantRequestedRuntimePermissionsForUser(Landroid/content/pm/PackageParser$Package;I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 23

    .line 2032
    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p3

    iget-object v1, v10, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 2033
    if-nez v1, :cond_f

    .line 2034
    return-void

    .line 2037
    :cond_f
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v13

    .line 2042
    iget-object v1, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1d

    const/4 v1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    move v14, v1

    .line 2045
    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v2, v10, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v11}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    move-result v15

    .line 2047
    iget-object v1, v10, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2d
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    .line 2049
    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2050
    :try_start_3d
    iget-object v3, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v3

    .line 2051
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_99

    .line 2052
    if-eqz v3, :cond_98

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v1

    if-nez v1, :cond_52

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isDevelopment()Z

    move-result v1

    if-eqz v1, :cond_98

    :cond_52
    if-eqz v15, :cond_5a

    .line 2053
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isInstant()Z

    move-result v1

    if-eqz v1, :cond_98

    :cond_5a
    if-nez v14, :cond_62

    .line 2054
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isRuntimeOnly()Z

    move-result v1

    if-nez v1, :cond_98

    :cond_62
    if-eqz v12, :cond_6a

    .line 2056
    invoke-static {v12, v2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_98

    .line 2057
    :cond_6a
    invoke-virtual {v13, v2, v11}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v1

    .line 2058
    if-eqz v14, :cond_83

    .line 2060
    and-int/lit8 v1, v1, 0x14

    if-nez v1, :cond_98

    .line 2061
    iget-object v3, v10, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move/from16 v5, p4

    move/from16 v6, p2

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    goto :goto_98

    .line 2067
    :cond_83
    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_98

    .line 2068
    iget-object v3, v10, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/16 v4, 0x40

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move/from16 v6, p4

    move/from16 v7, p2

    move-object/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 2074
    :cond_98
    :goto_98
    goto :goto_2d

    .line 2051
    :catchall_99
    move-exception v0

    :try_start_9a
    monitor-exit v1
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_99

    throw v0

    .line 2075
    :cond_9c
    return-void
.end method

.method private grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 21

    .line 2079
    move-object v0, p0

    move-object v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p5

    move-object/from16 v11, p6

    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v1, v10}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v1

    if-nez v1, :cond_27

    .line 2080
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No such user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    return-void

    .line 2084
    :cond_27
    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    const-string v3, "grantRuntimePermission"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2088
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "grantRuntimePermission"

    move-object v1, p0

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    .line 2094
    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v9}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 2095
    if-eqz v1, :cond_20f

    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-nez v2, :cond_4b

    goto/16 :goto_20f

    .line 2100
    :cond_4b
    iget-object v2, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2101
    :try_start_4e
    iget-object v3, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v3

    .line 2102
    monitor-exit v2
    :try_end_55
    .catchall {:try_start_4e .. :try_end_55} :catchall_20c

    .line 2103
    if-eqz v3, :cond_1f5

    .line 2106
    iget-object v2, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    move/from16 v4, p4

    invoke-virtual {v2, v1, v4, v10}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Landroid/content/pm/PackageParser$Package;II)Z

    move-result v2

    if-nez v2, :cond_1de

    .line 2110
    invoke-virtual {v3, v1}, Lcom/android/server/pm/permission/BasePermission;->enforceDeclaredUsedAndRuntimeOrDevelopment(Landroid/content/pm/PackageParser$Package;)V

    .line 2116
    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x17

    if-ge v2, v4, :cond_73

    .line 2117
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v2

    if-eqz v2, :cond_73

    .line 2118
    return-void

    .line 2121
    :cond_73
    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .line 2123
    iget-object v5, v1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 2124
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v6

    .line 2126
    invoke-virtual {v6, p1, v10}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v7

    .line 2127
    and-int/lit8 v12, v7, 0x10

    if-eqz v12, :cond_aa

    .line 2128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot grant system fixed permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2130
    return-void

    .line 2132
    :cond_aa
    if-nez p3, :cond_cf

    and-int/lit8 v12, v7, 0x4

    if-eqz v12, :cond_cf

    .line 2133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot grant policy fixed permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2135
    return-void

    .line 2138
    :cond_cf
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isHardRestricted()Z

    move-result v12

    if-eqz v12, :cond_f8

    and-int/lit16 v7, v7, 0x3800

    if-nez v7, :cond_f8

    .line 2140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot grant hard restricted non-exempt permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2142
    return-void

    .line 2145
    :cond_f8
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isSoftRestricted()Z

    move-result v7

    if-eqz v7, :cond_12f

    iget-object v7, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    iget-object v12, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2146
    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v13

    .line 2145
    invoke-static {v7, v12, v13, p1}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->forPermission(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/policy/SoftRestrictedPermissionPolicy;

    move-result-object v7

    .line 2146
    invoke-virtual {v7}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->canBeGranted()Z

    move-result v7

    if-nez v7, :cond_12f

    .line 2147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot grant soft restricted permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2149
    return-void

    .line 2152
    :cond_12f
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isDevelopment()Z

    move-result v7

    const/4 v12, -0x1

    if-eqz v7, :cond_142

    .line 2155
    invoke-virtual {v6, v3}, Lcom/android/server/pm/permission/PermissionsState;->grantInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v0

    if-eq v0, v12, :cond_141

    .line 2157
    if-eqz v11, :cond_141

    .line 2158
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onInstallPermissionGranted()V

    .line 2161
    :cond_141
    return-void

    .line 2164
    :cond_142
    invoke-virtual {v5, v10}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v5

    if-eqz v5, :cond_16e

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isInstant()Z

    move-result v5

    if-eqz v5, :cond_14f

    goto :goto_16e

    .line 2165
    :cond_14f
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot grant non-ephemeral permission"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2169
    :cond_16e
    :goto_16e
    iget-object v5, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v5, v4, :cond_17c

    .line 2170
    const-string v0, "PackageManager"

    const-string v1, "Cannot grant runtime permission to a legacy app"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2171
    return-void

    .line 2174
    :cond_17c
    invoke-virtual {v6, v3, v10}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v4

    .line 2175
    if-eq v4, v12, :cond_1dd

    const/4 v5, 0x1

    if-eq v4, v5, :cond_186

    goto :goto_193

    .line 2181
    :cond_186
    if-eqz v11, :cond_193

    .line 2182
    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-virtual {v11, v1, v10}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onGidsChanged(II)V

    .line 2188
    :cond_193
    :goto_193
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v1

    if-eqz v1, :cond_19e

    .line 2189
    const/16 v1, 0x4db

    invoke-direct {p0, v1, p1, v9}, Lcom/android/server/pm/permission/PermissionManagerService;->logPermission(ILjava/lang/String;Ljava/lang/String;)V

    .line 2192
    :cond_19e
    if-eqz v11, :cond_1a3

    .line 2193
    invoke-virtual {v11, v2, v10}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onPermissionGranted(II)V

    .line 2196
    :cond_1a3
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v1

    if-eqz v1, :cond_1ac

    .line 2197
    invoke-direct {p0, v9, v10}, Lcom/android/server/pm/permission/PermissionManagerService;->notifyRuntimePermissionStateChanged(Ljava/lang/String;I)V

    .line 2203
    :cond_1ac
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1bc

    .line 2204
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d7

    .line 2205
    :cond_1bc
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2207
    :try_start_1c0
    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, v10}, Landroid/os/UserManagerInternal;->isUserInitialized(I)Z

    move-result v0

    if-eqz v0, :cond_1d3

    .line 2208
    const-class v0, Landroid/os/storage/StorageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManagerInternal;

    .line 2210
    invoke-virtual {v0, v2, v9}, Landroid/os/storage/StorageManagerInternal;->onExternalStoragePolicyChanged(ILjava/lang/String;)V
    :try_end_1d3
    .catchall {:try_start_1c0 .. :try_end_1d3} :catchall_1d8

    .line 2213
    :cond_1d3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2214
    nop

    .line 2217
    :cond_1d7
    return-void

    .line 2213
    :catchall_1d8
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2177
    :cond_1dd
    return-void

    .line 2107
    :cond_1de
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2104
    :cond_1f5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown permission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2102
    :catchall_20c
    move-exception v0

    :try_start_20d
    monitor-exit v2
    :try_end_20e
    .catchall {:try_start_20d .. :try_end_20e} :catchall_20c

    throw v0

    .line 2096
    :cond_20f
    :goto_20f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    return-void
.end method

.method private grantRuntimePermissionsGrantedToDisabledPackageLocked(Landroid/content/pm/PackageParser$Package;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 21
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1953
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    if-nez v0, :cond_9

    .line 1954
    return-void

    .line 1956
    :cond_9
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-nez v0, :cond_e

    .line 1957
    return-void

    .line 1959
    :cond_e
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v1, v8, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1960
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getDisabledSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 1961
    if-eqz v0, :cond_8a

    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-nez v1, :cond_20

    goto/16 :goto_8a

    .line 1964
    :cond_20
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Lcom/android/server/pm/PackageSetting;

    .line 1965
    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    move-result v0

    if-eqz v0, :cond_89

    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->hasChildPackages()Z

    move-result v0

    if-eqz v0, :cond_32

    goto :goto_89

    .line 1968
    :cond_32
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1969
    const/4 v11, 0x0

    move v12, v11

    :goto_3a
    if-ge v12, v10, :cond_88

    .line 1970
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/lang/String;

    .line 1971
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, v13}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v0

    .line 1972
    if-eqz v0, :cond_85

    invoke-virtual {v0}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v1

    if-nez v1, :cond_5a

    invoke-virtual {v0}, Lcom/android/server/pm/permission/BasePermission;->isDevelopment()Z

    move-result v0

    if-nez v0, :cond_5a

    .line 1973
    goto :goto_85

    .line 1975
    :cond_5a
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0}, Landroid/os/UserManagerInternal;->getUserIds()[I

    move-result-object v14

    array-length v15, v14

    move v6, v11

    :goto_62
    if-ge v6, v15, :cond_85

    aget v5, v14, v6

    .line 1976
    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    invoke-virtual {v0, v13, v5}, Lcom/android/server/pm/permission/PermissionsState;->hasRuntimePermission(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 1977
    iget-object v2, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object v1, v13

    move/from16 v4, p2

    move/from16 v16, v6

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    goto :goto_82

    .line 1976
    :cond_80
    move/from16 v16, v6

    .line 1975
    :goto_82
    add-int/lit8 v6, v16, 0x1

    goto :goto_62

    .line 1969
    :cond_85
    :goto_85
    add-int/lit8 v12, v12, 0x1

    goto :goto_3a

    .line 1982
    :cond_88
    return-void

    .line 1966
    :cond_89
    :goto_89
    return-void

    .line 1962
    :cond_8a
    :goto_8a
    return-void
.end method

.method private grantSignaturePermission(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/permission/BasePermission;Lcom/android/server/pm/permission/PermissionsState;)Z
    .registers 16

    .line 1666
    invoke-virtual {p3}, Lcom/android/server/pm/permission/BasePermission;->isOEM()Z

    move-result v0

    .line 1667
    invoke-virtual {p3}, Lcom/android/server/pm/permission/BasePermission;->isVendorPrivileged()Z

    move-result v1

    .line 1668
    invoke-virtual {p3}, Lcom/android/server/pm/permission/BasePermission;->isPrivileged()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_19

    invoke-virtual {p3}, Lcom/android/server/pm/permission/BasePermission;->isVendorPrivileged()Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_19

    :cond_17
    move v2, v3

    goto :goto_1a

    :cond_19
    :goto_19
    move v2, v4

    .line 1669
    :goto_1a
    sget-boolean v5, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_DISABLE:Z

    .line 1671
    invoke-virtual {p3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "android"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1672
    iget-object v8, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 1673
    const-string v8, "PackageManager"

    if-nez v5, :cond_ec

    if-eqz v2, :cond_ec

    invoke-virtual {p2}, Landroid/content/pm/PackageParser$Package;->isPrivileged()Z

    move-result v5

    if-eqz v5, :cond_ec

    if-nez v7, :cond_ec

    if-eqz v6, :cond_ec

    .line 1675
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->hasPrivappWhitelistEntry(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Z

    move-result v5

    if-nez v5, :cond_ec

    .line 1677
    iget-boolean v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSystemReady:Z

    if-nez v5, :cond_e7

    invoke-virtual {p2}, Landroid/content/pm/PackageParser$Package;->isUpdatedSystemApp()Z

    move-result v5

    if-nez v5, :cond_e7

    .line 1679
    nop

    .line 1680
    invoke-virtual {p2}, Landroid/content/pm/PackageParser$Package;->isVendor()Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 1681
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v5

    iget-object v6, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1682
    invoke-virtual {v5, v6}, Lcom/android/server/SystemConfig;->getVendorPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v5

    goto :goto_8a

    .line 1683
    :cond_5e
    invoke-virtual {p2}, Landroid/content/pm/PackageParser$Package;->isProduct()Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 1684
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v5

    iget-object v6, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1685
    invoke-virtual {v5, v6}, Lcom/android/server/SystemConfig;->getProductPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v5

    goto :goto_8a

    .line 1686
    :cond_6f
    invoke-virtual {p2}, Landroid/content/pm/PackageParser$Package;->isProductServices()Z

    move-result v5

    if-eqz v5, :cond_80

    .line 1687
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v5

    iget-object v6, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1688
    invoke-virtual {v5, v6}, Lcom/android/server/SystemConfig;->getProductServicesPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v5

    goto :goto_8a

    .line 1690
    :cond_80
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v5

    iget-object v6, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1691
    invoke-virtual {v5, v6}, Lcom/android/server/SystemConfig;->getPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v5

    .line 1693
    :goto_8a
    if-eqz v5, :cond_95

    .line 1694
    invoke-virtual {v5, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_93

    goto :goto_95

    :cond_93
    move v5, v3

    goto :goto_96

    :cond_95
    :goto_95
    move v5, v4

    .line 1695
    :goto_96
    if-eqz v5, :cond_e6

    .line 1696
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Privileged permission "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " - not in privapp-permissions whitelist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    sget-boolean v5, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

    if-eqz v5, :cond_e7

    .line 1700
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    if-nez v5, :cond_ca

    .line 1701
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    iput-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    .line 1703
    :cond_ca
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_e7

    .line 1706
    :cond_e6
    return v3

    .line 1709
    :cond_e7
    :goto_e7
    sget-boolean v5, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

    if-eqz v5, :cond_ec

    .line 1710
    return v3

    .line 1714
    :cond_ec
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v5, v3, v3}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v5

    .line 1716
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1717
    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v5

    .line 1726
    iget-object v6, p2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 1728
    invoke-virtual {p3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageSetting()Lcom/android/server/pm/PackageSettingBase;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSettingBase;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v7

    .line 1727
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageParser$SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v6

    if-nez v6, :cond_130

    .line 1729
    invoke-virtual {p3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageSetting()Lcom/android/server/pm/PackageSettingBase;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/PackageSettingBase;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v6

    iget-object v7, p2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    const/4 v9, 0x4

    invoke-virtual {v6, v7, v9}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v6

    if-nez v6, :cond_130

    iget-object v6, p2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v7, v5, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 1732
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageParser$SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v6

    if-nez v6, :cond_130

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v6, p2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 1733
    invoke-virtual {v5, v6, v9}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v5

    if-eqz v5, :cond_12e

    goto :goto_130

    :cond_12e
    move v5, v3

    goto :goto_131

    :cond_130
    :goto_130
    move v5, v4

    .line 1736
    :goto_131
    if-nez v5, :cond_24e

    if-nez v2, :cond_137

    if-eqz v0, :cond_24e

    .line 1737
    :cond_137
    invoke-virtual {p2}, Landroid/content/pm/PackageParser$Package;->isSystem()Z

    move-result v6

    if-eqz v6, :cond_24e

    .line 1740
    invoke-virtual {p2}, Landroid/content/pm/PackageParser$Package;->isUpdatedSystemApp()Z

    move-result v6

    if-eqz v6, :cond_200

    .line 1741
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v7, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1742
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManagerInternal;->getDisabledSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v6

    .line 1744
    const/4 v7, 0x0

    if-eqz v6, :cond_153

    iget-object v9, v6, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v9, Lcom/android/server/pm/PackageSetting;

    goto :goto_154

    :cond_153
    move-object v9, v7

    .line 1745
    :goto_154
    if-eqz v9, :cond_179

    .line 1746
    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_179

    .line 1750
    if-eqz v2, :cond_168

    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    move-result v6

    if-nez v6, :cond_176

    :cond_168
    if-eqz v0, :cond_1fe

    .line 1751
    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->isOem()Z

    move-result v0

    if-eqz v0, :cond_1fe

    .line 1752
    invoke-static {v9, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->canGrantOemPermission(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1fe

    .line 1753
    :cond_176
    move v5, v4

    goto/16 :goto_1fe

    .line 1762
    :cond_179
    if-eqz v9, :cond_19a

    if-eqz v6, :cond_19a

    .line 1763
    invoke-direct {p0, v6, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->isPackageRequestingPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_19a

    if-eqz v2, :cond_18b

    .line 1764
    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    move-result v6

    if-nez v6, :cond_199

    :cond_18b
    if-eqz v0, :cond_19a

    .line 1765
    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->isOem()Z

    move-result v6

    if-eqz v6, :cond_19a

    .line 1766
    invoke-static {v9, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->canGrantOemPermission(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_19a

    .line 1767
    :cond_199
    move v5, v4

    .line 1772
    :cond_19a
    iget-object v6, p2, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    if-eqz v6, :cond_1fe

    .line 1773
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v9, p2, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1774
    invoke-virtual {v6, v9}, Landroid/content/pm/PackageManagerInternal;->getDisabledSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v6

    .line 1775
    if-eqz v6, :cond_1af

    .line 1776
    iget-object v9, v6, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v9, Lcom/android/server/pm/PackageSetting;

    goto :goto_1b0

    :cond_1af
    move-object v9, v7

    .line 1777
    :goto_1b0
    if-eqz v6, :cond_1fe

    if-eqz v2, :cond_1ba

    .line 1778
    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    move-result v10

    if-nez v10, :cond_1c2

    :cond_1ba
    if-eqz v0, :cond_1fe

    .line 1779
    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->isOem()Z

    move-result v0

    if-eqz v0, :cond_1fe

    .line 1780
    :cond_1c2
    invoke-direct {p0, v6, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->isPackageRequestingPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d0

    .line 1781
    invoke-static {v9, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->canGrantOemPermission(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d0

    .line 1782
    move v5, v4

    goto :goto_1fe

    .line 1783
    :cond_1d0
    iget-object v0, v6, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_1fe

    .line 1785
    iget-object v0, v6, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1da
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1fe

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Package;

    .line 1787
    if-eqz v6, :cond_1ed

    .line 1788
    iget-object v9, v6, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v9, Lcom/android/server/pm/PackageSetting;

    goto :goto_1ee

    .line 1789
    :cond_1ed
    move-object v9, v7

    .line 1790
    :goto_1ee
    invoke-direct {p0, v6, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->isPackageRequestingPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1fd

    .line 1791
    invoke-static {v9, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->canGrantOemPermission(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1fd

    .line 1793
    nop

    .line 1794
    move v5, v4

    goto :goto_1fe

    .line 1796
    :cond_1fd
    goto :goto_1da

    .line 1801
    :cond_1fe
    :goto_1fe
    move v0, v5

    goto :goto_21d

    .line 1802
    :cond_200
    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 1803
    if-eqz v2, :cond_20c

    invoke-virtual {p2}, Landroid/content/pm/PackageParser$Package;->isPrivileged()Z

    move-result v6

    if-nez v6, :cond_21a

    :cond_20c
    if-eqz v0, :cond_21c

    .line 1804
    invoke-virtual {p2}, Landroid/content/pm/PackageParser$Package;->isOem()Z

    move-result v0

    if-eqz v0, :cond_21c

    .line 1805
    invoke-static {v5, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->canGrantOemPermission(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21c

    :cond_21a
    move v0, v4

    goto :goto_21d

    :cond_21c
    move v0, v3

    .line 1810
    :goto_21d
    if-eqz v0, :cond_24f

    if-eqz v2, :cond_24f

    if-nez v1, :cond_24f

    .line 1811
    invoke-virtual {p2}, Landroid/content/pm/PackageParser$Package;->isVendor()Z

    move-result v1

    if-eqz v1, :cond_24f

    .line 1812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cannot be granted to privileged vendor apk "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " because it isn\'t a \'vendorPrivileged\' permission."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    move v0, v3

    goto :goto_24f

    .line 1818
    :cond_24e
    move v0, v5

    :cond_24f
    :goto_24f
    if-nez v0, :cond_36a

    .line 1819
    if-nez v0, :cond_262

    .line 1820
    invoke-virtual {p3}, Lcom/android/server/pm/permission/BasePermission;->isPre23()Z

    move-result v1

    if-eqz v1, :cond_262

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_262

    .line 1825
    move v0, v4

    .line 1830
    :cond_262
    if-nez v0, :cond_289

    invoke-virtual {p3}, Lcom/android/server/pm/permission/BasePermission;->isInstaller()Z

    move-result v1

    if-eqz v1, :cond_289

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v5, 0x2

    .line 1831
    invoke-virtual {v2, v5, v3}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_288

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v5, 0x6

    .line 1833
    invoke-virtual {v2, v5, v3}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_289

    .line 1838
    :cond_288
    move v0, v4

    .line 1840
    :cond_289
    if-nez v0, :cond_2a1

    invoke-virtual {p3}, Lcom/android/server/pm/permission/BasePermission;->isVerifier()Z

    move-result v1

    if-eqz v1, :cond_2a1

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v5, 0x3

    .line 1841
    invoke-virtual {v2, v5, v3}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a1

    .line 1845
    move v0, v4

    .line 1847
    :cond_2a1
    if-nez v0, :cond_2b0

    invoke-virtual {p3}, Lcom/android/server/pm/permission/BasePermission;->isPreInstalled()Z

    move-result v1

    if-eqz v1, :cond_2b0

    .line 1848
    invoke-virtual {p2}, Landroid/content/pm/PackageParser$Package;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_2b0

    .line 1850
    move v0, v4

    .line 1852
    :cond_2b0
    if-nez v0, :cond_2bd

    invoke-virtual {p3}, Lcom/android/server/pm/permission/BasePermission;->isDevelopment()Z

    move-result v1

    if-eqz v1, :cond_2bd

    .line 1855
    invoke-virtual {p4, p1}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result p1

    goto :goto_2be

    .line 1857
    :cond_2bd
    move p1, v0

    :goto_2be
    if-nez p1, :cond_2d5

    invoke-virtual {p3}, Lcom/android/server/pm/permission/BasePermission;->isSetup()Z

    move-result p4

    if-eqz p4, :cond_2d5

    iget-object p4, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1858
    invoke-virtual {v0, v4, v3}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2d5

    .line 1862
    move p1, v4

    .line 1864
    :cond_2d5
    if-nez p1, :cond_2ed

    invoke-virtual {p3}, Lcom/android/server/pm/permission/BasePermission;->isSystemTextClassifier()Z

    move-result p4

    if-eqz p4, :cond_2ed

    iget-object p4, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v1, 0x5

    .line 1865
    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_2ed

    .line 1869
    move p1, v4

    .line 1871
    :cond_2ed
    if-nez p1, :cond_306

    invoke-virtual {p3}, Lcom/android/server/pm/permission/BasePermission;->isConfigurator()Z

    move-result p4

    if-eqz p4, :cond_306

    iget-object p4, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v1, 0x9

    .line 1872
    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_306

    .line 1876
    move p1, v4

    .line 1878
    :cond_306
    if-nez p1, :cond_31e

    invoke-virtual {p3}, Lcom/android/server/pm/permission/BasePermission;->isWellbeing()Z

    move-result p4

    if-eqz p4, :cond_31e

    iget-object p4, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v1, 0x7

    .line 1879
    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_31e

    .line 1882
    move p1, v4

    .line 1884
    :cond_31e
    if-nez p1, :cond_337

    invoke-virtual {p3}, Lcom/android/server/pm/permission/BasePermission;->isDocumenter()Z

    move-result p4

    if-eqz p4, :cond_337

    iget-object p4, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v1, 0x8

    .line 1885
    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_337

    .line 1889
    move p1, v4

    .line 1891
    :cond_337
    if-nez p1, :cond_350

    invoke-virtual {p3}, Lcom/android/server/pm/permission/BasePermission;->isIncidentReportApprover()Z

    move-result p4

    if-eqz p4, :cond_350

    iget-object p4, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v1, 0xa

    .line 1892
    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_350

    .line 1897
    move p1, v4

    .line 1899
    :cond_350
    if-nez p1, :cond_36b

    invoke-virtual {p3}, Lcom/android/server/pm/permission/BasePermission;->isAppPredictor()Z

    move-result p3

    if-eqz p3, :cond_36b

    iget-object p2, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object p3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 p4, 0xb

    .line 1900
    invoke-virtual {p3, p4, v3}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_36b

    .line 1903
    move p1, v4

    goto :goto_36b

    .line 1818
    :cond_36a
    move p1, v0

    .line 1906
    :cond_36b
    :goto_36b
    return p1
.end method

.method private static hasPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z
    .registers 5

    .line 2994
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_20

    .line 2995
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Permission;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 2996
    return v1

    .line 2994
    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2999
    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method private hasPrivappWhitelistEntry(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Z
    .registers 6

    .line 1643
    nop

    .line 1644
    invoke-virtual {p2}, Landroid/content/pm/PackageParser$Package;->isVendor()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1646
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemConfig;->getVendorPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    goto :goto_3e

    .line 1647
    :cond_12
    invoke-virtual {p2}, Landroid/content/pm/PackageParser$Package;->isProduct()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1649
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemConfig;->getProductPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    goto :goto_3e

    .line 1650
    :cond_23
    invoke-virtual {p2}, Landroid/content/pm/PackageParser$Package;->isProductServices()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1652
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemConfig;->getProductServicesPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    goto :goto_3e

    .line 1655
    :cond_34
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemConfig;->getPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    .line 1658
    :goto_3e
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4a

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    move v0, v1

    goto :goto_4b

    :cond_4a
    move v0, v2

    .line 1660
    :goto_4b
    if-nez v0, :cond_5c

    iget-object v0, p2, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_5a

    iget-object p2, p2, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    .line 1661
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->hasPrivappWhitelistEntry(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Z

    move-result p1

    if-eqz p1, :cond_5a

    goto :goto_5c

    :cond_5a
    move v1, v2

    goto :goto_5d

    :cond_5c
    :goto_5c
    nop

    .line 1660
    :goto_5d
    return v1
.end method

.method private inheritPermissionStateToNewImplicitPermissionLocked(Landroid/util/ArraySet;Ljava/lang/String;Lcom/android/server/pm/permission/PermissionsState;Landroid/content/pm/PackageParser$Package;I)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/permission/PermissionsState;",
            "Landroid/content/pm/PackageParser$Package;",
            "I)V"
        }
    .end annotation

    .line 1468
    iget-object p4, p4, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1469
    nop

    .line 1470
    nop

    .line 1472
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p4

    .line 1473
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_c
    if-ge v1, p4, :cond_39

    .line 1474
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1475
    invoke-virtual {p3, v4, p5}, Lcom/android/server/pm/permission/PermissionsState;->hasRuntimePermission(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_29

    .line 1476
    invoke-virtual {p3, v4}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21

    goto :goto_29

    .line 1484
    :cond_21
    if-nez v2, :cond_36

    .line 1485
    invoke-virtual {p3, v4, p5}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v4

    or-int/2addr v3, v4

    goto :goto_36

    .line 1477
    :cond_29
    :goto_29
    if-nez v2, :cond_2c

    .line 1478
    move v3, v0

    .line 1481
    :cond_2c
    nop

    .line 1482
    invoke-virtual {p3, v4, p5}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v2

    or-int/2addr v2, v3

    const/4 v3, 0x1

    move v6, v3

    move v3, v2

    move v2, v6

    .line 1473
    :cond_36
    :goto_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1490
    :cond_39
    if-eqz v2, :cond_44

    .line 1496
    iget-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {p1, p2}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object p1

    invoke-virtual {p3, p1, p5}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    .line 1500
    :cond_44
    iget-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {p1, p2}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object p1

    invoke-virtual {p3, p1, p5, v3, v3}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 1501
    return-void
.end method

.method private static isImpliedPermissionGranted(Lcom/android/server/pm/permission/PermissionsState;Ljava/lang/String;I)Z
    .registers 4

    .line 490
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    .line 491
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    .line 490
    :goto_19
    return p0
.end method

.method private isNewPlatformPermissionForPackage(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Z
    .registers 8

    .line 1619
    nop

    .line 1620
    sget-object v0, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    array-length v0, v0

    .line 1621
    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_42

    .line 1622
    sget-object v3, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    aget-object v3, v3, v2

    .line 1624
    iget-object v4, v3, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget v3, v3, Landroid/content/pm/PackageParser$NewPermissionInfo;->sdkVersion:I

    if-ge v4, v3, :cond_3f

    .line 1626
    nop

    .line 1627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Auto-granting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to old pkg "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PackageManager"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    const/4 v1, 0x1

    goto :goto_42

    .line 1621
    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1632
    :cond_42
    :goto_42
    return v1
.end method

.method private isPackageRequestingPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z
    .registers 7

    .line 1940
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1941
    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_1d

    .line 1942
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1943
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1944
    const/4 p1, 0x1

    return p1

    .line 1941
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1947
    :cond_1d
    return v1
.end method

.method private isPermissionsReviewRequired(Landroid/content/pm/PackageParser$Package;I)Z
    .registers 6

    .line 1926
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_a

    .line 1927
    return v1

    .line 1931
    :cond_a
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-nez v0, :cond_f

    .line 1932
    return v1

    .line 1934
    :cond_f
    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/pm/PackageSetting;

    .line 1935
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object p1

    .line 1936
    invoke-virtual {p1, p2}, Lcom/android/server/pm/permission/PermissionsState;->isPermissionReviewRequired(I)Z

    move-result p1

    return p1
.end method

.method public static synthetic lambda$NPd9St1HBvGAtg1uhMV2Upfww4g(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->doNotifyRuntimePermissionStateChanged(Ljava/lang/String;I)V

    return-void
.end method

.method private logPermission(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 3010
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 3011
    invoke-virtual {v0, p3}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 3012
    const/16 p1, 0x4d9

    invoke-virtual {v0, p1, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 3014
    iget-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 3015
    return-void
.end method

.method private notifyRuntimePermissionStateChanged(Ljava/lang/String;I)V
    .registers 5

    .line 462
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$NPd9St1HBvGAtg1uhMV2Upfww4g;->INSTANCE:Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$NPd9St1HBvGAtg1uhMV2Upfww4g;

    .line 464
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 463
    invoke-static {v1, p0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 462
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 465
    return-void
.end method

.method private removeAllPermissions(Landroid/content/pm/PackageParser$Package;Z)V
    .registers 9

    .line 750
    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 751
    :try_start_3
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 752
    nop

    .line 753
    const/4 v1, 0x0

    move v2, v1

    :goto_c
    if-ge v2, v0, :cond_5e

    .line 754
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Permission;

    .line 755
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    iget-object v5, v3, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/permission/BasePermission;

    .line 756
    if-nez v4, :cond_34

    .line 757
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    iget-object v5, v3, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/permission/BasePermission;

    .line 759
    :cond_34
    if-eqz v4, :cond_40

    invoke-virtual {v4, v3}, Lcom/android/server/pm/permission/BasePermission;->isPermission(Landroid/content/pm/PackageParser$Permission;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 760
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/pm/permission/BasePermission;->setPermission(Landroid/content/pm/PackageParser$Permission;)V

    .line 770
    :cond_40
    invoke-virtual {v3}, Landroid/content/pm/PackageParser$Permission;->isAppOp()Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 771
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionSettings;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 772
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 773
    if-eqz v3, :cond_5b

    .line 774
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 753
    :cond_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 778
    :cond_5e
    nop

    .line 782
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 783
    nop

    .line 784
    nop

    :goto_67
    if-ge v1, v0, :cond_9a

    .line 785
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 786
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v3, v2}, Lcom/android/server/pm/permission/PermissionSettings;->isPermissionAppOp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_97

    .line 787
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v3, v3, Lcom/android/server/pm/permission/PermissionSettings;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 788
    if-eqz v3, :cond_97

    .line 789
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 790
    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_97

    .line 791
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v3, v3, Lcom/android/server/pm/permission/PermissionSettings;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    :cond_97
    add-int/lit8 v1, v1, 0x1

    goto :goto_67

    .line 796
    :cond_9a
    nop

    .line 799
    monitor-exit p2

    .line 800
    return-void

    .line 799
    :catchall_9d
    move-exception p1

    monitor-exit p2
    :try_end_9f
    .catchall {:try_start_3 .. :try_end_9f} :catchall_9d

    throw p1
.end method

.method private removeDynamicPermission(Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 7

    .line 838
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_45

    .line 841
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionSettings;->enforcePermissionTree(Ljava/lang/String;I)Lcom/android/server/pm/permission/BasePermission;

    .line 842
    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 843
    :try_start_10
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v0

    .line 844
    if-nez v0, :cond_1a

    .line 845
    monitor-exit p2

    return-void

    .line 847
    :cond_1a
    invoke-virtual {v0}, Lcom/android/server/pm/permission/BasePermission;->isDynamic()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 849
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allowed to modify non-dynamic permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    :cond_36
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/PermissionSettings;->removePermissionLocked(Ljava/lang/String;)V

    .line 853
    if-eqz p3, :cond_40

    .line 854
    invoke-virtual {p3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onPermissionRemoved()V

    .line 856
    :cond_40
    monitor-exit p2

    .line 857
    return-void

    .line 856
    :catchall_42
    move-exception p1

    monitor-exit p2
    :try_end_44
    .catchall {:try_start_10 .. :try_end_44} :catchall_42

    throw p1

    .line 839
    :cond_45
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Instant applications don\'t have access to this method"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private removeOnRuntimePermissionStateChangedListener(Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V
    .registers 4

    .line 455
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 456
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 457
    monitor-exit v0

    .line 458
    return-void

    .line 457
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method private restoreDelayedRuntimePermissions(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 7

    .line 428
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 429
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 430
    monitor-exit v0

    return-void

    .line 433
    :cond_12
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    .line 434
    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$KZ0-FIR02GsOfMAAOdWzIbkVHHM;

    invoke-direct {v3, p0, p2}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$KZ0-FIR02GsOfMAAOdWzIbkVHHM;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/os/UserHandle;)V

    .line 433
    invoke-virtual {v1, p1, p2, v2, v3}, Landroid/permission/PermissionControllerManager;->restoreDelayedRuntimePermissionBackup(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 443
    monitor-exit v0

    .line 444
    return-void

    .line 443
    :catchall_24
    move-exception p1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw p1
.end method

.method private restorePermissionState(Landroid/content/pm/PackageParser$Package;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 32

    .line 888
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v1, p3

    move-object/from16 v9, p4

    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 889
    if-nez v2, :cond_11

    .line 890
    return-void

    .line 893
    :cond_11
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v3

    .line 894
    nop

    .line 896
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v4

    .line 898
    nop

    .line 899
    sget-object v5, Lcom/android/server/pm/permission/PermissionManagerService;->EMPTY_INT_ARRAY:[I

    .line 901
    nop

    .line 903
    const/4 v10, 0x0

    if-eqz v8, :cond_5b

    .line 904
    invoke-virtual {v2, v10}, Lcom/android/server/pm/PackageSetting;->setInstallPermissionsFixed(Z)V

    .line 905
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->isSharedUser()Z

    move-result v11

    if-nez v11, :cond_38

    .line 906
    new-instance v11, Lcom/android/server/pm/permission/PermissionsState;

    invoke-direct {v11, v3}, Lcom/android/server/pm/permission/PermissionsState;-><init>(Lcom/android/server/pm/permission/PermissionsState;)V

    .line 907
    invoke-virtual {v3}, Lcom/android/server/pm/permission/PermissionsState;->reset()V

    move v12, v10

    goto :goto_5d

    .line 914
    :cond_38
    iget-object v11, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 915
    nop

    .line 916
    :try_start_3c
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v5

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v12

    .line 915
    invoke-direct {v0, v5, v12}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeUnusedSharedUserPermissionsLocked(Lcom/android/server/pm/SharedUserSetting;[I)[I

    move-result-object v5

    .line 917
    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v12

    if-nez v12, :cond_54

    .line 918
    const/4 v12, 0x1

    goto :goto_55

    .line 917
    :cond_54
    move v12, v10

    .line 920
    :goto_55
    monitor-exit v11

    move-object v11, v3

    goto :goto_5d

    :catchall_58
    move-exception v0

    monitor-exit v11
    :try_end_5a
    .catchall {:try_start_3c .. :try_end_5a} :catchall_58

    throw v0

    .line 903
    :cond_5b
    move-object v11, v3

    move v12, v10

    .line 924
    :goto_5d
    iget-object v13, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mGlobalGids:[I

    invoke-virtual {v3, v13}, Lcom/android/server/pm/permission/PermissionsState;->setGlobalGids([I)V

    .line 926
    iget-object v13, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 927
    :try_start_65
    new-instance v14, Landroid/util/ArraySet;

    invoke-direct {v14}, Landroid/util/ArraySet;-><init>()V

    .line 929
    iget-object v15, v7, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 930
    move-object/from16 v17, v5

    move v5, v10

    move/from16 v16, v5

    :goto_75
    if-ge v5, v15, :cond_520

    .line 931
    iget-object v10, v7, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 932
    iget-object v6, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v6, v10}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v6

    .line 933
    move/from16 v18, v15

    iget-object v15, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v19, v12

    const/16 v12, 0x17

    if-lt v15, v12, :cond_93

    const/4 v12, 0x1

    goto :goto_94

    :cond_93
    const/4 v12, 0x0

    .line 935
    :goto_94
    nop

    .line 941
    if-eqz v6, :cond_4f7

    invoke-virtual {v6}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageSetting()Lcom/android/server/pm/PackageSettingBase;

    move-result-object v20

    if-nez v20, :cond_a8

    move-object/from16 v20, v2

    move-object/from16 v24, v4

    move/from16 v22, v5

    move-object/from16 v21, v14

    const/4 v14, 0x0

    goto/16 :goto_500

    .line 953
    :cond_a8
    invoke-virtual {v11, v10}, Lcom/android/server/pm/permission/PermissionsState;->hasRequestedPermission(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_101

    iget-object v15, v7, Landroid/content/pm/PackageParser$Package;->implicitPermissions:Ljava/util/ArrayList;

    .line 954
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_be

    const-string v15, "android.permission.ACTIVITY_RECOGNITION"

    .line 955
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_101

    .line 956
    :cond_be
    iget-object v15, v7, Landroid/content/pm/PackageParser$Package;->implicitPermissions:Ljava/util/ArrayList;

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_ca

    .line 958
    invoke-virtual {v14, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_101

    .line 971
    :cond_ca
    nop

    .line 972
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/permission/PermissionManagerService;->getSplitPermissions()Ljava/util/List;

    move-result-object v15

    .line 973
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v9

    .line 974
    const/4 v8, 0x0

    :goto_d4
    if-ge v8, v9, :cond_101

    .line 975
    nop

    .line 976
    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/permission/PermissionManager$SplitPermissionInfo;

    .line 977
    move/from16 v22, v9

    invoke-virtual/range {v21 .. v21}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getSplitPermission()Ljava/lang/String;

    move-result-object v9

    .line 978
    move-object/from16 v23, v15

    invoke-virtual/range {v21 .. v21}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getNewPermissions()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_fa

    .line 979
    invoke-virtual {v11, v9}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_fa

    .line 980
    nop

    .line 981
    invoke-virtual {v14, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 987
    goto :goto_102

    .line 974
    :cond_fa
    add-int/lit8 v8, v8, 0x1

    move/from16 v9, v22

    move-object/from16 v15, v23

    goto :goto_d4

    .line 994
    :cond_101
    :goto_101
    const/4 v9, 0x0

    :goto_102
    iget-object v8, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v8

    if-eqz v8, :cond_11c

    invoke-virtual {v6}, Lcom/android/server/pm/permission/BasePermission;->isInstant()Z

    move-result v8

    if-nez v8, :cond_11c

    .line 999
    move-object v0, v1

    move-object/from16 v20, v2

    move-object/from16 v24, v4

    move/from16 v22, v5

    move-object/from16 v21, v14

    const/4 v14, 0x0

    goto/16 :goto_50a

    .line 1002
    :cond_11c
    invoke-virtual {v6}, Lcom/android/server/pm/permission/BasePermission;->isRuntimeOnly()Z

    move-result v8

    if-eqz v8, :cond_130

    if-nez v12, :cond_130

    .line 1007
    move-object v0, v1

    move-object/from16 v20, v2

    move-object/from16 v24, v4

    move/from16 v22, v5

    move-object/from16 v21, v14

    const/4 v14, 0x0

    goto/16 :goto_50a

    .line 1010
    :cond_130
    invoke-virtual {v6}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1011
    nop

    .line 1012
    nop

    .line 1015
    invoke-virtual {v6}, Lcom/android/server/pm/permission/BasePermission;->isAppOp()Z

    move-result v10

    if-eqz v10, :cond_143

    .line 1016
    iget-object v10, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v15, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v8, v15}, Lcom/android/server/pm/permission/PermissionSettings;->addAppOpPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    :cond_143
    invoke-virtual {v6}, Lcom/android/server/pm/permission/BasePermission;->isNormal()Z

    move-result v10

    if-eqz v10, :cond_14d

    .line 1021
    const/4 v10, 0x2

    const/16 v22, 0x0

    goto :goto_17f

    .line 1022
    :cond_14d
    invoke-virtual {v6}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v10

    if-eqz v10, :cond_168

    .line 1023
    invoke-virtual {v6}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_164

    if-eqz v9, :cond_160

    goto :goto_164

    .line 1030
    :cond_160
    const/4 v10, 0x3

    const/16 v22, 0x0

    goto :goto_17f

    .line 1027
    :cond_164
    :goto_164
    const/4 v10, 0x4

    const/16 v22, 0x0

    goto :goto_17f

    .line 1032
    :cond_168
    invoke-virtual {v6}, Lcom/android/server/pm/permission/BasePermission;->isSignature()Z

    move-result v10

    if-eqz v10, :cond_17c

    .line 1034
    invoke-direct {v0, v8, v7, v6, v11}, Lcom/android/server/pm/permission/PermissionManagerService;->grantSignaturePermission(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/permission/BasePermission;Lcom/android/server/pm/permission/PermissionsState;)Z

    move-result v10

    .line 1035
    if-eqz v10, :cond_178

    .line 1036
    move/from16 v22, v10

    const/4 v10, 0x2

    goto :goto_17f

    .line 1035
    :cond_178
    move/from16 v22, v10

    const/4 v10, 0x1

    goto :goto_17f

    .line 1032
    :cond_17c
    const/4 v10, 0x1

    const/16 v22, 0x0

    .line 1045
    :goto_17f
    const/4 v15, 0x1

    if-eq v10, v15, :cond_48e

    .line 1046
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v15

    if-nez v15, :cond_1a3

    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->areInstallPermissionsFixed()Z

    move-result v15

    if-eqz v15, :cond_1a3

    invoke-virtual {v6}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v15

    if-nez v15, :cond_1a3

    .line 1050
    if-nez v22, :cond_1a3

    invoke-virtual {v11, v8}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_1a3

    .line 1054
    invoke-direct {v0, v8, v7}, Lcom/android/server/pm/permission/PermissionManagerService;->isNewPlatformPermissionForPackage(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Z

    move-result v15

    if-nez v15, :cond_1a3

    .line 1055
    const/4 v10, 0x1

    .line 1060
    :cond_1a3
    const/4 v15, 0x2

    if-eq v10, v15, :cond_436

    const/4 v15, 0x3

    if-eq v10, v15, :cond_304

    const/4 v15, 0x4

    if-eq v10, v15, :cond_1cc

    .line 1327
    if-eqz v1, :cond_1c0

    iget-object v6, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1328
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    move-object v0, v1

    move-object/from16 v20, v2

    move-object/from16 v24, v4

    move/from16 v22, v5

    move-object/from16 v21, v14

    const/4 v14, 0x0

    goto/16 :goto_50a

    .line 1327
    :cond_1c0
    move-object v0, v1

    move-object/from16 v20, v2

    move-object/from16 v24, v4

    move/from16 v22, v5

    move-object/from16 v21, v14

    const/4 v14, 0x0

    goto/16 :goto_50a

    .line 1207
    :cond_1cc
    nop

    .line 1208
    invoke-virtual {v11, v8}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v8

    .line 1209
    if-eqz v8, :cond_1d8

    invoke-virtual {v8}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v10

    goto :goto_1d9

    :cond_1d8
    const/4 v10, 0x0

    .line 1212
    :goto_1d9
    if-nez v9, :cond_1dd

    .line 1213
    move-object v9, v6

    goto :goto_1e3

    :cond_1dd
    iget-object v15, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v15, v9}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v9

    .line 1216
    :goto_1e3
    invoke-virtual {v11, v9}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v15

    move/from16 v20, v10

    const/4 v10, -0x1

    if-eq v15, v10, :cond_1f8

    .line 1218
    const v15, 0xbbff

    move-object/from16 v21, v14

    const/4 v14, 0x0

    invoke-virtual {v11, v9, v10, v15, v14}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 1222
    const/16 v16, 0x1

    goto :goto_1fa

    .line 1216
    :cond_1f8
    move-object/from16 v21, v14

    .line 1225
    :goto_1fa
    invoke-virtual {v6}, Lcom/android/server/pm/permission/BasePermission;->isHardRestricted()Z

    move-result v9

    .line 1226
    invoke-virtual {v6}, Lcom/android/server/pm/permission/BasePermission;->isSoftRestricted()Z

    move-result v10

    .line 1228
    array-length v14, v4

    move/from16 v22, v5

    move/from16 v5, v20

    const/4 v15, 0x0

    move-object/from16 v20, v2

    move-object/from16 v2, v17

    :goto_20c
    if-ge v15, v14, :cond_2f7

    move/from16 v23, v14

    aget v14, v4, v15

    .line 1232
    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    if-eqz v1, :cond_220

    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    .line 1234
    invoke-virtual {v1, v14}, Lcom/android/server/policy/PermissionPolicyInternal;->isInitialized(I)Z

    move-result v1

    if-eqz v1, :cond_220

    const/4 v1, 0x1

    goto :goto_221

    :cond_220
    const/4 v1, 0x0

    .line 1236
    :goto_221
    nop

    .line 1238
    iget-object v7, v6, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    .line 1239
    invoke-virtual {v11, v7, v14}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v7

    and-int/lit16 v7, v7, 0x3800

    if-eqz v7, :cond_22e

    const/4 v7, 0x1

    goto :goto_22f

    :cond_22e
    const/4 v7, 0x0

    .line 1241
    :goto_22f
    iget-object v0, v6, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v11, v0, v14}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v0

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_23b

    const/4 v0, 0x1

    goto :goto_23c

    :cond_23b
    const/4 v0, 0x0

    .line 1244
    :goto_23c
    if-eqz v12, :cond_2a3

    .line 1246
    if-eqz v1, :cond_269

    if-eqz v9, :cond_269

    .line 1247
    if-nez v7, :cond_264

    .line 1248
    if-eqz v8, :cond_259

    invoke-virtual {v8}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isGranted()Z

    move-result v17

    if-eqz v17, :cond_259

    .line 1249
    move-object/from16 v24, v8

    invoke-virtual {v3, v6, v14}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v8

    move-object/from16 v25, v11

    const/4 v11, -0x1

    if-eq v8, v11, :cond_25d

    .line 1251
    const/4 v8, 0x1

    goto :goto_25e

    .line 1248
    :cond_259
    move-object/from16 v24, v8

    move-object/from16 v25, v11

    .line 1253
    :cond_25d
    const/4 v8, 0x0

    :goto_25e
    if-nez v0, :cond_27a

    .line 1254
    or-int/lit16 v5, v5, 0x4000

    .line 1255
    const/4 v8, 0x1

    goto :goto_27a

    .line 1247
    :cond_264
    move-object/from16 v24, v8

    move-object/from16 v25, v11

    goto :goto_279

    .line 1246
    :cond_269
    move-object/from16 v24, v8

    move-object/from16 v25, v11

    .line 1259
    if-eqz v1, :cond_279

    if-eqz v10, :cond_279

    .line 1262
    if-nez v7, :cond_279

    if-nez v0, :cond_279

    .line 1263
    or-int/lit16 v5, v5, 0x4000

    .line 1264
    const/4 v8, 0x1

    goto :goto_27a

    .line 1269
    :cond_279
    :goto_279
    const/4 v8, 0x0

    :cond_27a
    :goto_27a
    and-int/lit8 v11, v5, 0x40

    if-eqz v11, :cond_281

    .line 1270
    and-int/lit8 v5, v5, -0x41

    .line 1271
    const/4 v8, 0x1

    .line 1274
    :cond_281
    and-int/lit8 v11, v5, 0x8

    if-eqz v11, :cond_289

    .line 1275
    and-int/lit8 v5, v5, -0x9

    .line 1276
    const/4 v8, 0x1

    goto :goto_2c8

    .line 1278
    :cond_289
    if-eqz v1, :cond_293

    if-eqz v9, :cond_293

    if-eqz v7, :cond_290

    goto :goto_293

    :cond_290
    move/from16 v17, v5

    goto :goto_2a0

    .line 1280
    :cond_293
    :goto_293
    invoke-virtual {v3, v6, v14}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v11

    move/from16 v17, v5

    const/4 v5, -0x1

    if-eq v11, v5, :cond_2a0

    .line 1282
    move/from16 v5, v17

    const/4 v8, 0x1

    goto :goto_2c8

    .line 1304
    :cond_2a0
    :goto_2a0
    move/from16 v5, v17

    goto :goto_2c8

    .line 1286
    :cond_2a3
    move-object/from16 v24, v8

    move-object/from16 v25, v11

    iget-object v8, v6, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v3, v8, v14}, Lcom/android/server/pm/permission/PermissionsState;->hasRuntimePermission(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_2ba

    .line 1287
    invoke-virtual {v3, v6, v14}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v8

    const/4 v11, -0x1

    if-eq v8, v11, :cond_2ba

    .line 1289
    or-int/lit8 v5, v5, 0x40

    .line 1290
    const/4 v8, 0x1

    goto :goto_2bb

    .line 1295
    :cond_2ba
    const/4 v8, 0x0

    :goto_2bb
    if-eqz v1, :cond_2c8

    if-nez v9, :cond_2c1

    if-eqz v10, :cond_2c8

    :cond_2c1
    if-nez v7, :cond_2c8

    if-nez v0, :cond_2c8

    .line 1298
    or-int/lit16 v5, v5, 0x4000

    .line 1299
    const/4 v8, 0x1

    .line 1304
    :cond_2c8
    :goto_2c8
    if-eqz v1, :cond_2da

    .line 1305
    if-nez v9, :cond_2ce

    if-eqz v10, :cond_2d0

    :cond_2ce
    if-eqz v7, :cond_2da

    .line 1306
    :cond_2d0
    if-eqz v0, :cond_2da

    .line 1307
    and-int/lit16 v0, v5, -0x4001

    .line 1309
    if-nez v12, :cond_2d8

    .line 1310
    or-int/lit8 v0, v0, 0x40

    .line 1312
    :cond_2d8
    move v5, v0

    const/4 v8, 0x1

    .line 1317
    :cond_2da
    if-eqz v8, :cond_2e1

    .line 1318
    invoke-static {v2, v14}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v0

    move-object v2, v0

    .line 1321
    :cond_2e1
    const v0, 0xfbff

    invoke-virtual {v3, v6, v14, v0, v5}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 1228
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v1, p3

    move/from16 v14, v23

    move-object/from16 v8, v24

    move-object/from16 v11, v25

    goto/16 :goto_20c

    .line 1324
    :cond_2f7
    move-object/from16 v25, v11

    move-object/from16 v7, p1

    move-object/from16 v0, p3

    move-object/from16 v17, v2

    move-object/from16 v24, v4

    const/4 v14, 0x0

    goto/16 :goto_50a

    .line 1086
    :cond_304
    move-object/from16 v20, v2

    move/from16 v22, v5

    move-object/from16 v25, v11

    move-object/from16 v21, v14

    invoke-virtual {v6}, Lcom/android/server/pm/permission/BasePermission;->isHardRestricted()Z

    move-result v0

    .line 1087
    invoke-virtual {v6}, Lcom/android/server/pm/permission/BasePermission;->isSoftRestricted()Z

    move-result v1

    .line 1089
    array-length v2, v4

    move-object/from16 v7, v17

    const/4 v5, 0x0

    :goto_318
    if-ge v5, v2, :cond_427

    aget v9, v4, v5

    .line 1093
    move-object/from16 v10, p0

    iget-object v11, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    if-eqz v11, :cond_32c

    iget-object v11, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    .line 1095
    invoke-virtual {v11, v9}, Lcom/android/server/policy/PermissionPolicyInternal;->isInitialized(I)Z

    move-result v11

    if-eqz v11, :cond_32c

    const/4 v11, 0x1

    goto :goto_32d

    :cond_32c
    const/4 v11, 0x0

    .line 1097
    :goto_32d
    nop

    .line 1098
    move-object/from16 v14, v25

    invoke-virtual {v14, v8, v9}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v15

    .line 1099
    if-eqz v15, :cond_33f

    invoke-virtual {v15}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v17

    move/from16 v23, v2

    move/from16 v2, v17

    goto :goto_342

    :cond_33f
    move/from16 v23, v2

    const/4 v2, 0x0

    .line 1101
    :goto_342
    nop

    .line 1103
    move-object/from16 v24, v4

    iget-object v4, v6, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    .line 1104
    invoke-virtual {v14, v4, v9}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v4

    and-int/lit16 v4, v4, 0x3800

    if-eqz v4, :cond_351

    const/4 v4, 0x1

    goto :goto_352

    :cond_351
    const/4 v4, 0x0

    .line 1106
    :goto_352
    iget-object v10, v6, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v14, v10, v9}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v10

    and-int/lit16 v10, v10, 0x4000

    if-eqz v10, :cond_35e

    const/4 v10, 0x1

    goto :goto_35f

    :cond_35e
    const/4 v10, 0x0

    .line 1109
    :goto_35f
    if-eqz v12, :cond_3c3

    .line 1111
    if-eqz v11, :cond_38c

    if-eqz v0, :cond_38c

    .line 1112
    if-nez v4, :cond_387

    .line 1113
    if-eqz v15, :cond_37c

    invoke-virtual {v15}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isGranted()Z

    move-result v17

    if-eqz v17, :cond_37c

    .line 1114
    move-object/from16 v25, v8

    invoke-virtual {v3, v6, v9}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v8

    move-object/from16 v26, v14

    const/4 v14, -0x1

    if-eq v8, v14, :cond_380

    .line 1116
    const/4 v8, 0x1

    goto :goto_381

    .line 1113
    :cond_37c
    move-object/from16 v25, v8

    move-object/from16 v26, v14

    .line 1118
    :cond_380
    const/4 v8, 0x0

    :goto_381
    if-nez v10, :cond_39d

    .line 1119
    or-int/lit16 v2, v2, 0x4000

    .line 1120
    const/4 v8, 0x1

    goto :goto_39d

    .line 1112
    :cond_387
    move-object/from16 v25, v8

    move-object/from16 v26, v14

    goto :goto_39c

    .line 1111
    :cond_38c
    move-object/from16 v25, v8

    move-object/from16 v26, v14

    .line 1124
    if-eqz v11, :cond_39c

    if-eqz v1, :cond_39c

    .line 1127
    if-nez v4, :cond_39c

    if-nez v10, :cond_39c

    .line 1128
    or-int/lit16 v2, v2, 0x4000

    .line 1129
    const/4 v8, 0x1

    goto :goto_39d

    .line 1134
    :cond_39c
    :goto_39c
    const/4 v8, 0x0

    :cond_39d
    :goto_39d
    and-int/lit8 v14, v2, 0x40

    if-eqz v14, :cond_3a4

    .line 1135
    and-int/lit8 v2, v2, -0x41

    .line 1136
    const/4 v8, 0x1

    .line 1139
    :cond_3a4
    and-int/lit8 v14, v2, 0x8

    if-eqz v14, :cond_3ac

    .line 1140
    and-int/lit8 v2, v2, -0x9

    .line 1141
    const/4 v8, 0x1

    goto :goto_3fd

    .line 1143
    :cond_3ac
    if-eqz v11, :cond_3b2

    if-eqz v0, :cond_3b2

    if-eqz v4, :cond_3fd

    .line 1145
    :cond_3b2
    if-eqz v15, :cond_3fd

    invoke-virtual {v15}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isGranted()Z

    move-result v14

    if-eqz v14, :cond_3fd

    .line 1146
    invoke-virtual {v3, v6, v9}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_3fd

    .line 1148
    const/4 v8, 0x1

    goto :goto_3fd

    .line 1153
    :cond_3c3
    move-object/from16 v25, v8

    move-object/from16 v26, v14

    if-nez v15, :cond_3df

    .line 1155
    const-string v8, "android"

    .line 1156
    invoke-virtual {v6}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v14

    .line 1155
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3df

    .line 1157
    invoke-virtual {v6}, Lcom/android/server/pm/permission/BasePermission;->isRemoved()Z

    move-result v8

    if-nez v8, :cond_3df

    .line 1158
    or-int/lit8 v2, v2, 0x48

    .line 1160
    const/4 v8, 0x1

    goto :goto_3e0

    .line 1165
    :cond_3df
    const/4 v8, 0x0

    :goto_3e0
    iget-object v14, v6, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v3, v14, v9}, Lcom/android/server/pm/permission/PermissionsState;->hasRuntimePermission(Ljava/lang/String;I)Z

    move-result v14

    if-nez v14, :cond_3f0

    .line 1166
    invoke-virtual {v3, v6, v9}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_3f0

    .line 1168
    const/4 v8, 0x1

    .line 1173
    :cond_3f0
    if-eqz v11, :cond_3fd

    if-nez v0, :cond_3f6

    if-eqz v1, :cond_3fd

    :cond_3f6
    if-nez v4, :cond_3fd

    if-nez v10, :cond_3fd

    .line 1176
    or-int/lit16 v2, v2, 0x4000

    .line 1177
    const/4 v8, 0x1

    .line 1182
    :cond_3fd
    :goto_3fd
    if-eqz v11, :cond_40e

    .line 1183
    if-nez v0, :cond_403

    if-eqz v1, :cond_405

    :cond_403
    if-eqz v4, :cond_40e

    .line 1184
    :cond_405
    if-eqz v10, :cond_40e

    .line 1185
    and-int/lit16 v2, v2, -0x4001

    .line 1187
    if-nez v12, :cond_40d

    .line 1188
    or-int/lit8 v2, v2, 0x40

    .line 1190
    :cond_40d
    const/4 v8, 0x1

    .line 1195
    :cond_40e
    if-eqz v8, :cond_415

    .line 1196
    invoke-static {v7, v9}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v4

    move-object v7, v4

    .line 1199
    :cond_415
    const v4, 0xfbff

    invoke-virtual {v3, v6, v9, v4, v2}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 1089
    add-int/lit8 v5, v5, 0x1

    move/from16 v2, v23

    move-object/from16 v4, v24

    move-object/from16 v8, v25

    move-object/from16 v25, v26

    goto/16 :goto_318

    .line 1202
    :cond_427
    move-object/from16 v24, v4

    move-object/from16 v26, v25

    move-object/from16 v0, p3

    move-object/from16 v17, v7

    move-object/from16 v11, v26

    const/4 v14, 0x0

    move-object/from16 v7, p1

    goto/16 :goto_50a

    .line 1066
    :cond_436
    move-object/from16 v20, v2

    move-object/from16 v24, v4

    move/from16 v22, v5

    move-object/from16 v25, v8

    move-object/from16 v26, v11

    move-object/from16 v21, v14

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    array-length v1, v0

    move-object/from16 v4, v17

    const/4 v2, 0x0

    :goto_44e
    if-ge v2, v1, :cond_471

    aget v5, v0, v2

    .line 1067
    move-object/from16 v7, v25

    move-object/from16 v11, v26

    invoke-virtual {v11, v7, v5}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v8

    if-eqz v8, :cond_46a

    .line 1070
    invoke-virtual {v11, v6, v5}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    .line 1071
    const v8, 0xfbff

    const/4 v9, 0x0

    invoke-virtual {v11, v6, v5, v8, v9}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 1074
    invoke-static {v4, v5}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v4

    .line 1066
    :cond_46a
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v25, v7

    move-object/from16 v26, v11

    goto :goto_44e

    .line 1079
    :cond_471
    move-object/from16 v11, v26

    invoke-virtual {v3, v6}, Lcom/android/server/pm/permission/PermissionsState;->grantInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_485

    .line 1081
    move-object/from16 v7, p1

    move-object/from16 v0, p3

    move-object/from16 v17, v4

    const/4 v14, 0x0

    const/16 v16, 0x1

    goto/16 :goto_50a

    .line 1079
    :cond_485
    move-object/from16 v7, p1

    move-object/from16 v0, p3

    move-object/from16 v17, v4

    const/4 v14, 0x0

    goto/16 :goto_50a

    .line 1338
    :cond_48e
    move-object/from16 v20, v2

    move-object/from16 v24, v4

    move/from16 v22, v5

    move-object v7, v8

    move-object/from16 v21, v14

    invoke-virtual {v3, v6}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4ee

    .line 1341
    const v0, 0xfbff

    const/4 v14, 0x0

    invoke-virtual {v3, v6, v1, v0, v14}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 1343
    nop

    .line 1344
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Un-granting permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p1

    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (protectionLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1346
    invoke-virtual {v6}, Lcom/android/server/pm/permission/BasePermission;->getProtectionLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1347
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1344
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p3

    const/16 v16, 0x1

    goto :goto_50a

    .line 1349
    :cond_4ee
    move-object/from16 v7, p1

    const/4 v14, 0x0

    invoke-virtual {v6}, Lcom/android/server/pm/permission/BasePermission;->isAppOp()Z

    move-object/from16 v0, p3

    goto :goto_50a

    .line 941
    :cond_4f7
    move-object/from16 v20, v2

    move-object/from16 v24, v4

    move/from16 v22, v5

    move-object/from16 v21, v14

    const/4 v14, 0x0

    .line 942
    :goto_500
    move-object/from16 v0, p3

    if-eqz v0, :cond_50a

    iget-object v1, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 930
    :cond_50a
    :goto_50a
    add-int/lit8 v5, v22, 0x1

    move/from16 v8, p2

    move-object/from16 v9, p4

    move-object v1, v0

    move v10, v14

    move/from16 v15, v18

    move/from16 v12, v19

    move-object/from16 v2, v20

    move-object/from16 v14, v21

    move-object/from16 v4, v24

    move-object/from16 v0, p0

    goto/16 :goto_75

    .line 1365
    :cond_520
    move-object/from16 v20, v2

    move/from16 v19, v12

    move-object/from16 v21, v14

    move v14, v10

    if-nez v16, :cond_52e

    move/from16 v0, p2

    if-eqz v0, :cond_53c

    goto :goto_530

    :cond_52e
    move/from16 v0, p2

    :goto_530
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/pm/PackageSetting;->areInstallPermissionsFixed()Z

    move-result v1

    if-nez v1, :cond_53c

    .line 1366
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_542

    :cond_53c
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/pm/PackageSetting;->isUpdatedSystem()Z

    move-result v1

    if-eqz v1, :cond_548

    .line 1370
    :cond_542
    move-object/from16 v2, v20

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lcom/android/server/pm/PackageSetting;->setInstallPermissionsFixed(Z)V

    .line 1373
    :cond_548
    move-object/from16 v8, p0

    move-object/from16 v5, v17

    invoke-direct {v8, v3, v7, v5}, Lcom/android/server/pm/permission/PermissionManagerService;->revokePermissionsNoLongerImplicitLocked(Lcom/android/server/pm/permission/PermissionsState;Landroid/content/pm/PackageParser$Package;[I)[I

    move-result-object v6

    .line 1375
    move-object/from16 v1, p0

    move-object v2, v11

    move-object/from16 v4, p1

    move-object/from16 v5, v21

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->setInitialGrantForNewImplicitPermissionsLocked(Lcom/android/server/pm/permission/PermissionsState;Lcom/android/server/pm/permission/PermissionsState;Landroid/content/pm/PackageParser$Package;Landroid/util/ArraySet;[I)[I

    move-result-object v1

    .line 1377
    invoke-direct {v8, v7, v0, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->checkIfLegacyStorageOpsNeedToBeUpdated(Landroid/content/pm/PackageParser$Package;Z[I)[I

    move-result-object v0

    .line 1378
    monitor-exit v13
    :try_end_560
    .catchall {:try_start_65 .. :try_end_560} :catchall_577

    .line 1383
    move-object/from16 v1, p4

    if-eqz v1, :cond_569

    .line 1384
    move/from16 v10, v19

    invoke-virtual {v1, v0, v10}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onPermissionUpdated([IZ)V

    .line 1387
    :cond_569
    array-length v1, v0

    :goto_56a
    if-ge v14, v1, :cond_576

    aget v2, v0, v14

    .line 1388
    iget-object v3, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-direct {v8, v3, v2}, Lcom/android/server/pm/permission/PermissionManagerService;->notifyRuntimePermissionStateChanged(Ljava/lang/String;I)V

    .line 1387
    add-int/lit8 v14, v14, 0x1

    goto :goto_56a

    .line 1390
    :cond_576
    return-void

    .line 1378
    :catchall_577
    move-exception v0

    :try_start_578
    monitor-exit v13
    :try_end_579
    .catchall {:try_start_578 .. :try_end_579} :catchall_577

    throw v0
.end method

.method private restoreRuntimePermissions([BLandroid/os/UserHandle;)V
    .registers 6

    .line 410
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 411
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 412
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    invoke-virtual {v1, p1, p2}, Landroid/permission/PermissionControllerManager;->restoreRuntimePermissionBackup([BLandroid/os/UserHandle;)V

    .line 413
    monitor-exit v0

    .line 414
    return-void

    .line 413
    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p1
.end method

.method private revokePermissionsNoLongerImplicitLocked(Lcom/android/server/pm/permission/PermissionsState;Landroid/content/pm/PackageParser$Package;[I)[I
    .registers 14

    .line 1406
    iget-object v0, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1407
    iget-object v0, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    move v0, v1

    .line 1410
    :goto_e
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v2

    .line 1411
    array-length v3, v2

    .line 1412
    move-object v4, p3

    move p3, v1

    :goto_19
    if-ge p3, v3, :cond_6c

    .line 1413
    aget v5, v2, p3

    .line 1415
    invoke-virtual {p1, v5}, Lcom/android/server/pm/permission/PermissionsState;->getPermissions(I)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_25
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_69

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1416
    iget-object v8, p2, Landroid/content/pm/PackageParser$Package;->implicitPermissions:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_68

    .line 1417
    invoke-virtual {p1, v7}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_68

    .line 1418
    invoke-virtual {p1, v7, v5}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v8

    .line 1420
    and-int/lit16 v9, v8, 0x80

    if-eqz v9, :cond_68

    .line 1421
    iget-object v9, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v9, v7}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v7

    .line 1423
    nop

    .line 1425
    and-int/lit8 v8, v8, 0x34

    if-nez v8, :cond_5f

    if-eqz v0, :cond_5f

    .line 1427
    invoke-virtual {p1, v7, v5}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    .line 1428
    nop

    .line 1436
    const/16 v8, 0x83

    goto :goto_61

    .line 1439
    :cond_5f
    const/16 v8, 0x80

    :goto_61
    invoke-virtual {p1, v7, v5, v8, v1}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 1440
    invoke-static {v4, v5}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v4

    .line 1444
    :cond_68
    goto :goto_25

    .line 1412
    :cond_69
    add-int/lit8 p3, p3, 0x1

    goto :goto_19

    .line 1447
    :cond_6c
    return-object v4
.end method

.method private revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 19

    .line 2221
    move-object v7, p0

    move-object v8, p1

    move-object v9, p2

    move/from16 v10, p4

    move-object/from16 v11, p5

    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, v10}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    const-string v12, "PackageManager"

    if-nez v0, :cond_26

    .line 2222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No such user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    return-void

    .line 2226
    :cond_26
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    const-string/jumbo v2, "revokeRuntimePermission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2230
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string/jumbo v6, "revokeRuntimePermission"

    move-object v0, p0

    move/from16 v2, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    .line 2236
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 2237
    const-string v1, "Unknown package: "

    if-eqz v0, :cond_13d

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-nez v2, :cond_50

    goto/16 :goto_13d

    .line 2241
    :cond_50
    iget-object v2, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v0, v3, v10}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Landroid/content/pm/PackageParser$Package;II)Z

    move-result v2

    if-nez v2, :cond_128

    .line 2244
    iget-object v1, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v1

    .line 2245
    if-eqz v1, :cond_111

    .line 2249
    invoke-virtual {v1, v0}, Lcom/android/server/pm/permission/BasePermission;->enforceDeclaredUsedAndRuntimeOrDevelopment(Landroid/content/pm/PackageParser$Package;)V

    .line 2255
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_76

    .line 2256
    invoke-virtual {v1}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v2

    if-eqz v2, :cond_76

    .line 2257
    return-void

    .line 2260
    :cond_76
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 2261
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v2

    .line 2263
    invoke-virtual {v2, p1, v10}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v3

    .line 2265
    and-int/lit8 v4, v3, 0x10

    const-string v5, " for package "

    if-eqz v4, :cond_ae

    .line 2266
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v4

    const/16 v6, 0x3e8

    if-ne v4, v6, :cond_91

    goto :goto_ae

    .line 2267
    :cond_91
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-System UID cannot revoke system fixed permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2270
    :cond_ae
    :goto_ae
    if-nez p3, :cond_d2

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_b5

    goto :goto_d2

    .line 2271
    :cond_b5
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot revoke policy fixed permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2275
    :cond_d2
    :goto_d2
    invoke-virtual {v1}, Lcom/android/server/pm/permission/BasePermission;->isDevelopment()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_e5

    .line 2278
    invoke-virtual {v2, v1}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v0

    if-eq v0, v4, :cond_e4

    .line 2280
    if-eqz v11, :cond_e4

    .line 2281
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onInstallPermissionRevoked()V

    .line 2284
    :cond_e4
    return-void

    .line 2288
    :cond_e5
    invoke-virtual {v2, p1, v10}, Lcom/android/server/pm/permission/PermissionsState;->hasRuntimePermission(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_ec

    .line 2289
    return-void

    .line 2292
    :cond_ec
    invoke-virtual {v2, v1, v10}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v2

    if-ne v2, v4, :cond_f3

    .line 2294
    return-void

    .line 2297
    :cond_f3
    invoke-virtual {v1}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v2

    if-eqz v2, :cond_fe

    .line 2298
    const/16 v2, 0x4dd

    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->logPermission(ILjava/lang/String;Ljava/lang/String;)V

    .line 2301
    :cond_fe
    if-eqz v11, :cond_107

    .line 2302
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v11, v0, v10}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onPermissionRevoked(II)V

    .line 2305
    :cond_107
    invoke-virtual {v1}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v0

    if-eqz v0, :cond_110

    .line 2306
    invoke-direct {p0, p2, v10}, Lcom/android/server/pm/permission/PermissionManagerService;->notifyRuntimePermissionStateChanged(Ljava/lang/String;I)V

    .line 2308
    :cond_110
    return-void

    .line 2246
    :cond_111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown permission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2242
    :cond_128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2238
    :cond_13d
    :goto_13d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2239
    return-void
.end method

.method private revokeRuntimePermissionsIfGroupChanged(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;Ljava/util/ArrayList;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;",
            ")V"
        }
    .end annotation

    .line 607
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 608
    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 611
    const/4 v10, 0x0

    move v2, v10

    :goto_13
    if-ge v2, v1, :cond_31

    .line 612
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Permission;

    .line 614
    iget-object v4, v3, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    if-eqz v4, :cond_2e

    .line 615
    iget-object v4, v3, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    iget-object v3, v3, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 620
    :cond_31
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 621
    move v12, v10

    :goto_38
    if-ge v12, v11, :cond_163

    .line 623
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    .line 624
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Permission;

    .line 625
    iget-object v1, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v1}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v1

    .line 627
    const/4 v13, 0x1

    and-int/2addr v1, v13

    if-eqz v1, :cond_15a

    .line 628
    iget-object v1, v0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v14, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 630
    iget-object v1, v0, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    if-nez v1, :cond_56

    const/4 v0, 0x0

    goto :goto_5c

    :cond_56
    iget-object v0, v0, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    iget-object v0, v0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v0, v0, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    :goto_5c
    move-object v15, v0

    .line 631
    invoke-virtual {v9, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 634
    if-eqz v15, :cond_157

    .line 635
    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_154

    .line 636
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0}, Landroid/os/UserManagerInternal;->getUserIds()[I

    move-result-object v5

    .line 637
    array-length v4, v5

    .line 638
    move v3, v10

    :goto_74
    if-ge v3, v4, :cond_151

    .line 639
    aget v2, v5, v3

    .line 641
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 642
    move/from16 p2, v4

    move v4, v10

    :goto_7f
    if-ge v4, v1, :cond_13a

    .line 643
    move-object/from16 v13, p3

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move/from16 v17, v4

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 645
    invoke-direct {v7, v14, v4, v10, v2}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_117

    .line 647
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const-string v19, "72710897"

    aput-object v19, v0, v10

    iget-object v10, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 648
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v16, 0x1

    aput-object v10, v0, v16

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v1

    const-string v1, "Revoking permission "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from package "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " as the group changed from "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x2

    aput-object v1, v0, v10

    .line 647
    const v1, 0x534e4554

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 655
    const/4 v0, 0x0

    move/from16 v10, v21

    move-object/from16 v1, p0

    move/from16 v18, v2

    move-object v2, v14

    move/from16 v20, v3

    move-object v3, v4

    move-object v7, v4

    move/from16 v21, v17

    move/from16 v17, p2

    move v4, v0

    move-object/from16 v22, v5

    move/from16 v5, v18

    move-object/from16 v23, v6

    move-object/from16 v6, p4

    :try_start_f2
    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    :try_end_f5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f2 .. :try_end_f5} :catch_f6

    .line 660
    goto :goto_126

    .line 657
    :catch_f6
    move-exception v0

    move-object v1, v0

    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not revoke "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PackageManager"

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_126

    .line 645
    :cond_117
    move v10, v1

    move/from16 v18, v2

    move/from16 v20, v3

    move-object/from16 v22, v5

    move-object/from16 v23, v6

    move/from16 v21, v17

    const/16 v16, 0x1

    move/from16 v17, p2

    .line 642
    :goto_126
    add-int/lit8 v4, v21, 0x1

    move-object/from16 v7, p0

    move v1, v10

    move/from16 v13, v16

    move/from16 p2, v17

    move/from16 v2, v18

    move/from16 v3, v20

    move-object/from16 v5, v22

    move-object/from16 v6, v23

    const/4 v10, 0x0

    goto/16 :goto_7f

    .line 638
    :cond_13a
    move/from16 v17, p2

    move/from16 v20, v3

    move-object/from16 v22, v5

    move-object/from16 v23, v6

    move/from16 v16, v13

    move-object/from16 v13, p3

    add-int/lit8 v3, v20, 0x1

    const/4 v10, 0x0

    move-object/from16 v7, p0

    move/from16 v13, v16

    move/from16 v4, v17

    goto/16 :goto_74

    :cond_151
    move-object/from16 v13, p3

    goto :goto_15c

    .line 635
    :cond_154
    move-object/from16 v13, p3

    goto :goto_15c

    .line 634
    :cond_157
    move-object/from16 v13, p3

    goto :goto_15c

    .line 627
    :cond_15a
    move-object/from16 v13, p3

    .line 622
    :goto_15c
    add-int/lit8 v12, v12, 0x1

    const/4 v10, 0x0

    move-object/from16 v7, p0

    goto/16 :goto_38

    .line 667
    :cond_163
    return-void
.end method

.method private revokeUnusedSharedUserPermissionsLocked(Lcom/android/server/pm/SharedUserSetting;[I)[I
    .registers 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2456
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 2457
    invoke-virtual {p1}, Lcom/android/server/pm/SharedUserSetting;->getPackages()Ljava/util/List;

    move-result-object v1

    .line 2458
    if-eqz v1, :cond_c5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_13

    goto/16 :goto_c5

    .line 2461
    :cond_13
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 2462
    iget-object v4, v2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-nez v4, :cond_29

    .line 2463
    goto :goto_17

    .line 2465
    :cond_29
    iget-object v4, v2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2466
    nop

    :goto_30
    if-ge v3, v4, :cond_48

    .line 2467
    iget-object v5, v2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2468
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v6, v5}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v6

    .line 2469
    if-eqz v6, :cond_45

    .line 2470
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2466
    :cond_45
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 2473
    :cond_48
    goto :goto_17

    .line 2475
    :cond_49
    invoke-virtual {p1}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object p1

    .line 2477
    invoke-virtual {p1}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    move-result-object v1

    .line 2478
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 2479
    add-int/lit8 v2, v2, -0x1

    :goto_57
    const v4, 0xfbff

    if-ltz v2, :cond_82

    .line 2480
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 2481
    invoke-virtual {v5}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7f

    .line 2482
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v5}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v5

    .line 2483
    if-eqz v5, :cond_7f

    .line 2484
    invoke-virtual {p1, v5}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    .line 2485
    const/4 v6, -0x1

    invoke-virtual {p1, v5, v6, v4, v3}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 2479
    :cond_7f
    add-int/lit8 v2, v2, -0x1

    goto :goto_57

    .line 2491
    :cond_82
    sget-object v1, Llibcore/util/EmptyArray;->INT:[I

    .line 2494
    array-length v2, p2

    move-object v5, v1

    move v1, v3

    :goto_87
    if-ge v1, v2, :cond_c4

    aget v6, p2, v1

    .line 2495
    nop

    .line 2496
    invoke-virtual {p1, v6}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v7

    .line 2497
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 2498
    add-int/lit8 v8, v8, -0x1

    :goto_96
    if-ltz v8, :cond_c1

    .line 2499
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 2500
    invoke-virtual {v9}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_be

    .line 2501
    iget-object v10, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v9}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v9

    .line 2502
    if-eqz v9, :cond_be

    .line 2503
    invoke-virtual {p1, v9, v6}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    .line 2504
    invoke-virtual {p1, v9, v6, v4, v3}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 2506
    invoke-static {v5, v6}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v5

    .line 2498
    :cond_be
    add-int/lit8 v8, v8, -0x1

    goto :goto_96

    .line 2494
    :cond_c1
    add-int/lit8 v1, v1, 0x1

    goto :goto_87

    .line 2513
    :cond_c4
    return-object v5

    .line 2459
    :cond_c5
    :goto_c5
    sget-object p1, Llibcore/util/EmptyArray;->INT:[I

    return-object p1
.end method

.method private setInitialGrantForNewImplicitPermissionsLocked(Lcom/android/server/pm/permission/PermissionsState;Lcom/android/server/pm/permission/PermissionsState;Landroid/content/pm/PackageParser$Package;Landroid/util/ArraySet;[I)[I
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/PermissionsState;",
            "Lcom/android/server/pm/permission/PermissionsState;",
            "Landroid/content/pm/PackageParser$Package;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;[I)[I"
        }
    .end annotation

    .line 1540
    move-object/from16 v6, p2

    move-object/from16 v7, p3

    iget-object v0, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1541
    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    .line 1543
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/permission/PermissionManagerService;->getSplitPermissions()Ljava/util/List;

    move-result-object v0

    .line 1544
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1545
    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_4a

    .line 1546
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/permission/PermissionManager$SplitPermissionInfo;

    .line 1548
    invoke-virtual {v3}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getNewPermissions()Ljava/util/List;

    move-result-object v4

    .line 1549
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 1550
    const/4 v10, 0x0

    :goto_25
    if-ge v10, v5, :cond_47

    .line 1551
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1553
    invoke-virtual {v8, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/ArraySet;

    .line 1554
    if-nez v12, :cond_3d

    .line 1555
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    .line 1556
    invoke-virtual {v8, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1559
    :cond_3d
    invoke-virtual {v3}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getSplitPermission()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1550
    add-int/lit8 v10, v10, 0x1

    goto :goto_25

    .line 1545
    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 1563
    :cond_4a
    invoke-virtual/range {p4 .. p4}, Landroid/util/ArraySet;->size()I

    move-result v10

    .line 1564
    move-object/from16 v0, p5

    const/4 v11, 0x0

    :goto_51
    if-ge v11, v10, :cond_ee

    .line 1566
    move-object/from16 v12, p4

    invoke-virtual {v12, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Ljava/lang/String;

    .line 1567
    invoke-virtual {v8, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/util/ArraySet;

    .line 1569
    if-eqz v14, :cond_e8

    .line 1570
    invoke-virtual {v6, v13}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e5

    .line 1571
    move-object/from16 v15, p0

    iget-object v1, v15, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v1, v13}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v5

    .line 1573
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v4

    .line 1574
    array-length v3, v4

    .line 1575
    const/4 v2, 0x0

    :goto_7d
    if-ge v2, v3, :cond_ea

    .line 1576
    aget v1, v4, v2

    .line 1578
    const-string v9, "android.permission.ACTIVITY_RECOGNITION"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8e

    .line 1579
    const/16 v9, 0x80

    invoke-virtual {v6, v5, v1, v9, v9}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 1583
    :cond_8e
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v9

    .line 1585
    nop

    .line 1586
    const/4 v0, 0x0

    :goto_94
    move/from16 p5, v1

    invoke-virtual {v14}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_b0

    .line 1588
    invoke-virtual {v14, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 1589
    nop

    .line 1590
    const/4 v0, 0x1

    goto :goto_b1

    .line 1587
    :cond_ab
    add-int/lit8 v0, v0, 0x1

    move/from16 v1, p5

    goto :goto_94

    .line 1586
    :cond_b0
    const/4 v0, 0x0

    .line 1594
    :goto_b1
    move-object/from16 v1, p1

    invoke-virtual {v1, v14}, Lcom/android/server/pm/permission/PermissionsState;->hasRequestedPermission(Landroid/util/ArraySet;)Z

    move-result v16

    if-nez v16, :cond_c4

    if-nez v0, :cond_c4

    move/from16 v17, v2

    move/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    goto :goto_db

    .line 1603
    :cond_c4
    move-object/from16 v0, p0

    move/from16 v16, p5

    move-object v1, v14

    move/from16 v17, v2

    move-object v2, v13

    move/from16 v18, v3

    move-object/from16 v3, p2

    move-object/from16 v19, v4

    move-object/from16 v4, p3

    move-object/from16 v20, v5

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerService;->inheritPermissionStateToNewImplicitPermissionLocked(Landroid/util/ArraySet;Ljava/lang/String;Lcom/android/server/pm/permission/PermissionsState;Landroid/content/pm/PackageParser$Package;I)V

    .line 1575
    :goto_db
    add-int/lit8 v2, v17, 0x1

    move-object v0, v9

    move/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    goto :goto_7d

    .line 1570
    :cond_e5
    move-object/from16 v15, p0

    goto :goto_ea

    .line 1569
    :cond_e8
    move-object/from16 v15, p0

    .line 1565
    :cond_ea
    :goto_ea
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_51

    .line 1611
    :cond_ee
    return-object v0
.end method

.method private setWhitelistedRestrictedPermissions(Landroid/content/pm/PackageParser$Package;[ILjava/util/List;IILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "[I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II",
            "Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;",
            ")V"
        }
    .end annotation

    .line 2315
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p6

    iget-object v0, v10, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Lcom/android/server/pm/PackageSetting;

    .line 2316
    if-nez v14, :cond_12

    .line 2317
    return-void

    .line 2320
    :cond_12
    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v15

    .line 2321
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    .line 2322
    nop

    .line 2324
    iget-object v0, v10, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 2325
    array-length v6, v11

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_25
    if-ge v4, v6, :cond_183

    aget v3, v11, v4

    .line 2326
    const/4 v2, 0x0

    :goto_2a
    if-ge v2, v7, :cond_175

    .line 2327
    iget-object v1, v10, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2329
    iget-object v5, v9, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v5, v1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v5

    .line 2330
    move/from16 v17, v7

    const/4 v7, 0x1

    if-nez v5, :cond_59

    .line 2331
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot whitelist unknown permission: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "PackageManager"

    invoke-static {v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2332
    move/from16 v22, v0

    goto/16 :goto_105

    .line 2335
    :cond_59
    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->isHardOrSoftRestricted()Z

    move-result v5

    if-nez v5, :cond_63

    .line 2336
    move/from16 v22, v0

    goto/16 :goto_105

    .line 2339
    :cond_63
    invoke-virtual {v15, v1, v3}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_80

    .line 2340
    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_77

    .line 2341
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v8, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2343
    :cond_77
    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2346
    :cond_80
    invoke-virtual {v15, v1, v3}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v5

    .line 2348
    nop

    .line 2349
    nop

    .line 2350
    move/from16 v18, p5

    move/from16 v19, v5

    const/16 v20, 0x0

    .line 2351
    :goto_8c
    if-eqz v18, :cond_fc

    .line 2352
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v21

    move/from16 v22, v0

    shl-int v0, v7, v21

    .line 2353
    not-int v7, v0

    and-int v18, v18, v7

    .line 2354
    const/4 v7, 0x1

    if-eq v0, v7, :cond_dd

    const/4 v7, 0x2

    if-eq v0, v7, :cond_c1

    const/4 v7, 0x4

    if-eq v0, v7, :cond_a3

    goto :goto_f8

    .line 2367
    :cond_a3
    move/from16 v0, v20

    or-int/lit16 v0, v0, 0x2000

    .line 2368
    if-eqz v12, :cond_b8

    invoke-interface {v12, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b8

    .line 2369
    move/from16 v7, v19

    or-int/lit16 v7, v7, 0x2000

    move/from16 v20, v0

    move/from16 v19, v7

    goto :goto_f8

    .line 2368
    :cond_b8
    move/from16 v7, v19

    .line 2372
    and-int/lit16 v7, v7, -0x2001

    .line 2376
    move/from16 v20, v0

    move/from16 v19, v7

    goto :goto_f8

    .line 2378
    :cond_c1
    move/from16 v7, v19

    move/from16 v0, v20

    or-int/lit16 v0, v0, 0x800

    .line 2379
    if-eqz v12, :cond_d6

    invoke-interface {v12, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d6

    .line 2380
    or-int/lit16 v7, v7, 0x800

    move/from16 v20, v0

    move/from16 v19, v7

    goto :goto_f8

    .line 2383
    :cond_d6
    and-int/lit16 v7, v7, -0x801

    move/from16 v20, v0

    move/from16 v19, v7

    goto :goto_f8

    .line 2356
    :cond_dd
    move/from16 v7, v19

    move/from16 v0, v20

    or-int/lit16 v0, v0, 0x1000

    .line 2357
    if-eqz v12, :cond_f2

    invoke-interface {v12, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f2

    .line 2358
    or-int/lit16 v7, v7, 0x1000

    move/from16 v20, v0

    move/from16 v19, v7

    goto :goto_f8

    .line 2361
    :cond_f2
    and-int/lit16 v7, v7, -0x1001

    .line 2365
    move/from16 v20, v0

    move/from16 v19, v7

    .line 2389
    :goto_f8
    move/from16 v0, v22

    const/4 v7, 0x1

    goto :goto_8c

    .line 2391
    :cond_fc
    move/from16 v22, v0

    move/from16 v7, v19

    move/from16 v0, v20

    if-ne v5, v7, :cond_112

    .line 2392
    nop

    .line 2326
    :goto_105
    move/from16 v18, v2

    move/from16 v20, v3

    move/from16 v19, v4

    move/from16 v16, v6

    move-object/from16 v23, v8

    move/from16 v0, v22

    goto :goto_167

    .line 2395
    :cond_112
    nop

    .line 2397
    move/from16 v18, v2

    and-int/lit16 v2, v5, 0x3800

    if-eqz v2, :cond_11b

    const/4 v2, 0x1

    goto :goto_11c

    :cond_11b
    const/4 v2, 0x0

    .line 2399
    :goto_11c
    move/from16 v19, v4

    and-int/lit16 v4, v7, 0x3800

    if-eqz v4, :cond_124

    const/4 v4, 0x1

    goto :goto_125

    :cond_124
    const/4 v4, 0x0

    .line 2406
    :goto_125
    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_138

    .line 2407
    invoke-virtual {v15, v1, v3}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v5

    .line 2409
    if-nez v4, :cond_138

    if-eqz v5, :cond_138

    .line 2410
    or-int/lit8 v20, v0, 0x4

    .line 2411
    and-int/lit8 v0, v7, -0x5

    move v7, v0

    move/from16 v0, v20

    .line 2417
    :cond_138
    iget-object v5, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v20, v3

    const/16 v3, 0x17

    if-ge v5, v3, :cond_14d

    if-nez v2, :cond_14d

    if-eqz v4, :cond_14d

    .line 2419
    or-int/lit8 v0, v0, 0x40

    .line 2420
    or-int/lit8 v2, v7, 0x40

    move v3, v0

    move v4, v2

    goto :goto_14f

    .line 2423
    :cond_14d
    move v3, v0

    move v4, v7

    :goto_14f
    iget-object v2, v10, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v5, p4

    move/from16 v16, v6

    move/from16 v6, v20

    const/16 v21, 0x1

    move-object/from16 v23, v8

    move-object/from16 v8, v22

    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    move/from16 v0, v21

    .line 2326
    :goto_167
    add-int/lit8 v2, v18, 0x1

    move/from16 v6, v16

    move/from16 v7, v17

    move/from16 v4, v19

    move/from16 v3, v20

    move-object/from16 v8, v23

    goto/16 :goto_2a

    .line 2325
    :cond_175
    move/from16 v22, v0

    move/from16 v19, v4

    move/from16 v16, v6

    move/from16 v17, v7

    move-object/from16 v23, v8

    add-int/lit8 v4, v19, 0x1

    goto/16 :goto_25

    .line 2428
    :cond_183
    move-object/from16 v23, v8

    if-eqz v0, :cond_1c9

    .line 2430
    iget-object v0, v10, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v9, v10, v1, v0, v13}, Lcom/android/server/pm/permission/PermissionManagerService;->restorePermissionState(Landroid/content/pm/PackageParser$Package;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 2433
    nop

    .line 2434
    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2435
    move v2, v1

    :goto_193
    if-ge v2, v0, :cond_1c9

    .line 2436
    move-object/from16 v3, v23

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 2437
    nop

    .line 2438
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 2439
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v6

    .line 2440
    move v7, v1

    :goto_1a7
    if-ge v7, v6, :cond_1c4

    .line 2441
    invoke-virtual {v5, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2443
    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v9

    invoke-virtual {v9, v8, v4}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_1c1

    .line 2444
    iget-object v5, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v13, v5, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onPermissionRevoked(II)V

    .line 2445
    goto :goto_1c4

    .line 2440
    :cond_1c1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1a7

    .line 2435
    :cond_1c4
    :goto_1c4
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v23, v3

    goto :goto_193

    .line 2450
    :cond_1c9
    return-void
.end method

.method private systemReady()V
    .registers 4

    .line 2968
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSystemReady:Z

    .line 2969
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    if-nez v0, :cond_1e

    .line 2974
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/permission/PermissionControllerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionControllerManager;

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    .line 2975
    const-class v0, Lcom/android/server/policy/PermissionPolicyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/PermissionPolicyInternal;

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    .line 2976
    return-void

    .line 2970
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signature|privileged permissions not in privapp-permissions whitelist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateAllPermissions(Ljava/lang/String;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Collection<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;",
            ")V"
        }
    .end annotation

    .line 2581
    nop

    .line 2582
    if-eqz p2, :cond_5

    .line 2583
    const/4 p2, 0x6

    goto :goto_6

    .line 2584
    :cond_5
    const/4 p2, 0x0

    :goto_6
    or-int/lit8 v4, p2, 0x1

    .line 2585
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Ljava/lang/String;ILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 2586
    return-void
.end method

.method private updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 22

    .line 2787
    move-object v0, p0

    move-object v8, p1

    move-object v9, p2

    move/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v12, p8

    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v1, v11}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v1

    if-nez v1, :cond_12

    .line 2788
    return-void

    .line 2791
    :cond_12
    const-string/jumbo v1, "updatePermissionFlags"

    invoke-direct {p0, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V

    .line 2793
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string/jumbo v7, "updatePermissionFlags"

    move-object v1, p0

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    .line 2799
    and-int/lit8 v1, p3, 0x4

    if-eqz v1, :cond_36

    if-eqz p7, :cond_2d

    goto :goto_36

    .line 2800
    :cond_2d
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "updatePermissionFlags requires android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2805
    :cond_36
    :goto_36
    const/16 v1, 0x3e8

    if-eq v10, v1, :cond_4d

    .line 2806
    and-int/lit8 v1, p3, -0x11

    .line 2807
    and-int/lit8 v2, p4, -0x11

    .line 2808
    and-int/lit8 v1, v1, -0x21

    .line 2809
    and-int/lit8 v2, v2, -0x21

    .line 2810
    and-int/lit8 v2, v2, -0x41

    .line 2811
    and-int/lit16 v2, v2, -0x1001

    .line 2812
    and-int/lit16 v2, v2, -0x801

    .line 2813
    and-int/lit16 v2, v2, -0x2001

    .line 2814
    and-int/lit16 v2, v2, -0x4001

    goto :goto_51

    .line 2805
    :cond_4d
    move/from16 v1, p3

    move/from16 v2, p4

    .line 2817
    :goto_51
    iget-object v3, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 2818
    if-eqz v3, :cond_e6

    iget-object v4, v3, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-nez v4, :cond_5f

    goto/16 :goto_e6

    .line 2822
    :cond_5f
    iget-object v4, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v4, v3, v10, v11}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Landroid/content/pm/PackageParser$Package;II)Z

    move-result v4

    if-nez v4, :cond_cf

    .line 2827
    iget-object v4, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2828
    :try_start_6a
    iget-object v5, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v5, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v5

    .line 2829
    monitor-exit v4
    :try_end_71
    .catchall {:try_start_6a .. :try_end_71} :catchall_cc

    .line 2830
    if-eqz v5, :cond_b5

    .line 2834
    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 2835
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v3

    .line 2836
    nop

    .line 2837
    invoke-virtual {v3, p1, v11}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_86

    move v4, v6

    goto :goto_87

    :cond_86
    move v4, v7

    .line 2838
    :goto_87
    nop

    .line 2839
    invoke-virtual {v3, v5, v11, v1, v2}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    move-result v1

    .line 2840
    if-eqz v1, :cond_97

    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v2

    if-eqz v2, :cond_97

    .line 2841
    invoke-direct {p0, p2, v11}, Lcom/android/server/pm/permission/PermissionManagerService;->notifyRuntimePermissionStateChanged(Ljava/lang/String;I)V

    .line 2843
    :cond_97
    if-eqz v1, :cond_b4

    if-eqz v12, :cond_b4

    .line 2846
    invoke-virtual {v3, p1}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v0

    if-eqz v0, :cond_a5

    .line 2847
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onInstallPermissionUpdated()V

    goto :goto_b4

    .line 2848
    :cond_a5
    invoke-virtual {v3, p1, v11}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v0

    if-nez v0, :cond_ad

    if-eqz v4, :cond_b4

    .line 2850
    :cond_ad
    new-array v0, v6, [I

    aput v11, v0, v7

    invoke-virtual {v12, v0, v7}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onPermissionUpdated([IZ)V

    .line 2853
    :cond_b4
    :goto_b4
    return-void

    .line 2831
    :cond_b5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown permission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2829
    :catchall_cc
    move-exception v0

    :try_start_cd
    monitor-exit v4
    :try_end_ce
    .catchall {:try_start_cd .. :try_end_ce} :catchall_cc

    throw v0

    .line 2823
    :cond_cf
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2819
    :cond_e6
    :goto_e6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2820
    return-void
.end method

.method private updatePermissionFlagsForAllApps(IIIILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/Collection<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;",
            ")Z"
        }
    .end annotation

    .line 2857
    iget-object p6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {p6, p4}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result p6

    const/4 v0, 0x0

    if-nez p6, :cond_a

    .line 2858
    return v0

    .line 2861
    :cond_a
    const-string/jumbo p6, "updatePermissionFlagsForAllApps"

    invoke-direct {p0, p6}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V

    .line 2863
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string/jumbo v7, "updatePermissionFlagsForAllApps"

    move-object v1, p0

    move v2, p3

    move v3, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    .line 2870
    const/16 p6, 0x3e8

    if-eq p3, p6, :cond_24

    .line 2871
    and-int/lit8 p1, p1, -0x11

    .line 2872
    and-int/lit8 p2, p2, -0x11

    .line 2875
    :cond_24
    nop

    .line 2876
    invoke-interface {p5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_29
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_46

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/content/pm/PackageParser$Package;

    .line 2877
    iget-object p5, p5, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast p5, Lcom/android/server/pm/PackageSetting;

    .line 2878
    if-nez p5, :cond_3c

    .line 2879
    goto :goto_29

    .line 2881
    :cond_3c
    invoke-virtual {p5}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object p5

    .line 2882
    invoke-virtual {p5, p4, p1, p2}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlagsForAllPermissions(III)Z

    move-result p5

    or-int/2addr v0, p5

    .line 2884
    goto :goto_29

    .line 2885
    :cond_46
    return v0
.end method

.method private updatePermissionTrees(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;I)I
    .registers 11

    .line 2742
    nop

    .line 2743
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2744
    :try_start_4
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v1, v1, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    .line 2745
    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 2746
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/BasePermission;

    .line 2747
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageSetting()Lcom/android/server/pm/PackageSettingBase;

    move-result-object v4

    if-eqz v4, :cond_67

    .line 2748
    if-eqz p1, :cond_11

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    if-eqz p2, :cond_3b

    .line 2749
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/android/server/pm/permission/PermissionManagerService;->hasPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 2750
    :cond_3b
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing old permission tree: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2751
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2750
    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2752
    or-int/lit8 p3, p3, 0x1

    .line 2753
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_11

    .line 2757
    :cond_67
    if-nez v2, :cond_76

    .line 2758
    new-instance v2, Landroid/util/ArraySet;

    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    invoke-direct {v2, v4}, Landroid/util/ArraySet;-><init>(I)V

    .line 2760
    :cond_76
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2761
    goto :goto_11

    .line 2762
    :cond_7a
    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_4 .. :try_end_7b} :catchall_e4

    .line 2763
    if-eqz v2, :cond_e3

    .line 2764
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_81
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/permission/BasePermission;

    .line 2765
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 2766
    invoke-virtual {p2}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 2767
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2768
    if-eqz v0, :cond_af

    :try_start_9c
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-eqz v2, :cond_af

    .line 2769
    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 2770
    invoke-virtual {p2}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageSetting()Lcom/android/server/pm/PackageSettingBase;

    move-result-object v2

    if-nez v2, :cond_ad

    .line 2771
    invoke-virtual {p2, v0}, Lcom/android/server/pm/permission/BasePermission;->setSourcePackageSetting(Lcom/android/server/pm/PackageSettingBase;)V

    .line 2773
    :cond_ad
    monitor-exit v1

    goto :goto_81

    .line 2775
    :cond_af
    const-string v0, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing dangling permission tree: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2776
    invoke-virtual {p2}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2775
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2777
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {p2}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/server/pm/permission/PermissionSettings;->removePermissionLocked(Ljava/lang/String;)V

    .line 2778
    monitor-exit v1

    .line 2779
    goto :goto_81

    .line 2778
    :catchall_e0
    move-exception p1

    monitor-exit v1
    :try_end_e2
    .catchall {:try_start_9c .. :try_end_e2} :catchall_e0

    throw p1

    .line 2781
    :cond_e3
    return p3

    .line 2762
    :catchall_e4
    move-exception p1

    :try_start_e5
    monitor-exit v0
    :try_end_e6
    .catchall {:try_start_e5 .. :try_end_e6} :catchall_e4

    throw p1
.end method

.method private updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)I
    .registers 15

    .line 2657
    nop

    .line 2658
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2659
    :try_start_4
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v1, v1, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    .line 2660
    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ac

    .line 2661
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/BasePermission;

    .line 2662
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isDynamic()Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 2663
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/pm/permission/BasePermission;->updateDynamicPermission(Ljava/util/Collection;)V

    .line 2665
    :cond_2e
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageSetting()Lcom/android/server/pm/PackageSettingBase;

    move-result-object v4

    if-eqz v4, :cond_98

    .line 2666
    if-eqz p1, :cond_11

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    if-eqz p2, :cond_4c

    .line 2667
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/android/server/pm/permission/PermissionManagerService;->hasPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 2668
    :cond_4c
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing old permission tree: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2669
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2668
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2670
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v4

    if-eqz v4, :cond_91

    .line 2671
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v4}, Landroid/os/UserManagerInternal;->getUserIds()[I

    move-result-object v4

    .line 2672
    array-length v5, v4

    .line 2673
    const/4 v6, 0x0

    :goto_80
    if-ge v6, v5, :cond_91

    .line 2674
    aget v7, v4, v6

    .line 2676
    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v9, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$w2aPgVKY5ZkiKKZQUVsj6t4Bn4c;

    invoke-direct {v9, p0, v3, v7, p4}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$w2aPgVKY5ZkiKKZQUVsj6t4Bn4c;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/BasePermission;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 2673
    add-int/lit8 v6, v6, 0x1

    goto :goto_80

    .line 2708
    :cond_91
    or-int/lit8 p3, p3, 0x1

    .line 2709
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_11

    .line 2713
    :cond_98
    if-nez v2, :cond_a7

    .line 2714
    new-instance v2, Landroid/util/ArraySet;

    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    invoke-direct {v2, v4}, Landroid/util/ArraySet;-><init>(I)V

    .line 2716
    :cond_a7
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2717
    goto/16 :goto_11

    .line 2718
    :cond_ac
    monitor-exit v0
    :try_end_ad
    .catchall {:try_start_4 .. :try_end_ad} :catchall_116

    .line 2719
    if-eqz v2, :cond_115

    .line 2720
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_115

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/permission/BasePermission;

    .line 2721
    iget-object p4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 2722
    invoke-virtual {p2}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object p4

    .line 2723
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2724
    if-eqz p4, :cond_e1

    :try_start_ce
    iget-object v1, p4, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-eqz v1, :cond_e1

    .line 2725
    iget-object p4, p4, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast p4, Lcom/android/server/pm/PackageSetting;

    .line 2726
    invoke-virtual {p2}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageSetting()Lcom/android/server/pm/PackageSettingBase;

    move-result-object v1

    if-nez v1, :cond_df

    .line 2727
    invoke-virtual {p2, p4}, Lcom/android/server/pm/permission/BasePermission;->setSourcePackageSetting(Lcom/android/server/pm/PackageSettingBase;)V

    .line 2729
    :cond_df
    monitor-exit v0

    goto :goto_b3

    .line 2731
    :cond_e1
    const-string p4, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing dangling permission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2732
    invoke-virtual {p2}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2731
    invoke-static {p4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2733
    iget-object p4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {p2}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Lcom/android/server/pm/permission/PermissionSettings;->removePermissionLocked(Ljava/lang/String;)V

    .line 2734
    monitor-exit v0

    .line 2735
    goto :goto_b3

    .line 2734
    :catchall_112
    move-exception p1

    monitor-exit v0
    :try_end_114
    .catchall {:try_start_ce .. :try_end_114} :catchall_112

    throw p1

    .line 2737
    :cond_115
    return p3

    .line 2718
    :catchall_116
    move-exception p1

    :try_start_117
    monitor-exit v0
    :try_end_118
    .catchall {:try_start_117 .. :try_end_118} :catchall_116

    throw p1
.end method

.method private updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Ljava/lang/String;ILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Collection<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;",
            ")V"
        }
    .end annotation

    .line 2601
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionTrees(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;I)I

    move-result p4

    .line 2605
    invoke-direct {p0, p1, p2, p4, p6}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)I

    move-result p4

    .line 2607
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2608
    :try_start_b
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mBackgroundPermissions:Landroid/util/ArrayMap;

    if-nez v1, :cond_5e

    .line 2611
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mBackgroundPermissions:Landroid/util/ArrayMap;

    .line 2612
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionSettings;->getAllPermissionsLocked()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/BasePermission;

    .line 2613
    iget-object v3, v2, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v3, :cond_5d

    iget-object v3, v2, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    if-eqz v3, :cond_5d

    iget-object v3, v2, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    if-eqz v3, :cond_5d

    .line 2615
    iget-object v3, v2, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    .line 2616
    iget-object v2, v2, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    .line 2618
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mBackgroundPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 2619
    if-nez v4, :cond_5a

    .line 2620
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2621
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mBackgroundPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2624
    :cond_5a
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2626
    :cond_5d
    goto :goto_20

    .line 2628
    :cond_5e
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_b .. :try_end_5f} :catchall_af

    .line 2630
    const-wide/32 v0, 0x40000

    const-string/jumbo v2, "restorePermissionState"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2633
    and-int/lit8 v2, p4, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_95

    .line 2634
    invoke-interface {p5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_72
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_95

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 2635
    if-eq v2, p2, :cond_94

    .line 2637
    invoke-static {v2}, Lcom/android/server/pm/permission/PermissionManagerService;->getVolumeUuidForPackage(Landroid/content/pm/PackageParser$Package;)Ljava/lang/String;

    move-result-object v5

    .line 2638
    and-int/lit8 v6, p4, 0x4

    if-eqz v6, :cond_90

    .line 2639
    invoke-static {p3, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_90

    move v5, v4

    goto :goto_91

    :cond_90
    move v5, v3

    .line 2640
    :goto_91
    invoke-direct {p0, v2, v5, p1, p6}, Lcom/android/server/pm/permission/PermissionManagerService;->restorePermissionState(Landroid/content/pm/PackageParser$Package;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 2642
    :cond_94
    goto :goto_72

    .line 2645
    :cond_95
    if-eqz p2, :cond_ab

    .line 2647
    invoke-static {p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getVolumeUuidForPackage(Landroid/content/pm/PackageParser$Package;)Ljava/lang/String;

    move-result-object p5

    .line 2648
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_a7

    .line 2649
    invoke-static {p3, p5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a7

    move v3, v4

    goto :goto_a8

    :cond_a7
    nop

    .line 2650
    :goto_a8
    invoke-direct {p0, p2, v3, p1, p6}, Lcom/android/server/pm/permission/PermissionManagerService;->restorePermissionState(Landroid/content/pm/PackageParser$Package;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 2652
    :cond_ab
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2653
    return-void

    .line 2628
    :catchall_af
    move-exception p1

    :try_start_b0
    monitor-exit v0
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_af

    throw p1
.end method

.method private updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            "Z",
            "Ljava/util/Collection<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;",
            ")V"
        }
    .end annotation

    .line 2567
    const/4 v0, 0x0

    if-eqz p2, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    move v1, v0

    .line 2568
    :goto_6
    if-eqz p3, :cond_9

    const/4 v0, 0x2

    :cond_9
    or-int p3, v1, v0

    .line 2569
    nop

    .line 2570
    invoke-static {p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getVolumeUuidForPackage(Landroid/content/pm/PackageParser$Package;)Ljava/lang/String;

    move-result-object v5

    .line 2569
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Ljava/lang/String;ILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 2571
    if-eqz p2, :cond_40

    iget-object p1, p2, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz p1, :cond_40

    .line 2572
    iget-object p1, p2, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_25
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_40

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Landroid/content/pm/PackageParser$Package;

    .line 2573
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 2574
    invoke-static {v4}, Lcom/android/server/pm/permission/PermissionManagerService;->getVolumeUuidForPackage(Landroid/content/pm/PackageParser$Package;)Ljava/lang/String;

    move-result-object v5

    .line 2573
    move-object v2, p0

    move v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Ljava/lang/String;ILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 2575
    goto :goto_25

    .line 2577
    :cond_40
    return-void
.end method


# virtual methods
.method public getBackgroundPermissions()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 3025
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mBackgroundPermissions:Landroid/util/ArrayMap;

    return-object v0
.end method

.method getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;
    .registers 4

    .line 291
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 292
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 293
    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public synthetic lambda$restoreDelayedRuntimePermissions$0$PermissionManagerService(Landroid/os/UserHandle;Ljava/lang/Boolean;)V
    .registers 5

    .line 435
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 436
    return-void

    .line 439
    :cond_7
    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 440
    :try_start_a
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 441
    monitor-exit p2

    .line 442
    return-void

    .line 441
    :catchall_16
    move-exception p1

    monitor-exit p2
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_16

    throw p1
.end method

.method public synthetic lambda$updatePermissions$1$PermissionManagerService(Lcom/android/server/pm/permission/BasePermission;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;Landroid/content/pm/PackageParser$Package;)V
    .registers 11

    .line 2677
    iget-object p4, p4, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 2678
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 2679
    const/16 v1, 0x3e8

    const/4 v2, 0x0

    invoke-virtual {v0, p4, v2, v1, v2}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(Ljava/lang/String;III)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2681
    if-eqz v0, :cond_14

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x17

    if-ge v0, v2, :cond_14

    .line 2683
    return-void

    .line 2686
    :cond_14
    invoke-virtual {p1}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object p1

    .line 2687
    invoke-direct {p0, p1, p4, v1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_47

    .line 2690
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move v4, p2

    move-object v5, p3

    :try_start_24
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    :try_end_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_27} :catch_28

    .line 2703
    goto :goto_47

    .line 2696
    :catch_28
    move-exception p2

    .line 2697
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to revoke "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "PackageManager"

    invoke-static {p3, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2705
    :cond_47
    :goto_47
    return-void
.end method
