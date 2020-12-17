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

    .line 137
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/permission/PermissionManagerService;->BACKUP_TIMEOUT_MILLIS:J

    .line 142
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->EMPTY_INT_ARRAY:[I

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    .line 160
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .registers 13
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "externalLock"  # Ljava/lang/Object;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 222
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;

    .line 232
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    .line 233
    iput-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    .line 234
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 235
    const-class v0, Landroid/os/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    .line 236
    new-instance v0, Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/android/server/pm/permission/PermissionSettings;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    .line 238
    new-instance v0, Lcom/android/server/ServiceThread;

    const/4 v1, 0x1

    const-string v2, "PackageManager"

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3, v1}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 240
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 241
    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandler:Landroid/os/Handler;

    .line 242
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;)V

    .line 244
    new-instance v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 245
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p1, v2, p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/pm/permission/PermissionManagerService;)V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    .line 246
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    .line 247
    .local v0, "systemConfig":Lcom/android/server/SystemConfig;
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getSystemPermissions()Landroid/util/SparseArray;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSystemPermissions:Landroid/util/SparseArray;

    .line 248
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getGlobalGids()[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mGlobalGids:[I

    .line 252
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/SystemConfig;->getPermissions()Landroid/util/ArrayMap;

    move-result-object v2

    .line 253
    .local v2, "permConfig":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/SystemConfig$PermissionEntry;>;"
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 254
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_89
    :try_start_89
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_be

    .line 255
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/SystemConfig$PermissionEntry;

    .line 256
    .local v5, "perm":Lcom/android/server/SystemConfig$PermissionEntry;
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v7, v5, Lcom/android/server/SystemConfig$PermissionEntry;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v6

    .line 257
    .local v6, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v6, :cond_b0

    .line 258
    new-instance v7, Lcom/android/server/pm/permission/BasePermission;

    iget-object v8, v5, Lcom/android/server/SystemConfig$PermissionEntry;->name:Ljava/lang/String;

    const-string v9, "android"

    invoke-direct {v7, v8, v9, v1}, Lcom/android/server/pm/permission/BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v6, v7

    .line 259
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v8, v5, Lcom/android/server/SystemConfig$PermissionEntry;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v6}, Lcom/android/server/pm/permission/PermissionSettings;->putPermissionLocked(Ljava/lang/String;Lcom/android/server/pm/permission/BasePermission;)V

    .line 261
    :cond_b0
    iget-object v7, v5, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    if-eqz v7, :cond_bb

    .line 262
    iget-object v7, v5, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    iget-boolean v8, v5, Lcom/android/server/SystemConfig$PermissionEntry;->perUser:Z

    invoke-virtual {v6, v7, v8}, Lcom/android/server/pm/permission/BasePermission;->setGids([IZ)V

    .line 254
    .end local v5  # "perm":Lcom/android/server/SystemConfig$PermissionEntry;
    .end local v6  # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_bb
    add-int/lit8 v4, v4, 0x1

    goto :goto_89

    .line 265
    .end local v4  # "i":I
    :cond_be
    monitor-exit v3
    :try_end_bf
    .catchall {:try_start_89 .. :try_end_bf} :catchall_d0

    .line 267
    new-instance v1, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/PermissionManagerService$1;)V

    .line 269
    .local v1, "localService":Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;
    const-class v3, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v3, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 270
    const-class v3, Landroid/permission/PermissionManagerInternal;

    invoke-static {v3, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 271
    return-void

    .line 265
    .end local v1  # "localService":Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;
    :catchall_d0
    move-exception v1

    :try_start_d1
    monitor-exit v3
    :try_end_d2
    .catchall {:try_start_d1 .. :try_end_d2} :catchall_d0

    throw v1
.end method

.method static synthetic access$100(Lcom/android/server/pm/permission/PermissionManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 125
    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->systemReady()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;[I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 6
    .param p0, "x0"  # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"  # Landroid/content/pm/PackageParser$Package;
    .param p2, "x2"  # [I
    .param p3, "x3"  # [Ljava/lang/String;
    .param p4, "x4"  # I
    .param p5, "x5"  # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 125
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRequestedRuntimePermissions(Landroid/content/pm/PackageParser$Package;[I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;II)Ljava/util/List;
    .registers 5
    .param p0, "x0"  # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"  # Landroid/content/pm/PackageParser$Package;
    .param p2, "x2"  # I
    .param p3, "x3"  # I

    .line 125
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->getWhitelistedRestrictedPermissions(Landroid/content/pm/PackageParser$Package;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;[ILjava/util/List;IILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 7
    .param p0, "x0"  # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"  # Landroid/content/pm/PackageParser$Package;
    .param p2, "x2"  # [I
    .param p3, "x3"  # Ljava/util/List;
    .param p4, "x4"  # I
    .param p5, "x5"  # I
    .param p6, "x6"  # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 125
    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/permission/PermissionManagerService;->setWhitelistedRestrictedPermissions(Landroid/content/pm/PackageParser$Package;[ILjava/util/List;IILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"  # Landroid/content/pm/PackageParser$Package;
    .param p2, "x2"  # I
    .param p3, "x3"  # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 125
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRuntimePermissionsGrantedToDisabledPackageLocked(Landroid/content/pm/PackageParser$Package;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;ZILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 6
    .param p0, "x0"  # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # Ljava/lang/String;
    .param p3, "x3"  # Z
    .param p4, "x4"  # I
    .param p5, "x5"  # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 125
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 6
    .param p0, "x0"  # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # Landroid/content/pm/PackageParser$Package;
    .param p3, "x3"  # Z
    .param p4, "x4"  # Ljava/util/Collection;
    .param p5, "x5"  # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 125
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 5
    .param p0, "x0"  # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # Z
    .param p3, "x3"  # Ljava/util/Collection;
    .param p4, "x4"  # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 125
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->updateAllPermissions(Ljava/lang/String;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p0, "x0"  # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 125
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;II)I
    .registers 6
    .param p0, "x0"  # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # Ljava/lang/String;
    .param p3, "x3"  # I
    .param p4, "x4"  # I

    .line 125
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 9
    .param p0, "x0"  # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # Ljava/lang/String;
    .param p3, "x3"  # I
    .param p4, "x4"  # I
    .param p5, "x5"  # I
    .param p6, "x6"  # I
    .param p7, "x7"  # Z
    .param p8, "x8"  # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 125
    invoke-direct/range {p0 .. p8}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;I)Z
    .registers 4
    .param p0, "x0"  # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"  # Landroid/content/pm/PackageParser$Package;
    .param p2, "x2"  # I

    .line 125
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->isPermissionsReviewRequired(Landroid/content/pm/PackageParser$Package;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/pm/permission/PermissionManagerService;IIIILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)Z
    .registers 8
    .param p0, "x0"  # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"  # I
    .param p2, "x2"  # I
    .param p3, "x3"  # I
    .param p4, "x4"  # I
    .param p5, "x5"  # Ljava/util/Collection;
    .param p6, "x6"  # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 125
    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionFlagsForAllApps(IIIILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/pm/permission/PermissionManagerService;IIZZZLjava/lang/String;)V
    .registers 7
    .param p0, "x0"  # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"  # I
    .param p2, "x2"  # I
    .param p3, "x3"  # Z
    .param p4, "x4"  # Z
    .param p5, "x5"  # Z
    .param p6, "x6"  # Ljava/lang/String;

    .line 125
    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 125
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;II)I
    .registers 6
    .param p0, "x0"  # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # Ljava/lang/String;
    .param p3, "x3"  # I
    .param p4, "x4"  # I

    .line 125
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Landroid/content/pm/PackageParser$Package;II)I
    .registers 6
    .param p0, "x0"  # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # Landroid/content/pm/PackageParser$Package;
    .param p3, "x3"  # I
    .param p4, "x4"  # I

    .line 125
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->checkUidPermission(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;II)Landroid/content/pm/PermissionGroupInfo;
    .registers 5
    .param p0, "x0"  # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # I
    .param p3, "x3"  # I

    .line 125
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionGroupInfo(Ljava/lang/String;II)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/pm/permission/PermissionManagerService;II)Ljava/util/List;
    .registers 4
    .param p0, "x0"  # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"  # I
    .param p2, "x2"  # I

    .line 125
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getAllPermissionGroups(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;II)Landroid/content/pm/PermissionInfo;
    .registers 6
    .param p0, "x0"  # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # Ljava/lang/String;
    .param p3, "x3"  # I
    .param p4, "x4"  # I

    .line 125
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionInfo(Ljava/lang/String;Ljava/lang/String;II)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;II)Ljava/util/List;
    .registers 5
    .param p0, "x0"  # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # I
    .param p3, "x3"  # I

    .line 125
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionInfoByGroup(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionSettings;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 125
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;Ljava/util/ArrayList;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 5
    .param p0, "x0"  # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"  # Landroid/content/pm/PackageParser$Package;
    .param p2, "x2"  # Landroid/content/pm/PackageParser$Package;
    .param p3, "x3"  # Ljava/util/ArrayList;
    .param p4, "x4"  # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 125
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermissionsIfGroupChanged(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;Ljava/util/ArrayList;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 125
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/pm/permission/PermissionManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/permission/PermissionManagerService;

    .line 125
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/os/UserHandle;)[B
    .registers 3
    .param p0, "x0"  # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"  # Landroid/os/UserHandle;

    .line 125
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->backupRuntimePermissions(Landroid/os/UserHandle;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/pm/permission/PermissionManagerService;[BLandroid/os/UserHandle;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"  # [B
    .param p2, "x2"  # Landroid/os/UserHandle;

    .line 125
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->restoreRuntimePermissions([BLandroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # Landroid/os/UserHandle;

    .line 125
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->restoreDelayedRuntimePermissions(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"  # Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;

    .line 125
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->addOnRuntimePermissionStateChangedListener(Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"  # Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;

    .line 125
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->removeOnRuntimePermissionStateChangedListener(Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;Z)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"  # Landroid/content/pm/PackageParser$Package;
    .param p2, "x2"  # Z

    .line 125
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->addAllPermissions(Landroid/content/pm/PackageParser$Package;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;Z)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"  # Landroid/content/pm/PackageParser$Package;
    .param p2, "x2"  # Z

    .line 125
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->addAllPermissionGroups(Landroid/content/pm/PackageParser$Package;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;Z)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"  # Landroid/content/pm/PackageParser$Package;
    .param p2, "x2"  # Z

    .line 125
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->removeAllPermissions(Landroid/content/pm/PackageParser$Package;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PermissionInfo;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)Z
    .registers 5
    .param p0, "x0"  # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"  # Landroid/content/pm/PermissionInfo;
    .param p2, "x2"  # I
    .param p3, "x3"  # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 125
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->addDynamicPermission(Landroid/content/pm/PermissionInfo;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # I
    .param p3, "x3"  # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 125
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->removeDynamicPermission(Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 7
    .param p0, "x0"  # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # Ljava/lang/String;
    .param p3, "x3"  # Z
    .param p4, "x4"  # I
    .param p5, "x5"  # I
    .param p6, "x6"  # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 125
    invoke-direct/range {p0 .. p6}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    return-void
.end method

.method private addAllPermissionGroups(Landroid/content/pm/PackageParser$Package;Z)V
    .registers 15
    .param p1, "pkg"  # Landroid/content/pm/PackageParser$Package;
    .param p2, "chatty"  # Z

    .line 717
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 718
    .local v0, "N":I
    const/4 v1, 0x0

    .line 719
    .local v1, "r":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    const-string v3, "PackageManager"

    if-ge v2, v0, :cond_b9

    .line 720
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$PermissionGroup;

    .line 721
    .local v4, "pg":Landroid/content/pm/PackageParser$PermissionGroup;
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v5, v5, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    iget-object v6, v4, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$PermissionGroup;

    .line 722
    .local v5, "cur":Landroid/content/pm/PackageParser$PermissionGroup;
    if-nez v5, :cond_26

    const/4 v6, 0x0

    goto :goto_2a

    :cond_26
    iget-object v6, v5, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    .line 723
    .local v6, "curPackageName":Ljava/lang/String;
    :goto_2a
    iget-object v7, v4, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v7, v7, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 724
    .local v7, "isPackageUpdate":Z
    const/16 v8, 0x100

    const/16 v9, 0x20

    if-eqz v5, :cond_8a

    if-eqz v7, :cond_3b

    goto :goto_8a

    .line 738
    :cond_3b
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission group "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v4, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v11, v11, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " from package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v4, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v11, v11, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " ignored: original from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v5, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v11, v11, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    if-eqz p2, :cond_b5

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v3, :cond_b5

    .line 742
    if-nez v1, :cond_7a

    .line 743
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v3

    goto :goto_7d

    .line 745
    :cond_7a
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 747
    :goto_7d
    const-string v3, "DUP:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    iget-object v3, v4, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b5

    .line 725
    :cond_8a
    :goto_8a
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v3, v3, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    iget-object v10, v4, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v10, v10, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v10, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    if-eqz p2, :cond_b5

    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v3, :cond_b5

    .line 727
    if-nez v1, :cond_a4

    .line 728
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v3

    goto :goto_a7

    .line 730
    :cond_a4
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 732
    :goto_a7
    if-eqz v7, :cond_ae

    .line 733
    const-string v3, "UPD:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    :cond_ae
    iget-object v3, v4, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    .end local v4  # "pg":Landroid/content/pm/PackageParser$PermissionGroup;
    .end local v5  # "cur":Landroid/content/pm/PackageParser$PermissionGroup;
    .end local v6  # "curPackageName":Ljava/lang/String;
    .end local v7  # "isPackageUpdate":Z
    :cond_b5
    :goto_b5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    .line 752
    .end local v2  # "i":I
    :cond_b9
    if-eqz v1, :cond_d3

    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    if-eqz v2, :cond_d3

    .line 753
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Permission Groups: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :cond_d3
    return-void
.end method

.method private addAllPermissions(Landroid/content/pm/PackageParser$Package;Z)V
    .registers 10
    .param p1, "pkg"  # Landroid/content/pm/PackageParser$Package;
    .param p2, "chatty"  # Z

    .line 679
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 680
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_bd

    .line 681
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Permission;

    .line 684
    .local v2, "p":Landroid/content/pm/PackageParser$Permission;
    iget-object v3, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v4, v3, Landroid/content/pm/PermissionInfo;->flags:I

    const v5, -0x40000001  # -1.9999999f

    and-int/2addr v4, v5

    iput v4, v3, Landroid/content/pm/PermissionInfo;->flags:I

    .line 686
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 691
    :try_start_1e
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0x16

    if-le v4, v5, :cond_76

    .line 692
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    iget-object v5, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$PermissionGroup;

    iput-object v4, v2, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    .line 694
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v4, :cond_76

    iget-object v4, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v4, :cond_76

    iget-object v4, v2, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    if-nez v4, :cond_76

    .line 696
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " in an unknown group "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    :cond_76
    iget-boolean v4, v2, Landroid/content/pm/PackageParser$Permission;->tree:Z

    if-eqz v4, :cond_98

    .line 702
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v5, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 703
    invoke-virtual {v4, v5}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionTreeLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    .line 704
    invoke-virtual {v5}, Lcom/android/server/pm/permission/PermissionSettings;->getAllPermissionTreesLocked()Ljava/util/Collection;

    move-result-object v5

    .line 702
    invoke-static {v4, v2, p1, v5, p2}, Lcom/android/server/pm/permission/BasePermission;->createOrUpdate(Lcom/android/server/pm/permission/BasePermission;Landroid/content/pm/PackageParser$Permission;Landroid/content/pm/PackageParser$Package;Ljava/util/Collection;Z)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    .line 705
    .local v4, "bp":Lcom/android/server/pm/permission/BasePermission;
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v6, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Lcom/android/server/pm/permission/PermissionSettings;->putPermissionTreeLocked(Ljava/lang/String;Lcom/android/server/pm/permission/BasePermission;)V

    .line 706
    .end local v4  # "bp":Lcom/android/server/pm/permission/BasePermission;
    goto :goto_b5

    .line 707
    :cond_98
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v5, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 708
    invoke-virtual {v4, v5}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    .line 709
    invoke-virtual {v5}, Lcom/android/server/pm/permission/PermissionSettings;->getAllPermissionTreesLocked()Ljava/util/Collection;

    move-result-object v5

    .line 707
    invoke-static {v4, v2, p1, v5, p2}, Lcom/android/server/pm/permission/BasePermission;->createOrUpdate(Lcom/android/server/pm/permission/BasePermission;Landroid/content/pm/PackageParser$Permission;Landroid/content/pm/PackageParser$Package;Ljava/util/Collection;Z)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    .line 710
    .restart local v4  # "bp":Lcom/android/server/pm/permission/BasePermission;
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v6, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Lcom/android/server/pm/permission/PermissionSettings;->putPermissionLocked(Ljava/lang/String;Lcom/android/server/pm/permission/BasePermission;)V

    .line 712
    .end local v4  # "bp":Lcom/android/server/pm/permission/BasePermission;
    :goto_b5
    monitor-exit v3

    .line 680
    .end local v2  # "p":Landroid/content/pm/PackageParser$Permission;
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_7

    .line 712
    .restart local v2  # "p":Landroid/content/pm/PackageParser$Permission;
    :catchall_ba
    move-exception v4

    monitor-exit v3
    :try_end_bc
    .catchall {:try_start_1e .. :try_end_bc} :catchall_ba

    throw v4

    .line 714
    .end local v1  # "i":I
    .end local v2  # "p":Landroid/content/pm/PackageParser$Permission;
    :cond_bd
    return-void
.end method

.method private addDynamicPermission(Landroid/content/pm/PermissionInfo;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)Z
    .registers 13
    .param p1, "info"  # Landroid/content/pm/PermissionInfo;
    .param p2, "callingUid"  # I
    .param p3, "callback"  # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 813
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_82

    .line 816
    iget v0, p1, Landroid/content/pm/PermissionInfo;->labelRes:I

    if-nez v0, :cond_19

    iget-object v0, p1, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_11

    goto :goto_19

    .line 817
    :cond_11
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Label must be specified in permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 819
    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/android/server/pm/permission/PermissionSettings;->enforcePermissionTree(Ljava/lang/String;I)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v0

    .line 822
    .local v0, "tree":Lcom/android/server/pm/permission/BasePermission;
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 823
    :try_start_24
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v3, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v2

    .line 824
    .local v2, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v2, :cond_30

    const/4 v3, 0x1

    goto :goto_31

    :cond_30
    const/4 v3, 0x0

    .line 825
    .local v3, "added":Z
    :goto_31
    iget v4, p1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-static {v4}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    move-result v4

    .line 826
    .local v4, "fixedLevel":I
    if-eqz v3, :cond_4a

    .line 827
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->enforcePermissionCapLocked(Landroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/BasePermission;)V

    .line 828
    new-instance v5, Lcom/android/server/pm/permission/BasePermission;

    iget-object v6, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-direct {v5, v6, v7, v8}, Lcom/android/server/pm/permission/BasePermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v2, v5

    goto :goto_50

    .line 830
    :cond_4a
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->isDynamic()Z

    move-result v5

    if-eqz v5, :cond_66

    .line 834
    :goto_50
    invoke-virtual {v2, v4, p1, v0}, Lcom/android/server/pm/permission/BasePermission;->addToTree(ILandroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/BasePermission;)Z

    move-result v5

    .line 835
    .local v5, "changed":Z
    if-eqz v3, :cond_5d

    .line 836
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v7, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7, v2}, Lcom/android/server/pm/permission/PermissionSettings;->putPermissionLocked(Ljava/lang/String;Lcom/android/server/pm/permission/BasePermission;)V

    .line 838
    .end local v2  # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v4  # "fixedLevel":I
    :cond_5d
    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_24 .. :try_end_5e} :catchall_7f

    .line 839
    if-eqz v5, :cond_65

    if-eqz p3, :cond_65

    .line 840
    invoke-virtual {p3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onPermissionChanged()V

    .line 842
    :cond_65
    return v3

    .line 831
    .end local v5  # "changed":Z
    .restart local v2  # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v4  # "fixedLevel":I
    :cond_66
    :try_start_66
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not allowed to modify non-dynamic permission "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0  # "tree":Lcom/android/server/pm/permission/BasePermission;
    .end local p0  # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .end local p1  # "info":Landroid/content/pm/PermissionInfo;
    .end local p2  # "callingUid":I
    .end local p3  # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;
    throw v5

    .line 838
    .end local v2  # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v3  # "added":Z
    .end local v4  # "fixedLevel":I
    .restart local v0  # "tree":Lcom/android/server/pm/permission/BasePermission;
    .restart local p0  # "this":Lcom/android/server/pm/permission/PermissionManagerService;
    .restart local p1  # "info":Landroid/content/pm/PermissionInfo;
    .restart local p2  # "callingUid":I
    .restart local p3  # "callback":Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;
    :catchall_7f
    move-exception v2

    monitor-exit v1
    :try_end_81
    .catchall {:try_start_66 .. :try_end_81} :catchall_7f

    throw v2

    .line 814
    .end local v0  # "tree":Lcom/android/server/pm/permission/BasePermission;
    :cond_82
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Instant apps can\'t add permissions"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private addOnRuntimePermissionStateChangedListener(Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V
    .registers 4
    .param p1, "listener"  # Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;

    .line 457
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 458
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    monitor-exit v0

    .line 460
    return-void

    .line 459
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private adjustPermissionProtectionFlagsLocked(ILjava/lang/String;I)I
    .registers 9
    .param p1, "protectionLevel"  # I
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "uid"  # I

    .line 569
    and-int/lit8 v0, p1, 0x3

    .line 573
    .local v0, "protectionLevelMasked":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 574
    return p1

    .line 577
    :cond_6
    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 578
    .local v1, "appId":I
    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_36

    if-eqz v1, :cond_36

    const/16 v2, 0x7d0

    if-ne v1, v2, :cond_15

    goto :goto_36

    .line 583
    :cond_15
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    .line 584
    .local v2, "pkg":Landroid/content/pm/PackageParser$Package;
    if-nez v2, :cond_1e

    .line 585
    return p1

    .line 587
    :cond_1e
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1a

    if-ge v3, v4, :cond_27

    .line 588
    return v0

    .line 591
    :cond_27
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 592
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v3, :cond_2e

    .line 593
    return p1

    .line 595
    :cond_2e
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v4

    if-eq v4, v1, :cond_35

    .line 596
    return p1

    .line 598
    :cond_35
    return p1

    .line 580
    .end local v2  # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v3  # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_36
    :goto_36
    return p1
.end method

.method private backupRuntimePermissions(Landroid/os/UserHandle;)[B
    .registers 6
    .param p1, "user"  # Landroid/os/UserHandle;

    .line 397
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 398
    .local v0, "backup":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<[B>;"
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/pm/permission/-$$Lambda$js2BSmz1ucAEj8fgl3jw5trxIjw;

    invoke-direct {v3, v0}, Lcom/android/server/pm/permission/-$$Lambda$js2BSmz1ucAEj8fgl3jw5trxIjw;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v1, p1, v2, v3}, Landroid/permission/PermissionControllerManager;->getRuntimePermissionBackup(Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Landroid/permission/PermissionControllerManager$OnGetRuntimePermissionBackupCallback;)V

    .line 402
    :try_start_18
    sget-wide v1, Lcom/android/server/pm/permission/PermissionManagerService;->BACKUP_TIMEOUT_MILLIS:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_22} :catch_23
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_18 .. :try_end_22} :catch_23
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_18 .. :try_end_22} :catch_23

    return-object v1

    .line 403
    :catch_23
    move-exception v1

    .line 404
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot create permission backup for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 405
    const/4 v2, 0x0

    return-object v2
.end method

.method private calculateCurrentPermissionFootprintLocked(Lcom/android/server/pm/permission/BasePermission;)I
    .registers 6
    .param p1, "tree"  # Lcom/android/server/pm/permission/BasePermission;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSettings.mLock",
            "mLock"
        }
    .end annotation

    .line 2988
    const/4 v0, 0x0

    .line 2989
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v1, v1, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/BasePermission;

    .line 2990
    .local v2, "perm":Lcom/android/server/pm/permission/BasePermission;
    invoke-virtual {p1, v2}, Lcom/android/server/pm/permission/BasePermission;->calculateFootprint(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v3

    add-int/2addr v0, v3

    .line 2991
    .end local v2  # "perm":Lcom/android/server/pm/permission/BasePermission;
    goto :goto_d

    .line 2992
    :cond_1f
    return v0
.end method

.method private static canGrantOemPermission(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Z
    .registers 6
    .param p0, "ps"  # Lcom/android/server/pm/PackageSetting;
    .param p1, "permission"  # Ljava/lang/String;

    .line 1954
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->isOem()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1955
    return v1

    .line 1959
    :cond_8
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemConfig;->getOemPermissions(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1960
    .local v0, "granted":Ljava/lang/Boolean;
    if-eqz v0, :cond_20

    .line 1964
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v2, v0, :cond_1f

    const/4 v1, 0x1

    :cond_1f
    return v1

    .line 1961
    :cond_20
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OEM permission"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " requested by package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " must be explicitly declared granted or not"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkIfLegacyStorageOpsNeedToBeUpdated(Landroid/content/pm/PackageParser$Package;Z[I)[I
    .registers 6
    .param p1, "pkg"  # Landroid/content/pm/PackageParser$Package;
    .param p2, "replace"  # Z
    .param p3, "updatedUserIds"  # [I

    .line 1548
    if-eqz p2, :cond_27

    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->hasRequestedLegacyExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 1549
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    .line 1550
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1551
    :cond_1e
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    return-object v0

    .line 1554
    :cond_27
    return-object p3
.end method

.method private checkPermission(Ljava/lang/String;Ljava/lang/String;II)I
    .registers 14
    .param p1, "permName"  # Ljava/lang/String;
    .param p2, "pkgName"  # Ljava/lang/String;
    .param p3, "callingUid"  # I
    .param p4, "userId"  # I

    .line 300
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, p4}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_a

    .line 301
    return v1

    .line 304
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 305
    .local v0, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_54

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-eqz v2, :cond_54

    .line 306
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, v0, p3, p4}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Landroid/content/pm/PackageParser$Package;II)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 307
    return v1

    .line 309
    :cond_1f
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 310
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v2, p4}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v3

    .line 311
    .local v3, "instantApp":Z
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v4

    .line 312
    .local v4, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v4, p1, p4}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_4d

    .line 313
    if-eqz v3, :cond_4c

    .line 314
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 315
    :try_start_37
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v7, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v7

    .line 316
    .local v7, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v7, :cond_47

    invoke-virtual {v7}, Lcom/android/server/pm/permission/BasePermission;->isInstant()Z

    move-result v8

    if-eqz v8, :cond_47

    .line 317
    monitor-exit v5

    return v6

    .line 319
    .end local v7  # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_47
    monitor-exit v5

    goto :goto_4d

    :catchall_49
    move-exception v1

    monitor-exit v5
    :try_end_4b
    .catchall {:try_start_37 .. :try_end_4b} :catchall_49

    throw v1

    .line 321
    :cond_4c
    return v6

    .line 324
    :cond_4d
    :goto_4d
    invoke-static {v4, p1, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->isImpliedPermissionGranted(Lcom/android/server/pm/permission/PermissionsState;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 325
    return v6

    .line 329
    .end local v2  # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v3  # "instantApp":Z
    .end local v4  # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    :cond_54
    return v1
.end method

.method private checkUidPermission(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;II)I
    .registers 13
    .param p1, "permName"  # Ljava/lang/String;
    .param p2, "pkg"  # Landroid/content/pm/PackageParser$Package;
    .param p3, "uid"  # I
    .param p4, "callingUid"  # I

    .line 334
    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 335
    .local v0, "callingUserId":I
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 336
    invoke-virtual {v1, p4}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_10

    move v1, v2

    goto :goto_11

    :cond_10
    move v1, v3

    .line 337
    .local v1, "isCallerInstantApp":Z
    :goto_11
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 338
    invoke-virtual {v4, p3}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1a

    goto :goto_1b

    :cond_1a
    move v2, v3

    .line 340
    .local v2, "isUidInstantApp":Z
    :goto_1b
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->isMultiOpenUserId(I)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 341
    move v4, p3

    .line 342
    .local v4, "oldUid":I
    invoke-static {p3}, Landroid/os/UserHandle;->convertMultiOpenUid(I)I

    move-result p3

    .line 345
    .end local v4  # "oldUid":I
    :cond_2a
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 346
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v5, v4}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v5

    const/4 v6, -0x1

    if-nez v5, :cond_38

    .line 347
    return v6

    .line 350
    :cond_38
    if-eqz p2, :cond_6c

    .line 351
    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    if-eqz v5, :cond_41

    .line 352
    if-eqz v1, :cond_4a

    .line 353
    return v6

    .line 355
    :cond_41
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v5, p2, p4, v0}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Landroid/content/pm/PackageParser$Package;II)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 356
    return v6

    .line 358
    :cond_4a
    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 359
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v5

    .line 360
    .local v5, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v5, p1, v4}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_64

    .line 361
    if-eqz v2, :cond_63

    .line 362
    iget-object v7, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v7, p1}, Lcom/android/server/pm/permission/PermissionSettings;->isPermissionInstant(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_64

    .line 363
    return v3

    .line 366
    :cond_63
    return v3

    .line 369
    :cond_64
    invoke-static {v5, p1, v4}, Lcom/android/server/pm/permission/PermissionManagerService;->isImpliedPermissionGranted(Lcom/android/server/pm/permission/PermissionsState;Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_6b

    .line 370
    return v3

    .line 372
    .end local v5  # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    :cond_6b
    goto :goto_92

    .line 373
    :cond_6c
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSystemPermissions:Landroid/util/SparseArray;

    invoke-virtual {v5, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 374
    .local v5, "perms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v5, :cond_92

    .line 375
    invoke-virtual {v5, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7d

    .line 376
    return v3

    .line 378
    :cond_7d
    sget-object v7, Lcom/android/server/pm/permission/PermissionManagerService;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_92

    sget-object v7, Lcom/android/server/pm/permission/PermissionManagerService;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    .line 379
    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_92

    .line 380
    return v3

    .line 384
    .end local v5  # "perms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_92
    :goto_92
    return v6
.end method

.method public static create(Landroid/content/Context;Ljava/lang/Object;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .registers 4
    .param p0, "context"  # Landroid/content/Context;
    .param p1, "externalLock"  # Ljava/lang/Object;

    .line 284
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 285
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 286
    .local v0, "permMgrInt":Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    if-eqz v0, :cond_b

    .line 287
    return-object v0

    .line 289
    :cond_b
    new-instance v1, Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 290
    const-class v1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    return-object v1
.end method

.method private doNotifyRuntimePermissionStateChanged(Ljava/lang/String;I)V
    .registers 7
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 479
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 480
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 481
    monitor-exit v0

    return-void

    .line 483
    :cond_d
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 484
    .local v1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;>;"
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_29

    .line 485
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 486
    .local v0, "listenerCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1a
    if-ge v2, v0, :cond_28

    .line 487
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;

    invoke-interface {v3, p1, p2}, Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;->onRuntimePermissionStateChanged(Ljava/lang/String;I)V

    .line 486
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 489
    .end local v2  # "i":I
    :cond_28
    return-void

    .line 484
    .end local v0  # "listenerCount":I
    .end local v1  # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;>;"
    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v1
.end method

.method private enforceCrossUserPermission(IIZZZLjava/lang/String;)V
    .registers 11
    .param p1, "callingUid"  # I
    .param p2, "userId"  # I
    .param p3, "requireFullPermission"  # Z
    .param p4, "checkShell"  # Z
    .param p5, "requirePermissionWhenSameUser"  # Z
    .param p6, "message"  # Ljava/lang/String;

    .line 2956
    if-ltz p2, :cond_3e

    .line 2959
    if-eqz p4, :cond_a

    .line 2960
    const-string/jumbo v0, "no_debugging_features"

    invoke-static {v0, p1, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->enforceShellRestriction(Ljava/lang/String;II)V

    .line 2963
    :cond_a
    if-nez p5, :cond_13

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne p2, v0, :cond_13

    return-void

    .line 2965
    :cond_13
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0, p2}, Landroid/os/UserHandle;->getCrossUserType(II)I

    move-result v0

    .line 2966
    .local v0, "crossUserType":I
    const/4 v1, 0x4

    if-ne v1, v0, :cond_1f

    .line 2967
    return-void

    .line 2970
    :cond_1f
    const/16 v1, 0x3e8

    if-eq p1, v1, :cond_3d

    if-eqz p1, :cond_3d

    .line 2971
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    if-eqz p3, :cond_2f

    .line 2972
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, p6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3d

    .line 2976
    :cond_2f
    :try_start_2f
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, p6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/SecurityException; {:try_start_2f .. :try_end_34} :catch_35

    .line 2981
    goto :goto_3d

    .line 2978
    :catch_35
    move-exception v1

    .line 2979
    .local v1, "se":Ljava/lang/SecurityException;
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v2, v3, p6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2984
    .end local v1  # "se":Ljava/lang/SecurityException;
    :cond_3d
    :goto_3d
    return-void

    .line 2957
    .end local v0  # "crossUserType":I
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceGrantRevokeGetRuntimePermissionPermissions(Ljava/lang/String;)V
    .registers 8
    .param p1, "message"  # Ljava/lang/String;

    .line 2934
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GET_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    .line 2936
    const-string v2, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    .line 2938
    const-string v3, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_47

    .line 2940
    :cond_1f
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " requires "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " or "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2945
    :cond_47
    :goto_47
    return-void
.end method

.method private enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V
    .registers 7
    .param p1, "message"  # Ljava/lang/String;

    .line 2923
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    .line 2925
    const-string v2, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    goto :goto_37

    .line 2927
    :cond_15
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " requires "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " or "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2931
    :cond_37
    :goto_37
    return-void
.end method

.method private enforcePermissionCapLocked(Landroid/content/pm/PermissionInfo;Lcom/android/server/pm/permission/BasePermission;)V
    .registers 6
    .param p1, "info"  # Landroid/content/pm/PermissionInfo;
    .param p2, "tree"  # Lcom/android/server/pm/permission/BasePermission;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSettings.mLock",
            "mLock"
        }
    .end annotation

    .line 2999
    invoke-virtual {p2}, Lcom/android/server/pm/permission/BasePermission;->getUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1f

    .line 3000
    invoke-direct {p0, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->calculateCurrentPermissionFootprintLocked(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v0

    .line 3001
    .local v0, "curTreeSize":I
    invoke-virtual {p1}, Landroid/content/pm/PermissionInfo;->calculateFootprint()I

    move-result v1

    add-int/2addr v1, v0

    const v2, 0x8000

    if-gt v1, v2, :cond_17

    goto :goto_1f

    .line 3002
    :cond_17
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Permission tree size cap exceeded"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3005
    .end local v0  # "curTreeSize":I
    :cond_1f
    :goto_1f
    return-void
.end method

.method private getAllPermissionGroups(II)Ljava/util/List;
    .registers 9
    .param p1, "flags"  # I
    .param p2, "callingUid"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    .line 515
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 516
    const/4 v0, 0x0

    return-object v0

    .line 518
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 519
    :try_start_d
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v1, v1, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 520
    .local v1, "N":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 522
    .local v2, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PermissionGroupInfo;>;"
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v3, v3, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$PermissionGroup;

    .line 523
    .local v4, "pg":Landroid/content/pm/PackageParser$PermissionGroup;
    invoke-static {v4, p1}, Landroid/content/pm/PackageParser;->generatePermissionGroupInfo(Landroid/content/pm/PackageParser$PermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    nop

    .end local v4  # "pg":Landroid/content/pm/PackageParser$PermissionGroup;
    goto :goto_26

    .line 525
    :cond_3b
    monitor-exit v0

    return-object v2

    .line 526
    .end local v1  # "N":I
    .end local v2  # "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PermissionGroupInfo;>;"
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_d .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method private getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .param p1, "permName"  # Ljava/lang/String;

    .line 2551
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 2552
    return-object v1

    .line 2554
    :cond_e
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2555
    :try_start_11
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionSettings;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 2556
    .local v2, "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v2, :cond_1f

    .line 2557
    monitor-exit v0

    return-object v1

    .line 2559
    :cond_1f
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 2560
    .end local v2  # "pkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_11 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method private getPermissionFlags(Ljava/lang/String;Ljava/lang/String;II)I
    .registers 14
    .param p1, "permName"  # Ljava/lang/String;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "callingUid"  # I
    .param p4, "userId"  # I

    .line 2565
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, p4}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 2566
    return v1

    .line 2569
    :cond_a
    const-string v0, "getPermissionFlags"

    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceGrantRevokeGetRuntimePermissionPermissions(Ljava/lang/String;)V

    .line 2571
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "getPermissionFlags"

    move-object v2, p0

    move v3, p3

    move v4, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    .line 2577
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 2578
    .local v0, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_4e

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-nez v2, :cond_27

    goto :goto_4e

    .line 2581
    :cond_27
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2582
    :try_start_2a
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v3

    if-nez v3, :cond_34

    .line 2583
    monitor-exit v2

    return v1

    .line 2585
    :cond_34
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_2a .. :try_end_35} :catchall_4b

    .line 2586
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v2, v0, p3, p4}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Landroid/content/pm/PackageParser$Package;II)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 2587
    return v1

    .line 2589
    :cond_3e
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 2590
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v2

    .line 2591
    .local v2, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v2, p1, p4}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v3

    return v3

    .line 2585
    .end local v1  # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v2  # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    :catchall_4b
    move-exception v1

    :try_start_4c
    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v1

    .line 2579
    :cond_4e
    :goto_4e
    return v1
.end method

.method private getPermissionGroupInfo(Ljava/lang/String;II)Landroid/content/pm/PermissionGroupInfo;
    .registers 6
    .param p1, "groupName"  # Ljava/lang/String;
    .param p2, "flags"  # I
    .param p3, "callingUid"  # I

    .line 505
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p3}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 506
    const/4 v0, 0x0

    return-object v0

    .line 508
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 509
    :try_start_d
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v1, v1, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    .line 510
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$PermissionGroup;

    .line 509
    invoke-static {v1, p2}, Landroid/content/pm/PackageParser;->generatePermissionGroupInfo(Landroid/content/pm/PackageParser$PermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 511
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method private getPermissionInfo(Ljava/lang/String;Ljava/lang/String;II)Landroid/content/pm/PermissionInfo;
    .registers 9
    .param p1, "permName"  # Ljava/lang/String;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "flags"  # I
    .param p4, "callingUid"  # I

    .line 531
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p4}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 532
    return-object v1

    .line 535
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 536
    :try_start_d
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v2

    .line 537
    .local v2, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v2, :cond_17

    .line 538
    monitor-exit v0

    return-object v1

    .line 540
    :cond_17
    nop

    .line 541
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getProtectionLevel()I

    move-result v1

    .line 540
    invoke-direct {p0, v1, p2, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->adjustPermissionProtectionFlagsLocked(ILjava/lang/String;I)I

    move-result v1

    .line 542
    .local v1, "adjustedProtectionLevel":I
    invoke-virtual {v2, v1, p3}, Lcom/android/server/pm/permission/BasePermission;->generatePermissionInfo(II)Landroid/content/pm/PermissionInfo;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 543
    .end local v1  # "adjustedProtectionLevel":I
    .end local v2  # "bp":Lcom/android/server/pm/permission/BasePermission;
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_d .. :try_end_28} :catchall_26

    throw v1
.end method

.method private getPermissionInfoByGroup(Ljava/lang/String;II)Ljava/util/List;
    .registers 9
    .param p1, "groupName"  # Ljava/lang/String;
    .param p2, "flags"  # I
    .param p3, "callingUid"  # I
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

    .line 548
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p3}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 549
    return-object v1

    .line 551
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 552
    if-eqz p1, :cond_1b

    :try_start_f
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionGroups:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 553
    monitor-exit v0

    return-object v1

    .line 555
    :cond_1b
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 556
    .local v1, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PermissionInfo;>;"
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/BasePermission;

    .line 557
    .local v3, "bp":Lcom/android/server/pm/permission/BasePermission;
    invoke-virtual {v3, p1, p2}, Lcom/android/server/pm/permission/BasePermission;->generatePermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v4

    .line 558
    .local v4, "pi":Landroid/content/pm/PermissionInfo;
    if-eqz v4, :cond_43

    .line 559
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    .end local v3  # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v4  # "pi":Landroid/content/pm/PermissionInfo;
    :cond_43
    goto :goto_2e

    .line 562
    :cond_44
    monitor-exit v0

    return-object v1

    .line 563
    .end local v1  # "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PermissionInfo;>;"
    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_f .. :try_end_48} :catchall_46

    throw v1
.end method

.method private static getVolumeUuidForPackage(Landroid/content/pm/PackageParser$Package;)Ljava/lang/String;
    .registers 2
    .param p0, "pkg"  # Landroid/content/pm/PackageParser$Package;

    .line 3021
    if-nez p0, :cond_5

    .line 3022
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object v0

    .line 3024
    :cond_5
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$Package;->isExternal()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3025
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->volumeUuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3026
    const-string/jumbo v0, "primary_physical"

    return-object v0

    .line 3028
    :cond_17
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->volumeUuid:Ljava/lang/String;

    return-object v0

    .line 3031
    :cond_1a
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    return-object v0
.end method

.method private getWhitelistedRestrictedPermissions(Landroid/content/pm/PackageParser$Package;II)Ljava/util/List;
    .registers 13
    .param p1, "pkg"  # Landroid/content/pm/PackageParser$Package;
    .param p2, "whitelistFlags"  # I
    .param p3, "userId"  # I
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

    .line 2039
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 2040
    .local v0, "packageSetting":Lcom/android/server/pm/PackageSetting;
    if-nez v0, :cond_8

    .line 2041
    const/4 v1, 0x0

    return-object v1

    .line 2044
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v1

    .line 2046
    .local v1, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    const/4 v2, 0x0

    .line 2047
    .local v2, "queryFlags":I
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_13

    .line 2048
    or-int/lit16 v2, v2, 0x1000

    .line 2050
    :cond_13
    and-int/lit8 v3, p2, 0x4

    if-eqz v3, :cond_19

    .line 2051
    or-int/lit16 v2, v2, 0x2000

    .line 2053
    :cond_19
    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_1f

    .line 2054
    or-int/lit16 v2, v2, 0x800

    .line 2057
    :cond_1f
    const/4 v3, 0x0

    .line 2059
    .local v3, "whitelistedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2060
    .local v4, "permissionCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_27
    if-ge v5, v4, :cond_47

    .line 2061
    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2062
    .local v6, "permissionName":Ljava/lang/String;
    invoke-virtual {v1, v6, p3}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v7

    .line 2063
    .local v7, "currentFlags":I
    and-int v8, v7, v2

    if-eqz v8, :cond_44

    .line 2064
    if-nez v3, :cond_41

    .line 2065
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v8

    .line 2067
    :cond_41
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2060
    .end local v6  # "permissionName":Ljava/lang/String;
    .end local v7  # "currentFlags":I
    :cond_44
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    .line 2071
    .end local v5  # "i":I
    :cond_47
    return-object v3
.end method

.method private grantRequestedRuntimePermissions(Landroid/content/pm/PackageParser$Package;[I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 15
    .param p1, "pkg"  # Landroid/content/pm/PackageParser$Package;
    .param p2, "userIds"  # [I
    .param p3, "grantedPermissions"  # [Ljava/lang/String;
    .param p4, "callingUid"  # I
    .param p5, "callback"  # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 2030
    array-length v0, p2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_12

    aget v8, p2, v1

    .line 2031
    .local v8, "userId":I
    move-object v2, p0

    move-object v3, p1

    move v4, v8

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRequestedRuntimePermissionsForUser(Landroid/content/pm/PackageParser$Package;I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 2030
    .end local v8  # "userId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2034
    :cond_12
    return-void
.end method

.method private grantRequestedRuntimePermissionsForUser(Landroid/content/pm/PackageParser$Package;I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 28
    .param p1, "pkg"  # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"  # I
    .param p3, "grantedPermissions"  # [Ljava/lang/String;
    .param p4, "callingUid"  # I
    .param p5, "callback"  # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 2086
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    move-object/from16 v13, p3

    iget-object v0, v11, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Lcom/android/server/pm/PackageSetting;

    .line 2087
    .local v14, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v14, :cond_10

    .line 2088
    return-void

    .line 2091
    :cond_10
    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v15

    .line 2093
    .local v15, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    const/16 v16, 0x14

    .line 2096
    .local v16, "immutableFlags":I
    iget-object v0, v11, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    move/from16 v17, v0

    .line 2099
    .local v17, "supportsRuntimePermissions":Z
    iget-object v0, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v1, v11, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v12}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    move-result v18

    .line 2101
    .local v18, "instantApp":Z
    iget-object v0, v11, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    .line 2103
    .local v9, "permission":Ljava/lang/String;
    iget-object v1, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2104
    :try_start_41
    iget-object v2, v10, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v2, v9}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v2

    move-object/from16 v19, v2

    .line 2105
    .local v19, "bp":Lcom/android/server/pm/permission/BasePermission;
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_41 .. :try_end_4a} :catchall_a9

    .line 2106
    if-eqz v19, :cond_a6

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v1

    if-nez v1, :cond_58

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/permission/BasePermission;->isDevelopment()Z

    move-result v1

    if-eqz v1, :cond_a8

    :cond_58
    if-eqz v18, :cond_60

    .line 2107
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/permission/BasePermission;->isInstant()Z

    move-result v1

    if-eqz v1, :cond_a8

    :cond_60
    if-nez v17, :cond_68

    .line 2108
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/pm/permission/BasePermission;->isRuntimeOnly()Z

    move-result v1

    if-nez v1, :cond_a8

    :cond_68
    if-eqz v13, :cond_70

    .line 2110
    invoke-static {v13, v9}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 2111
    :cond_70
    invoke-virtual {v15, v9, v12}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v20

    .line 2112
    .local v20, "flags":I
    if-eqz v17, :cond_8a

    .line 2114
    and-int/lit8 v1, v20, 0x14

    if-nez v1, :cond_a8

    .line 2115
    iget-object v3, v11, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object v2, v9

    move/from16 v5, p4

    move/from16 v6, p2

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    goto :goto_a8

    .line 2121
    :cond_8a
    and-int/lit8 v1, v20, 0x40

    if-eqz v1, :cond_a3

    .line 2122
    iget-object v3, v11, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/16 v4, 0x40

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object v2, v9

    move/from16 v6, p4

    move/from16 v7, p2

    move-object/from16 v21, v9

    .end local v9  # "permission":Ljava/lang/String;
    .local v21, "permission":Ljava/lang/String;
    move-object/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    goto :goto_a8

    .line 2121
    .end local v21  # "permission":Ljava/lang/String;
    .restart local v9  # "permission":Ljava/lang/String;
    :cond_a3
    move-object/from16 v21, v9

    .end local v9  # "permission":Ljava/lang/String;
    .restart local v21  # "permission":Ljava/lang/String;
    goto :goto_a8

    .line 2106
    .end local v20  # "flags":I
    .end local v21  # "permission":Ljava/lang/String;
    .restart local v9  # "permission":Ljava/lang/String;
    :cond_a6
    move-object/from16 v21, v9

    .line 2128
    .end local v9  # "permission":Ljava/lang/String;
    .end local v19  # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_a8
    :goto_a8
    goto :goto_31

    .line 2105
    .restart local v9  # "permission":Ljava/lang/String;
    :catchall_a9
    move-exception v0

    move-object/from16 v21, v9

    .end local v9  # "permission":Ljava/lang/String;
    .restart local v21  # "permission":Ljava/lang/String;
    :goto_ac
    :try_start_ac
    monitor-exit v1
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_ae

    throw v0

    :catchall_ae
    move-exception v0

    goto :goto_ac

    .line 2129
    .end local v21  # "permission":Ljava/lang/String;
    :cond_b0
    return-void
.end method

.method private grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 23
    .param p1, "permName"  # Ljava/lang/String;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "overridePolicy"  # Z
    .param p4, "callingUid"  # I
    .param p5, "userId"  # I
    .param p6, "callback"  # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 2133
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p5

    move-object/from16 v12, p6

    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, v11}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_29

    .line 2134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No such user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2135
    return-void

    .line 2138
    :cond_29
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.GRANT_RUNTIME_PERMISSIONS"

    const-string v2, "grantRuntimePermission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2142
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "grantRuntimePermission"

    move-object/from16 v1, p0

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    .line 2148
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 2149
    .local v1, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v1, :cond_218

    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-eqz v0, :cond_218

    .line 2153
    iget-object v2, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2154
    :try_start_4f
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v0

    move-object v3, v0

    .line 2155
    .local v3, "bp":Lcom/android/server/pm/permission/BasePermission;
    monitor-exit v2
    :try_end_57
    .catchall {:try_start_4f .. :try_end_57} :catchall_211

    .line 2156
    if-eqz v3, :cond_1f8

    .line 2159
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    move/from16 v4, p4

    invoke-virtual {v0, v1, v4, v11}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Landroid/content/pm/PackageParser$Package;II)Z

    move-result v0

    if-nez v0, :cond_1e1

    .line 2163
    invoke-virtual {v3, v1}, Lcom/android/server/pm/permission/BasePermission;->enforceDeclaredUsedAndRuntimeOrDevelopment(Landroid/content/pm/PackageParser$Package;)V

    .line 2169
    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x17

    if-ge v0, v2, :cond_75

    .line 2170
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 2171
    return-void

    .line 2174
    :cond_75
    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v11, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    .line 2176
    .local v5, "uid":I
    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    .line 2177
    .local v6, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v6}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v7

    .line 2179
    .local v7, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v7, v9, v11}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v13

    .line 2180
    .local v13, "flags":I
    and-int/lit8 v0, v13, 0x10

    if-eqz v0, :cond_ad

    .line 2181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot grant system fixed permission "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PackageManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    return-void

    .line 2185
    :cond_ad
    if-nez p3, :cond_d2

    and-int/lit8 v0, v13, 0x4

    if-eqz v0, :cond_d2

    .line 2186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot grant policy fixed permission "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PackageManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    return-void

    .line 2191
    :cond_d2
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isHardRestricted()Z

    move-result v0

    if-eqz v0, :cond_fb

    and-int/lit16 v0, v13, 0x3800

    if-nez v0, :cond_fb

    .line 2193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot grant hard restricted non-exempt permission "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PackageManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2195
    return-void

    .line 2198
    :cond_fb
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isSoftRestricted()Z

    move-result v0

    if-eqz v0, :cond_132

    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    iget-object v14, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2199
    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v15

    .line 2198
    invoke-static {v0, v14, v15, v9}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->forPermission(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/policy/SoftRestrictedPermissionPolicy;

    move-result-object v0

    .line 2199
    invoke-virtual {v0}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy;->canBeGranted()Z

    move-result v0

    if-nez v0, :cond_132

    .line 2200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot grant soft restricted permission "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PackageManager"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2202
    return-void

    .line 2205
    :cond_132
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isDevelopment()Z

    move-result v0

    const/4 v14, -0x1

    if-eqz v0, :cond_145

    .line 2208
    invoke-virtual {v7, v3}, Lcom/android/server/pm/permission/PermissionsState;->grantInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v0

    if-eq v0, v14, :cond_144

    .line 2210
    if-eqz v12, :cond_144

    .line 2211
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onInstallPermissionGranted()V

    .line 2214
    :cond_144
    return-void

    .line 2217
    :cond_145
    invoke-virtual {v6, v11}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v0

    if-eqz v0, :cond_171

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isInstant()Z

    move-result v0

    if-eqz v0, :cond_152

    goto :goto_171

    .line 2218
    :cond_152
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot grant non-ephemeral permission"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " for package "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2222
    :cond_171
    :goto_171
    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v0, v2, :cond_17f

    .line 2223
    const-string v0, "PackageManager"

    const-string v2, "Cannot grant runtime permission to a legacy app"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2224
    return-void

    .line 2227
    :cond_17f
    invoke-virtual {v7, v3, v11}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v2

    .line 2228
    .local v2, "result":I
    if-eq v2, v14, :cond_1e0

    const/4 v0, 0x1

    if-eq v2, v0, :cond_189

    goto :goto_196

    .line 2234
    :cond_189
    if-eqz v12, :cond_196

    .line 2235
    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-virtual {v12, v0, v11}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onGidsChanged(II)V

    .line 2241
    :cond_196
    :goto_196
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v0

    if-eqz v0, :cond_1a1

    .line 2242
    const/16 v0, 0x4db

    invoke-direct {v8, v0, v9, v10}, Lcom/android/server/pm/permission/PermissionManagerService;->logPermission(ILjava/lang/String;Ljava/lang/String;)V

    .line 2245
    :cond_1a1
    if-eqz v12, :cond_1a6

    .line 2246
    invoke-virtual {v12, v5, v11}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onPermissionGranted(II)V

    .line 2249
    :cond_1a6
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v0

    if-eqz v0, :cond_1af

    .line 2250
    invoke-direct {v8, v10, v11}, Lcom/android/server/pm/permission/PermissionManagerService;->notifyRuntimePermissionStateChanged(Ljava/lang/String;I)V

    .line 2256
    :cond_1af
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1bf

    .line 2257
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1da

    .line 2258
    :cond_1bf
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 2260
    .local v14, "token":J
    :try_start_1c3
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, v11}, Landroid/os/UserManagerInternal;->isUserInitialized(I)Z

    move-result v0

    if-eqz v0, :cond_1d6

    .line 2261
    const-class v0, Landroid/os/storage/StorageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManagerInternal;

    .line 2263
    .local v0, "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    invoke-virtual {v0, v5, v10}, Landroid/os/storage/StorageManagerInternal;->onExternalStoragePolicyChanged(ILjava/lang/String;)V
    :try_end_1d6
    .catchall {:try_start_1c3 .. :try_end_1d6} :catchall_1db

    .line 2266
    .end local v0  # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    :cond_1d6
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2267
    nop

    .line 2270
    .end local v14  # "token":J
    :cond_1da
    return-void

    .line 2266
    .restart local v14  # "token":J
    :catchall_1db
    move-exception v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2230
    .end local v14  # "token":J
    :cond_1e0
    return-void

    .line 2160
    .end local v2  # "result":I
    .end local v5  # "uid":I
    .end local v6  # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v7  # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v13  # "flags":I
    :cond_1e1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2157
    :cond_1f8
    move/from16 v4, p4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown permission: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2155
    .end local v3  # "bp":Lcom/android/server/pm/permission/BasePermission;
    :catchall_211
    move-exception v0

    move/from16 v4, p4

    :goto_214
    :try_start_214
    monitor-exit v2
    :try_end_215
    .catchall {:try_start_214 .. :try_end_215} :catchall_216

    throw v0

    :catchall_216
    move-exception v0

    goto :goto_214

    .line 2149
    :cond_218
    move/from16 v4, p4

    .line 2150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private grantRuntimePermissionsGrantedToDisabledPackageLocked(Landroid/content/pm/PackageParser$Package;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 23
    .param p1, "pkg"  # Landroid/content/pm/PackageParser$Package;
    .param p2, "callingUid"  # I
    .param p3, "callback"  # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1997
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    if-nez v0, :cond_9

    .line 1998
    return-void

    .line 2000
    :cond_9
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-nez v0, :cond_e

    .line 2001
    return-void

    .line 2003
    :cond_e
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v1, v8, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 2004
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getDisabledSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v9

    .line 2005
    .local v9, "disabledPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v9, :cond_98

    iget-object v0, v9, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-nez v0, :cond_20

    goto/16 :goto_98

    .line 2008
    :cond_20
    iget-object v0, v9, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lcom/android/server/pm/PackageSetting;

    .line 2009
    .local v10, "disabledPs":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    move-result v0

    if-eqz v0, :cond_97

    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->hasChildPackages()Z

    move-result v0

    if-eqz v0, :cond_33

    goto/16 :goto_97

    .line 2012
    :cond_33
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 2013
    .local v11, "permCount":I
    const/4 v0, 0x0

    move v12, v0

    .local v12, "i":I
    :goto_3b
    if-ge v12, v11, :cond_96

    .line 2014
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/lang/String;

    .line 2015
    .local v13, "permission":Ljava/lang/String;
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, v13}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v14

    .line 2016
    .local v14, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v14, :cond_93

    invoke-virtual {v14}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v0

    if-nez v0, :cond_5b

    invoke-virtual {v14}, Lcom/android/server/pm/permission/BasePermission;->isDevelopment()Z

    move-result v0

    if-nez v0, :cond_5b

    .line 2017
    goto :goto_93

    .line 2019
    :cond_5b
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0}, Landroid/os/UserManagerInternal;->getUserIds()[I

    move-result-object v15

    array-length v6, v15

    const/4 v0, 0x0

    move v5, v0

    :goto_64
    if-ge v5, v6, :cond_93

    aget v4, v15, v5

    .line 2020
    .local v4, "userId":I
    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    invoke-virtual {v0, v13, v4}, Lcom/android/server/pm/permission/PermissionsState;->hasRuntimePermission(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 2021
    iget-object v2, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object v1, v13

    move/from16 v16, v4

    .end local v4  # "userId":I
    .local v16, "userId":I
    move/from16 v4, p2

    move/from16 v17, v5

    move/from16 v5, v16

    move/from16 v18, v6

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    goto :goto_8e

    .line 2020
    .end local v16  # "userId":I
    .restart local v4  # "userId":I
    :cond_88
    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    .line 2019
    .end local v4  # "userId":I
    :goto_8e
    add-int/lit8 v5, v17, 0x1

    move/from16 v6, v18

    goto :goto_64

    .line 2013
    .end local v13  # "permission":Ljava/lang/String;
    .end local v14  # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_93
    :goto_93
    add-int/lit8 v12, v12, 0x1

    goto :goto_3b

    .line 2026
    .end local v12  # "i":I
    :cond_96
    return-void

    .line 2010
    .end local v11  # "permCount":I
    :cond_97
    :goto_97
    return-void

    .line 2006
    .end local v10  # "disabledPs":Lcom/android/server/pm/PackageSetting;
    :cond_98
    :goto_98
    return-void
.end method

.method private grantSignaturePermission(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/permission/BasePermission;Lcom/android/server/pm/permission/PermissionsState;)Z
    .registers 27
    .param p1, "perm"  # Ljava/lang/String;
    .param p2, "pkg"  # Landroid/content/pm/PackageParser$Package;
    .param p3, "bp"  # Lcom/android/server/pm/permission/BasePermission;
    .param p4, "origPermissions"  # Lcom/android/server/pm/permission/PermissionsState;

    .line 1696
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isOEM()Z

    move-result v3

    .line 1697
    .local v3, "oemPermission":Z
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isVendorPrivileged()Z

    move-result v4

    .line 1698
    .local v4, "vendorPrivilegedPermission":Z
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isPrivileged()Z

    move-result v5

    const/4 v7, 0x0

    if-nez v5, :cond_1e

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isVendorPrivileged()Z

    move-result v5

    if-eqz v5, :cond_1c

    goto :goto_1e

    :cond_1c
    move v5, v7

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 v5, 0x1

    .line 1699
    .local v5, "privilegedPermission":Z
    :goto_1f
    sget-boolean v8, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_DISABLE:Z

    .line 1701
    .local v8, "privappPermissionsDisable":Z
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "android"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 1702
    .local v9, "platformPermission":Z
    iget-object v11, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 1703
    .local v10, "platformPackage":Z
    const-string v11, "PackageManager"

    if-nez v8, :cond_f1

    if-eqz v5, :cond_f1

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isPrivileged()Z

    move-result v12

    if-eqz v12, :cond_f1

    if-nez v10, :cond_f1

    if-eqz v9, :cond_f1

    .line 1705
    invoke-direct/range {p0 .. p2}, Lcom/android/server/pm/permission/PermissionManagerService;->hasPrivappWhitelistEntry(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Z

    move-result v12

    if-nez v12, :cond_f1

    .line 1707
    iget-boolean v12, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mSystemReady:Z

    if-nez v12, :cond_ec

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isUpdatedSystemApp()Z

    move-result v12

    if-nez v12, :cond_ec

    .line 1709
    const/4 v12, 0x0

    .line 1710
    .local v12, "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isVendor()Z

    move-result v13

    if-eqz v13, :cond_63

    .line 1711
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v13

    iget-object v14, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1712
    invoke-virtual {v13, v14}, Lcom/android/server/SystemConfig;->getVendorPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v12

    goto :goto_8f

    .line 1713
    :cond_63
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isProduct()Z

    move-result v13

    if-eqz v13, :cond_74

    .line 1714
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v13

    iget-object v14, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1715
    invoke-virtual {v13, v14}, Lcom/android/server/SystemConfig;->getProductPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v12

    goto :goto_8f

    .line 1716
    :cond_74
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isProductServices()Z

    move-result v13

    if-eqz v13, :cond_85

    .line 1717
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v13

    iget-object v14, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1718
    invoke-virtual {v13, v14}, Lcom/android/server/SystemConfig;->getProductServicesPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v12

    goto :goto_8f

    .line 1720
    :cond_85
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v13

    iget-object v14, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1721
    invoke-virtual {v13, v14}, Lcom/android/server/SystemConfig;->getPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v12

    .line 1723
    :goto_8f
    if-eqz v12, :cond_9a

    .line 1724
    invoke-virtual {v12, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_98

    goto :goto_9a

    :cond_98
    move v13, v7

    goto :goto_9b

    :cond_9a
    :goto_9a
    const/4 v13, 0x1

    .line 1725
    .local v13, "permissionViolation":Z
    :goto_9b
    if-eqz v13, :cond_eb

    .line 1726
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Privileged permission "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " for package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " - not in privapp-permissions whitelist"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    sget-boolean v14, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

    if-eqz v14, :cond_ec

    .line 1730
    iget-object v14, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    if-nez v14, :cond_cf

    .line 1731
    new-instance v14, Landroid/util/ArraySet;

    invoke-direct {v14}, Landroid/util/ArraySet;-><init>()V

    iput-object v14, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    .line 1733
    :cond_cf
    iget-object v14, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_ec

    .line 1736
    :cond_eb
    return v7

    .line 1739
    .end local v12  # "deniedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v13  # "permissionViolation":Z
    :cond_ec
    :goto_ec
    sget-boolean v6, Lcom/android/internal/os/RoSystemProperties;->CONTROL_PRIVAPP_PERMISSIONS_ENFORCE:Z

    if-eqz v6, :cond_f1

    .line 1740
    return v7

    .line 1744
    :cond_f1
    iget-object v6, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v6, v7, v7}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v6

    .line 1746
    .local v6, "systemPackageName":Ljava/lang/String;
    iget-object v12, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1747
    invoke-virtual {v12, v6}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v12

    .line 1756
    .local v12, "systemPackage":Landroid/content/pm/PackageParser$Package;
    iget-object v13, v2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 1758
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageSetting()Lcom/android/server/pm/PackageSettingBase;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/pm/PackageSettingBase;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v14

    .line 1757
    invoke-virtual {v13, v14}, Landroid/content/pm/PackageParser$SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v13

    if-nez v13, :cond_135

    .line 1759
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageSetting()Lcom/android/server/pm/PackageSettingBase;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/pm/PackageSettingBase;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v13

    iget-object v14, v2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    const/4 v15, 0x4

    invoke-virtual {v13, v14, v15}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v13

    if-nez v13, :cond_135

    iget-object v13, v2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v14, v12, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 1762
    invoke-virtual {v13, v14}, Landroid/content/pm/PackageParser$SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v13

    if-nez v13, :cond_135

    iget-object v13, v12, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v14, v2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 1763
    invoke-virtual {v13, v14, v15}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v13

    if-eqz v13, :cond_133

    goto :goto_135

    :cond_133
    move v13, v7

    goto :goto_136

    :cond_135
    :goto_135
    const/4 v13, 0x1

    .line 1768
    .local v13, "allowed":Z
    :goto_136
    if-nez v13, :cond_148

    move-object/from16 v14, p3

    iget v15, v14, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    and-int/lit8 v15, v15, 0x10

    if-eqz v15, :cond_14a

    .line 1770
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/permission/FlymePermissionHelper;->isExternalSystemPackage(Landroid/content/pm/PackageParser$Package;)Z

    move-result v15

    if-eqz v15, :cond_14a

    .line 1771
    const/4 v13, 0x1

    goto :goto_14a

    .line 1768
    :cond_148
    move-object/from16 v14, p3

    .line 1775
    :cond_14a
    :goto_14a
    if-nez v13, :cond_2a3

    if-nez v5, :cond_155

    if-eqz v3, :cond_151

    goto :goto_155

    :cond_151
    move-object/from16 v16, v6

    goto/16 :goto_2a5

    .line 1776
    :cond_155
    :goto_155
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isSystem()Z

    move-result v15

    if-eqz v15, :cond_2a0

    .line 1779
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isUpdatedSystemApp()Z

    move-result v15

    if-eqz v15, :cond_247

    .line 1780
    iget-object v15, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1781
    invoke-virtual {v15, v7}, Landroid/content/pm/PackageManagerInternal;->getDisabledSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v7

    .line 1783
    .local v7, "disabledPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v7, :cond_170

    iget-object v15, v7, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v15, Lcom/android/server/pm/PackageSetting;

    goto :goto_171

    :cond_170
    const/4 v15, 0x0

    .line 1784
    .local v15, "disabledPs":Lcom/android/server/pm/PackageSetting;
    :goto_171
    if-eqz v15, :cond_198

    .line 1785
    move-object/from16 v16, v6

    .end local v6  # "systemPackageName":Ljava/lang/String;
    .local v16, "systemPackageName":Ljava/lang/String;
    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_19a

    .line 1789
    if-eqz v5, :cond_187

    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    move-result v6

    if-nez v6, :cond_195

    :cond_187
    if-eqz v3, :cond_246

    .line 1790
    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->isOem()Z

    move-result v6

    if-eqz v6, :cond_246

    .line 1791
    invoke-static {v15, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->canGrantOemPermission(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_246

    .line 1792
    :cond_195
    const/4 v13, 0x1

    goto/16 :goto_246

    .line 1784
    .end local v16  # "systemPackageName":Ljava/lang/String;
    .restart local v6  # "systemPackageName":Ljava/lang/String;
    :cond_198
    move-object/from16 v16, v6

    .line 1801
    .end local v6  # "systemPackageName":Ljava/lang/String;
    .restart local v16  # "systemPackageName":Ljava/lang/String;
    :cond_19a
    if-eqz v15, :cond_1bb

    if-eqz v7, :cond_1bb

    .line 1802
    invoke-direct {v0, v7, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->isPackageRequestingPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1bb

    if-eqz v5, :cond_1ac

    .line 1803
    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    move-result v6

    if-nez v6, :cond_1ba

    :cond_1ac
    if-eqz v3, :cond_1bb

    .line 1804
    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->isOem()Z

    move-result v6

    if-eqz v6, :cond_1bb

    .line 1805
    invoke-static {v15, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->canGrantOemPermission(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1bb

    .line 1806
    :cond_1ba
    const/4 v13, 0x1

    .line 1811
    :cond_1bb
    iget-object v6, v2, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    if-eqz v6, :cond_244

    .line 1812
    iget-object v6, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    move-object/from16 v17, v7

    .end local v7  # "disabledPkg":Landroid/content/pm/PackageParser$Package;
    .local v17, "disabledPkg":Landroid/content/pm/PackageParser$Package;
    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v7, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1813
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManagerInternal;->getDisabledSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v6

    .line 1814
    .local v6, "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v6, :cond_1d2

    .line 1815
    iget-object v7, v6, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    goto :goto_1d3

    :cond_1d2
    const/4 v7, 0x0

    .line 1816
    .local v7, "disabledParentPs":Lcom/android/server/pm/PackageSetting;
    :goto_1d3
    if-eqz v6, :cond_23f

    if-eqz v5, :cond_1dd

    .line 1817
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    move-result v18

    if-nez v18, :cond_1e5

    :cond_1dd
    if-eqz v3, :cond_23a

    .line 1818
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isOem()Z

    move-result v18

    if-eqz v18, :cond_235

    .line 1819
    :cond_1e5
    invoke-direct {v0, v6, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->isPackageRequestingPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1f3

    .line 1820
    invoke-static {v7, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->canGrantOemPermission(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1f3

    .line 1821
    const/4 v13, 0x1

    goto :goto_246

    .line 1822
    :cond_1f3
    move-object/from16 v18, v7

    .end local v7  # "disabledParentPs":Lcom/android/server/pm/PackageSetting;
    .local v18, "disabledParentPs":Lcom/android/server/pm/PackageSetting;
    iget-object v7, v6, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v7, :cond_232

    .line 1824
    iget-object v7, v6, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1ff
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_22f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v6

    .end local v6  # "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    .local v20, "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    move-object/from16 v6, v19

    check-cast v6, Landroid/content/pm/PackageParser$Package;

    .line 1826
    .local v6, "disabledChildPkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v6, :cond_218

    .line 1827
    move-object/from16 v19, v7

    iget-object v7, v6, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    goto :goto_21b

    .line 1828
    :cond_218
    move-object/from16 v19, v7

    const/4 v7, 0x0

    :goto_21b
    nop

    .line 1829
    .local v7, "disabledChildPs":Lcom/android/server/pm/PackageSetting;
    invoke-direct {v0, v6, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->isPackageRequestingPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_22a

    .line 1830
    invoke-static {v7, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->canGrantOemPermission(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_22a

    .line 1832
    const/4 v13, 0x1

    .line 1833
    goto :goto_246

    .line 1835
    .end local v6  # "disabledChildPkg":Landroid/content/pm/PackageParser$Package;
    .end local v7  # "disabledChildPs":Lcom/android/server/pm/PackageSetting;
    :cond_22a
    move-object/from16 v7, v19

    move-object/from16 v6, v20

    goto :goto_1ff

    .line 1824
    .end local v20  # "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    .local v6, "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    :cond_22f
    move-object/from16 v20, v6

    .end local v6  # "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    .restart local v20  # "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    goto :goto_246

    .line 1822
    .end local v20  # "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    .restart local v6  # "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    :cond_232
    move-object/from16 v20, v6

    .end local v6  # "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    .restart local v20  # "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    goto :goto_246

    .line 1818
    .end local v18  # "disabledParentPs":Lcom/android/server/pm/PackageSetting;
    .end local v20  # "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    .restart local v6  # "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    .local v7, "disabledParentPs":Lcom/android/server/pm/PackageSetting;
    :cond_235
    move-object/from16 v20, v6

    move-object/from16 v18, v7

    .end local v6  # "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    .end local v7  # "disabledParentPs":Lcom/android/server/pm/PackageSetting;
    .restart local v18  # "disabledParentPs":Lcom/android/server/pm/PackageSetting;
    .restart local v20  # "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    goto :goto_246

    .line 1817
    .end local v18  # "disabledParentPs":Lcom/android/server/pm/PackageSetting;
    .end local v20  # "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    .restart local v6  # "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    .restart local v7  # "disabledParentPs":Lcom/android/server/pm/PackageSetting;
    :cond_23a
    move-object/from16 v20, v6

    move-object/from16 v18, v7

    .end local v6  # "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    .end local v7  # "disabledParentPs":Lcom/android/server/pm/PackageSetting;
    .restart local v18  # "disabledParentPs":Lcom/android/server/pm/PackageSetting;
    .restart local v20  # "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    goto :goto_246

    .line 1816
    .end local v18  # "disabledParentPs":Lcom/android/server/pm/PackageSetting;
    .end local v20  # "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    .restart local v6  # "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    .restart local v7  # "disabledParentPs":Lcom/android/server/pm/PackageSetting;
    :cond_23f
    move-object/from16 v20, v6

    move-object/from16 v18, v7

    .end local v6  # "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    .end local v7  # "disabledParentPs":Lcom/android/server/pm/PackageSetting;
    .restart local v18  # "disabledParentPs":Lcom/android/server/pm/PackageSetting;
    .restart local v20  # "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    goto :goto_246

    .line 1811
    .end local v17  # "disabledPkg":Landroid/content/pm/PackageParser$Package;
    .end local v18  # "disabledParentPs":Lcom/android/server/pm/PackageSetting;
    .end local v20  # "disabledParentPkg":Landroid/content/pm/PackageParser$Package;
    .local v7, "disabledPkg":Landroid/content/pm/PackageParser$Package;
    :cond_244
    move-object/from16 v17, v7

    .line 1840
    .end local v7  # "disabledPkg":Landroid/content/pm/PackageParser$Package;
    .end local v15  # "disabledPs":Lcom/android/server/pm/PackageSetting;
    :cond_246
    :goto_246
    goto :goto_267

    .line 1841
    .end local v16  # "systemPackageName":Ljava/lang/String;
    .local v6, "systemPackageName":Ljava/lang/String;
    :cond_247
    move-object/from16 v16, v6

    .end local v6  # "systemPackageName":Ljava/lang/String;
    .restart local v16  # "systemPackageName":Ljava/lang/String;
    iget-object v6, v2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/pm/PackageSetting;

    .line 1842
    .local v6, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v5, :cond_255

    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isPrivileged()Z

    move-result v7

    if-nez v7, :cond_263

    :cond_255
    if-eqz v3, :cond_265

    .line 1843
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isOem()Z

    move-result v7

    if-eqz v7, :cond_265

    .line 1844
    invoke-static {v6, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->canGrantOemPermission(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_265

    :cond_263
    const/4 v7, 0x1

    goto :goto_266

    :cond_265
    const/4 v7, 0x0

    :goto_266
    move v13, v7

    .line 1849
    .end local v6  # "ps":Lcom/android/server/pm/PackageSetting;
    :goto_267
    if-eqz v13, :cond_298

    if-eqz v5, :cond_298

    if-nez v4, :cond_298

    .line 1850
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isVendor()Z

    move-result v6

    if-eqz v6, :cond_298

    .line 1851
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " cannot be granted to privileged vendor apk "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " because it isn\'t a \'vendorPrivileged\' permission."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    const/4 v6, 0x0

    move v13, v6

    .line 1856
    :cond_298
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/PackageManagerService;->isMzApp(Landroid/content/pm/PackageParser$Package;)Z

    move-result v6

    if-eqz v6, :cond_2a5

    .line 1857
    const/4 v13, 0x1

    goto :goto_2a5

    .line 1776
    .end local v16  # "systemPackageName":Ljava/lang/String;
    .local v6, "systemPackageName":Ljava/lang/String;
    :cond_2a0
    move-object/from16 v16, v6

    .end local v6  # "systemPackageName":Ljava/lang/String;
    .restart local v16  # "systemPackageName":Ljava/lang/String;
    goto :goto_2a5

    .line 1775
    .end local v16  # "systemPackageName":Ljava/lang/String;
    .restart local v6  # "systemPackageName":Ljava/lang/String;
    :cond_2a3
    move-object/from16 v16, v6

    .line 1862
    .end local v6  # "systemPackageName":Ljava/lang/String;
    .restart local v16  # "systemPackageName":Ljava/lang/String;
    :cond_2a5
    :goto_2a5
    if-nez v13, :cond_3ce

    .line 1863
    if-nez v13, :cond_2b8

    .line 1864
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isPre23()Z

    move-result v6

    if-eqz v6, :cond_2b8

    iget-object v6, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0x17

    if-ge v6, v7, :cond_2b8

    .line 1869
    const/4 v13, 0x1

    .line 1874
    :cond_2b8
    if-nez v13, :cond_2e0

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isInstaller()Z

    move-result v6

    if-eqz v6, :cond_2e0

    iget-object v6, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v11, 0x2

    .line 1875
    const/4 v15, 0x0

    invoke-virtual {v7, v11, v15}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2df

    iget-object v6, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v11, 0x6

    .line 1877
    invoke-virtual {v7, v11, v15}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e0

    .line 1882
    :cond_2df
    const/4 v13, 0x1

    .line 1884
    :cond_2e0
    if-nez v13, :cond_2f9

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isVerifier()Z

    move-result v6

    if-eqz v6, :cond_2f9

    iget-object v6, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v11, 0x3

    .line 1885
    const/4 v15, 0x0

    invoke-virtual {v7, v11, v15}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f9

    .line 1889
    const/4 v13, 0x1

    .line 1891
    :cond_2f9
    if-nez v13, :cond_308

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isPreInstalled()Z

    move-result v6

    if-eqz v6, :cond_308

    .line 1892
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageParser$Package;->isSystem()Z

    move-result v6

    if-eqz v6, :cond_308

    .line 1894
    const/4 v13, 0x1

    .line 1896
    :cond_308
    if-nez v13, :cond_317

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isDevelopment()Z

    move-result v6

    if-eqz v6, :cond_317

    .line 1899
    move-object/from16 v6, p4

    invoke-virtual {v6, v1}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v13

    goto :goto_319

    .line 1896
    :cond_317
    move-object/from16 v6, p4

    .line 1901
    :goto_319
    if-nez v13, :cond_332

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isSetup()Z

    move-result v7

    if-eqz v7, :cond_332

    iget-object v7, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v11, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 1902
    const/4 v1, 0x0

    const/4 v15, 0x1

    invoke-virtual {v11, v15, v1}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_332

    .line 1906
    const/4 v13, 0x1

    .line 1908
    :cond_332
    if-nez v13, :cond_34b

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isSystemTextClassifier()Z

    move-result v1

    if-eqz v1, :cond_34b

    iget-object v1, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v11, 0x5

    .line 1909
    const/4 v15, 0x0

    invoke-virtual {v7, v11, v15}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34b

    .line 1913
    const/4 v13, 0x1

    .line 1915
    :cond_34b
    if-nez v13, :cond_365

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isConfigurator()Z

    move-result v1

    if-eqz v1, :cond_365

    iget-object v1, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v11, 0x9

    .line 1916
    const/4 v15, 0x0

    invoke-virtual {v7, v11, v15}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_365

    .line 1920
    const/4 v13, 0x1

    .line 1922
    :cond_365
    if-nez v13, :cond_37e

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isWellbeing()Z

    move-result v1

    if-eqz v1, :cond_37e

    iget-object v1, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/4 v11, 0x7

    .line 1923
    const/4 v15, 0x0

    invoke-virtual {v7, v11, v15}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37e

    .line 1926
    const/4 v13, 0x1

    .line 1928
    :cond_37e
    if-nez v13, :cond_398

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isDocumenter()Z

    move-result v1

    if-eqz v1, :cond_398

    iget-object v1, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v11, 0x8

    .line 1929
    const/4 v15, 0x0

    invoke-virtual {v7, v11, v15}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_398

    .line 1933
    const/4 v13, 0x1

    .line 1935
    :cond_398
    if-nez v13, :cond_3b3

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isIncidentReportApprover()Z

    move-result v1

    if-eqz v1, :cond_3b3

    iget-object v1, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v11, 0xa

    .line 1936
    const/4 v15, 0x0

    invoke-virtual {v7, v11, v15}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b3

    .line 1941
    const/4 v1, 0x1

    move v13, v1

    .line 1943
    :cond_3b3
    if-nez v13, :cond_3d0

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/permission/BasePermission;->isAppPredictor()Z

    move-result v1

    if-eqz v1, :cond_3d0

    iget-object v1, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v11, 0xb

    .line 1944
    const/4 v15, 0x0

    invoke-virtual {v7, v11, v15}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageName(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d0

    .line 1947
    const/4 v13, 0x1

    goto :goto_3d0

    .line 1862
    :cond_3ce
    move-object/from16 v6, p4

    .line 1950
    :cond_3d0
    :goto_3d0
    return v13
.end method

.method private static hasPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z
    .registers 5
    .param p0, "pkgInfo"  # Landroid/content/pm/PackageParser$Package;
    .param p1, "permName"  # Ljava/lang/String;

    .line 3036
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_20

    .line 3037
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Permission;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 3038
    return v1

    .line 3036
    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3041
    .end local v0  # "i":I
    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method private hasPrivappWhitelistEntry(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Z
    .registers 8
    .param p1, "perm"  # Ljava/lang/String;
    .param p2, "pkg"  # Landroid/content/pm/PackageParser$Package;

    .line 1673
    const/4 v0, 0x0

    .line 1674
    .local v0, "wlPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/content/pm/PackageParser$Package;->isVendor()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1676
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    iget-object v2, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemConfig;->getVendorPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    goto :goto_3e

    .line 1677
    :cond_12
    invoke-virtual {p2}, Landroid/content/pm/PackageParser$Package;->isProduct()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1679
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    iget-object v2, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemConfig;->getProductPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    goto :goto_3e

    .line 1680
    :cond_23
    invoke-virtual {p2}, Landroid/content/pm/PackageParser$Package;->isProductServices()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1682
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    iget-object v2, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemConfig;->getProductServicesPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    goto :goto_3e

    .line 1685
    :cond_34
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    iget-object v2, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemConfig;->getPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    .line 1688
    :goto_3e
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4a

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    move v3, v1

    goto :goto_4b

    :cond_4a
    move v3, v2

    .line 1690
    .local v3, "whitelisted":Z
    :goto_4b
    if-nez v3, :cond_5c

    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    if-eqz v4, :cond_5a

    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    .line 1691
    invoke-direct {p0, p1, v4}, Lcom/android/server/pm/permission/PermissionManagerService;->hasPrivappWhitelistEntry(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_5a

    goto :goto_5c

    :cond_5a
    move v1, v2

    goto :goto_5d

    :cond_5c
    :goto_5c
    nop

    .line 1690
    :goto_5d
    return v1
.end method

.method private inheritPermissionStateToNewImplicitPermissionLocked(Landroid/util/ArraySet;Ljava/lang/String;Lcom/android/server/pm/permission/PermissionsState;Landroid/content/pm/PackageParser$Package;I)V
    .registers 13
    .param p2, "newPerm"  # Ljava/lang/String;
    .param p3, "ps"  # Lcom/android/server/pm/permission/PermissionsState;
    .param p4, "pkg"  # Landroid/content/pm/PackageParser$Package;
    .param p5, "userId"  # I
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

    .line 1500
    .local p1, "sourcePerms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p4, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1501
    .local v0, "pkgName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1502
    .local v1, "isGranted":Z
    const/4 v2, 0x0

    .line 1504
    .local v2, "flags":I
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v3

    .line 1505
    .local v3, "numSourcePerm":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_9
    if-ge v4, v3, :cond_32

    .line 1506
    invoke-virtual {p1, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1507
    .local v5, "sourcePerm":Ljava/lang/String;
    invoke-virtual {p3, v5, p5}, Lcom/android/server/pm/permission/PermissionsState;->hasRuntimePermission(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_26

    .line 1508
    invoke-virtual {p3, v5}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e

    goto :goto_26

    .line 1516
    :cond_1e
    if-nez v1, :cond_2f

    .line 1517
    invoke-virtual {p3, v5, p5}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v6

    or-int/2addr v2, v6

    goto :goto_2f

    .line 1509
    :cond_26
    :goto_26
    if-nez v1, :cond_29

    .line 1510
    const/4 v2, 0x0

    .line 1513
    :cond_29
    const/4 v1, 0x1

    .line 1514
    invoke-virtual {p3, v5, p5}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v6

    or-int/2addr v2, v6

    .line 1505
    .end local v5  # "sourcePerm":Ljava/lang/String;
    :cond_2f
    :goto_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 1522
    .end local v4  # "i":I
    :cond_32
    if-eqz v1, :cond_62

    .line 1523
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v4, :cond_59

    .line 1524
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " inherits runtime perm grant from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PackageManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    :cond_59
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v4, p2}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    invoke-virtual {p3, v4, p5}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    .line 1532
    :cond_62
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v4, p2}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    invoke-virtual {p3, v4, p5, v2, v2}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 1533
    return-void
.end method

.method private static isImpliedPermissionGranted(Lcom/android/server/pm/permission/PermissionsState;Ljava/lang/String;I)Z
    .registers 4
    .param p0, "permissionsState"  # Lcom/android/server/pm/permission/PermissionsState;
    .param p1, "permName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 499
    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Lcom/android/server/pm/permission/PermissionManagerService;->FULLER_PERMISSION_MAP:Ljava/util/Map;

    .line 500
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 499
    :goto_19
    return v0
.end method

.method private isNewPlatformPermissionForPackage(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Z
    .registers 9
    .param p1, "perm"  # Ljava/lang/String;
    .param p2, "pkg"  # Landroid/content/pm/PackageParser$Package;

    .line 1649
    const/4 v0, 0x0

    .line 1650
    .local v0, "allowed":Z
    sget-object v1, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    array-length v1, v1

    .line 1651
    .local v1, "NP":I
    const/4 v2, 0x0

    .local v2, "ip":I
    :goto_5
    if-ge v2, v1, :cond_40

    .line 1652
    sget-object v3, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    aget-object v3, v3, v2

    .line 1654
    .local v3, "npi":Landroid/content/pm/PackageParser$NewPermissionInfo;
    iget-object v4, v3, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    iget-object v4, p2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget v5, v3, Landroid/content/pm/PackageParser$NewPermissionInfo;->sdkVersion:I

    if-ge v4, v5, :cond_3d

    .line 1656
    const/4 v0, 0x1

    .line 1657
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Auto-granting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to old pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PackageManager"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    goto :goto_40

    .line 1651
    .end local v3  # "npi":Landroid/content/pm/PackageParser$NewPermissionInfo;
    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1662
    .end local v2  # "ip":I
    :cond_40
    :goto_40
    return v0
.end method

.method private isPackageRequestingPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z
    .registers 7
    .param p1, "pkg"  # Landroid/content/pm/PackageParser$Package;
    .param p2, "permission"  # Ljava/lang/String;

    .line 1984
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1985
    .local v0, "permCount":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_7
    if-ge v1, v0, :cond_1c

    .line 1986
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1987
    .local v2, "requestedPermission":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1988
    const/4 v3, 0x1

    return v3

    .line 1985
    .end local v2  # "requestedPermission":Ljava/lang/String;
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1991
    .end local v1  # "j":I
    :cond_1c
    const/4 v1, 0x0

    return v1
.end method

.method private isPermissionsReviewRequired(Landroid/content/pm/PackageParser$Package;I)Z
    .registers 6
    .param p1, "pkg"  # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"  # I

    .line 1970
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_a

    .line 1971
    return v1

    .line 1975
    :cond_a
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-nez v0, :cond_f

    .line 1976
    return v1

    .line 1978
    :cond_f
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1979
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v1

    .line 1980
    .local v1, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v1, p2}, Lcom/android/server/pm/permission/PermissionsState;->isPermissionReviewRequired(I)Z

    move-result v2

    return v2
.end method

.method public static synthetic lambda$NPd9St1HBvGAtg1uhMV2Upfww4g(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->doNotifyRuntimePermissionStateChanged(Ljava/lang/String;I)V

    return-void
.end method

.method private logPermission(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "action"  # I
    .param p2, "name"  # Ljava/lang/String;
    .param p3, "packageName"  # Ljava/lang/String;

    .line 3052
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 3053
    .local v0, "log":Landroid/metrics/LogMaker;
    invoke-virtual {v0, p3}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 3054
    const/16 v1, 0x4d9

    invoke-virtual {v0, v1, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 3056
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v1, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 3057
    return-void
.end method

.method private notifyRuntimePermissionStateChanged(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 471
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$NPd9St1HBvGAtg1uhMV2Upfww4g;->INSTANCE:Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$NPd9St1HBvGAtg1uhMV2Upfww4g;

    .line 473
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 472
    invoke-static {v1, p0, p1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 471
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 474
    return-void
.end method

.method private removeAllPermissions(Landroid/content/pm/PackageParser$Package;Z)V
    .registers 11
    .param p1, "pkg"  # Landroid/content/pm/PackageParser$Package;
    .param p2, "chatty"  # Z

    .line 759
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 760
    :try_start_3
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 761
    .local v1, "N":I
    const/4 v2, 0x0

    .line 762
    .local v2, "r":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v1, :cond_7b

    .line 763
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$Permission;

    .line 764
    .local v4, "p":Landroid/content/pm/PackageParser$Permission;
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v5, v5, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    iget-object v6, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/permission/BasePermission;

    .line 765
    .local v5, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v5, :cond_34

    .line 766
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v6, v6, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    iget-object v7, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v7, v7, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/permission/BasePermission;

    move-object v5, v6

    .line 768
    :cond_34
    if-eqz v5, :cond_5d

    invoke-virtual {v5, v4}, Lcom/android/server/pm/permission/BasePermission;->isPermission(Landroid/content/pm/PackageParser$Permission;)Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 769
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/BasePermission;->setPermission(Landroid/content/pm/PackageParser$Permission;)V

    .line 770
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v6, :cond_5d

    if-eqz p2, :cond_5d

    .line 771
    if-nez v2, :cond_51

    .line 772
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x100

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v2, v6

    goto :goto_56

    .line 774
    :cond_51
    const/16 v6, 0x20

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 776
    :goto_56
    iget-object v6, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v6, v6, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    :cond_5d
    invoke-virtual {v4}, Landroid/content/pm/PackageParser$Permission;->isAppOp()Z

    move-result v6

    if-eqz v6, :cond_78

    .line 780
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v6, v6, Lcom/android/server/pm/permission/PermissionSettings;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    iget-object v7, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v7, v7, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 781
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    .line 782
    .local v6, "appOpPkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v6, :cond_78

    .line 783
    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 762
    .end local v4  # "p":Landroid/content/pm/PackageParser$Permission;
    .end local v5  # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v6  # "appOpPkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_78
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 787
    .end local v3  # "i":I
    :cond_7b
    if-eqz v2, :cond_97

    .line 788
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v3, :cond_97

    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Permissions: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    :cond_97
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v3

    .line 792
    const/4 v2, 0x0

    .line 793
    const/4 v3, 0x0

    .restart local v3  # "i":I
    :goto_a0
    if-ge v3, v1, :cond_d3

    .line 794
    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 795
    .local v4, "perm":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/permission/PermissionSettings;->isPermissionAppOp(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d0

    .line 796
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v5, v5, Lcom/android/server/pm/permission/PermissionSettings;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 797
    .local v5, "appOpPkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v5, :cond_d0

    .line 798
    iget-object v6, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 799
    invoke-virtual {v5}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_d0

    .line 800
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v6, v6, Lcom/android/server/pm/permission/PermissionSettings;->mAppOpPermissionPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    .end local v4  # "perm":Ljava/lang/String;
    .end local v5  # "appOpPkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_d0
    add-int/lit8 v3, v3, 0x1

    goto :goto_a0

    .line 805
    .end local v3  # "i":I
    :cond_d3
    if-eqz v2, :cond_ef

    .line 806
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    if-eqz v3, :cond_ef

    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Permissions: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    .end local v1  # "N":I
    .end local v2  # "r":Ljava/lang/StringBuilder;
    :cond_ef
    monitor-exit v0

    .line 809
    return-void

    .line 808
    :catchall_f1
    move-exception v1

    monitor-exit v0
    :try_end_f3
    .catchall {:try_start_3 .. :try_end_f3} :catchall_f1

    throw v1
.end method

.method private removeDynamicPermission(Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 10
    .param p1, "permName"  # Ljava/lang/String;
    .param p2, "callingUid"  # I
    .param p3, "callback"  # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 847
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getInstantAppPackageName(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_46

    .line 850
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionSettings;->enforcePermissionTree(Ljava/lang/String;I)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v0

    .line 851
    .local v0, "tree":Lcom/android/server/pm/permission/BasePermission;
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 852
    :try_start_11
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v2

    .line 853
    .local v2, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v2, :cond_1b

    .line 854
    monitor-exit v1

    return-void

    .line 856
    :cond_1b
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->isDynamic()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 858
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not allowed to modify non-dynamic permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    :cond_37
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/permission/PermissionSettings;->removePermissionLocked(Ljava/lang/String;)V

    .line 862
    if-eqz p3, :cond_41

    .line 863
    invoke-virtual {p3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onPermissionRemoved()V

    .line 865
    .end local v2  # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_41
    monitor-exit v1

    .line 866
    return-void

    .line 865
    :catchall_43
    move-exception v2

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_11 .. :try_end_45} :catchall_43

    throw v2

    .line 848
    .end local v0  # "tree":Lcom/android/server/pm/permission/BasePermission;
    :cond_46
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Instant applications don\'t have access to this method"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private removeOnRuntimePermissionStateChangedListener(Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V
    .registers 4
    .param p1, "listener"  # Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;

    .line 464
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 465
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mRuntimePermissionStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 466
    monitor-exit v0

    .line 467
    return-void

    .line 466
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private restoreDelayedRuntimePermissions(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 7
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "user"  # Landroid/os/UserHandle;

    .line 437
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 438
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 439
    monitor-exit v0

    return-void

    .line 442
    :cond_12
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    .line 443
    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$KZ0-FIR02GsOfMAAOdWzIbkVHHM;

    invoke-direct {v3, p0, p2}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$KZ0-FIR02GsOfMAAOdWzIbkVHHM;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/os/UserHandle;)V

    .line 442
    invoke-virtual {v1, p1, p2, v2, v3}, Landroid/permission/PermissionControllerManager;->restoreDelayedRuntimePermissionBackup(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 452
    monitor-exit v0

    .line 453
    return-void

    .line 452
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method private restorePermissionState(Landroid/content/pm/PackageParser$Package;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 40
    .param p1, "pkg"  # Landroid/content/pm/PackageParser$Package;
    .param p2, "replace"  # Z
    .param p3, "packageOfInterest"  # Ljava/lang/String;
    .param p4, "callback"  # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 897
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Lcom/android/server/pm/PackageSetting;

    .line 898
    .local v12, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v12, :cond_12

    .line 899
    return-void

    .line 902
    :cond_12
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v13

    .line 903
    .local v13, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    move-object v1, v13

    .line 905
    .local v1, "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v14

    .line 907
    .local v14, "currentUserIds":[I
    const/4 v2, 0x0

    .line 908
    .local v2, "runtimePermissionsRevoked":Z
    sget-object v3, Lcom/android/server/pm/permission/PermissionManagerService;->EMPTY_INT_ARRAY:[I

    .line 910
    .local v3, "updatedUserIds":[I
    const/4 v4, 0x0

    .line 912
    .local v4, "changedInstallPermission":Z
    const/4 v0, 0x0

    if-eqz v9, :cond_5e

    .line 913
    invoke-virtual {v12, v0}, Lcom/android/server/pm/PackageSetting;->setInstallPermissionsFixed(Z)V

    .line 914
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->isSharedUser()Z

    move-result v5

    if-nez v5, :cond_3b

    .line 915
    new-instance v5, Lcom/android/server/pm/permission/PermissionsState;

    invoke-direct {v5, v13}, Lcom/android/server/pm/permission/PermissionsState;-><init>(Lcom/android/server/pm/permission/PermissionsState;)V

    move-object v1, v5

    .line 916
    invoke-virtual {v13}, Lcom/android/server/pm/permission/PermissionsState;->reset()V

    move-object v15, v1

    move v5, v2

    goto :goto_60

    .line 923
    :cond_3b
    iget-object v5, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 924
    nop

    .line 925
    :try_start_3f
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v6

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v15

    .line 924
    invoke-direct {v7, v6, v15}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeUnusedSharedUserPermissionsLocked(Lcom/android/server/pm/SharedUserSetting;[I)[I

    move-result-object v6

    move-object v3, v6

    .line 926
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v6

    if-nez v6, :cond_57

    .line 927
    const/4 v2, 0x1

    .line 929
    :cond_57
    monitor-exit v5

    move-object v15, v1

    move v5, v2

    goto :goto_60

    :catchall_5b
    move-exception v0

    monitor-exit v5
    :try_end_5d
    .catchall {:try_start_3f .. :try_end_5d} :catchall_5b

    throw v0

    .line 912
    :cond_5e
    move-object v15, v1

    move v5, v2

    .line 933
    .end local v1  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v2  # "runtimePermissionsRevoked":Z
    .local v5, "runtimePermissionsRevoked":Z
    .local v15, "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :goto_60
    iget-object v1, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mGlobalGids:[I

    invoke-virtual {v13, v1}, Lcom/android/server/pm/permission/PermissionsState;->setGlobalGids([I)V

    .line 935
    iget-object v2, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 936
    :try_start_68
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 938
    .local v1, "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v6, v8, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6
    :try_end_73
    .catchall {:try_start_68 .. :try_end_73} :catchall_ab9

    .line 939
    .local v6, "N":I
    const/16 v16, 0x0

    move/from16 v34, v4

    move-object v4, v3

    move/from16 v3, v16

    move/from16 v16, v34

    .local v3, "i":I
    .local v4, "updatedUserIds":[I
    .local v16, "changedInstallPermission":Z
    :goto_7c
    if-ge v3, v6, :cond_a04

    .line 940
    :try_start_7e
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_86
    .catchall {:try_start_7e .. :try_end_86} :catchall_9ea

    .line 941
    .local v0, "permName":Ljava/lang/String;
    move/from16 v18, v5

    .end local v5  # "runtimePermissionsRevoked":Z
    .local v18, "runtimePermissionsRevoked":Z
    :try_start_88
    iget-object v5, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v5, v0}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v5

    .line 942
    .local v5, "bp":Lcom/android/server/pm/permission/BasePermission;
    move/from16 v19, v6

    .end local v6  # "N":I
    .local v19, "N":I
    iget-object v6, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v11, 0x17

    if-lt v6, v11, :cond_9a

    const/4 v6, 0x1

    goto :goto_9b

    :cond_9a
    const/4 v6, 0x0

    .line 944
    .local v6, "appSupportsRuntimePermissions":Z
    :goto_9b
    const/4 v11, 0x0

    .line 946
    .local v11, "upgradedActivityRecognitionPermission":Ljava/lang/String;
    sget-boolean v20, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z
    :try_end_9e
    .catchall {:try_start_88 .. :try_end_9e} :catchall_9cf

    if-eqz v20, :cond_f9

    .line 947
    move-object/from16 v20, v11

    .end local v11  # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .local v20, "upgradedActivityRecognitionPermission":Ljava/lang/String;
    :try_start_a2
    const-string v11, "PackageManager"
    :try_end_a4
    .catchall {:try_start_a2 .. :try_end_a4} :catchall_e2

    move-object/from16 v21, v4

    .end local v4  # "updatedUserIds":[I
    .local v21, "updatedUserIds":[I
    :try_start_a6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " checking "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cc
    .catchall {:try_start_a6 .. :try_end_cc} :catchall_cd

    goto :goto_fd

    .line 1410
    .end local v0  # "permName":Ljava/lang/String;
    .end local v1  # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v3  # "i":I
    .end local v5  # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v6  # "appSupportsRuntimePermissions":Z
    .end local v19  # "N":I
    .end local v20  # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    :catchall_cd
    move-exception v0

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move-object v11, v12

    move-object/from16 v31, v14

    move-object v9, v15

    move/from16 v4, v16

    move-object/from16 v3, v21

    move-object v14, v7

    move-object v12, v10

    move/from16 v7, v18

    move/from16 v10, p2

    goto/16 :goto_ac5

    .end local v21  # "updatedUserIds":[I
    .restart local v4  # "updatedUserIds":[I
    :catchall_e2
    move-exception v0

    move-object/from16 v21, v4

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move-object v11, v12

    move-object/from16 v31, v14

    move-object v9, v15

    move/from16 v4, v16

    move-object/from16 v3, v21

    move-object v14, v7

    move-object v12, v10

    move/from16 v7, v18

    move/from16 v10, p2

    .end local v4  # "updatedUserIds":[I
    .restart local v21  # "updatedUserIds":[I
    goto/16 :goto_ac5

    .line 946
    .end local v21  # "updatedUserIds":[I
    .restart local v0  # "permName":Ljava/lang/String;
    .restart local v1  # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v3  # "i":I
    .restart local v4  # "updatedUserIds":[I
    .restart local v5  # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v6  # "appSupportsRuntimePermissions":Z
    .restart local v11  # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v19  # "N":I
    :cond_f9
    move-object/from16 v21, v4

    move-object/from16 v20, v11

    .line 950
    .end local v4  # "updatedUserIds":[I
    .end local v11  # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v20  # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v21  # "updatedUserIds":[I
    :goto_fd
    if-eqz v5, :cond_963

    :try_start_ff
    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageSetting()Lcom/android/server/pm/PackageSettingBase;

    move-result-object v4

    if-nez v4, :cond_114

    move-object/from16 v24, v0

    move-object/from16 v23, v1

    move/from16 v22, v3

    move-object/from16 v25, v12

    move-object/from16 v31, v14

    move-object v9, v15

    const/4 v7, 0x0

    move-object v12, v10

    goto/16 :goto_970

    .line 962
    :cond_114
    invoke-virtual {v15, v0}, Lcom/android/server/pm/permission/PermissionsState;->hasRequestedPermission(Ljava/lang/String;)Z

    move-result v4
    :try_end_118
    .catchall {:try_start_ff .. :try_end_118} :catchall_94a

    if-nez v4, :cond_1d7

    :try_start_11a
    iget-object v4, v8, Landroid/content/pm/PackageParser$Package;->implicitPermissions:Ljava/util/ArrayList;

    .line 963
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12f

    const-string v4, "android.permission.ACTIVITY_RECOGNITION"

    .line 964
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12b

    goto :goto_12f

    :cond_12b
    move-object/from16 v23, v1

    goto/16 :goto_1d9

    .line 965
    :cond_12f
    :goto_12f
    iget-object v4, v8, Landroid/content/pm/PackageParser$Package;->implicitPermissions:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_161

    .line 967
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 969
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v4, :cond_15d

    .line 970
    const-string v4, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " is newly added for "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v23, v1

    goto/16 :goto_1d9

    .line 969
    :cond_15d
    move-object/from16 v23, v1

    goto/16 :goto_1d9

    .line 980
    :cond_161
    sget-object v4, Landroid/permission/PermissionManager;->SPLIT_PERMISSIONS:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 981
    .local v4, "numSplitPerms":I
    const/4 v9, 0x0

    .local v9, "splitPermNum":I
    :goto_168
    if-ge v9, v4, :cond_1d2

    .line 982
    sget-object v11, Landroid/permission/PermissionManager;->SPLIT_PERMISSIONS:Ljava/util/ArrayList;

    .line 983
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/permission/PermissionManager$SplitPermissionInfo;

    .line 984
    .local v11, "sp":Landroid/permission/PermissionManager$SplitPermissionInfo;
    invoke-virtual {v11}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getSplitPermission()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v23, v22

    .line 985
    .local v23, "splitPermName":Ljava/lang/String;
    move/from16 v22, v4

    .end local v4  # "numSplitPerms":I
    .local v22, "numSplitPerms":I
    invoke-virtual {v11}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getNewPermissions()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c5

    .line 986
    move-object/from16 v4, v23

    .end local v23  # "splitPermName":Ljava/lang/String;
    .local v4, "splitPermName":Ljava/lang/String;
    invoke-virtual {v15, v4}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_1be

    .line 987
    move-object/from16 v20, v4

    .line 988
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 990
    sget-boolean v23, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v23, :cond_1b7

    .line 991
    move-object/from16 v23, v1

    .end local v1  # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v23, "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-string v1, "PackageManager"

    move-object/from16 v24, v4

    .end local v4  # "splitPermName":Ljava/lang/String;
    .local v24, "splitPermName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v25, v11

    .end local v11  # "sp":Landroid/permission/PermissionManager$SplitPermissionInfo;
    .local v25, "sp":Landroid/permission/PermissionManager$SplitPermissionInfo;
    const-string v11, " is newly added for "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b6
    .catchall {:try_start_11a .. :try_end_1b6} :catchall_cd

    goto :goto_1d9

    .line 990
    .end local v23  # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v24  # "splitPermName":Ljava/lang/String;
    .end local v25  # "sp":Landroid/permission/PermissionManager$SplitPermissionInfo;
    .restart local v1  # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v4  # "splitPermName":Ljava/lang/String;
    .restart local v11  # "sp":Landroid/permission/PermissionManager$SplitPermissionInfo;
    :cond_1b7
    move-object/from16 v23, v1

    move-object/from16 v24, v4

    move-object/from16 v25, v11

    .end local v1  # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v4  # "splitPermName":Ljava/lang/String;
    .end local v11  # "sp":Landroid/permission/PermissionManager$SplitPermissionInfo;
    .restart local v23  # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v24  # "splitPermName":Ljava/lang/String;
    .restart local v25  # "sp":Landroid/permission/PermissionManager$SplitPermissionInfo;
    goto :goto_1d9

    .line 986
    .end local v23  # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v24  # "splitPermName":Ljava/lang/String;
    .end local v25  # "sp":Landroid/permission/PermissionManager$SplitPermissionInfo;
    .restart local v1  # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v4  # "splitPermName":Ljava/lang/String;
    .restart local v11  # "sp":Landroid/permission/PermissionManager$SplitPermissionInfo;
    :cond_1be
    move-object/from16 v23, v1

    move-object/from16 v24, v4

    move-object/from16 v25, v11

    .end local v1  # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v4  # "splitPermName":Ljava/lang/String;
    .end local v11  # "sp":Landroid/permission/PermissionManager$SplitPermissionInfo;
    .restart local v23  # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v24  # "splitPermName":Ljava/lang/String;
    .restart local v25  # "sp":Landroid/permission/PermissionManager$SplitPermissionInfo;
    goto :goto_1cb

    .line 985
    .end local v24  # "splitPermName":Ljava/lang/String;
    .end local v25  # "sp":Landroid/permission/PermissionManager$SplitPermissionInfo;
    .restart local v1  # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v11  # "sp":Landroid/permission/PermissionManager$SplitPermissionInfo;
    .local v23, "splitPermName":Ljava/lang/String;
    :cond_1c5
    move-object/from16 v25, v11

    move-object/from16 v24, v23

    move-object/from16 v23, v1

    .line 981
    .end local v1  # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v11  # "sp":Landroid/permission/PermissionManager$SplitPermissionInfo;
    .local v23, "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_1cb
    add-int/lit8 v9, v9, 0x1

    move/from16 v4, v22

    move-object/from16 v1, v23

    goto :goto_168

    .end local v22  # "numSplitPerms":I
    .end local v23  # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v1  # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v4, "numSplitPerms":I
    :cond_1d2
    move-object/from16 v23, v1

    move/from16 v22, v4

    .end local v1  # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v4  # "numSplitPerms":I
    .restart local v22  # "numSplitPerms":I
    .restart local v23  # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_1d9

    .line 962
    .end local v9  # "splitPermNum":I
    .end local v22  # "numSplitPerms":I
    .end local v23  # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v1  # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_1d7
    move-object/from16 v23, v1

    .line 1001
    .end local v1  # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v23  # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_1d9
    move-object/from16 v1, v20

    .end local v20  # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .local v1, "upgradedActivityRecognitionPermission":Ljava/lang/String;
    :try_start_1db
    iget-object v4, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v4
    :try_end_1e1
    .catchall {:try_start_1db .. :try_end_1e1} :catchall_94a

    if-eqz v4, :cond_227

    :try_start_1e3
    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->isInstant()Z

    move-result v4

    if-nez v4, :cond_227

    .line 1002
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v4, :cond_21c

    .line 1003
    const-string v4, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Denying non-ephemeral permission "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " for package "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_211
    .catchall {:try_start_1e3 .. :try_end_211} :catchall_cd

    move/from16 v22, v3

    move-object/from16 v25, v12

    move-object/from16 v31, v14

    move-object v9, v15

    const/4 v7, 0x0

    move-object v12, v10

    goto/16 :goto_9a3

    .line 1002
    :cond_21c
    move/from16 v22, v3

    move-object/from16 v25, v12

    move-object/from16 v31, v14

    move-object v9, v15

    const/4 v7, 0x0

    move-object v12, v10

    goto/16 :goto_9a3

    .line 1009
    :cond_227
    :try_start_227
    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->isRuntimeOnly()Z

    move-result v4
    :try_end_22b
    .catchall {:try_start_227 .. :try_end_22b} :catchall_94a

    if-eqz v4, :cond_26d

    if-nez v6, :cond_26d

    .line 1010
    :try_start_22f
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v4, :cond_262

    .line 1011
    const-string v4, "PackageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Denying runtime-only permission "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " for package "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_257
    .catchall {:try_start_22f .. :try_end_257} :catchall_cd

    move/from16 v22, v3

    move-object/from16 v25, v12

    move-object/from16 v31, v14

    move-object v9, v15

    const/4 v7, 0x0

    move-object v12, v10

    goto/16 :goto_9a3

    .line 1010
    :cond_262
    move/from16 v22, v3

    move-object/from16 v25, v12

    move-object/from16 v31, v14

    move-object v9, v15

    const/4 v7, 0x0

    move-object v12, v10

    goto/16 :goto_9a3

    .line 1017
    :cond_26d
    :try_start_26d
    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1018
    .local v4, "perm":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1019
    .local v9, "allowedSig":Z
    const/4 v11, 0x1

    .line 1022
    .local v11, "grant":I
    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->isAppOp()Z

    move-result v20
    :try_end_277
    .catchall {:try_start_26d .. :try_end_277} :catchall_94a

    if-eqz v20, :cond_285

    .line 1023
    move/from16 v20, v9

    .end local v9  # "allowedSig":Z
    .local v20, "allowedSig":Z
    :try_start_27b
    iget-object v9, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    move/from16 v22, v11

    .end local v11  # "grant":I
    .local v22, "grant":I
    iget-object v11, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v4, v11}, Lcom/android/server/pm/permission/PermissionSettings;->addAppOpPackage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_284
    .catchall {:try_start_27b .. :try_end_284} :catchall_cd

    goto :goto_289

    .line 1022
    .end local v20  # "allowedSig":Z
    .end local v22  # "grant":I
    .restart local v9  # "allowedSig":Z
    .restart local v11  # "grant":I
    :cond_285
    move/from16 v20, v9

    move/from16 v22, v11

    .line 1026
    .end local v9  # "allowedSig":Z
    .end local v11  # "grant":I
    .restart local v20  # "allowedSig":Z
    .restart local v22  # "grant":I
    :goto_289
    :try_start_289
    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->isNormal()Z

    move-result v9

    if-eqz v9, :cond_291

    .line 1028
    const/4 v11, 0x2

    .end local v22  # "grant":I
    .restart local v11  # "grant":I
    goto :goto_2bf

    .line 1029
    .end local v11  # "grant":I
    .restart local v22  # "grant":I
    :cond_291
    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v9
    :try_end_295
    .catchall {:try_start_289 .. :try_end_295} :catchall_94a

    if-eqz v9, :cond_2a8

    .line 1030
    :try_start_297
    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v9
    :try_end_29f
    .catchall {:try_start_297 .. :try_end_29f} :catchall_cd

    if-nez v9, :cond_2a6

    if-eqz v1, :cond_2a4

    goto :goto_2a6

    .line 1037
    :cond_2a4
    const/4 v11, 0x3

    .end local v22  # "grant":I
    .restart local v11  # "grant":I
    goto :goto_2bf

    .line 1034
    .end local v11  # "grant":I
    .restart local v22  # "grant":I
    :cond_2a6
    :goto_2a6
    const/4 v11, 0x4

    .end local v22  # "grant":I
    .restart local v11  # "grant":I
    goto :goto_2bf

    .line 1039
    .end local v11  # "grant":I
    .restart local v22  # "grant":I
    :cond_2a8
    :try_start_2a8
    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->isSignature()Z

    move-result v9
    :try_end_2ac
    .catchall {:try_start_2a8 .. :try_end_2ac} :catchall_94a

    if-eqz v9, :cond_2bd

    .line 1041
    :try_start_2ae
    invoke-direct {v7, v4, v8, v5, v15}, Lcom/android/server/pm/permission/PermissionManagerService;->grantSignaturePermission(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/permission/BasePermission;Lcom/android/server/pm/permission/PermissionsState;)Z

    move-result v9
    :try_end_2b2
    .catchall {:try_start_2ae .. :try_end_2b2} :catchall_cd

    .line 1042
    .end local v20  # "allowedSig":Z
    .restart local v9  # "allowedSig":Z
    if-eqz v9, :cond_2b8

    .line 1043
    const/4 v11, 0x2

    move/from16 v20, v9

    .end local v22  # "grant":I
    .restart local v11  # "grant":I
    goto :goto_2bf

    .line 1042
    .end local v11  # "grant":I
    .restart local v22  # "grant":I
    :cond_2b8
    move/from16 v20, v9

    move/from16 v11, v22

    goto :goto_2bf

    .line 1039
    .end local v9  # "allowedSig":Z
    .restart local v20  # "allowedSig":Z
    :cond_2bd
    move/from16 v11, v22

    .line 1047
    .end local v22  # "grant":I
    .restart local v11  # "grant":I
    :goto_2bf
    :try_start_2bf
    sget-boolean v9, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z
    :try_end_2c1
    .catchall {:try_start_2bf .. :try_end_2c1} :catchall_94a

    if-eqz v9, :cond_2e8

    .line 1048
    :try_start_2c3
    const-string v9, "PackageManager"

    move/from16 v22, v3

    .end local v3  # "i":I
    .local v22, "i":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v0

    .end local v0  # "permName":Ljava/lang/String;
    .local v24, "permName":Ljava/lang/String;
    const-string v0, "Considering granting permission "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to package "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e7
    .catchall {:try_start_2c3 .. :try_end_2e7} :catchall_cd

    goto :goto_2ec

    .line 1047
    .end local v22  # "i":I
    .end local v24  # "permName":Ljava/lang/String;
    .restart local v0  # "permName":Ljava/lang/String;
    .restart local v3  # "i":I
    :cond_2e8
    move-object/from16 v24, v0

    move/from16 v22, v3

    .line 1052
    .end local v0  # "permName":Ljava/lang/String;
    .end local v3  # "i":I
    .restart local v22  # "i":I
    .restart local v24  # "permName":Ljava/lang/String;
    :goto_2ec
    const/4 v9, 0x1

    if-eq v11, v9, :cond_84b

    .line 1055
    :try_start_2ef
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v9
    :try_end_2f3
    .catchall {:try_start_2ef .. :try_end_2f3} :catchall_834

    if-nez v9, :cond_316

    :try_start_2f5
    invoke-virtual {v12}, Lcom/android/server/pm/PackageSetting;->areInstallPermissionsFixed()Z

    move-result v9

    if-eqz v9, :cond_316

    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v9

    if-nez v9, :cond_316

    .line 1056
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerService;->isMzApp(Landroid/content/pm/PackageParser$Package;)Z

    move-result v9

    if-nez v9, :cond_316

    .line 1061
    if-nez v20, :cond_316

    invoke-virtual {v15, v4}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_316

    .line 1065
    invoke-direct {v7, v4, v8}, Lcom/android/server/pm/permission/PermissionManagerService;->isNewPlatformPermissionForPackage(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Z

    move-result v9

    if-nez v9, :cond_316

    .line 1066
    const/4 v11, 0x1

    .line 1071
    :cond_316
    const/4 v9, 0x2

    if-eq v11, v9, :cond_79f

    const/4 v9, 0x3

    if-eq v11, v9, :cond_56e

    const/4 v9, 0x4

    if-eq v11, v9, :cond_36e

    .line 1359
    if-eqz v10, :cond_333

    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1360
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32a

    goto :goto_333

    :cond_32a
    move-object/from16 v25, v12

    move-object/from16 v31, v14

    move-object v9, v15

    const/4 v7, 0x0

    move-object v12, v10

    goto/16 :goto_9a3

    .line 1361
    :cond_333
    :goto_333
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v0, :cond_365

    .line 1362
    const-string v0, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Not granting permission "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " to package "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " because it was previously installed without"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35c
    .catchall {:try_start_2f5 .. :try_end_35c} :catchall_cd

    move-object/from16 v25, v12

    move-object/from16 v31, v14

    move-object v9, v15

    const/4 v7, 0x0

    move-object v12, v10

    goto/16 :goto_9a3

    .line 1361
    :cond_365
    move-object/from16 v25, v12

    move-object/from16 v31, v14

    move-object v9, v15

    const/4 v7, 0x0

    move-object v12, v10

    goto/16 :goto_9a3

    .line 1227
    :cond_36e
    nop

    .line 1228
    :try_start_36f
    invoke-virtual {v15, v4}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v9
    :try_end_373
    .catchall {:try_start_36f .. :try_end_373} :catchall_557

    .line 1229
    .local v9, "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    if-eqz v9, :cond_37a

    :try_start_375
    invoke-virtual {v9}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v25
    :try_end_379
    .catchall {:try_start_375 .. :try_end_379} :catchall_cd

    goto :goto_37c

    :cond_37a
    const/16 v25, 0x0

    .line 1232
    .local v25, "flags":I
    :goto_37c
    if-nez v1, :cond_380

    .line 1233
    move-object v0, v5

    goto :goto_386

    :cond_380
    :try_start_380
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v0

    .line 1236
    .local v0, "bpToRevoke":Lcom/android/server/pm/permission/BasePermission;
    :goto_386
    invoke-virtual {v15, v0}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v3
    :try_end_38a
    .catchall {:try_start_380 .. :try_end_38a} :catchall_557

    move-object/from16 v26, v1

    const/4 v1, -0x1

    .end local v1  # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .local v26, "upgradedActivityRecognitionPermission":Ljava/lang/String;
    if-eq v3, v1, :cond_39c

    .line 1238
    const v3, 0xbbff

    move/from16 v27, v11

    const/4 v11, 0x0

    .end local v11  # "grant":I
    .local v27, "grant":I
    :try_start_395
    invoke-virtual {v15, v0, v1, v3, v11}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z
    :try_end_398
    .catchall {:try_start_395 .. :try_end_398} :catchall_cd

    .line 1242
    const/4 v1, 0x1

    move/from16 v16, v1

    .end local v16  # "changedInstallPermission":Z
    .local v1, "changedInstallPermission":Z
    goto :goto_39e

    .line 1236
    .end local v1  # "changedInstallPermission":Z
    .end local v27  # "grant":I
    .restart local v11  # "grant":I
    .restart local v16  # "changedInstallPermission":Z
    :cond_39c
    move/from16 v27, v11

    .line 1245
    .end local v11  # "grant":I
    .restart local v27  # "grant":I
    :goto_39e
    :try_start_39e
    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->isHardRestricted()Z

    move-result v1

    .line 1246
    .local v1, "hardRestricted":Z
    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->isSoftRestricted()Z

    move-result v3

    .line 1248
    .local v3, "softRestricted":Z
    array-length v11, v14
    :try_end_3a7
    .catchall {:try_start_39e .. :try_end_3a7} :catchall_557

    move-object/from16 v28, v0

    move-object/from16 v10, v21

    const/4 v0, 0x0

    move/from16 v34, v25

    move-object/from16 v25, v12

    move/from16 v12, v34

    .end local v0  # "bpToRevoke":Lcom/android/server/pm/permission/BasePermission;
    .end local v21  # "updatedUserIds":[I
    .local v10, "updatedUserIds":[I
    .local v12, "flags":I
    .local v25, "ps":Lcom/android/server/pm/PackageSetting;
    .local v28, "bpToRevoke":Lcom/android/server/pm/permission/BasePermission;
    :goto_3b2
    if-ge v0, v11, :cond_545

    :try_start_3b4
    aget v21, v14, v0

    move/from16 v29, v21

    .line 1252
    .local v29, "userId":I
    move/from16 v30, v11

    iget-object v11, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;
    :try_end_3bc
    .catchall {:try_start_3b4 .. :try_end_3bc} :catchall_52e

    if-eqz v11, :cond_3e2

    :try_start_3be
    iget-object v11, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    .line 1254
    move-object/from16 v31, v4

    move/from16 v4, v29

    .end local v29  # "userId":I
    .local v4, "userId":I
    .local v31, "perm":Ljava/lang/String;
    invoke-virtual {v11, v4}, Lcom/android/server/policy/PermissionPolicyInternal;->isInitialized(I)Z

    move-result v11
    :try_end_3c8
    .catchall {:try_start_3be .. :try_end_3c8} :catchall_3cc

    if-eqz v11, :cond_3e6

    const/4 v11, 0x1

    goto :goto_3e7

    .line 1410
    .end local v1  # "hardRestricted":Z
    .end local v3  # "softRestricted":Z
    .end local v4  # "userId":I
    .end local v5  # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v6  # "appSupportsRuntimePermissions":Z
    .end local v9  # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v12  # "flags":I
    .end local v19  # "N":I
    .end local v20  # "allowedSig":Z
    .end local v22  # "i":I
    .end local v23  # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v24  # "permName":Ljava/lang/String;
    .end local v26  # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v27  # "grant":I
    .end local v28  # "bpToRevoke":Lcom/android/server/pm/permission/BasePermission;
    .end local v31  # "perm":Ljava/lang/String;
    :catchall_3cc
    move-exception v0

    move-object/from16 v12, p3

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move-object v3, v10

    move-object/from16 v31, v14

    move-object v9, v15

    move/from16 v4, v16

    move-object/from16 v11, v25

    move/from16 v10, p2

    move-object v14, v7

    move/from16 v7, v18

    goto/16 :goto_ac5

    .line 1252
    .restart local v1  # "hardRestricted":Z
    .restart local v3  # "softRestricted":Z
    .local v4, "perm":Ljava/lang/String;
    .restart local v5  # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v6  # "appSupportsRuntimePermissions":Z
    .restart local v9  # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v12  # "flags":I
    .restart local v19  # "N":I
    .restart local v20  # "allowedSig":Z
    .restart local v22  # "i":I
    .restart local v23  # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v24  # "permName":Ljava/lang/String;
    .restart local v26  # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v27  # "grant":I
    .restart local v28  # "bpToRevoke":Lcom/android/server/pm/permission/BasePermission;
    .restart local v29  # "userId":I
    :cond_3e2
    move-object/from16 v31, v4

    move/from16 v4, v29

    .line 1254
    .end local v29  # "userId":I
    .local v4, "userId":I
    .restart local v31  # "perm":Ljava/lang/String;
    :cond_3e6
    const/4 v11, 0x0

    .line 1256
    .local v11, "permissionPolicyInitialized":Z
    :goto_3e7
    const/16 v21, 0x0

    .line 1258
    .local v21, "wasChanged":Z
    :try_start_3e9
    iget-object v7, v5, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    .line 1259
    invoke-virtual {v15, v7, v4}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v7
    :try_end_3ef
    .catchall {:try_start_3e9 .. :try_end_3ef} :catchall_52e

    and-int/lit16 v7, v7, 0x3800

    if-eqz v7, :cond_3f5

    const/4 v7, 0x1

    goto :goto_3f6

    :cond_3f5
    const/4 v7, 0x0

    .line 1261
    .local v7, "restrictionExempt":Z
    :goto_3f6
    move-object/from16 v29, v14

    .end local v14  # "currentUserIds":[I
    .local v29, "currentUserIds":[I
    :try_start_3f8
    iget-object v14, v5, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v15, v14, v4}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v14

    and-int/lit16 v14, v14, 0x4000

    if-eqz v14, :cond_404

    const/4 v14, 0x1

    goto :goto_405

    :cond_404
    const/4 v14, 0x0

    .line 1264
    .local v14, "restrictionApplied":Z
    :goto_405
    if-eqz v6, :cond_465

    .line 1266
    if-eqz v11, :cond_434

    if-eqz v1, :cond_434

    .line 1267
    if-nez v7, :cond_42f

    .line 1268
    if-eqz v9, :cond_424

    invoke-virtual {v9}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isGranted()Z

    move-result v32

    if-eqz v32, :cond_424

    .line 1269
    move-object/from16 v32, v9

    .end local v9  # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .local v32, "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    invoke-virtual {v13, v5, v4}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v9
    :try_end_41b
    .catchall {:try_start_3f8 .. :try_end_41b} :catchall_517

    move-object/from16 v33, v15

    const/4 v15, -0x1

    .end local v15  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .local v33, "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    if-eq v9, v15, :cond_428

    .line 1271
    const/4 v9, 0x1

    move/from16 v21, v9

    .end local v21  # "wasChanged":Z
    .local v9, "wasChanged":Z
    goto :goto_428

    .line 1268
    .end local v32  # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v33  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .local v9, "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v15  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v21  # "wasChanged":Z
    :cond_424
    move-object/from16 v32, v9

    move-object/from16 v33, v15

    .line 1273
    .end local v9  # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v15  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v32  # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v33  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :cond_428
    :goto_428
    if-nez v14, :cond_444

    .line 1274
    or-int/lit16 v12, v12, 0x4000

    .line 1275
    const/16 v21, 0x1

    goto :goto_444

    .line 1267
    .end local v32  # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v33  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v9  # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v15  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :cond_42f
    move-object/from16 v32, v9

    move-object/from16 v33, v15

    .end local v9  # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v15  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v32  # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v33  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    goto :goto_444

    .line 1266
    .end local v32  # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v33  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v9  # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v15  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :cond_434
    move-object/from16 v32, v9

    move-object/from16 v33, v15

    .line 1279
    .end local v9  # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v15  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v32  # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v33  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    if-eqz v11, :cond_444

    if-eqz v3, :cond_444

    .line 1282
    if-nez v7, :cond_444

    if-nez v14, :cond_444

    .line 1283
    or-int/lit16 v12, v12, 0x4000

    .line 1284
    const/16 v21, 0x1

    .line 1289
    :cond_444
    :goto_444
    and-int/lit8 v9, v12, 0x40

    if-eqz v9, :cond_44c

    .line 1290
    and-int/lit8 v12, v12, -0x41

    .line 1291
    const/16 v21, 0x1

    .line 1294
    :cond_44c
    and-int/lit8 v9, v12, 0x8

    if-eqz v9, :cond_455

    .line 1295
    and-int/lit8 v12, v12, -0x9

    .line 1296
    const/16 v21, 0x1

    goto :goto_48a

    .line 1298
    :cond_455
    if-eqz v11, :cond_45b

    if-eqz v1, :cond_45b

    if-eqz v7, :cond_48a

    .line 1300
    :cond_45b
    :try_start_45b
    invoke-virtual {v13, v5, v4}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v9

    const/4 v15, -0x1

    if-eq v9, v15, :cond_48a

    .line 1302
    const/16 v21, 0x1

    goto :goto_48a

    .line 1306
    .end local v32  # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v33  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v9  # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v15  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :cond_465
    move-object/from16 v32, v9

    move-object/from16 v33, v15

    .end local v9  # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v15  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v32  # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v33  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    iget-object v9, v5, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v13, v9, v4}, Lcom/android/server/pm/permission/PermissionsState;->hasRuntimePermission(Ljava/lang/String;I)Z

    move-result v9

    if-nez v9, :cond_47c

    .line 1307
    invoke-virtual {v13, v5, v4}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v9

    const/4 v15, -0x1

    if-eq v9, v15, :cond_47c

    .line 1309
    or-int/lit8 v12, v12, 0x40

    .line 1310
    const/16 v21, 0x1

    .line 1315
    :cond_47c
    if-eqz v11, :cond_48a

    if-nez v1, :cond_482

    if-eqz v3, :cond_48a

    :cond_482
    if-nez v7, :cond_48a

    if-nez v14, :cond_48a

    .line 1318
    or-int/lit16 v12, v12, 0x4000

    .line 1319
    const/16 v21, 0x1

    .line 1324
    :cond_48a
    :goto_48a
    if-eqz v11, :cond_49d

    .line 1325
    if-nez v1, :cond_490

    if-eqz v3, :cond_492

    :cond_490
    if-eqz v7, :cond_49d

    .line 1326
    :cond_492
    if-eqz v14, :cond_49d

    .line 1327
    and-int/lit16 v9, v12, -0x4001

    .line 1329
    .end local v12  # "flags":I
    .local v9, "flags":I
    if-nez v6, :cond_49a

    .line 1330
    or-int/lit8 v9, v9, 0x40

    .line 1332
    :cond_49a
    const/16 v21, 0x1

    move v12, v9

    .line 1337
    .end local v9  # "flags":I
    .restart local v12  # "flags":I
    :cond_49d
    if-eqz v21, :cond_4a4

    .line 1338
    invoke-static {v10, v4}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v9
    :try_end_4a3
    .catchall {:try_start_45b .. :try_end_4a3} :catchall_4ff

    .end local v10  # "updatedUserIds":[I
    .local v9, "updatedUserIds":[I
    goto :goto_4a5

    .line 1337
    .end local v9  # "updatedUserIds":[I
    .restart local v10  # "updatedUserIds":[I
    :cond_4a4
    move-object v9, v10

    .line 1342
    .end local v10  # "updatedUserIds":[I
    .restart local v9  # "updatedUserIds":[I
    :goto_4a5
    :try_start_4a5
    iget-object v10, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string v15, "com.sohu.inputmethod.sogou.meizu"

    invoke-static {v10, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4cf

    .line 1343
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageParser$Package;->isUpdatedSystemApp()Z

    move-result v10

    if-nez v10, :cond_4c1

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageParser$Package;->isSystem()Z

    move-result v10

    if-nez v10, :cond_4c1

    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerService;->isMzApp(Landroid/content/pm/PackageParser$Package;)Z

    move-result v10

    if-eqz v10, :cond_4cf

    .line 1344
    :cond_4c1
    invoke-virtual {v13, v5, v4}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    .line 1345
    const/16 v10, 0x20

    invoke-virtual {v13, v5, v4, v10, v10}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 1348
    invoke-static {v9, v4}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v10
    :try_end_4cd
    .catchall {:try_start_4a5 .. :try_end_4cd} :catchall_4e7

    move-object v9, v10

    goto :goto_4d0

    .line 1353
    :cond_4cf
    move-object v10, v9

    .end local v9  # "updatedUserIds":[I
    .restart local v10  # "updatedUserIds":[I
    :goto_4d0
    const v9, 0xfbff

    :try_start_4d3
    invoke-virtual {v13, v5, v4, v9, v12}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z
    :try_end_4d6
    .catchall {:try_start_4d3 .. :try_end_4d6} :catchall_4ff

    .line 1248
    nop

    .end local v4  # "userId":I
    .end local v7  # "restrictionExempt":Z
    .end local v11  # "permissionPolicyInitialized":Z
    .end local v14  # "restrictionApplied":Z
    .end local v21  # "wasChanged":Z
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v7, p0

    move-object/from16 v14, v29

    move/from16 v11, v30

    move-object/from16 v4, v31

    move-object/from16 v9, v32

    move-object/from16 v15, v33

    goto/16 :goto_3b2

    .line 1410
    .end local v1  # "hardRestricted":Z
    .end local v3  # "softRestricted":Z
    .end local v5  # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v6  # "appSupportsRuntimePermissions":Z
    .end local v10  # "updatedUserIds":[I
    .end local v12  # "flags":I
    .end local v19  # "N":I
    .end local v20  # "allowedSig":Z
    .end local v22  # "i":I
    .end local v23  # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v24  # "permName":Ljava/lang/String;
    .end local v26  # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v27  # "grant":I
    .end local v28  # "bpToRevoke":Lcom/android/server/pm/permission/BasePermission;
    .end local v31  # "perm":Ljava/lang/String;
    .end local v32  # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v9  # "updatedUserIds":[I
    :catchall_4e7
    move-exception v0

    move-object/from16 v14, p0

    move/from16 v10, p2

    move-object/from16 v12, p3

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move-object v3, v9

    move/from16 v4, v16

    move/from16 v7, v18

    move-object/from16 v11, v25

    move-object/from16 v31, v29

    move-object/from16 v9, v33

    goto/16 :goto_ac5

    .end local v9  # "updatedUserIds":[I
    .restart local v10  # "updatedUserIds":[I
    :catchall_4ff
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v12, p3

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move-object v3, v10

    move/from16 v4, v16

    move/from16 v7, v18

    move-object/from16 v11, v25

    move-object/from16 v31, v29

    move-object/from16 v9, v33

    move/from16 v10, p2

    goto/16 :goto_ac5

    .end local v33  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v15  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :catchall_517
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v12, p3

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move-object v3, v10

    move-object v9, v15

    move/from16 v4, v16

    move/from16 v7, v18

    move-object/from16 v11, v25

    move-object/from16 v31, v29

    move/from16 v10, p2

    .end local v15  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v33  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    goto/16 :goto_ac5

    .end local v29  # "currentUserIds":[I
    .end local v33  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .local v14, "currentUserIds":[I
    .restart local v15  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :catchall_52e
    move-exception v0

    move-object/from16 v12, p3

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move-object v3, v10

    move-object/from16 v31, v14

    move-object v9, v15

    move/from16 v4, v16

    move/from16 v7, v18

    move-object/from16 v11, v25

    move-object/from16 v14, p0

    move/from16 v10, p2

    .end local v14  # "currentUserIds":[I
    .end local v15  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v29  # "currentUserIds":[I
    .restart local v33  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    goto/16 :goto_ac5

    .line 1248
    .end local v29  # "currentUserIds":[I
    .end local v33  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v1  # "hardRestricted":Z
    .restart local v3  # "softRestricted":Z
    .local v4, "perm":Ljava/lang/String;
    .restart local v5  # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v6  # "appSupportsRuntimePermissions":Z
    .local v9, "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v12  # "flags":I
    .restart local v14  # "currentUserIds":[I
    .restart local v15  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v19  # "N":I
    .restart local v20  # "allowedSig":Z
    .restart local v22  # "i":I
    .restart local v23  # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v24  # "permName":Ljava/lang/String;
    .restart local v26  # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v27  # "grant":I
    .restart local v28  # "bpToRevoke":Lcom/android/server/pm/permission/BasePermission;
    :cond_545
    move-object/from16 v31, v4

    move-object/from16 v32, v9

    move-object/from16 v29, v14

    move-object/from16 v33, v15

    .line 1356
    .end local v1  # "hardRestricted":Z
    .end local v3  # "softRestricted":Z
    .end local v4  # "perm":Ljava/lang/String;
    .end local v9  # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v12  # "flags":I
    .end local v14  # "currentUserIds":[I
    .end local v15  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v28  # "bpToRevoke":Lcom/android/server/pm/permission/BasePermission;
    .restart local v29  # "currentUserIds":[I
    .restart local v31  # "perm":Ljava/lang/String;
    .restart local v33  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    move-object/from16 v12, p3

    move-object v4, v10

    move-object/from16 v31, v29

    move-object/from16 v9, v33

    const/4 v7, 0x0

    goto/16 :goto_9a5

    .line 1410
    .end local v5  # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v6  # "appSupportsRuntimePermissions":Z
    .end local v10  # "updatedUserIds":[I
    .end local v19  # "N":I
    .end local v20  # "allowedSig":Z
    .end local v22  # "i":I
    .end local v23  # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v24  # "permName":Ljava/lang/String;
    .end local v25  # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v26  # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v27  # "grant":I
    .end local v29  # "currentUserIds":[I
    .end local v31  # "perm":Ljava/lang/String;
    .end local v33  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .local v12, "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v14  # "currentUserIds":[I
    .restart local v15  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .local v21, "updatedUserIds":[I
    :catchall_557
    move-exception v0

    move/from16 v10, p2

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move-object v11, v12

    move-object/from16 v31, v14

    move-object v9, v15

    move/from16 v4, v16

    move/from16 v7, v18

    move-object/from16 v3, v21

    move-object/from16 v14, p0

    move-object/from16 v12, p3

    .end local v12  # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v14  # "currentUserIds":[I
    .end local v15  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v25  # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v29  # "currentUserIds":[I
    .restart local v33  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    goto/16 :goto_ac5

    .line 1097
    .end local v25  # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v29  # "currentUserIds":[I
    .end local v33  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .local v1, "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v4  # "perm":Ljava/lang/String;
    .restart local v5  # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v6  # "appSupportsRuntimePermissions":Z
    .local v11, "grant":I
    .restart local v12  # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v14  # "currentUserIds":[I
    .restart local v15  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v19  # "N":I
    .restart local v20  # "allowedSig":Z
    .restart local v22  # "i":I
    .restart local v23  # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v24  # "permName":Ljava/lang/String;
    :cond_56e
    move-object/from16 v26, v1

    move-object/from16 v31, v4

    move/from16 v27, v11

    move-object/from16 v25, v12

    move-object/from16 v29, v14

    move-object/from16 v33, v15

    .end local v1  # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v4  # "perm":Ljava/lang/String;
    .end local v11  # "grant":I
    .end local v12  # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v14  # "currentUserIds":[I
    .end local v15  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v25  # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v26  # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v27  # "grant":I
    .restart local v29  # "currentUserIds":[I
    .restart local v31  # "perm":Ljava/lang/String;
    .restart local v33  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :try_start_57a
    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->isHardRestricted()Z

    move-result v0

    .line 1098
    .local v0, "hardRestricted":Z
    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->isSoftRestricted()Z

    move-result v1
    :try_end_582
    .catchall {:try_start_57a .. :try_end_582} :catchall_786

    .line 1100
    .local v1, "softRestricted":Z
    move-object/from16 v7, v29

    .end local v29  # "currentUserIds":[I
    .local v7, "currentUserIds":[I
    :try_start_584
    array-length v3, v7
    :try_end_585
    .catchall {:try_start_584 .. :try_end_585} :catchall_76d

    move-object/from16 v9, v21

    const/4 v4, 0x0

    .end local v21  # "updatedUserIds":[I
    .local v9, "updatedUserIds":[I
    :goto_588
    if-ge v4, v3, :cond_761

    :try_start_58a
    aget v10, v7, v4

    .line 1104
    .local v10, "userId":I
    move-object/from16 v12, p0

    iget-object v11, v12, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;
    :try_end_590
    .catchall {:try_start_58a .. :try_end_590} :catchall_749

    if-eqz v11, :cond_5b3

    :try_start_592
    iget-object v11, v12, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    .line 1106
    invoke-virtual {v11, v10}, Lcom/android/server/policy/PermissionPolicyInternal;->isInitialized(I)Z

    move-result v11
    :try_end_598
    .catchall {:try_start_592 .. :try_end_598} :catchall_59c

    if-eqz v11, :cond_5b3

    const/4 v11, 0x1

    goto :goto_5b4

    .line 1410
    .end local v0  # "hardRestricted":Z
    .end local v1  # "softRestricted":Z
    .end local v5  # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v6  # "appSupportsRuntimePermissions":Z
    .end local v10  # "userId":I
    .end local v19  # "N":I
    .end local v20  # "allowedSig":Z
    .end local v22  # "i":I
    .end local v23  # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v24  # "permName":Ljava/lang/String;
    .end local v26  # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v27  # "grant":I
    .end local v31  # "perm":Ljava/lang/String;
    :catchall_59c
    move-exception v0

    move/from16 v10, p2

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move-object/from16 v31, v7

    move-object v3, v9

    move-object v14, v12

    move/from16 v4, v16

    move/from16 v7, v18

    move-object/from16 v11, v25

    move-object/from16 v9, v33

    move-object/from16 v12, p3

    goto/16 :goto_ac5

    .line 1106
    .restart local v0  # "hardRestricted":Z
    .restart local v1  # "softRestricted":Z
    .restart local v5  # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v6  # "appSupportsRuntimePermissions":Z
    .restart local v10  # "userId":I
    .restart local v19  # "N":I
    .restart local v20  # "allowedSig":Z
    .restart local v22  # "i":I
    .restart local v23  # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v24  # "permName":Ljava/lang/String;
    .restart local v26  # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v27  # "grant":I
    .restart local v31  # "perm":Ljava/lang/String;
    :cond_5b3
    const/4 v11, 0x0

    .line 1108
    .local v11, "permissionPolicyInitialized":Z
    :goto_5b4
    nop

    .line 1109
    move-object/from16 v15, v31

    move-object/from16 v14, v33

    .end local v31  # "perm":Ljava/lang/String;
    .end local v33  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .local v14, "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .local v15, "perm":Ljava/lang/String;
    :try_start_5b9
    invoke-virtual {v14, v15, v10}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v21
    :try_end_5bd
    .catchall {:try_start_5b9 .. :try_end_5bd} :catchall_732

    .line 1110
    .local v21, "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    if-eqz v21, :cond_5da

    :try_start_5bf
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v28
    :try_end_5c3
    .catchall {:try_start_5bf .. :try_end_5c3} :catchall_5c4

    goto :goto_5dc

    .line 1410
    .end local v0  # "hardRestricted":Z
    .end local v1  # "softRestricted":Z
    .end local v5  # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v6  # "appSupportsRuntimePermissions":Z
    .end local v10  # "userId":I
    .end local v11  # "permissionPolicyInitialized":Z
    .end local v15  # "perm":Ljava/lang/String;
    .end local v19  # "N":I
    .end local v20  # "allowedSig":Z
    .end local v21  # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v22  # "i":I
    .end local v23  # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v24  # "permName":Ljava/lang/String;
    .end local v26  # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v27  # "grant":I
    :catchall_5c4
    move-exception v0

    move/from16 v10, p2

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move-object/from16 v31, v7

    move-object v3, v9

    move-object v9, v14

    move/from16 v4, v16

    move/from16 v7, v18

    move-object/from16 v11, v25

    move-object v14, v12

    move-object/from16 v12, p3

    goto/16 :goto_ac5

    .line 1110
    .restart local v0  # "hardRestricted":Z
    .restart local v1  # "softRestricted":Z
    .restart local v5  # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v6  # "appSupportsRuntimePermissions":Z
    .restart local v10  # "userId":I
    .restart local v11  # "permissionPolicyInitialized":Z
    .restart local v15  # "perm":Ljava/lang/String;
    .restart local v19  # "N":I
    .restart local v20  # "allowedSig":Z
    .restart local v21  # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .restart local v22  # "i":I
    .restart local v23  # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v24  # "permName":Ljava/lang/String;
    .restart local v26  # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v27  # "grant":I
    :cond_5da
    const/16 v28, 0x0

    :goto_5dc
    move/from16 v29, v28

    .line 1112
    .local v29, "flags":I
    const/16 v28, 0x0

    .line 1114
    .local v28, "wasChanged":Z
    move/from16 v30, v3

    :try_start_5e2
    iget-object v3, v5, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    .line 1115
    invoke-virtual {v14, v3, v10}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v3
    :try_end_5e8
    .catchall {:try_start_5e2 .. :try_end_5e8} :catchall_732

    and-int/lit16 v3, v3, 0x3800

    if-eqz v3, :cond_5ee

    const/4 v3, 0x1

    goto :goto_5ef

    :cond_5ee
    const/4 v3, 0x0

    .line 1117
    .local v3, "restrictionExempt":Z
    :goto_5ef
    move-object/from16 v31, v7

    .end local v7  # "currentUserIds":[I
    .local v31, "currentUserIds":[I
    :try_start_5f1
    iget-object v7, v5, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v14, v7, v10}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v7

    and-int/lit16 v7, v7, 0x4000

    if-eqz v7, :cond_5fd

    const/4 v7, 0x1

    goto :goto_5fe

    :cond_5fd
    const/4 v7, 0x0

    .line 1120
    .local v7, "restrictionApplied":Z
    :goto_5fe
    if-eqz v6, :cond_67b

    .line 1122
    if-eqz v11, :cond_62e

    if-eqz v0, :cond_62e

    .line 1123
    if-nez v3, :cond_629

    .line 1124
    if-eqz v21, :cond_61b

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isGranted()Z

    move-result v32

    if-eqz v32, :cond_61b

    .line 1125
    invoke-virtual {v13, v5, v10}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v12
    :try_end_612
    .catchall {:try_start_5f1 .. :try_end_612} :catchall_71d

    move-object/from16 v33, v14

    const/4 v14, -0x1

    .end local v14  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v33  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    if-eq v12, v14, :cond_61d

    .line 1127
    const/4 v12, 0x1

    move/from16 v28, v12

    .end local v28  # "wasChanged":Z
    .local v12, "wasChanged":Z
    goto :goto_61d

    .line 1124
    .end local v12  # "wasChanged":Z
    .end local v33  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v14  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v28  # "wasChanged":Z
    :cond_61b
    move-object/from16 v33, v14

    .line 1129
    .end local v14  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v33  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :cond_61d
    :goto_61d
    if-nez v7, :cond_626

    .line 1130
    move/from16 v12, v29

    .end local v29  # "flags":I
    .local v12, "flags":I
    or-int/lit16 v12, v12, 0x4000

    .line 1131
    const/16 v28, 0x1

    goto :goto_63e

    .line 1129
    .end local v12  # "flags":I
    .restart local v29  # "flags":I
    :cond_626
    move/from16 v12, v29

    .end local v29  # "flags":I
    .restart local v12  # "flags":I
    goto :goto_63e

    .line 1123
    .end local v12  # "flags":I
    .end local v33  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v14  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v29  # "flags":I
    :cond_629
    move-object/from16 v33, v14

    move/from16 v12, v29

    .end local v14  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v29  # "flags":I
    .restart local v12  # "flags":I
    .restart local v33  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    goto :goto_63e

    .line 1122
    .end local v12  # "flags":I
    .end local v33  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v14  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v29  # "flags":I
    :cond_62e
    move-object/from16 v33, v14

    move/from16 v12, v29

    .line 1135
    .end local v14  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v29  # "flags":I
    .restart local v12  # "flags":I
    .restart local v33  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    if-eqz v11, :cond_63e

    if-eqz v1, :cond_63e

    .line 1138
    if-nez v3, :cond_63e

    if-nez v7, :cond_63e

    .line 1139
    or-int/lit16 v12, v12, 0x4000

    .line 1140
    const/16 v28, 0x1

    .line 1145
    :cond_63e
    :goto_63e
    and-int/lit8 v14, v12, 0x40

    if-eqz v14, :cond_646

    .line 1146
    and-int/lit8 v12, v12, -0x41

    .line 1147
    const/16 v28, 0x1

    .line 1150
    :cond_646
    and-int/lit8 v14, v12, 0x8

    if-eqz v14, :cond_652

    .line 1151
    and-int/lit8 v12, v12, -0x9

    .line 1152
    const/16 v28, 0x1

    move-object/from16 v29, v15

    goto/16 :goto_6bc

    .line 1154
    :cond_652
    if-eqz v11, :cond_65c

    if-eqz v0, :cond_65c

    if-eqz v3, :cond_659

    goto :goto_65c

    :cond_659
    move/from16 v29, v12

    goto :goto_676

    .line 1156
    :cond_65c
    :goto_65c
    if-eqz v21, :cond_674

    :try_start_65e
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isGranted()Z

    move-result v14

    if-eqz v14, :cond_674

    .line 1157
    invoke-virtual {v13, v5, v10}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v14

    move/from16 v29, v12

    const/4 v12, -0x1

    .end local v12  # "flags":I
    .restart local v29  # "flags":I
    if-ne v14, v12, :cond_676

    .line 1159
    const/16 v28, 0x1

    move/from16 v12, v29

    move-object/from16 v29, v15

    goto :goto_6bc

    .line 1156
    .end local v29  # "flags":I
    .restart local v12  # "flags":I
    :cond_674
    move/from16 v29, v12

    .line 1193
    .end local v12  # "flags":I
    .restart local v29  # "flags":I
    :cond_676
    :goto_676
    move/from16 v12, v29

    move-object/from16 v29, v15

    goto :goto_6bc

    .line 1164
    .end local v33  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v14  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :cond_67b
    move-object/from16 v33, v14

    move/from16 v12, v29

    .end local v14  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v29  # "flags":I
    .restart local v12  # "flags":I
    .restart local v33  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    if-nez v21, :cond_69a

    .line 1166
    const-string v14, "android"

    .line 1167
    move-object/from16 v29, v15

    .end local v15  # "perm":Ljava/lang/String;
    .local v29, "perm":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v15

    .line 1166
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_69c

    .line 1168
    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->isRemoved()Z

    move-result v14

    if-nez v14, :cond_69c

    .line 1169
    or-int/lit8 v12, v12, 0x48

    .line 1171
    const/16 v28, 0x1

    goto :goto_69c

    .line 1164
    .end local v29  # "perm":Ljava/lang/String;
    .restart local v15  # "perm":Ljava/lang/String;
    :cond_69a
    move-object/from16 v29, v15

    .line 1176
    .end local v15  # "perm":Ljava/lang/String;
    .restart local v29  # "perm":Ljava/lang/String;
    :cond_69c
    :goto_69c
    iget-object v14, v5, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v13, v14, v10}, Lcom/android/server/pm/permission/PermissionsState;->hasRuntimePermission(Ljava/lang/String;I)Z

    move-result v14

    if-nez v14, :cond_6ae

    .line 1177
    invoke-virtual {v13, v5, v10}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_6ae

    .line 1179
    const/4 v14, 0x1

    move/from16 v28, v14

    .line 1184
    :cond_6ae
    if-eqz v11, :cond_6bc

    if-nez v0, :cond_6b4

    if-eqz v1, :cond_6bc

    :cond_6b4
    if-nez v3, :cond_6bc

    if-nez v7, :cond_6bc

    .line 1187
    or-int/lit16 v12, v12, 0x4000

    .line 1188
    const/16 v28, 0x1

    .line 1193
    :cond_6bc
    :goto_6bc
    if-eqz v11, :cond_6ce

    .line 1194
    if-nez v0, :cond_6c2

    if-eqz v1, :cond_6c4

    :cond_6c2
    if-eqz v3, :cond_6ce

    .line 1195
    :cond_6c4
    if-eqz v7, :cond_6ce

    .line 1196
    and-int/lit16 v12, v12, -0x4001

    .line 1198
    if-nez v6, :cond_6cc

    .line 1199
    or-int/lit8 v12, v12, 0x40

    .line 1201
    :cond_6cc
    const/16 v28, 0x1

    .line 1206
    :cond_6ce
    if-eqz v28, :cond_6d5

    .line 1207
    invoke-static {v9, v10}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v14

    move-object v9, v14

    .line 1211
    :cond_6d5
    iget-object v14, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const-string v15, "com.sohu.inputmethod.sogou.meizu"

    invoke-static {v14, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_6f6

    .line 1212
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageParser$Package;->isSystem()Z

    move-result v14

    if-nez v14, :cond_6f1

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/PackageParser$Package;->isUpdatedSystemApp()Z

    move-result v14

    if-nez v14, :cond_6f1

    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerService;->isMzApp(Landroid/content/pm/PackageParser$Package;)Z

    move-result v14

    if-eqz v14, :cond_6f6

    .line 1213
    :cond_6f1
    invoke-virtual {v13, v5, v10}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    .line 1214
    or-int/lit8 v12, v12, 0x20

    .line 1219
    :cond_6f6
    const v14, 0xfbff

    invoke-virtual {v13, v5, v10, v14, v12}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z
    :try_end_6fc
    .catchall {:try_start_65e .. :try_end_6fc} :catchall_707

    .line 1100
    nop

    .end local v3  # "restrictionExempt":Z
    .end local v7  # "restrictionApplied":Z
    .end local v10  # "userId":I
    .end local v11  # "permissionPolicyInitialized":Z
    .end local v12  # "flags":I
    .end local v21  # "permState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v28  # "wasChanged":Z
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v30

    move-object/from16 v7, v31

    move-object/from16 v31, v29

    goto/16 :goto_588

    .line 1410
    .end local v0  # "hardRestricted":Z
    .end local v1  # "softRestricted":Z
    .end local v5  # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v6  # "appSupportsRuntimePermissions":Z
    .end local v19  # "N":I
    .end local v20  # "allowedSig":Z
    .end local v22  # "i":I
    .end local v23  # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v24  # "permName":Ljava/lang/String;
    .end local v26  # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v27  # "grant":I
    .end local v29  # "perm":Ljava/lang/String;
    :catchall_707
    move-exception v0

    move-object/from16 v14, p0

    move/from16 v10, p2

    move-object/from16 v12, p3

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move-object v3, v9

    move/from16 v4, v16

    move/from16 v7, v18

    move-object/from16 v11, v25

    move-object/from16 v9, v33

    goto/16 :goto_ac5

    .end local v33  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v14  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :catchall_71d
    move-exception v0

    move/from16 v10, p2

    move-object/from16 v12, p3

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move-object v3, v9

    move-object v9, v14

    move/from16 v4, v16

    move/from16 v7, v18

    move-object/from16 v11, v25

    move-object/from16 v14, p0

    .end local v14  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v33  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    goto/16 :goto_ac5

    .end local v31  # "currentUserIds":[I
    .end local v33  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .local v7, "currentUserIds":[I
    .restart local v14  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :catchall_732
    move-exception v0

    move-object/from16 v31, v7

    move/from16 v10, p2

    move-object/from16 v12, p3

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move-object v3, v9

    move-object v9, v14

    move/from16 v4, v16

    move/from16 v7, v18

    move-object/from16 v11, v25

    move-object/from16 v14, p0

    .end local v7  # "currentUserIds":[I
    .end local v14  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v31  # "currentUserIds":[I
    .restart local v33  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    goto/16 :goto_ac5

    .end local v31  # "currentUserIds":[I
    .restart local v7  # "currentUserIds":[I
    :catchall_749
    move-exception v0

    move-object/from16 v31, v7

    move-object/from16 v14, p0

    move/from16 v10, p2

    move-object/from16 v12, p3

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move-object v3, v9

    move/from16 v4, v16

    move/from16 v7, v18

    move-object/from16 v11, v25

    move-object/from16 v9, v33

    .end local v7  # "currentUserIds":[I
    .restart local v31  # "currentUserIds":[I
    goto/16 :goto_ac5

    .line 1100
    .restart local v0  # "hardRestricted":Z
    .restart local v1  # "softRestricted":Z
    .restart local v5  # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v6  # "appSupportsRuntimePermissions":Z
    .restart local v7  # "currentUserIds":[I
    .restart local v19  # "N":I
    .restart local v20  # "allowedSig":Z
    .restart local v22  # "i":I
    .restart local v23  # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v24  # "permName":Ljava/lang/String;
    .restart local v26  # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v27  # "grant":I
    .local v31, "perm":Ljava/lang/String;
    :cond_761
    move-object/from16 v29, v31

    move-object/from16 v31, v7

    .line 1222
    .end local v0  # "hardRestricted":Z
    .end local v1  # "softRestricted":Z
    .end local v7  # "currentUserIds":[I
    .restart local v29  # "perm":Ljava/lang/String;
    .local v31, "currentUserIds":[I
    move-object/from16 v12, p3

    move-object v4, v9

    move-object/from16 v9, v33

    const/4 v7, 0x0

    goto/16 :goto_9a5

    .line 1410
    .end local v5  # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v6  # "appSupportsRuntimePermissions":Z
    .end local v9  # "updatedUserIds":[I
    .end local v19  # "N":I
    .end local v20  # "allowedSig":Z
    .end local v22  # "i":I
    .end local v23  # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v24  # "permName":Ljava/lang/String;
    .end local v26  # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v27  # "grant":I
    .end local v29  # "perm":Ljava/lang/String;
    .end local v31  # "currentUserIds":[I
    .restart local v7  # "currentUserIds":[I
    .local v21, "updatedUserIds":[I
    :catchall_76d
    move-exception v0

    move-object/from16 v31, v7

    move-object/from16 v14, p0

    move/from16 v10, p2

    move-object/from16 v12, p3

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move/from16 v4, v16

    move/from16 v7, v18

    move-object/from16 v3, v21

    move-object/from16 v11, v25

    move-object/from16 v9, v33

    .end local v7  # "currentUserIds":[I
    .restart local v31  # "currentUserIds":[I
    goto/16 :goto_ac5

    .end local v31  # "currentUserIds":[I
    .local v29, "currentUserIds":[I
    :catchall_786
    move-exception v0

    move-object/from16 v31, v29

    move-object/from16 v14, p0

    move/from16 v10, p2

    move-object/from16 v12, p3

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move/from16 v4, v16

    move/from16 v7, v18

    move-object/from16 v3, v21

    move-object/from16 v11, v25

    move-object/from16 v9, v33

    .end local v29  # "currentUserIds":[I
    .restart local v31  # "currentUserIds":[I
    goto/16 :goto_ac5

    .line 1077
    .end local v25  # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v31  # "currentUserIds":[I
    .end local v33  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .local v1, "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v4  # "perm":Ljava/lang/String;
    .restart local v5  # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v6  # "appSupportsRuntimePermissions":Z
    .local v11, "grant":I
    .local v12, "ps":Lcom/android/server/pm/PackageSetting;
    .local v14, "currentUserIds":[I
    .local v15, "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v19  # "N":I
    .restart local v20  # "allowedSig":Z
    .restart local v22  # "i":I
    .restart local v23  # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v24  # "permName":Ljava/lang/String;
    :cond_79f
    move-object/from16 v26, v1

    move-object/from16 v29, v4

    move/from16 v27, v11

    move-object/from16 v25, v12

    move-object/from16 v31, v14

    move-object/from16 v33, v15

    .end local v1  # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v4  # "perm":Ljava/lang/String;
    .end local v11  # "grant":I
    .end local v12  # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v14  # "currentUserIds":[I
    .end local v15  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v25  # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v26  # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v27  # "grant":I
    .local v29, "perm":Ljava/lang/String;
    .restart local v31  # "currentUserIds":[I
    .restart local v33  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :try_start_7ab
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    array-length v1, v0
    :try_end_7b4
    .catchall {:try_start_7ab .. :try_end_7b4} :catchall_81d

    move-object/from16 v4, v21

    const/4 v3, 0x0

    .end local v21  # "updatedUserIds":[I
    .local v4, "updatedUserIds":[I
    :goto_7b7
    if-ge v3, v1, :cond_7f1

    :try_start_7b9
    aget v7, v0, v3
    :try_end_7bb
    .catchall {:try_start_7b9 .. :try_end_7bb} :catchall_7db

    .line 1078
    .local v7, "userId":I
    move-object/from16 v10, v29

    move-object/from16 v9, v33

    .end local v29  # "perm":Ljava/lang/String;
    .end local v33  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .local v9, "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .local v10, "perm":Ljava/lang/String;
    :try_start_7bf
    invoke-virtual {v9, v10, v7}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v11

    if-eqz v11, :cond_7d4

    .line 1081
    invoke-virtual {v9, v5, v7}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    .line 1082
    const v11, 0xfbff

    const/4 v12, 0x0

    invoke-virtual {v9, v5, v7, v11, v12}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 1085
    invoke-static {v4, v7}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v11

    move-object v4, v11

    .line 1077
    .end local v7  # "userId":I
    :cond_7d4
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v33, v9

    move-object/from16 v29, v10

    goto :goto_7b7

    .line 1410
    .end local v5  # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v6  # "appSupportsRuntimePermissions":Z
    .end local v9  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v10  # "perm":Ljava/lang/String;
    .end local v19  # "N":I
    .end local v20  # "allowedSig":Z
    .end local v22  # "i":I
    .end local v23  # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v24  # "permName":Ljava/lang/String;
    .end local v26  # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v27  # "grant":I
    .restart local v33  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :catchall_7db
    move-exception v0

    move-object/from16 v9, v33

    move-object/from16 v14, p0

    move/from16 v10, p2

    move-object/from16 v12, p3

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move-object v3, v4

    move/from16 v4, v16

    move/from16 v7, v18

    move-object/from16 v11, v25

    .end local v33  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v9  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    goto/16 :goto_ac5

    .line 1090
    .end local v9  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v5  # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v6  # "appSupportsRuntimePermissions":Z
    .restart local v19  # "N":I
    .restart local v20  # "allowedSig":Z
    .restart local v22  # "i":I
    .restart local v23  # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v24  # "permName":Ljava/lang/String;
    .restart local v26  # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v27  # "grant":I
    .restart local v29  # "perm":Ljava/lang/String;
    .restart local v33  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :cond_7f1
    move-object/from16 v10, v29

    move-object/from16 v9, v33

    .end local v29  # "perm":Ljava/lang/String;
    .end local v33  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v9  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v10  # "perm":Ljava/lang/String;
    invoke-virtual {v13, v5}, Lcom/android/server/pm/permission/PermissionsState;->grantInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v0
    :try_end_7f9
    .catchall {:try_start_7bf .. :try_end_7f9} :catchall_809

    const/4 v1, -0x1

    if-eq v0, v1, :cond_804

    .line 1092
    const/4 v0, 0x1

    move-object/from16 v12, p3

    move/from16 v16, v0

    const/4 v7, 0x0

    .end local v16  # "changedInstallPermission":Z
    .local v0, "changedInstallPermission":Z
    goto/16 :goto_9a5

    .line 1090
    .end local v0  # "changedInstallPermission":Z
    .restart local v16  # "changedInstallPermission":Z
    :cond_804
    move-object/from16 v12, p3

    const/4 v7, 0x0

    goto/16 :goto_9a5

    .line 1410
    .end local v5  # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v6  # "appSupportsRuntimePermissions":Z
    .end local v10  # "perm":Ljava/lang/String;
    .end local v19  # "N":I
    .end local v20  # "allowedSig":Z
    .end local v22  # "i":I
    .end local v23  # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v24  # "permName":Ljava/lang/String;
    .end local v26  # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v27  # "grant":I
    :catchall_809
    move-exception v0

    move-object/from16 v14, p0

    move/from16 v10, p2

    move-object/from16 v12, p3

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move-object v3, v4

    move/from16 v4, v16

    move/from16 v7, v18

    move-object/from16 v11, v25

    goto/16 :goto_ac5

    .end local v4  # "updatedUserIds":[I
    .end local v9  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v21  # "updatedUserIds":[I
    .restart local v33  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :catchall_81d
    move-exception v0

    move-object/from16 v9, v33

    move-object/from16 v14, p0

    move/from16 v10, p2

    move-object/from16 v12, p3

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move/from16 v4, v16

    move/from16 v7, v18

    move-object/from16 v3, v21

    move-object/from16 v11, v25

    .end local v33  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v9  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    goto/16 :goto_ac5

    .end local v9  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v25  # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v31  # "currentUserIds":[I
    .restart local v12  # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v14  # "currentUserIds":[I
    .restart local v15  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :catchall_834
    move-exception v0

    move-object/from16 v31, v14

    move-object v9, v15

    move-object/from16 v14, p0

    move/from16 v10, p2

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move-object v11, v12

    move/from16 v4, v16

    move/from16 v7, v18

    move-object/from16 v3, v21

    move-object/from16 v12, p3

    goto/16 :goto_961

    .line 1370
    .restart local v1  # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .local v4, "perm":Ljava/lang/String;
    .restart local v5  # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v6  # "appSupportsRuntimePermissions":Z
    .restart local v11  # "grant":I
    .restart local v19  # "N":I
    .restart local v20  # "allowedSig":Z
    .restart local v22  # "i":I
    .restart local v23  # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v24  # "permName":Ljava/lang/String;
    :cond_84b
    move-object/from16 v26, v1

    move-object v10, v4

    move-object/from16 v25, v12

    move-object/from16 v31, v14

    move-object v9, v15

    .end local v1  # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v4  # "perm":Ljava/lang/String;
    .end local v12  # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v14  # "currentUserIds":[I
    .end local v15  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v9  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v10  # "perm":Ljava/lang/String;
    .restart local v25  # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v26  # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .restart local v31  # "currentUserIds":[I
    :try_start_853
    invoke-virtual {v13, v5}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v0
    :try_end_857
    .catchall {:try_start_853 .. :try_end_857} :catchall_935

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8d3

    .line 1373
    const v0, 0xfbff

    const/4 v7, 0x0

    :try_start_85e
    invoke-virtual {v13, v5, v1, v0, v7}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z
    :try_end_861
    .catchall {:try_start_85e .. :try_end_861} :catchall_8be

    .line 1375
    const/4 v4, 0x1

    .line 1376
    .end local v16  # "changedInstallPermission":Z
    .local v4, "changedInstallPermission":Z
    :try_start_862
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Un-granting permission "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (protectionLevel="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1378
    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->getProtectionLevel()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " flags=0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1379
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1376
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8a3
    .catchall {:try_start_862 .. :try_end_8a3} :catchall_8ab

    move-object/from16 v12, p3

    move/from16 v16, v4

    move-object/from16 v4, v21

    goto/16 :goto_9a5

    .line 1410
    .end local v5  # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v6  # "appSupportsRuntimePermissions":Z
    .end local v10  # "perm":Ljava/lang/String;
    .end local v11  # "grant":I
    .end local v19  # "N":I
    .end local v20  # "allowedSig":Z
    .end local v22  # "i":I
    .end local v23  # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v24  # "permName":Ljava/lang/String;
    .end local v26  # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    :catchall_8ab
    move-exception v0

    move-object/from16 v14, p0

    move/from16 v10, p2

    move-object/from16 v12, p3

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move/from16 v7, v18

    move-object/from16 v3, v21

    move-object/from16 v11, v25

    goto/16 :goto_ac5

    .end local v4  # "changedInstallPermission":Z
    .restart local v16  # "changedInstallPermission":Z
    :catchall_8be
    move-exception v0

    move-object/from16 v14, p0

    move/from16 v10, p2

    move-object/from16 v12, p3

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move/from16 v4, v16

    move/from16 v7, v18

    move-object/from16 v3, v21

    move-object/from16 v11, v25

    goto/16 :goto_ac5

    .line 1381
    .restart local v5  # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v6  # "appSupportsRuntimePermissions":Z
    .restart local v10  # "perm":Ljava/lang/String;
    .restart local v11  # "grant":I
    .restart local v19  # "N":I
    .restart local v20  # "allowedSig":Z
    .restart local v22  # "i":I
    .restart local v23  # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v24  # "permName":Ljava/lang/String;
    .restart local v26  # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    :cond_8d3
    const/4 v7, 0x0

    :try_start_8d4
    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->isAppOp()Z

    move-result v0

    if-eqz v0, :cond_931

    .line 1384
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z
    :try_end_8dc
    .catchall {:try_start_8d4 .. :try_end_8dc} :catchall_935

    if-eqz v0, :cond_92d

    move-object/from16 v12, p3

    if-eqz v12, :cond_8ea

    :try_start_8e2
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1386
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a3

    .line 1387
    :cond_8ea
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not granting permission "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (protectionLevel="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1389
    invoke-virtual {v5}, Lcom/android/server/pm/permission/BasePermission;->getProtectionLevel()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " flags=0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1390
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1387
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9a3

    .line 1384
    :cond_92d
    move-object/from16 v12, p3

    goto/16 :goto_9a3

    .line 1381
    :cond_931
    move-object/from16 v12, p3

    goto/16 :goto_9a3

    .line 1410
    .end local v5  # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v6  # "appSupportsRuntimePermissions":Z
    .end local v10  # "perm":Ljava/lang/String;
    .end local v11  # "grant":I
    .end local v19  # "N":I
    .end local v20  # "allowedSig":Z
    .end local v22  # "i":I
    .end local v23  # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v24  # "permName":Ljava/lang/String;
    .end local v26  # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    :catchall_935
    move-exception v0

    move-object/from16 v12, p3

    move-object/from16 v14, p0

    move/from16 v10, p2

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move/from16 v4, v16

    move/from16 v7, v18

    move-object/from16 v3, v21

    move-object/from16 v11, v25

    goto/16 :goto_ac5

    .end local v9  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v25  # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v31  # "currentUserIds":[I
    .restart local v12  # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v14  # "currentUserIds":[I
    .restart local v15  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :catchall_94a
    move-exception v0

    move-object/from16 v25, v12

    move-object/from16 v31, v14

    move-object v9, v15

    move-object v12, v10

    move-object/from16 v14, p0

    move/from16 v10, p2

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move/from16 v4, v16

    move/from16 v7, v18

    move-object/from16 v3, v21

    move-object/from16 v11, v25

    .end local v12  # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v14  # "currentUserIds":[I
    .end local v15  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v9  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v25  # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v31  # "currentUserIds":[I
    :goto_961
    goto/16 :goto_ac5

    .line 950
    .end local v9  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v25  # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v31  # "currentUserIds":[I
    .local v0, "permName":Ljava/lang/String;
    .local v1, "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v3, "i":I
    .restart local v5  # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v6  # "appSupportsRuntimePermissions":Z
    .restart local v12  # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v14  # "currentUserIds":[I
    .restart local v15  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v19  # "N":I
    .local v20, "upgradedActivityRecognitionPermission":Ljava/lang/String;
    :cond_963
    move-object/from16 v24, v0

    move-object/from16 v23, v1

    move/from16 v22, v3

    move-object/from16 v25, v12

    move-object/from16 v31, v14

    move-object v9, v15

    const/4 v7, 0x0

    move-object v12, v10

    .line 951
    .end local v0  # "permName":Ljava/lang/String;
    .end local v1  # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v3  # "i":I
    .end local v12  # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v14  # "currentUserIds":[I
    .end local v15  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v9  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v22  # "i":I
    .restart local v23  # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v24  # "permName":Ljava/lang/String;
    .restart local v25  # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v31  # "currentUserIds":[I
    :goto_970
    if-eqz v12, :cond_97a

    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a3

    .line 952
    :cond_97a
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v0, :cond_9a1

    .line 953
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown permission "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v24

    .end local v24  # "permName":Ljava/lang/String;
    .local v3, "permName":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " in package "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9a0
    .catchall {:try_start_8e2 .. :try_end_9a0} :catchall_9bc

    goto :goto_9a3

    .line 952
    .end local v3  # "permName":Ljava/lang/String;
    .restart local v24  # "permName":Ljava/lang/String;
    :cond_9a1
    move-object/from16 v3, v24

    .line 939
    .end local v5  # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v6  # "appSupportsRuntimePermissions":Z
    .end local v20  # "upgradedActivityRecognitionPermission":Ljava/lang/String;
    .end local v24  # "permName":Ljava/lang/String;
    :cond_9a3
    :goto_9a3
    move-object/from16 v4, v21

    .end local v21  # "updatedUserIds":[I
    .local v4, "updatedUserIds":[I
    :goto_9a5
    add-int/lit8 v3, v22, 0x1

    move-object/from16 v11, p4

    move v0, v7

    move-object v15, v9

    move-object v10, v12

    move/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v1, v23

    move-object/from16 v12, v25

    move-object/from16 v14, v31

    move-object/from16 v7, p0

    move/from16 v9, p2

    .end local v22  # "i":I
    .local v3, "i":I
    goto/16 :goto_7c

    .line 1410
    .end local v3  # "i":I
    .end local v4  # "updatedUserIds":[I
    .end local v19  # "N":I
    .end local v23  # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v21  # "updatedUserIds":[I
    :catchall_9bc
    move-exception v0

    move-object/from16 v14, p0

    move/from16 v10, p2

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move/from16 v4, v16

    move/from16 v7, v18

    move-object/from16 v3, v21

    move-object/from16 v11, v25

    goto/16 :goto_ac5

    .end local v9  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v21  # "updatedUserIds":[I
    .end local v25  # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v31  # "currentUserIds":[I
    .restart local v4  # "updatedUserIds":[I
    .restart local v12  # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v14  # "currentUserIds":[I
    .restart local v15  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :catchall_9cf
    move-exception v0

    move-object/from16 v21, v4

    move-object/from16 v25, v12

    move-object/from16 v31, v14

    move-object v9, v15

    move-object v12, v10

    move-object/from16 v14, p0

    move/from16 v10, p2

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move/from16 v4, v16

    move/from16 v7, v18

    move-object/from16 v3, v21

    move-object/from16 v11, v25

    .end local v4  # "updatedUserIds":[I
    .end local v12  # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v14  # "currentUserIds":[I
    .end local v15  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v9  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v21  # "updatedUserIds":[I
    .restart local v25  # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v31  # "currentUserIds":[I
    goto/16 :goto_ac5

    .end local v9  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v18  # "runtimePermissionsRevoked":Z
    .end local v21  # "updatedUserIds":[I
    .end local v25  # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v31  # "currentUserIds":[I
    .restart local v4  # "updatedUserIds":[I
    .local v5, "runtimePermissionsRevoked":Z
    .restart local v12  # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v14  # "currentUserIds":[I
    .restart local v15  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :catchall_9ea
    move-exception v0

    move-object/from16 v21, v4

    move-object/from16 v25, v12

    move-object/from16 v31, v14

    move-object v9, v15

    move-object v12, v10

    move-object/from16 v14, p0

    move/from16 v10, p2

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move v7, v5

    move/from16 v4, v16

    move-object/from16 v3, v21

    move-object/from16 v11, v25

    .end local v4  # "updatedUserIds":[I
    .end local v5  # "runtimePermissionsRevoked":Z
    .end local v12  # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v14  # "currentUserIds":[I
    .end local v15  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v9  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v18  # "runtimePermissionsRevoked":Z
    .restart local v21  # "updatedUserIds":[I
    .restart local v25  # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v31  # "currentUserIds":[I
    goto/16 :goto_ac5

    .line 939
    .end local v9  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v18  # "runtimePermissionsRevoked":Z
    .end local v21  # "updatedUserIds":[I
    .end local v25  # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v31  # "currentUserIds":[I
    .restart local v1  # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v3  # "i":I
    .restart local v4  # "updatedUserIds":[I
    .restart local v5  # "runtimePermissionsRevoked":Z
    .local v6, "N":I
    .restart local v12  # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v14  # "currentUserIds":[I
    .restart local v15  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :cond_a04
    move-object/from16 v23, v1

    move/from16 v22, v3

    move-object/from16 v21, v4

    move/from16 v18, v5

    move/from16 v19, v6

    move-object/from16 v25, v12

    move-object/from16 v31, v14

    move-object v9, v15

    const/4 v7, 0x0

    move-object v12, v10

    .line 1397
    .end local v1  # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v3  # "i":I
    .end local v4  # "updatedUserIds":[I
    .end local v5  # "runtimePermissionsRevoked":Z
    .end local v6  # "N":I
    .end local v12  # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v14  # "currentUserIds":[I
    .end local v15  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v9  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v18  # "runtimePermissionsRevoked":Z
    .restart local v19  # "N":I
    .restart local v21  # "updatedUserIds":[I
    .restart local v23  # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v25  # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v31  # "currentUserIds":[I
    if-nez v16, :cond_a1c

    move/from16 v10, p2

    if-eqz v10, :cond_a3c

    goto :goto_a1e

    :cond_a1c
    move/from16 v10, p2

    :goto_a1e
    :try_start_a1e
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/pm/PackageSetting;->areInstallPermissionsFixed()Z

    move-result v0
    :try_end_a22
    .catchall {:try_start_a1e .. :try_end_a22} :catchall_aa9

    if-nez v0, :cond_a3c

    .line 1398
    :try_start_a24
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v0
    :try_end_a28
    .catchall {:try_start_a24 .. :try_end_a28} :catchall_a2b

    if-eqz v0, :cond_a42

    goto :goto_a3c

    .line 1410
    .end local v19  # "N":I
    .end local v23  # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_a2b
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move/from16 v4, v16

    move/from16 v7, v18

    move-object/from16 v3, v21

    move-object/from16 v11, v25

    goto/16 :goto_ac5

    .line 1398
    .restart local v19  # "N":I
    .restart local v23  # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_a3c
    :goto_a3c
    :try_start_a3c
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/pm/PackageSetting;->isUpdatedSystem()Z

    move-result v0
    :try_end_a40
    .catchall {:try_start_a3c .. :try_end_a40} :catchall_aa9

    if-eqz v0, :cond_a58

    .line 1402
    :cond_a42
    move-object/from16 v11, v25

    const/4 v0, 0x1

    .end local v25  # "ps":Lcom/android/server/pm/PackageSetting;
    .local v11, "ps":Lcom/android/server/pm/PackageSetting;
    :try_start_a45
    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->setInstallPermissionsFixed(Z)V
    :try_end_a48
    .catchall {:try_start_a45 .. :try_end_a48} :catchall_a49

    goto :goto_a5a

    .line 1410
    .end local v19  # "N":I
    .end local v23  # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catchall_a49
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move/from16 v4, v16

    move/from16 v7, v18

    move-object/from16 v3, v21

    goto/16 :goto_ac5

    .line 1398
    .end local v11  # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v19  # "N":I
    .restart local v23  # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v25  # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_a58
    move-object/from16 v11, v25

    .line 1405
    .end local v25  # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v11  # "ps":Lcom/android/server/pm/PackageSetting;
    :goto_a5a
    move-object/from16 v14, p0

    move-object/from16 v3, v21

    .end local v21  # "updatedUserIds":[I
    .local v3, "updatedUserIds":[I
    :try_start_a5e
    invoke-direct {v14, v13, v8, v3}, Lcom/android/server/pm/permission/PermissionManagerService;->revokePermissionsNoLongerImplicitLocked(Lcom/android/server/pm/permission/PermissionsState;Landroid/content/pm/PackageParser$Package;[I)[I

    move-result-object v6
    :try_end_a62
    .catchall {:try_start_a5e .. :try_end_a62} :catchall_a9f

    move/from16 v0, v19

    .line 1407
    .end local v3  # "updatedUserIds":[I
    .end local v19  # "N":I
    .local v0, "N":I
    .local v6, "updatedUserIds":[I
    move-object/from16 v15, v23

    .end local v23  # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v15, "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v17, v2

    move-object v2, v9

    move-object v3, v13

    move-object/from16 v4, p1

    move/from16 v7, v18

    .end local v18  # "runtimePermissionsRevoked":Z
    .local v7, "runtimePermissionsRevoked":Z
    move-object v5, v15

    :try_start_a71
    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->setInitialGrantForNewImplicitPermissionsLocked(Lcom/android/server/pm/permission/PermissionsState;Lcom/android/server/pm/permission/PermissionsState;Landroid/content/pm/PackageParser$Package;Landroid/util/ArraySet;[I)[I

    move-result-object v1
    :try_end_a75
    .catchall {:try_start_a71 .. :try_end_a75} :catchall_a98

    move-object v3, v1

    .line 1409
    .end local v6  # "updatedUserIds":[I
    .restart local v3  # "updatedUserIds":[I
    :try_start_a76
    invoke-direct {v14, v8, v10, v3}, Lcom/android/server/pm/permission/PermissionManagerService;->checkIfLegacyStorageOpsNeedToBeUpdated(Landroid/content/pm/PackageParser$Package;Z[I)[I

    move-result-object v1

    move-object v3, v1

    .line 1410
    .end local v0  # "N":I
    .end local v15  # "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    monitor-exit v17
    :try_end_a7c
    .catchall {:try_start_a76 .. :try_end_a7c} :catchall_a92

    .line 1415
    move-object/from16 v1, p4

    if-eqz v1, :cond_a83

    .line 1416
    invoke-virtual {v1, v3, v7}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onPermissionUpdated([IZ)V

    .line 1419
    :cond_a83
    array-length v0, v3

    const/4 v2, 0x0

    :goto_a85
    if-ge v2, v0, :cond_a91

    aget v4, v3, v2

    .line 1420
    .local v4, "userId":I
    iget-object v5, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-direct {v14, v5, v4}, Lcom/android/server/pm/permission/PermissionManagerService;->notifyRuntimePermissionStateChanged(Ljava/lang/String;I)V

    .line 1419
    .end local v4  # "userId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_a85

    .line 1422
    :cond_a91
    return-void

    .line 1410
    :catchall_a92
    move-exception v0

    move-object/from16 v1, p4

    move/from16 v4, v16

    goto :goto_ac5

    .end local v3  # "updatedUserIds":[I
    .restart local v6  # "updatedUserIds":[I
    :catchall_a98
    move-exception v0

    move-object/from16 v1, p4

    move-object v3, v6

    move/from16 v4, v16

    goto :goto_ac5

    .end local v6  # "updatedUserIds":[I
    .end local v7  # "runtimePermissionsRevoked":Z
    .restart local v3  # "updatedUserIds":[I
    .restart local v18  # "runtimePermissionsRevoked":Z
    :catchall_a9f
    move-exception v0

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move/from16 v7, v18

    move/from16 v4, v16

    .end local v18  # "runtimePermissionsRevoked":Z
    .restart local v7  # "runtimePermissionsRevoked":Z
    goto :goto_ac5

    .end local v3  # "updatedUserIds":[I
    .end local v7  # "runtimePermissionsRevoked":Z
    .end local v11  # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v18  # "runtimePermissionsRevoked":Z
    .restart local v21  # "updatedUserIds":[I
    .restart local v25  # "ps":Lcom/android/server/pm/PackageSetting;
    :catchall_aa9
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v1, p4

    move-object/from16 v17, v2

    move/from16 v7, v18

    move-object/from16 v3, v21

    move-object/from16 v11, v25

    move/from16 v4, v16

    .end local v18  # "runtimePermissionsRevoked":Z
    .end local v21  # "updatedUserIds":[I
    .end local v25  # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v3  # "updatedUserIds":[I
    .restart local v7  # "runtimePermissionsRevoked":Z
    .restart local v11  # "ps":Lcom/android/server/pm/PackageSetting;
    goto :goto_ac5

    .end local v7  # "runtimePermissionsRevoked":Z
    .end local v9  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .end local v11  # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v16  # "changedInstallPermission":Z
    .end local v31  # "currentUserIds":[I
    .local v4, "changedInstallPermission":Z
    .restart local v5  # "runtimePermissionsRevoked":Z
    .restart local v12  # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v14  # "currentUserIds":[I
    .local v15, "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    :catchall_ab9
    move-exception v0

    move-object/from16 v17, v2

    move-object v1, v11

    move-object v11, v12

    move-object/from16 v31, v14

    move-object v14, v7

    move-object v12, v10

    move v7, v5

    move v10, v9

    move-object v9, v15

    .end local v5  # "runtimePermissionsRevoked":Z
    .end local v12  # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v14  # "currentUserIds":[I
    .end local v15  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v7  # "runtimePermissionsRevoked":Z
    .restart local v9  # "origPermissions":Lcom/android/server/pm/permission/PermissionsState;
    .restart local v11  # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v31  # "currentUserIds":[I
    :goto_ac5
    :try_start_ac5
    monitor-exit v17
    :try_end_ac6
    .catchall {:try_start_ac5 .. :try_end_ac6} :catchall_ac7

    throw v0

    :catchall_ac7
    move-exception v0

    goto :goto_ac5
.end method

.method private restoreRuntimePermissions([BLandroid/os/UserHandle;)V
    .registers 6
    .param p1, "backup"  # [B
    .param p2, "user"  # Landroid/os/UserHandle;

    .line 419
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 420
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 421
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    invoke-virtual {v1, p1, p2}, Landroid/permission/PermissionControllerManager;->restoreRuntimePermissionBackup([BLandroid/os/UserHandle;)V

    .line 422
    monitor-exit v0

    .line 423
    return-void

    .line 422
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method private revokePermissionsNoLongerImplicitLocked(Lcom/android/server/pm/permission/PermissionsState;Landroid/content/pm/PackageParser$Package;[I)[I
    .registers 22
    .param p1, "ps"  # Lcom/android/server/pm/permission/PermissionsState;
    .param p2, "pkg"  # Landroid/content/pm/PackageParser$Package;
    .param p3, "updatedUserIds"  # [I

    .line 1438
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1439
    .local v2, "pkgName":Ljava/lang/String;
    iget-object v3, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0x17

    if-lt v3, v5, :cond_10

    const/4 v3, 0x1

    goto :goto_11

    :cond_10
    const/4 v3, 0x0

    .line 1442
    .local v3, "supportsRuntimePermissions":Z
    :goto_11
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v5

    .line 1443
    .local v5, "users":[I
    array-length v6, v5

    .line 1444
    .local v6, "numUsers":I
    const/4 v7, 0x0

    move-object/from16 v8, p3

    .end local p3  # "updatedUserIds":[I
    .local v7, "i":I
    .local v8, "updatedUserIds":[I
    :goto_1d
    if-ge v7, v6, :cond_c5

    .line 1445
    aget v9, v5, v7

    .line 1447
    .local v9, "userId":I
    invoke-virtual {v0, v9}, Lcom/android/server/pm/permission/PermissionsState;->getPermissions(I)Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_29
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_ba

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1448
    .local v11, "permission":Ljava/lang/String;
    iget-object v12, v1, Landroid/content/pm/PackageParser$Package;->implicitPermissions:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_af

    .line 1449
    invoke-virtual {v0, v11}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_a9

    .line 1450
    invoke-virtual {v0, v11, v9}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v12

    .line 1452
    .local v12, "flags":I
    and-int/lit16 v13, v12, 0x80

    if-eqz v13, :cond_a3

    .line 1453
    move-object/from16 v13, p0

    iget-object v14, v13, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v14, v11}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v14

    .line 1455
    .local v14, "bp":Lcom/android/server/pm/permission/BasePermission;
    const/16 v15, 0x80

    .line 1457
    .local v15, "flagsToRemove":I
    and-int/lit8 v16, v12, 0x34

    if-nez v16, :cond_98

    if-eqz v3, :cond_98

    .line 1459
    invoke-virtual {v0, v14, v9}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v4

    .line 1460
    .local v4, "revokeResult":I
    const/4 v1, -0x1

    if-eq v4, v1, :cond_93

    .line 1461
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v1, :cond_90

    .line 1462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v3

    .end local v3  # "supportsRuntimePermissions":Z
    .local v17, "supportsRuntimePermissions":Z
    const-string v3, "Revoking runtime permission "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " as it is now requested"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PackageManager"

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_95

    .line 1461
    .end local v17  # "supportsRuntimePermissions":Z
    .restart local v3  # "supportsRuntimePermissions":Z
    :cond_90
    move/from16 v17, v3

    .end local v3  # "supportsRuntimePermissions":Z
    .restart local v17  # "supportsRuntimePermissions":Z
    goto :goto_95

    .line 1460
    .end local v17  # "supportsRuntimePermissions":Z
    .restart local v3  # "supportsRuntimePermissions":Z
    :cond_93
    move/from16 v17, v3

    .line 1468
    .end local v3  # "supportsRuntimePermissions":Z
    .restart local v17  # "supportsRuntimePermissions":Z
    :goto_95
    or-int/lit8 v15, v15, 0x3

    goto :goto_9a

    .line 1457
    .end local v4  # "revokeResult":I
    .end local v17  # "supportsRuntimePermissions":Z
    .restart local v3  # "supportsRuntimePermissions":Z
    :cond_98
    move/from16 v17, v3

    .line 1471
    .end local v3  # "supportsRuntimePermissions":Z
    .restart local v17  # "supportsRuntimePermissions":Z
    :goto_9a
    const/4 v1, 0x0

    invoke-virtual {v0, v14, v9, v15, v1}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 1472
    invoke-static {v8, v9}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v8

    goto :goto_b4

    .line 1452
    .end local v14  # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v15  # "flagsToRemove":I
    .end local v17  # "supportsRuntimePermissions":Z
    .restart local v3  # "supportsRuntimePermissions":Z
    :cond_a3
    const/4 v1, 0x0

    move-object/from16 v13, p0

    move/from16 v17, v3

    .end local v3  # "supportsRuntimePermissions":Z
    .restart local v17  # "supportsRuntimePermissions":Z
    goto :goto_b4

    .line 1449
    .end local v12  # "flags":I
    .end local v17  # "supportsRuntimePermissions":Z
    .restart local v3  # "supportsRuntimePermissions":Z
    :cond_a9
    const/4 v1, 0x0

    move-object/from16 v13, p0

    move/from16 v17, v3

    .end local v3  # "supportsRuntimePermissions":Z
    .restart local v17  # "supportsRuntimePermissions":Z
    goto :goto_b4

    .line 1448
    .end local v17  # "supportsRuntimePermissions":Z
    .restart local v3  # "supportsRuntimePermissions":Z
    :cond_af
    const/4 v1, 0x0

    move-object/from16 v13, p0

    move/from16 v17, v3

    .line 1476
    .end local v3  # "supportsRuntimePermissions":Z
    .end local v11  # "permission":Ljava/lang/String;
    .restart local v17  # "supportsRuntimePermissions":Z
    :goto_b4
    move-object/from16 v1, p2

    move/from16 v3, v17

    goto/16 :goto_29

    .line 1447
    .end local v17  # "supportsRuntimePermissions":Z
    .restart local v3  # "supportsRuntimePermissions":Z
    :cond_ba
    const/4 v1, 0x0

    move-object/from16 v13, p0

    move/from16 v17, v3

    .line 1444
    .end local v3  # "supportsRuntimePermissions":Z
    .end local v9  # "userId":I
    .restart local v17  # "supportsRuntimePermissions":Z
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p2

    goto/16 :goto_1d

    .line 1479
    .end local v7  # "i":I
    .end local v17  # "supportsRuntimePermissions":Z
    .restart local v3  # "supportsRuntimePermissions":Z
    :cond_c5
    return-object v8
.end method

.method private revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 16
    .param p1, "permName"  # Ljava/lang/String;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "overridePolicy"  # Z
    .param p4, "userId"  # I
    .param p5, "callback"  # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 2274
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, p4}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 2275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No such user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2276
    return-void

    .line 2279
    :cond_1f
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REVOKE_RUNTIME_PERMISSIONS"

    const-string/jumbo v2, "revokeRuntimePermission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2283
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string/jumbo v9, "revokeRuntimePermission"

    move-object v3, p0

    move v5, p4

    invoke-direct/range {v3 .. v9}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    .line 2289
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 2290
    .local v0, "pkg":Landroid/content/pm/PackageParser$Package;
    const-string v1, "Unknown package: "

    if-eqz v0, :cond_133

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-eqz v2, :cond_133

    .line 2293
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v0, v3, p4}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Landroid/content/pm/PackageParser$Package;II)Z

    move-result v2

    if-nez v2, :cond_11e

    .line 2296
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v1

    .line 2297
    .local v1, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v1, :cond_107

    .line 2301
    invoke-virtual {v1, v0}, Lcom/android/server/pm/permission/BasePermission;->enforceDeclaredUsedAndRuntimeOrDevelopment(Landroid/content/pm/PackageParser$Package;)V

    .line 2307
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_6c

    .line 2308
    invoke-virtual {v1}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 2309
    return-void

    .line 2312
    :cond_6c
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 2313
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v3

    .line 2315
    .local v3, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v3, p1, p4}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v4

    .line 2317
    .local v4, "flags":I
    and-int/lit8 v5, v4, 0x10

    const-string v6, " for package "

    if-eqz v5, :cond_a4

    .line 2318
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v5

    const/16 v7, 0x3e8

    if-ne v5, v7, :cond_87

    goto :goto_a4

    .line 2319
    :cond_87
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Non-System UID cannot revoke system fixed permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2322
    :cond_a4
    :goto_a4
    if-nez p3, :cond_c8

    and-int/lit8 v5, v4, 0x4

    if-nez v5, :cond_ab

    goto :goto_c8

    .line 2323
    :cond_ab
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot revoke policy fixed permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2327
    :cond_c8
    :goto_c8
    invoke-virtual {v1}, Lcom/android/server/pm/permission/BasePermission;->isDevelopment()Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_db

    .line 2330
    invoke-virtual {v3, v1}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v5

    if-eq v5, v6, :cond_da

    .line 2332
    if-eqz p5, :cond_da

    .line 2333
    invoke-virtual {p5}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onInstallPermissionRevoked()V

    .line 2336
    :cond_da
    return-void

    .line 2340
    :cond_db
    invoke-virtual {v3, p1, p4}, Lcom/android/server/pm/permission/PermissionsState;->hasRuntimePermission(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_e2

    .line 2341
    return-void

    .line 2344
    :cond_e2
    invoke-virtual {v3, v1, p4}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v5

    if-ne v5, v6, :cond_e9

    .line 2346
    return-void

    .line 2349
    :cond_e9
    invoke-virtual {v1}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v5

    if-eqz v5, :cond_f4

    .line 2350
    const/16 v5, 0x4dd

    invoke-direct {p0, v5, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->logPermission(ILjava/lang/String;Ljava/lang/String;)V

    .line 2353
    :cond_f4
    if-eqz p5, :cond_fd

    .line 2354
    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p5, v5, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onPermissionRevoked(II)V

    .line 2357
    :cond_fd
    invoke-virtual {v1}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v5

    if-eqz v5, :cond_106

    .line 2358
    invoke-direct {p0, p2, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->notifyRuntimePermissionStateChanged(Ljava/lang/String;I)V

    .line 2360
    :cond_106
    return-void

    .line 2298
    .end local v2  # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v3  # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v4  # "flags":I
    :cond_107
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown permission: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2294
    .end local v1  # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_11e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2291
    :cond_133
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private revokeRuntimePermissionsIfGroupChanged(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;Ljava/util/ArrayList;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 29
    .param p1, "newPackage"  # Landroid/content/pm/PackageParser$Package;
    .param p2, "oldPackage"  # Landroid/content/pm/PackageParser$Package;
    .param p4, "permissionCallback"  # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;
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

    .line 616
    .local p3, "allPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    iget-object v0, v9, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 617
    .local v10, "numOldPackagePermissions":I
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, v10}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v11, v0

    .line 620
    .local v11, "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    if-ge v0, v10, :cond_31

    .line 621
    iget-object v1, v9, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Permission;

    .line 623
    .local v1, "permission":Landroid/content/pm/PackageParser$Permission;
    iget-object v2, v1, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    if-eqz v2, :cond_2e

    .line 624
    iget-object v2, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    iget-object v3, v1, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    iget-object v3, v3, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    .end local v1  # "permission":Landroid/content/pm/PackageParser$Permission;
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 629
    .end local v0  # "i":I
    :cond_31
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 630
    .local v12, "numNewPackagePermissions":I
    const/4 v0, 0x0

    move v13, v0

    .local v13, "newPermissionNum":I
    :goto_39
    if-ge v13, v12, :cond_187

    .line 632
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    .line 633
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/content/pm/PackageParser$Permission;

    .line 634
    .local v14, "newPermission":Landroid/content/pm/PackageParser$Permission;
    iget-object v0, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v15

    .line 636
    .local v15, "newProtection":I
    and-int/lit8 v0, v15, 0x1

    if-eqz v0, :cond_177

    .line 637
    iget-object v0, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v6, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 639
    .local v6, "permissionName":Ljava/lang/String;
    iget-object v0, v14, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    if-nez v0, :cond_58

    const/4 v0, 0x0

    goto :goto_5e

    :cond_58
    iget-object v0, v14, Landroid/content/pm/PackageParser$Permission;->group:Landroid/content/pm/PackageParser$PermissionGroup;

    iget-object v0, v0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget-object v0, v0, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    :goto_5e
    move-object v5, v0

    .line 640
    .local v5, "newPermissionGroupName":Ljava/lang/String;
    invoke-virtual {v11, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 643
    .local v4, "oldPermissionGroupName":Ljava/lang/String;
    if-eqz v5, :cond_16d

    .line 644
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_163

    .line 645
    iget-object v0, v7, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0}, Landroid/os/UserManagerInternal;->getUserIds()[I

    move-result-object v3

    .line 646
    .local v3, "userIds":[I
    array-length v2, v3

    .line 647
    .local v2, "numUserIds":I
    const/4 v0, 0x0

    move v1, v0

    .local v1, "userIdNum":I
    :goto_77
    if-ge v1, v2, :cond_153

    .line 648
    aget v9, v3, v1

    .line 650
    .local v9, "userId":I
    move/from16 v16, v10

    .end local v10  # "numOldPackagePermissions":I
    .local v16, "numOldPackagePermissions":I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 651
    .local v10, "numPackages":I
    const/4 v0, 0x0

    move-object/from16 v17, v11

    move v11, v0

    .local v11, "packageNum":I
    .local v17, "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_85
    if-ge v11, v10, :cond_13a

    .line 652
    move/from16 v18, v10

    move-object/from16 v10, p3

    .end local v10  # "numPackages":I
    .local v18, "numPackages":I
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    .line 654
    .local v10, "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-direct {v7, v6, v10, v0, v9}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v19

    if-nez v19, :cond_11c

    .line 656
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const-string v21, "72710897"

    const/16 v19, 0x0

    aput-object v21, v0, v19

    move/from16 v19, v1

    .end local v1  # "userIdNum":I
    .local v19, "userIdNum":I
    iget-object v1, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 657
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v21, 0x1

    aput-object v1, v0, v21

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v22, v2

    .end local v2  # "numUserIds":I
    .local v22, "numUserIds":I
    const-string v2, "Revoking permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " as the group changed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 656
    const v1, 0x534e4554

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 664
    const/4 v0, 0x0

    move-object/from16 v1, p0

    move/from16 v20, v22

    .end local v22  # "numUserIds":I
    .local v20, "numUserIds":I
    move-object v2, v6

    move-object/from16 v21, v3

    .end local v3  # "userIds":[I
    .local v21, "userIds":[I
    move-object v3, v10

    move-object/from16 v22, v4

    .end local v4  # "oldPermissionGroupName":Ljava/lang/String;
    .local v22, "oldPermissionGroupName":Ljava/lang/String;
    move v4, v0

    move-object/from16 v23, v5

    .end local v5  # "newPermissionGroupName":Ljava/lang/String;
    .local v23, "newPermissionGroupName":Ljava/lang/String;
    move v5, v9

    move-object v7, v6

    .end local v6  # "permissionName":Ljava/lang/String;
    .local v7, "permissionName":Ljava/lang/String;
    move-object/from16 v6, p4

    :try_start_f6
    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    :try_end_f9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f6 .. :try_end_f9} :catch_fa

    .line 669
    goto :goto_127

    .line 666
    :catch_fa
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 667
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not revoke "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_127

    .line 654
    .end local v0  # "e":Ljava/lang/IllegalArgumentException;
    .end local v7  # "permissionName":Ljava/lang/String;
    .end local v19  # "userIdNum":I
    .end local v20  # "numUserIds":I
    .end local v21  # "userIds":[I
    .end local v22  # "oldPermissionGroupName":Ljava/lang/String;
    .end local v23  # "newPermissionGroupName":Ljava/lang/String;
    .restart local v1  # "userIdNum":I
    .restart local v2  # "numUserIds":I
    .restart local v3  # "userIds":[I
    .restart local v4  # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v5  # "newPermissionGroupName":Ljava/lang/String;
    .restart local v6  # "permissionName":Ljava/lang/String;
    :cond_11c
    move/from16 v19, v1

    move/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object v7, v6

    .line 651
    .end local v1  # "userIdNum":I
    .end local v2  # "numUserIds":I
    .end local v3  # "userIds":[I
    .end local v4  # "oldPermissionGroupName":Ljava/lang/String;
    .end local v5  # "newPermissionGroupName":Ljava/lang/String;
    .end local v6  # "permissionName":Ljava/lang/String;
    .end local v10  # "packageName":Ljava/lang/String;
    .restart local v7  # "permissionName":Ljava/lang/String;
    .restart local v19  # "userIdNum":I
    .restart local v20  # "numUserIds":I
    .restart local v21  # "userIds":[I
    .restart local v22  # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v23  # "newPermissionGroupName":Ljava/lang/String;
    :goto_127
    add-int/lit8 v11, v11, 0x1

    move-object v6, v7

    move/from16 v10, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    move-object/from16 v5, v23

    move-object/from16 v7, p0

    goto/16 :goto_85

    .end local v7  # "permissionName":Ljava/lang/String;
    .end local v18  # "numPackages":I
    .end local v19  # "userIdNum":I
    .end local v20  # "numUserIds":I
    .end local v21  # "userIds":[I
    .end local v22  # "oldPermissionGroupName":Ljava/lang/String;
    .end local v23  # "newPermissionGroupName":Ljava/lang/String;
    .restart local v1  # "userIdNum":I
    .restart local v2  # "numUserIds":I
    .restart local v3  # "userIds":[I
    .restart local v4  # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v5  # "newPermissionGroupName":Ljava/lang/String;
    .restart local v6  # "permissionName":Ljava/lang/String;
    .local v10, "numPackages":I
    :cond_13a
    move/from16 v19, v1

    move/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object v7, v6

    move/from16 v18, v10

    .line 647
    .end local v1  # "userIdNum":I
    .end local v2  # "numUserIds":I
    .end local v3  # "userIds":[I
    .end local v4  # "oldPermissionGroupName":Ljava/lang/String;
    .end local v5  # "newPermissionGroupName":Ljava/lang/String;
    .end local v6  # "permissionName":Ljava/lang/String;
    .end local v9  # "userId":I
    .end local v10  # "numPackages":I
    .end local v11  # "packageNum":I
    .restart local v7  # "permissionName":Ljava/lang/String;
    .restart local v19  # "userIdNum":I
    .restart local v20  # "numUserIds":I
    .restart local v21  # "userIds":[I
    .restart local v22  # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v23  # "newPermissionGroupName":Ljava/lang/String;
    add-int/lit8 v1, v19, 0x1

    move-object/from16 v9, p2

    move/from16 v10, v16

    move-object/from16 v11, v17

    move-object/from16 v7, p0

    .end local v19  # "userIdNum":I
    .restart local v1  # "userIdNum":I
    goto/16 :goto_77

    .end local v7  # "permissionName":Ljava/lang/String;
    .end local v16  # "numOldPackagePermissions":I
    .end local v17  # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20  # "numUserIds":I
    .end local v21  # "userIds":[I
    .end local v22  # "oldPermissionGroupName":Ljava/lang/String;
    .end local v23  # "newPermissionGroupName":Ljava/lang/String;
    .restart local v2  # "numUserIds":I
    .restart local v3  # "userIds":[I
    .restart local v4  # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v5  # "newPermissionGroupName":Ljava/lang/String;
    .restart local v6  # "permissionName":Ljava/lang/String;
    .local v10, "numOldPackagePermissions":I
    .local v11, "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_153
    move/from16 v19, v1

    move/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object v7, v6

    move/from16 v16, v10

    move-object/from16 v17, v11

    .end local v1  # "userIdNum":I
    .end local v2  # "numUserIds":I
    .end local v3  # "userIds":[I
    .end local v4  # "oldPermissionGroupName":Ljava/lang/String;
    .end local v5  # "newPermissionGroupName":Ljava/lang/String;
    .end local v6  # "permissionName":Ljava/lang/String;
    .end local v10  # "numOldPackagePermissions":I
    .end local v11  # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7  # "permissionName":Ljava/lang/String;
    .restart local v16  # "numOldPackagePermissions":I
    .restart local v17  # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v19  # "userIdNum":I
    .restart local v20  # "numUserIds":I
    .restart local v21  # "userIds":[I
    .restart local v22  # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v23  # "newPermissionGroupName":Ljava/lang/String;
    goto :goto_17b

    .line 644
    .end local v7  # "permissionName":Ljava/lang/String;
    .end local v16  # "numOldPackagePermissions":I
    .end local v17  # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19  # "userIdNum":I
    .end local v20  # "numUserIds":I
    .end local v21  # "userIds":[I
    .end local v22  # "oldPermissionGroupName":Ljava/lang/String;
    .end local v23  # "newPermissionGroupName":Ljava/lang/String;
    .restart local v4  # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v5  # "newPermissionGroupName":Ljava/lang/String;
    .restart local v6  # "permissionName":Ljava/lang/String;
    .restart local v10  # "numOldPackagePermissions":I
    .restart local v11  # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_163
    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object v7, v6

    move/from16 v16, v10

    move-object/from16 v17, v11

    .end local v4  # "oldPermissionGroupName":Ljava/lang/String;
    .end local v5  # "newPermissionGroupName":Ljava/lang/String;
    .end local v6  # "permissionName":Ljava/lang/String;
    .end local v10  # "numOldPackagePermissions":I
    .end local v11  # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7  # "permissionName":Ljava/lang/String;
    .restart local v16  # "numOldPackagePermissions":I
    .restart local v17  # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v22  # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v23  # "newPermissionGroupName":Ljava/lang/String;
    goto :goto_17b

    .line 643
    .end local v7  # "permissionName":Ljava/lang/String;
    .end local v16  # "numOldPackagePermissions":I
    .end local v17  # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22  # "oldPermissionGroupName":Ljava/lang/String;
    .end local v23  # "newPermissionGroupName":Ljava/lang/String;
    .restart local v4  # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v5  # "newPermissionGroupName":Ljava/lang/String;
    .restart local v6  # "permissionName":Ljava/lang/String;
    .restart local v10  # "numOldPackagePermissions":I
    .restart local v11  # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_16d
    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object v7, v6

    move/from16 v16, v10

    move-object/from16 v17, v11

    .end local v4  # "oldPermissionGroupName":Ljava/lang/String;
    .end local v5  # "newPermissionGroupName":Ljava/lang/String;
    .end local v6  # "permissionName":Ljava/lang/String;
    .end local v10  # "numOldPackagePermissions":I
    .end local v11  # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v7  # "permissionName":Ljava/lang/String;
    .restart local v16  # "numOldPackagePermissions":I
    .restart local v17  # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v22  # "oldPermissionGroupName":Ljava/lang/String;
    .restart local v23  # "newPermissionGroupName":Ljava/lang/String;
    goto :goto_17b

    .line 636
    .end local v7  # "permissionName":Ljava/lang/String;
    .end local v16  # "numOldPackagePermissions":I
    .end local v17  # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22  # "oldPermissionGroupName":Ljava/lang/String;
    .end local v23  # "newPermissionGroupName":Ljava/lang/String;
    .restart local v10  # "numOldPackagePermissions":I
    .restart local v11  # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_177
    move/from16 v16, v10

    move-object/from16 v17, v11

    .line 631
    .end local v10  # "numOldPackagePermissions":I
    .end local v11  # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14  # "newPermission":Landroid/content/pm/PackageParser$Permission;
    .end local v15  # "newProtection":I
    .restart local v16  # "numOldPackagePermissions":I
    .restart local v17  # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_17b
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v7, p0

    move-object/from16 v9, p2

    move/from16 v10, v16

    move-object/from16 v11, v17

    goto/16 :goto_39

    .line 676
    .end local v13  # "newPermissionNum":I
    .end local v16  # "numOldPackagePermissions":I
    .end local v17  # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10  # "numOldPackagePermissions":I
    .restart local v11  # "oldPermissionNameToGroupName":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_187
    return-void
.end method

.method private revokeUnusedSharedUserPermissionsLocked(Lcom/android/server/pm/SharedUserSetting;[I)[I
    .registers 20
    .param p1, "suSetting"  # Lcom/android/server/pm/SharedUserSetting;
    .param p2, "allUserIds"  # [I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 2490
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 2491
    .local v2, "usedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/SharedUserSetting;->getPackages()Ljava/util/List;

    move-result-object v3

    .line 2492
    .local v3, "pkgList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    if-eqz v3, :cond_e0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_17

    goto/16 :goto_e0

    .line 2495
    :cond_17
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Package;

    .line 2496
    .local v5, "pkg":Landroid/content/pm/PackageParser$Package;
    iget-object v6, v5, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-nez v6, :cond_2c

    .line 2497
    goto :goto_1b

    .line 2499
    :cond_2c
    iget-object v6, v5, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 2500
    .local v6, "requestedPermCount":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_33
    if-ge v7, v6, :cond_4b

    .line 2501
    iget-object v8, v5, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2502
    .local v8, "permission":Ljava/lang/String;
    iget-object v9, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v9, v8}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v9

    .line 2503
    .local v9, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v9, :cond_48

    .line 2504
    invoke-virtual {v2, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2500
    .end local v8  # "permission":Ljava/lang/String;
    .end local v9  # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_48
    add-int/lit8 v7, v7, 0x1

    goto :goto_33

    .line 2507
    .end local v5  # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v6  # "requestedPermCount":I
    .end local v7  # "j":I
    :cond_4b
    goto :goto_1b

    .line 2509
    :cond_4c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v4

    .line 2511
    .local v4, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v4}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    move-result-object v5

    .line 2512
    .local v5, "installPermStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 2513
    .local v6, "installPermCount":I
    add-int/lit8 v7, v6, -0x1

    .local v7, "i":I
    :goto_5a
    const v8, 0xfbff

    const/4 v9, 0x0

    if-ltz v7, :cond_86

    .line 2514
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 2515
    .local v10, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    invoke-virtual {v10}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_83

    .line 2516
    iget-object v11, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v10}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v11

    .line 2517
    .local v11, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v11, :cond_83

    .line 2518
    invoke-virtual {v4, v11}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    .line 2519
    const/4 v12, -0x1

    invoke-virtual {v4, v11, v12, v8, v9}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 2513
    .end local v10  # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    .end local v11  # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_83
    add-int/lit8 v7, v7, -0x1

    goto :goto_5a

    .line 2525
    .end local v7  # "i":I
    :cond_86
    sget-object v7, Llibcore/util/EmptyArray;->INT:[I

    .line 2528
    .local v7, "runtimePermissionChangedUserIds":[I
    array-length v10, v1

    move-object v11, v7

    move v7, v9

    .end local v7  # "runtimePermissionChangedUserIds":[I
    .local v11, "runtimePermissionChangedUserIds":[I
    :goto_8b
    if-ge v7, v10, :cond_df

    aget v12, v1, v7

    .line 2529
    .local v12, "userId":I
    nop

    .line 2530
    invoke-virtual {v4, v12}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v13

    .line 2531
    .local v13, "runtimePermStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    .line 2532
    .local v14, "runtimePermCount":I
    add-int/lit8 v15, v14, -0x1

    .local v15, "i":I
    :goto_9a
    if-ltz v15, :cond_d7

    .line 2533
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    .line 2534
    .local v16, "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_cc

    .line 2535
    iget-object v8, v0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v8

    .line 2536
    .local v8, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-eqz v8, :cond_c7

    .line 2537
    invoke-virtual {v4, v8, v12}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    .line 2538
    const/4 v0, 0x0

    const v9, 0xfbff

    invoke-virtual {v4, v8, v12, v9, v0}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 2540
    invoke-static {v11, v12}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v11

    goto :goto_d0

    .line 2536
    :cond_c7
    const/4 v0, 0x0

    const v9, 0xfbff

    goto :goto_d0

    .line 2534
    .end local v8  # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_cc
    move v0, v9

    const v9, 0xfbff

    .line 2532
    .end local v16  # "permissionState":Lcom/android/server/pm/permission/PermissionsState$PermissionState;
    :goto_d0
    add-int/lit8 v15, v15, -0x1

    move v8, v9

    move v9, v0

    move-object/from16 v0, p0

    goto :goto_9a

    :cond_d7
    move v0, v9

    move v9, v8

    .line 2528
    .end local v12  # "userId":I
    .end local v13  # "runtimePermStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    .end local v14  # "runtimePermCount":I
    .end local v15  # "i":I
    add-int/lit8 v7, v7, 0x1

    move v9, v0

    move-object/from16 v0, p0

    goto :goto_8b

    .line 2547
    :cond_df
    return-object v11

    .line 2493
    .end local v4  # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v5  # "installPermStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/permission/PermissionsState$PermissionState;>;"
    .end local v6  # "installPermCount":I
    .end local v11  # "runtimePermissionChangedUserIds":[I
    :cond_e0
    :goto_e0
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    return-object v0
.end method

.method private setInitialGrantForNewImplicitPermissionsLocked(Lcom/android/server/pm/permission/PermissionsState;Lcom/android/server/pm/permission/PermissionsState;Landroid/content/pm/PackageParser$Package;Landroid/util/ArraySet;[I)[I
    .registers 28
    .param p1, "origPs"  # Lcom/android/server/pm/permission/PermissionsState;
    .param p2, "ps"  # Lcom/android/server/pm/permission/PermissionsState;
    .param p3, "pkg"  # Landroid/content/pm/PackageParser$Package;
    .param p5, "updatedUserIds"  # [I
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

    .line 1572
    .local p4, "newImplicitPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v6, p2

    move-object/from16 v7, p3

    iget-object v8, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1573
    .local v8, "pkgName":Ljava/lang/String;
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    move-object v9, v0

    .line 1575
    .local v9, "newToSplitPerms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    sget-object v0, Landroid/permission/PermissionManager;->SPLIT_PERMISSIONS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1576
    .local v10, "numSplitPerms":I
    const/4 v0, 0x0

    .local v0, "splitPermNum":I
    :goto_13
    if-ge v0, v10, :cond_4c

    .line 1577
    sget-object v1, Landroid/permission/PermissionManager;->SPLIT_PERMISSIONS:Ljava/util/ArrayList;

    .line 1578
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/permission/PermissionManager$SplitPermissionInfo;

    .line 1580
    .local v1, "spi":Landroid/permission/PermissionManager$SplitPermissionInfo;
    invoke-virtual {v1}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getNewPermissions()Ljava/util/List;

    move-result-object v2

    .line 1581
    .local v2, "newPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 1582
    .local v3, "numNewPerms":I
    const/4 v4, 0x0

    .local v4, "newPermNum":I
    :goto_26
    if-ge v4, v3, :cond_49

    .line 1583
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1585
    .local v5, "newPerm":Ljava/lang/String;
    invoke-virtual {v9, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArraySet;

    .line 1586
    .local v11, "splitPerms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v11, :cond_3f

    .line 1587
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    move-object v11, v12

    .line 1588
    invoke-virtual {v9, v5, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1591
    :cond_3f
    invoke-virtual {v1}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getSplitPermission()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1582
    .end local v5  # "newPerm":Ljava/lang/String;
    .end local v11  # "splitPerms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 1576
    .end local v1  # "spi":Landroid/permission/PermissionManager$SplitPermissionInfo;
    .end local v2  # "newPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3  # "numNewPerms":I
    .end local v4  # "newPermNum":I
    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 1595
    .end local v0  # "splitPermNum":I
    :cond_4c
    invoke-virtual/range {p4 .. p4}, Landroid/util/ArraySet;->size()I

    move-result v11

    .line 1596
    .local v11, "numNewImplicitPerms":I
    const/4 v0, 0x0

    move v12, v0

    move-object/from16 v0, p5

    .end local p5  # "updatedUserIds":[I
    .local v0, "updatedUserIds":[I
    .local v12, "newImplicitPermNum":I
    :goto_54
    if-ge v12, v11, :cond_11f

    .line 1598
    move-object/from16 v13, p4

    invoke-virtual {v13, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Ljava/lang/String;

    .line 1599
    .local v14, "newPerm":Ljava/lang/String;
    invoke-virtual {v9, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/util/ArraySet;

    .line 1601
    .local v15, "sourcePerms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v15, :cond_119

    .line 1602
    invoke-virtual {v6, v14}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_119

    .line 1603
    move-object/from16 v5, p0

    iget-object v1, v5, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v1, v14}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    .line 1605
    .local v4, "bp":Lcom/android/server/pm/permission/BasePermission;
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v3

    .line 1606
    .local v3, "users":[I
    array-length v2, v3

    .line 1607
    .local v2, "numUsers":I
    const/4 v1, 0x0

    .local v1, "userNum":I
    :goto_80
    if-ge v1, v2, :cond_111

    .line 1608
    aget v7, v3, v1

    .line 1610
    .local v7, "userId":I
    move/from16 p5, v1

    .end local v1  # "userNum":I
    .local p5, "userNum":I
    const-string v1, "android.permission.ACTIVITY_RECOGNITION"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_93

    .line 1611
    const/16 v1, 0x80

    invoke-virtual {v6, v4, v7, v1, v1}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    .line 1615
    :cond_93
    invoke-static {v0, v7}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v16

    .line 1617
    .end local v0  # "updatedUserIds":[I
    .local v16, "updatedUserIds":[I
    const/4 v0, 0x0

    .line 1618
    .local v0, "inheritsFromInstallPerm":Z
    const/4 v1, 0x0

    .local v1, "sourcePermNum":I
    :goto_99
    move/from16 v17, v0

    .end local v0  # "inheritsFromInstallPerm":Z
    .local v17, "inheritsFromInstallPerm":Z
    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v1, v0, :cond_b6

    .line 1620
    invoke-virtual {v15, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/android/server/pm/permission/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 1621
    const/4 v0, 0x1

    .line 1622
    .end local v17  # "inheritsFromInstallPerm":Z
    .restart local v0  # "inheritsFromInstallPerm":Z
    move/from16 v17, v0

    goto :goto_b6

    .line 1619
    .end local v0  # "inheritsFromInstallPerm":Z
    .restart local v17  # "inheritsFromInstallPerm":Z
    :cond_b1
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v17

    goto :goto_99

    .line 1626
    .end local v1  # "sourcePermNum":I
    :cond_b6
    :goto_b6
    move-object/from16 v1, p1

    invoke-virtual {v1, v15}, Lcom/android/server/pm/permission/PermissionsState;->hasRequestedPermission(Landroid/util/ArraySet;)Z

    move-result v0

    if-nez v0, :cond_ed

    if-nez v17, :cond_ed

    .line 1629
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    if-eqz v0, :cond_ea

    .line 1630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not inherit from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " as split permission is also new"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    .end local v2  # "numUsers":I
    .end local v3  # "users":[I
    .end local v4  # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v7  # "userId":I
    .end local v14  # "newPerm":Ljava/lang/String;
    .end local v15  # "sourcePerms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v17  # "inheritsFromInstallPerm":Z
    .end local p5  # "userNum":I
    :cond_ea
    move-object/from16 v0, v16

    goto :goto_119

    .line 1637
    .restart local v2  # "numUsers":I
    .restart local v3  # "users":[I
    .restart local v4  # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v7  # "userId":I
    .restart local v14  # "newPerm":Ljava/lang/String;
    .restart local v15  # "sourcePerms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v17  # "inheritsFromInstallPerm":Z
    .restart local p5  # "userNum":I
    :cond_ed
    move-object/from16 v0, p0

    move/from16 v18, p5

    .end local p5  # "userNum":I
    .local v18, "userNum":I
    move-object v1, v15

    move/from16 v19, v2

    .end local v2  # "numUsers":I
    .local v19, "numUsers":I
    move-object v2, v14

    move-object/from16 v20, v3

    .end local v3  # "users":[I
    .local v20, "users":[I
    move-object/from16 v3, p2

    move-object/from16 v21, v4

    .end local v4  # "bp":Lcom/android/server/pm/permission/BasePermission;
    .local v21, "bp":Lcom/android/server/pm/permission/BasePermission;
    move-object/from16 v4, p3

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerService;->inheritPermissionStateToNewImplicitPermissionLocked(Landroid/util/ArraySet;Ljava/lang/String;Lcom/android/server/pm/permission/PermissionsState;Landroid/content/pm/PackageParser$Package;I)V

    .line 1607
    .end local v7  # "userId":I
    .end local v17  # "inheritsFromInstallPerm":Z
    add-int/lit8 v1, v18, 0x1

    move-object/from16 v5, p0

    move-object/from16 v7, p3

    move-object/from16 v0, v16

    move/from16 v2, v19

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    .end local v18  # "userNum":I
    .local v1, "userNum":I
    goto/16 :goto_80

    .end local v16  # "updatedUserIds":[I
    .end local v19  # "numUsers":I
    .end local v20  # "users":[I
    .end local v21  # "bp":Lcom/android/server/pm/permission/BasePermission;
    .local v0, "updatedUserIds":[I
    .restart local v2  # "numUsers":I
    .restart local v3  # "users":[I
    .restart local v4  # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_111
    move/from16 v18, v1

    move/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    .line 1597
    .end local v1  # "userNum":I
    .end local v2  # "numUsers":I
    .end local v3  # "users":[I
    .end local v4  # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v14  # "newPerm":Ljava/lang/String;
    .end local v15  # "sourcePerms":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_119
    :goto_119
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v7, p3

    goto/16 :goto_54

    .line 1596
    :cond_11f
    move-object/from16 v13, p4

    .line 1645
    .end local v12  # "newImplicitPermNum":I
    return-object v0
.end method

.method private setWhitelistedRestrictedPermissions(Landroid/content/pm/PackageParser$Package;[ILjava/util/List;IILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 18
    .param p1, "pkg"  # Landroid/content/pm/PackageParser$Package;
    .param p2, "userIds"  # [I
    .param p4, "callingUid"  # I
    .param p5, "whitelistFlags"  # I
    .param p6, "callback"  # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;
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

    .line 2078
    .local p3, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, p2

    array-length v1, v0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_16

    aget v10, v0, v2

    .line 2079
    .local v10, "userId":I
    move-object v3, p0

    move-object v4, p1

    move v5, v10

    move-object v6, p3

    move v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v3 .. v9}, Lcom/android/server/pm/permission/PermissionManagerService;->setWhitelistedRestrictedPermissionsForUser(Landroid/content/pm/PackageParser$Package;ILjava/util/List;IILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 2078
    .end local v10  # "userId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2082
    :cond_16
    return-void
.end method

.method private setWhitelistedRestrictedPermissionsForUser(Landroid/content/pm/PackageParser$Package;ILjava/util/List;IILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 36
    .param p1, "pkg"  # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"  # I
    .param p4, "callingUid"  # I
    .param p5, "whitelistFlags"  # I
    .param p6, "callback"  # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II",
            "Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;",
            ")V"
        }
    .end annotation

    .line 2365
    .local p3, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p6

    iget-object v0, v10, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Lcom/android/server/pm/PackageSetting;

    .line 2366
    .local v14, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v14, :cond_12

    .line 2367
    return-void

    .line 2370
    :cond_12
    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v15

    .line 2372
    .local v15, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    const/4 v0, 0x0

    .line 2373
    .local v0, "oldGrantedRestrictedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 2375
    .local v1, "updatePermissions":Z
    iget-object v2, v10, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 2376
    .local v8, "permissionCount":I
    const/4 v2, 0x0

    move v7, v2

    .local v7, "i":I
    :goto_20
    if-ge v7, v8, :cond_12f

    .line 2377
    iget-object v3, v10, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    .line 2379
    .local v6, "permissionName":Ljava/lang/String;
    iget-object v3, v9, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v3, v6}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v16

    .line 2380
    .local v16, "bp":Lcom/android/server/pm/permission/BasePermission;
    if-nez v16, :cond_4a

    .line 2381
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot whitelist unknown permission: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PackageManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2382
    goto :goto_51

    .line 2385
    :cond_4a
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/pm/permission/BasePermission;->isHardOrSoftRestricted()Z

    move-result v3

    if-nez v3, :cond_57

    .line 2386
    nop

    .line 2376
    .end local v6  # "permissionName":Ljava/lang/String;
    .end local v16  # "bp":Lcom/android/server/pm/permission/BasePermission;
    :goto_51
    move/from16 v28, v7

    move/from16 v24, v8

    goto/16 :goto_129

    .line 2389
    .restart local v6  # "permissionName":Ljava/lang/String;
    .restart local v16  # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_57
    invoke-virtual {v15, v6, v11}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 2390
    if-nez v0, :cond_65

    .line 2391
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v3

    .line 2393
    :cond_65
    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v0

    goto :goto_6d

    .line 2389
    :cond_6b
    move-object/from16 v17, v0

    .line 2396
    .end local v0  # "oldGrantedRestrictedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v17, "oldGrantedRestrictedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_6d
    invoke-virtual {v15, v6, v11}, Lcom/android/server/pm/permission/PermissionsState;->getPermissionFlags(Ljava/lang/String;I)I

    move-result v5

    .line 2398
    .local v5, "oldFlags":I
    move v0, v5

    .line 2399
    .local v0, "newFlags":I
    const/4 v3, 0x0

    .line 2400
    .local v3, "mask":I
    move/from16 v4, p5

    move/from16 v18, v4

    .line 2401
    .local v18, "whitelistFlagsCopy":I
    :goto_77
    const/4 v4, 0x1

    if-eqz v18, :cond_be

    .line 2402
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v19

    shl-int v2, v4, v19

    .line 2403
    .local v2, "flag":I
    not-int v4, v2

    and-int v18, v18, v4

    .line 2404
    const/4 v4, 0x1

    if-eq v2, v4, :cond_ad

    const/4 v4, 0x2

    if-eq v2, v4, :cond_9d

    const/4 v4, 0x4

    if-eq v2, v4, :cond_8d

    goto :goto_bd

    .line 2414
    :cond_8d
    or-int/lit16 v3, v3, 0x2000

    .line 2415
    if-eqz v12, :cond_9a

    invoke-interface {v12, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9a

    .line 2416
    or-int/lit16 v0, v0, 0x2000

    goto :goto_bd

    .line 2418
    :cond_9a
    and-int/lit16 v0, v0, -0x2001

    .line 2420
    goto :goto_bd

    .line 2422
    :cond_9d
    or-int/lit16 v3, v3, 0x800

    .line 2423
    if-eqz v12, :cond_aa

    invoke-interface {v12, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_aa

    .line 2424
    or-int/lit16 v0, v0, 0x800

    goto :goto_bd

    .line 2426
    :cond_aa
    and-int/lit16 v0, v0, -0x801

    goto :goto_bd

    .line 2406
    :cond_ad
    or-int/lit16 v3, v3, 0x1000

    .line 2407
    if-eqz v12, :cond_ba

    invoke-interface {v12, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ba

    .line 2408
    or-int/lit16 v0, v0, 0x1000

    goto :goto_bd

    .line 2410
    :cond_ba
    and-int/lit16 v0, v0, -0x1001

    .line 2412
    nop

    .line 2430
    .end local v2  # "flag":I
    :goto_bd
    goto :goto_77

    .line 2432
    :cond_be
    if-ne v5, v0, :cond_c8

    .line 2433
    move/from16 v28, v7

    move/from16 v24, v8

    move-object/from16 v0, v17

    goto/16 :goto_129

    .line 2436
    :cond_c8
    const/16 v19, 0x1

    .line 2438
    .end local v1  # "updatePermissions":Z
    .local v19, "updatePermissions":Z
    and-int/lit16 v1, v5, 0x3800

    if-eqz v1, :cond_d0

    move v1, v4

    goto :goto_d1

    :cond_d0
    const/4 v1, 0x0

    :goto_d1
    move/from16 v21, v1

    .line 2440
    .local v21, "wasWhitelisted":Z
    and-int/lit16 v1, v0, 0x3800

    if-eqz v1, :cond_da

    move/from16 v20, v4

    goto :goto_dc

    :cond_da
    const/16 v20, 0x0

    .line 2447
    .local v20, "isWhitelisted":Z
    :goto_dc
    and-int/lit8 v1, v5, 0x4

    if-eqz v1, :cond_ec

    .line 2448
    invoke-virtual {v15, v6, v11}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v1

    .line 2449
    .local v1, "isGranted":Z
    if-nez v20, :cond_ec

    if-eqz v1, :cond_ec

    .line 2450
    or-int/lit8 v3, v3, 0x4

    .line 2451
    and-int/lit8 v0, v0, -0x5

    .line 2457
    .end local v1  # "isGranted":Z
    :cond_ec
    iget-object v1, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_101

    if-nez v21, :cond_101

    if-eqz v20, :cond_101

    .line 2459
    or-int/lit8 v1, v3, 0x40

    .line 2460
    .end local v3  # "mask":I
    .local v1, "mask":I
    or-int/lit8 v0, v0, 0x40

    move/from16 v23, v0

    move/from16 v22, v1

    goto :goto_105

    .line 2463
    .end local v1  # "mask":I
    .restart local v3  # "mask":I
    :cond_101
    move/from16 v23, v0

    move/from16 v22, v3

    .end local v0  # "newFlags":I
    .end local v3  # "mask":I
    .local v22, "mask":I
    .local v23, "newFlags":I
    :goto_105
    iget-object v2, v10, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v3, v22

    move/from16 v4, v23

    move/from16 v26, v5

    .end local v5  # "oldFlags":I
    .local v26, "oldFlags":I
    move/from16 v5, p4

    move-object/from16 v27, v6

    .end local v6  # "permissionName":Ljava/lang/String;
    .local v27, "permissionName":Ljava/lang/String;
    move/from16 v6, p2

    move/from16 v28, v7

    .end local v7  # "i":I
    .local v28, "i":I
    move/from16 v7, v24

    move/from16 v24, v8

    .end local v8  # "permissionCount":I
    .local v24, "permissionCount":I
    move-object/from16 v8, v25

    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    move-object/from16 v0, v17

    move/from16 v1, v19

    .line 2376
    .end local v16  # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v17  # "oldGrantedRestrictedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v18  # "whitelistFlagsCopy":I
    .end local v19  # "updatePermissions":Z
    .end local v20  # "isWhitelisted":Z
    .end local v21  # "wasWhitelisted":Z
    .end local v22  # "mask":I
    .end local v23  # "newFlags":I
    .end local v26  # "oldFlags":I
    .end local v27  # "permissionName":Ljava/lang/String;
    .local v0, "oldGrantedRestrictedPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v1, "updatePermissions":Z
    :goto_129
    add-int/lit8 v7, v28, 0x1

    move/from16 v8, v24

    .end local v28  # "i":I
    .restart local v7  # "i":I
    goto/16 :goto_20

    .end local v24  # "permissionCount":I
    .restart local v8  # "permissionCount":I
    :cond_12f
    move/from16 v28, v7

    move/from16 v24, v8

    .line 2467
    .end local v7  # "i":I
    .end local v8  # "permissionCount":I
    .restart local v24  # "permissionCount":I
    if-eqz v1, :cond_15f

    .line 2469
    iget-object v2, v10, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v9, v10, v3, v2, v13}, Lcom/android/server/pm/permission/PermissionManagerService;->restorePermissionState(Landroid/content/pm/PackageParser$Package;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 2472
    if-eqz v0, :cond_15f

    .line 2473
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    .line 2474
    .local v2, "oldGrantedCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_142
    if-ge v3, v2, :cond_15f

    .line 2475
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2477
    .local v4, "permission":Ljava/lang/String;
    invoke-virtual {v14}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v5

    invoke-virtual {v5, v4, v11}, Lcom/android/server/pm/permission/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_15c

    .line 2478
    iget-object v5, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v13, v5, v11}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onPermissionRevoked(II)V

    .line 2479
    goto :goto_15f

    .line 2474
    .end local v4  # "permission":Ljava/lang/String;
    :cond_15c
    add-int/lit8 v3, v3, 0x1

    goto :goto_142

    .line 2484
    .end local v2  # "oldGrantedCount":I
    .end local v3  # "i":I
    :cond_15f
    :goto_15f
    return-void
.end method

.method private systemReady()V
    .registers 3

    .line 3008
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSystemReady:Z

    .line 3009
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    if-eqz v0, :cond_1f

    .line 3012
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Signature|privileged permissions not in privapp-permissions whitelist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPrivappPermissionsViolations:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3016
    :cond_1f
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/permission/PermissionControllerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionControllerManager;

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionControllerManager:Landroid/permission/PermissionControllerManager;

    .line 3017
    const-class v0, Lcom/android/server/policy/PermissionPolicyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/PermissionPolicyInternal;

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    .line 3018
    return-void
.end method

.method private updateAllPermissions(Ljava/lang/String;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 13
    .param p1, "volumeUuid"  # Ljava/lang/String;
    .param p2, "sdkUpdated"  # Z
    .param p4, "callback"  # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;
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

    .line 2615
    .local p3, "allPackages":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    nop

    .line 2616
    if-eqz p2, :cond_5

    .line 2617
    const/4 v0, 0x6

    goto :goto_6

    .line 2618
    :cond_5
    const/4 v0, 0x0

    :goto_6
    or-int/lit8 v0, v0, 0x1

    .line 2619
    .local v0, "flags":I
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v4, p1

    move v5, v0

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Ljava/lang/String;ILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 2620
    return-void
.end method

.method private updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 26
    .param p1, "permName"  # Ljava/lang/String;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "flagMask"  # I
    .param p4, "flagValues"  # I
    .param p5, "callingUid"  # I
    .param p6, "userId"  # I
    .param p7, "overridePolicy"  # Z
    .param p8, "callback"  # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 2821
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p8

    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, v12}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 2822
    return-void

    .line 2825
    :cond_15
    const-string/jumbo v0, "updatePermissionFlags"

    invoke-direct {v8, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V

    .line 2827
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string/jumbo v7, "updatePermissionFlags"

    move-object/from16 v1, p0

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    .line 2833
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_3a

    if-eqz p7, :cond_31

    goto :goto_3a

    .line 2834
    :cond_31
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "updatePermissionFlags requires android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2839
    :cond_3a
    :goto_3a
    const/16 v0, 0x3e8

    if-eq v11, v0, :cond_53

    .line 2840
    and-int/lit8 v0, p3, -0x11

    .line 2841
    .end local p3  # "flagMask":I
    .local v0, "flagMask":I
    and-int/lit8 v1, p4, -0x11

    .line 2842
    .end local p4  # "flagValues":I
    .local v1, "flagValues":I
    and-int/lit8 v0, v0, -0x21

    .line 2843
    and-int/lit8 v1, v1, -0x21

    .line 2844
    and-int/lit8 v1, v1, -0x41

    .line 2845
    and-int/lit16 v1, v1, -0x1001

    .line 2846
    and-int/lit16 v1, v1, -0x801

    .line 2847
    and-int/lit16 v1, v1, -0x2001

    .line 2848
    and-int/lit16 v1, v1, -0x4001

    move v2, v1

    move v1, v0

    goto :goto_57

    .line 2839
    .end local v0  # "flagMask":I
    .end local v1  # "flagValues":I
    .restart local p3  # "flagMask":I
    .restart local p4  # "flagValues":I
    :cond_53
    move/from16 v1, p3

    move/from16 v2, p4

    .line 2851
    .end local p3  # "flagMask":I
    .end local p4  # "flagValues":I
    .local v1, "flagMask":I
    .local v2, "flagValues":I
    :goto_57
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 2852
    .local v3, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_ec

    iget-object v0, v3, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-nez v0, :cond_65

    goto/16 :goto_ec

    .line 2856
    :cond_65
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v3, v11, v12}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Landroid/content/pm/PackageParser$Package;II)Z

    move-result v0

    if-nez v0, :cond_d5

    .line 2861
    iget-object v4, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2862
    :try_start_70
    iget-object v0, v8, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v0

    .line 2863
    .local v0, "bp":Lcom/android/server/pm/permission/BasePermission;
    monitor-exit v4
    :try_end_77
    .catchall {:try_start_70 .. :try_end_77} :catchall_d2

    .line 2864
    if-eqz v0, :cond_bb

    .line 2868
    iget-object v4, v3, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 2869
    .local v4, "ps":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v5

    .line 2870
    .local v5, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    nop

    .line 2871
    invoke-virtual {v5, v9, v12}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v14, 0x0

    if-eqz v6, :cond_8c

    move v6, v7

    goto :goto_8d

    :cond_8c
    move v6, v14

    .line 2872
    .local v6, "hadState":Z
    :goto_8d
    nop

    .line 2873
    invoke-virtual {v5, v0, v12, v1, v2}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    move-result v15

    .line 2874
    .local v15, "permissionUpdated":Z
    if-eqz v15, :cond_9d

    invoke-virtual {v0}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v16

    if-eqz v16, :cond_9d

    .line 2875
    invoke-direct {v8, v10, v12}, Lcom/android/server/pm/permission/PermissionManagerService;->notifyRuntimePermissionStateChanged(Ljava/lang/String;I)V

    .line 2877
    :cond_9d
    if-eqz v15, :cond_ba

    if-eqz v13, :cond_ba

    .line 2880
    invoke-virtual {v5, v9}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v16

    if-eqz v16, :cond_ab

    .line 2881
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onInstallPermissionUpdated()V

    goto :goto_ba

    .line 2882
    :cond_ab
    invoke-virtual {v5, v9, v12}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    move-result-object v16

    if-nez v16, :cond_b3

    if-eqz v6, :cond_ba

    .line 2884
    :cond_b3
    new-array v7, v7, [I

    aput v12, v7, v14

    invoke-virtual {v13, v7, v14}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onPermissionUpdated([IZ)V

    .line 2887
    :cond_ba
    :goto_ba
    return-void

    .line 2865
    .end local v4  # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v5  # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    .end local v6  # "hadState":Z
    .end local v15  # "permissionUpdated":Z
    :cond_bb
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown permission: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2863
    .end local v0  # "bp":Lcom/android/server/pm/permission/BasePermission;
    :catchall_d2
    move-exception v0

    :try_start_d3
    monitor-exit v4
    :try_end_d4
    .catchall {:try_start_d3 .. :try_end_d4} :catchall_d2

    throw v0

    .line 2857
    :cond_d5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2853
    :cond_ec
    :goto_ec
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "PackageManager"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2854
    return-void
.end method

.method private updatePermissionFlagsForAllApps(IIIILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)Z
    .registers 15
    .param p1, "flagMask"  # I
    .param p2, "flagValues"  # I
    .param p3, "callingUid"  # I
    .param p4, "userId"  # I
    .param p6, "callback"  # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;
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

    .line 2891
    .local p5, "packages":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v0, p4}, Landroid/os/UserManagerInternal;->exists(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2892
    const/4 v0, 0x0

    return v0

    .line 2895
    :cond_a
    const-string/jumbo v0, "updatePermissionFlagsForAllApps"

    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V

    .line 2897
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string/jumbo v7, "updatePermissionFlagsForAllApps"

    move-object v1, p0

    move v2, p3

    move v3, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService;->enforceCrossUserPermission(IIZZZLjava/lang/String;)V

    .line 2904
    const/16 v0, 0x3e8

    if-eq p3, v0, :cond_24

    .line 2905
    and-int/lit8 p1, p1, -0x11

    .line 2906
    and-int/lit8 p2, p2, -0x11

    .line 2909
    :cond_24
    const/4 v0, 0x0

    .line 2910
    .local v0, "changed":Z
    invoke-interface {p5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 2911
    .local v2, "pkg":Landroid/content/pm/PackageParser$Package;
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 2912
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v3, :cond_3c

    .line 2913
    goto :goto_29

    .line 2915
    :cond_3c
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v4

    .line 2916
    .local v4, "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    invoke-virtual {v4, p4, p1, p2}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlagsForAllPermissions(III)Z

    move-result v5

    or-int/2addr v0, v5

    .line 2918
    .end local v2  # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v3  # "ps":Lcom/android/server/pm/PackageSetting;
    .end local v4  # "permissionsState":Lcom/android/server/pm/permission/PermissionsState;
    goto :goto_29

    .line 2919
    :cond_46
    return v0
.end method

.method private updatePermissionTrees(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;I)I
    .registers 12
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "pkg"  # Landroid/content/pm/PackageParser$Package;
    .param p3, "flags"  # I

    .line 2776
    const/4 v0, 0x0

    .line 2777
    .local v0, "needsUpdate":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/permission/BasePermission;>;"
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2778
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2779
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/permission/BasePermission;>;"
    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 2780
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/BasePermission;

    .line 2781
    .local v3, "bp":Lcom/android/server/pm/permission/BasePermission;
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageSetting()Lcom/android/server/pm/PackageSettingBase;

    move-result-object v4

    if-eqz v4, :cond_66

    .line 2782
    if-eqz p1, :cond_10

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    if-eqz p2, :cond_3a

    .line 2783
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/android/server/pm/permission/PermissionManagerService;->hasPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 2784
    :cond_3a
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

    .line 2785
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2784
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2786
    or-int/lit8 p3, p3, 0x1

    .line 2787
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_10

    .line 2791
    :cond_66
    if-nez v0, :cond_76

    .line 2792
    new-instance v4, Landroid/util/ArraySet;

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v5, v5, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/util/ArraySet;-><init>(I)V

    move-object v0, v4

    .line 2794
    :cond_76
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2795
    nop

    .end local v3  # "bp":Lcom/android/server/pm/permission/BasePermission;
    goto :goto_10

    .line 2796
    .end local v2  # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/permission/BasePermission;>;"
    :cond_7b
    monitor-exit v1
    :try_end_7c
    .catchall {:try_start_4 .. :try_end_7c} :catchall_e5

    .line 2797
    if-eqz v0, :cond_e4

    .line 2798
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_82
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/BasePermission;

    .line 2799
    .local v2, "bp":Lcom/android/server/pm/permission/BasePermission;
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 2800
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 2801
    .local v3, "sourcePkg":Landroid/content/pm/PackageParser$Package;
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2802
    if-eqz v3, :cond_b0

    :try_start_9d
    iget-object v5, v3, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-eqz v5, :cond_b0

    .line 2803
    iget-object v5, v3, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 2804
    .local v5, "sourcePs":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageSetting()Lcom/android/server/pm/PackageSettingBase;

    move-result-object v6

    if-nez v6, :cond_ae

    .line 2805
    invoke-virtual {v2, v5}, Lcom/android/server/pm/permission/BasePermission;->setSourcePackageSetting(Lcom/android/server/pm/PackageSettingBase;)V

    .line 2807
    :cond_ae
    monitor-exit v4

    goto :goto_82

    .line 2809
    .end local v5  # "sourcePs":Lcom/android/server/pm/PackageSetting;
    :cond_b0
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing dangling permission tree: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " from package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2810
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2809
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2811
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/PermissionSettings;->removePermissionLocked(Ljava/lang/String;)V

    .line 2812
    monitor-exit v4

    .line 2813
    .end local v2  # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v3  # "sourcePkg":Landroid/content/pm/PackageParser$Package;
    goto :goto_82

    .line 2812
    .restart local v2  # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v3  # "sourcePkg":Landroid/content/pm/PackageParser$Package;
    :catchall_e1
    move-exception v1

    monitor-exit v4
    :try_end_e3
    .catchall {:try_start_9d .. :try_end_e3} :catchall_e1

    throw v1

    .line 2815
    .end local v2  # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v3  # "sourcePkg":Landroid/content/pm/PackageParser$Package;
    :cond_e4
    return p3

    .line 2796
    :catchall_e5
    move-exception v2

    :try_start_e6
    monitor-exit v1
    :try_end_e7
    .catchall {:try_start_e6 .. :try_end_e7} :catchall_e5

    throw v2
.end method

.method private updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)I
    .registers 15
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "pkg"  # Landroid/content/pm/PackageParser$Package;
    .param p3, "flags"  # I
    .param p4, "callback"  # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 2691
    const/4 v0, 0x0

    .line 2692
    .local v0, "needsUpdate":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/permission/BasePermission;>;"
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2693
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2694
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/permission/BasePermission;>;"
    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ad

    .line 2695
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/BasePermission;

    .line 2696
    .local v3, "bp":Lcom/android/server/pm/permission/BasePermission;
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isDynamic()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 2697
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionSettings;->mPermissionTrees:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/pm/permission/BasePermission;->updateDynamicPermission(Ljava/util/Collection;)V

    .line 2699
    :cond_2d
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageSetting()Lcom/android/server/pm/PackageSettingBase;

    move-result-object v4

    if-eqz v4, :cond_97

    .line 2700
    if-eqz p1, :cond_10

    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    if-eqz p2, :cond_4b

    .line 2701
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/android/server/pm/permission/PermissionManagerService;->hasPermission(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 2702
    :cond_4b
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

    .line 2703
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2702
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2704
    invoke-virtual {v3}, Lcom/android/server/pm/permission/BasePermission;->isRuntime()Z

    move-result v4

    if-eqz v4, :cond_90

    .line 2705
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mUserManagerInt:Landroid/os/UserManagerInternal;

    invoke-virtual {v4}, Landroid/os/UserManagerInternal;->getUserIds()[I

    move-result-object v4

    .line 2706
    .local v4, "userIds":[I
    array-length v5, v4

    .line 2707
    .local v5, "numUserIds":I
    const/4 v6, 0x0

    .local v6, "userIdNum":I
    :goto_7f
    if-ge v6, v5, :cond_90

    .line 2708
    aget v7, v4, v6

    .line 2710
    .local v7, "userId":I
    iget-object v8, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    new-instance v9, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$w2aPgVKY5ZkiKKZQUVsj6t4Bn4c;

    invoke-direct {v9, p0, v3, v7, p4}, Lcom/android/server/pm/permission/-$$Lambda$PermissionManagerService$w2aPgVKY5ZkiKKZQUVsj6t4Bn4c;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/BasePermission;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManagerInternal;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 2707
    .end local v7  # "userId":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_7f

    .line 2742
    .end local v4  # "userIds":[I
    .end local v5  # "numUserIds":I
    .end local v6  # "userIdNum":I
    :cond_90
    or-int/lit8 p3, p3, 0x1

    .line 2743
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_10

    .line 2747
    :cond_97
    if-nez v0, :cond_a7

    .line 2748
    new-instance v4, Landroid/util/ArraySet;

    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v5, v5, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/util/ArraySet;-><init>(I)V

    move-object v0, v4

    .line 2750
    :cond_a7
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2751
    nop

    .end local v3  # "bp":Lcom/android/server/pm/permission/BasePermission;
    goto/16 :goto_10

    .line 2752
    .end local v2  # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/pm/permission/BasePermission;>;"
    :cond_ad
    monitor-exit v1
    :try_end_ae
    .catchall {:try_start_4 .. :try_end_ae} :catchall_117

    .line 2753
    if-eqz v0, :cond_116

    .line 2754
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_116

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/BasePermission;

    .line 2755
    .local v2, "bp":Lcom/android/server/pm/permission/BasePermission;
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 2756
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 2757
    .local v3, "sourcePkg":Landroid/content/pm/PackageParser$Package;
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2758
    if-eqz v3, :cond_e2

    :try_start_cf
    iget-object v5, v3, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    if-eqz v5, :cond_e2

    .line 2759
    iget-object v5, v3, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 2760
    .local v5, "sourcePs":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageSetting()Lcom/android/server/pm/PackageSettingBase;

    move-result-object v6

    if-nez v6, :cond_e0

    .line 2761
    invoke-virtual {v2, v5}, Lcom/android/server/pm/permission/BasePermission;->setSourcePackageSetting(Lcom/android/server/pm/PackageSettingBase;)V

    .line 2763
    :cond_e0
    monitor-exit v4

    goto :goto_b4

    .line 2765
    .end local v5  # "sourcePs":Lcom/android/server/pm/PackageSetting;
    :cond_e2
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing dangling permission: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " from package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2766
    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getSourcePackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2765
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2767
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v2}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/PermissionSettings;->removePermissionLocked(Ljava/lang/String;)V

    .line 2768
    monitor-exit v4

    .line 2769
    .end local v2  # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v3  # "sourcePkg":Landroid/content/pm/PackageParser$Package;
    goto :goto_b4

    .line 2768
    .restart local v2  # "bp":Lcom/android/server/pm/permission/BasePermission;
    .restart local v3  # "sourcePkg":Landroid/content/pm/PackageParser$Package;
    :catchall_113
    move-exception v1

    monitor-exit v4
    :try_end_115
    .catchall {:try_start_cf .. :try_end_115} :catchall_113

    throw v1

    .line 2771
    .end local v2  # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v3  # "sourcePkg":Landroid/content/pm/PackageParser$Package;
    :cond_116
    return p3

    .line 2752
    :catchall_117
    move-exception v2

    :try_start_118
    monitor-exit v1
    :try_end_119
    .catchall {:try_start_118 .. :try_end_119} :catchall_117

    throw v2
.end method

.method private updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Ljava/lang/String;ILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 15
    .param p1, "changingPkgName"  # Ljava/lang/String;
    .param p2, "changingPkg"  # Landroid/content/pm/PackageParser$Package;
    .param p3, "replaceVolumeUuid"  # Ljava/lang/String;
    .param p4, "flags"  # I
    .param p6, "callback"  # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;
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

    .line 2635
    .local p5, "allPackages":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissionTrees(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;I)I

    move-result p4

    .line 2639
    invoke-direct {p0, p1, p2, p4, p6}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)I

    move-result p4

    .line 2641
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2642
    :try_start_b
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mBackgroundPermissions:Landroid/util/ArrayMap;

    if-nez v1, :cond_5f

    .line 2645
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mBackgroundPermissions:Landroid/util/ArrayMap;

    .line 2646
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionSettings;->getAllPermissionsLocked()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/BasePermission;

    .line 2647
    .local v2, "bp":Lcom/android/server/pm/permission/BasePermission;
    iget-object v3, v2, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v3, :cond_5e

    iget-object v3, v2, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    if-eqz v3, :cond_5e

    iget-object v3, v2, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    if-eqz v3, :cond_5e

    .line 2649
    iget-object v3, v2, Lcom/android/server/pm/permission/BasePermission;->name:Ljava/lang/String;

    .line 2650
    .local v3, "fgPerm":Ljava/lang/String;
    iget-object v4, v2, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    .line 2652
    .local v4, "bgPerm":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mBackgroundPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 2653
    .local v5, "fgPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v5, :cond_5b

    .line 2654
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v6

    .line 2655
    iget-object v6, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mBackgroundPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2658
    :cond_5b
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2660
    .end local v2  # "bp":Lcom/android/server/pm/permission/BasePermission;
    .end local v3  # "fgPerm":Ljava/lang/String;
    .end local v4  # "bgPerm":Ljava/lang/String;
    .end local v5  # "fgPerms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5e
    goto :goto_20

    .line 2662
    :cond_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_b .. :try_end_60} :catchall_b0

    .line 2664
    const-wide/32 v0, 0x40000

    const-string/jumbo v2, "restorePermissionState"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2667
    and-int/lit8 v2, p4, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_96

    .line 2668
    invoke-interface {p5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_73
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_96

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Package;

    .line 2669
    .local v5, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eq v5, p2, :cond_95

    .line 2671
    invoke-static {v5}, Lcom/android/server/pm/permission/PermissionManagerService;->getVolumeUuidForPackage(Landroid/content/pm/PackageParser$Package;)Ljava/lang/String;

    move-result-object v6

    .line 2672
    .local v6, "volumeUuid":Ljava/lang/String;
    and-int/lit8 v7, p4, 0x4

    if-eqz v7, :cond_91

    .line 2673
    invoke-static {p3, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_91

    move v7, v4

    goto :goto_92

    :cond_91
    move v7, v3

    .line 2674
    .local v7, "replace":Z
    :goto_92
    invoke-direct {p0, v5, v7, p1, p6}, Lcom/android/server/pm/permission/PermissionManagerService;->restorePermissionState(Landroid/content/pm/PackageParser$Package;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 2676
    .end local v5  # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v6  # "volumeUuid":Ljava/lang/String;
    .end local v7  # "replace":Z
    :cond_95
    goto :goto_73

    .line 2679
    :cond_96
    if-eqz p2, :cond_ac

    .line 2681
    invoke-static {p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getVolumeUuidForPackage(Landroid/content/pm/PackageParser$Package;)Ljava/lang/String;

    move-result-object v2

    .line 2682
    .local v2, "volumeUuid":Ljava/lang/String;
    and-int/lit8 v5, p4, 0x2

    if-eqz v5, :cond_a8

    .line 2683
    invoke-static {p3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a8

    move v3, v4

    goto :goto_a9

    :cond_a8
    nop

    .line 2684
    .local v3, "replace":Z
    :goto_a9
    invoke-direct {p0, p2, v3, p1, p6}, Lcom/android/server/pm/permission/PermissionManagerService;->restorePermissionState(Landroid/content/pm/PackageParser$Package;ZLjava/lang/String;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 2686
    .end local v2  # "volumeUuid":Ljava/lang/String;
    .end local v3  # "replace":Z
    :cond_ac
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2687
    return-void

    .line 2662
    :catchall_b0
    move-exception v1

    :try_start_b1
    monitor-exit v0
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b0

    throw v1
.end method

.method private updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 16
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "pkg"  # Landroid/content/pm/PackageParser$Package;
    .param p3, "replaceGrant"  # Z
    .param p5, "callback"  # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;
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

    .line 2601
    .local p4, "allPackages":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    const/4 v0, 0x0

    if-eqz p2, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    move v1, v0

    .line 2602
    :goto_6
    if-eqz p3, :cond_9

    const/4 v0, 0x2

    :cond_9
    or-int/2addr v0, v1

    .line 2603
    .local v0, "flags":I
    nop

    .line 2604
    invoke-static {p2}, Lcom/android/server/pm/permission/PermissionManagerService;->getVolumeUuidForPackage(Landroid/content/pm/PackageParser$Package;)Ljava/lang/String;

    move-result-object v5

    .line 2603
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v6, v0

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Ljava/lang/String;ILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 2605
    if-eqz p2, :cond_40

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v1, :cond_40

    .line 2606
    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/content/pm/PackageParser$Package;

    .line 2607
    .local v9, "childPkg":Landroid/content/pm/PackageParser$Package;
    iget-object v3, v9, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 2608
    invoke-static {v9}, Lcom/android/server/pm/permission/PermissionManagerService;->getVolumeUuidForPackage(Landroid/content/pm/PackageParser$Package;)Ljava/lang/String;

    move-result-object v5

    .line 2607
    move-object v2, p0

    move-object v4, v9

    move v6, v0

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService;->updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Ljava/lang/String;ILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 2609
    .end local v9  # "childPkg":Landroid/content/pm/PackageParser$Package;
    goto :goto_24

    .line 2611
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

    .line 3067
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mBackgroundPermissions:Landroid/util/ArrayMap;

    return-object v0
.end method

.method getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;
    .registers 4
    .param p1, "permName"  # Ljava/lang/String;

    .line 294
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 295
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mSettings:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 296
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public synthetic lambda$restoreDelayedRuntimePermissions$0$PermissionManagerService(Landroid/os/UserHandle;Ljava/lang/Boolean;)V
    .registers 7
    .param p1, "user"  # Landroid/os/UserHandle;
    .param p2, "hasMoreBackup"  # Ljava/lang/Boolean;

    .line 444
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 445
    return-void

    .line 448
    :cond_7
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 449
    :try_start_a
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mHasNoDelayedPermBackup:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 450
    monitor-exit v0

    .line 451
    return-void

    .line 450
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_16

    throw v1
.end method

.method public synthetic lambda$updatePermissions$1$PermissionManagerService(Lcom/android/server/pm/permission/BasePermission;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;Landroid/content/pm/PackageParser$Package;)V
    .registers 14
    .param p1, "bp"  # Lcom/android/server/pm/permission/BasePermission;
    .param p2, "userId"  # I
    .param p3, "callback"  # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;
    .param p4, "p"  # Landroid/content/pm/PackageParser$Package;

    .line 2711
    iget-object v6, p4, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 2712
    .local v6, "pName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 2713
    const/16 v1, 0x3e8

    const/4 v2, 0x0

    invoke-virtual {v0, v6, v2, v1, v2}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(Ljava/lang/String;III)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 2715
    .local v7, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v7, :cond_14

    iget v0, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x17

    if-ge v0, v2, :cond_14

    .line 2717
    return-void

    .line 2720
    :cond_14
    invoke-virtual {p1}, Lcom/android/server/pm/permission/BasePermission;->getName()Ljava/lang/String;

    move-result-object v8

    .line 2721
    .local v8, "permissionName":Ljava/lang/String;
    invoke-direct {p0, v8, v6, v1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_47

    .line 2724
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, v8

    move-object v2, v6

    move v4, p2

    move-object v5, p3

    :try_start_24
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerService;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    :try_end_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_27} :catch_28

    .line 2737
    goto :goto_47

    .line 2730
    :catch_28
    move-exception v0

    .line 2731
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to revoke "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2739
    .end local v0  # "e":Ljava/lang/IllegalArgumentException;
    :cond_47
    :goto_47
    return-void
.end method
