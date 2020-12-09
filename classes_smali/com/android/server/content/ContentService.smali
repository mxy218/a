.class public final Lcom/android/server/content/ContentService;
.super Landroid/content/IContentService$Stub;
.source "ContentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/ContentService$ObserverNode;,
        Lcom/android/server/content/ContentService$ObserverCall;,
        Lcom/android/server/content/ContentService$Lifecycle;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "ContentService"

.field private static final TOO_MANY_OBSERVERS_THRESHOLD:I = 0x3e8

.field private static final sObserverDeathDispatcher:Lcom/android/internal/os/BinderDeathDispatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/os/BinderDeathDispatcher<",
            "Landroid/database/IContentObserver;",
            ">;"
        }
    .end annotation
.end field

.field private static final sObserverLeakDetectedUid:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sObserverLeakDetectedUid"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCache:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mCache"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/os/Bundle;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mCacheReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mFactoryTest:Z

.field private final mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

.field private mSyncManager:Lcom/android/server/content/SyncManager;

.field private final mSyncManagerLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 144
    new-instance v0, Lcom/android/internal/os/BinderDeathDispatcher;

    invoke-direct {v0}, Lcom/android/internal/os/BinderDeathDispatcher;-><init>()V

    sput-object v0, Lcom/android/server/content/ContentService;->sObserverDeathDispatcher:Lcom/android/internal/os/BinderDeathDispatcher;

    .line 148
    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    sput-object v0, Lcom/android/server/content/ContentService;->sObserverLeakDetectedUid:Landroid/util/ArraySet;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Z)V
    .registers 15

    .line 277
    invoke-direct {p0}, Landroid/content/IContentService$Stub;-><init>()V

    .line 139
    new-instance v0, Lcom/android/server/content/ContentService$ObserverNode;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/android/server/content/ContentService$ObserverNode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    .line 142
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManagerLock:Ljava/lang/Object;

    .line 155
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    .line 159
    new-instance v0, Lcom/android/server/content/ContentService$1;

    invoke-direct {v0, p0}, Lcom/android/server/content/ContentService$1;-><init>(Lcom/android/server/content/ContentService;)V

    iput-object v0, p0, Lcom/android/server/content/ContentService;->mCacheReceiver:Landroid/content/BroadcastReceiver;

    .line 278
    iput-object p1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    .line 279
    iput-boolean p2, p0, Lcom/android/server/content/ContentService;->mFactoryTest:Z

    .line 283
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    .line 285
    new-instance p2, Lcom/android/server/content/ContentService$3;

    invoke-direct {p2, p0}, Lcom/android/server/content/ContentService$3;-><init>(Lcom/android/server/content/ContentService;)V

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManagerInternal;->setSyncAdapterPackagesprovider(Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;)V

    .line 293
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 294
    const-string p1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 295
    const-string p1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 296
    const-string p1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    const-string p1, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 298
    const-string/jumbo p1, "package"

    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/content/ContentService;->mCacheReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 302
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 303
    const-string p1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v9, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 304
    iget-object v6, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/content/ContentService;->mCacheReceiver:Landroid/content/BroadcastReceiver;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 306
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/content/ContentService;)Landroid/util/SparseArray;
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/content/ContentService;ILjava/lang/String;Landroid/net/Uri;)V
    .registers 4

    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/ContentService;->invalidateCacheLocked(ILjava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$300()Lcom/android/internal/os/BinderDeathDispatcher;
    .registers 1

    .line 85
    sget-object v0, Lcom/android/server/content/ContentService;->sObserverDeathDispatcher:Lcom/android/internal/os/BinderDeathDispatcher;

    return-object v0
.end method

.method static synthetic access$400()Landroid/util/ArraySet;
    .registers 1

    .line 85
    sget-object v0, Lcom/android/server/content/ContentService;->sObserverLeakDetectedUid:Landroid/util/ArraySet;

    return-object v0
.end method

.method private checkUriPermission(Landroid/net/Uri;IIII)I
    .registers 13

    .line 478
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v6, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->checkUriPermission(Landroid/net/Uri;IIIILandroid/os/IBinder;)I

    move-result p1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return p1

    .line 480
    :catch_f
    move-exception p1

    .line 481
    const/4 p1, -0x1

    return p1
.end method

.method private clampPeriod(J)J
    .registers 7

    .line 555
    invoke-static {}, Landroid/app/job/JobInfo;->getMinPeriodMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 556
    cmp-long v2, p1, v0

    if-gez v2, :cond_30

    .line 557
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested poll frequency of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " seconds being rounded up to "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "s."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ContentService"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    move-wide p1, v0

    .line 561
    :cond_30
    return-wide p1
.end method

.method private enforceCrossUserPermission(ILjava/lang/String;)V
    .registers 4

    .line 1285
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1286
    if-eq v0, p1, :cond_d

    .line 1287
    iget-object p1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    :cond_d
    return-void
.end method

.method private enforceShell(Ljava/lang/String;)V
    .registers 5

    .line 1639
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1640
    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_22

    if-nez v0, :cond_b

    goto :goto_22

    .line 1641
    :cond_b
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-shell user attempted to call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1643
    :cond_22
    :goto_22
    return-void
.end method

.method private findOrCreateCacheLocked(ILjava/lang/String;)Landroid/util/ArrayMap;
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mCache"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 1161
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 1162
    if-nez v0, :cond_14

    .line 1163
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1164
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1166
    :cond_14
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    .line 1167
    if-nez p1, :cond_24

    .line 1168
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 1169
    invoke-virtual {v0, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1171
    :cond_24
    return-object p1
.end method

.method private getProviderPackageName(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4

    .line 1153
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1154
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object p1

    .line 1155
    if-eqz p1, :cond_14

    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return-object p1
.end method

.method private getSyncExemptionAndCleanUpExtrasForCaller(ILandroid/os/Bundle;)I
    .registers 6

    .line 1323
    if-eqz p2, :cond_11

    .line 1324
    nop

    .line 1325
    const/4 v0, -0x1

    const-string/jumbo v1, "v_exemption"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1328
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1329
    if-eq v2, v0, :cond_11

    .line 1330
    return v2

    .line 1333
    :cond_11
    const-class p2, Landroid/app/ActivityManagerInternal;

    .line 1334
    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityManagerInternal;

    .line 1335
    const/4 v0, 0x0

    if-nez p2, :cond_1d

    .line 1336
    return v0

    .line 1338
    :cond_1d
    invoke-virtual {p2, p1}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v1

    .line 1339
    invoke-virtual {p2, p1}, Landroid/app/ActivityManagerInternal;->isUidActive(I)Z

    move-result p1

    .line 1342
    const/4 p2, 0x2

    if-le v1, p2, :cond_35

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2c

    goto :goto_35

    .line 1346
    :cond_2c
    const/4 p2, 0x7

    if-le v1, p2, :cond_33

    if-eqz p1, :cond_32

    goto :goto_33

    .line 1349
    :cond_32
    return v0

    .line 1347
    :cond_33
    :goto_33
    const/4 p1, 0x1

    return p1

    .line 1344
    :cond_35
    :goto_35
    return p2
.end method

.method private getSyncExemptionForCaller(I)I
    .registers 3

    .line 1318
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/ContentService;->getSyncExemptionAndCleanUpExtrasForCaller(ILandroid/os/Bundle;)I

    move-result p1

    return p1
.end method

.method private getSyncManager()Lcom/android/server/content/SyncManager;
    .registers 5

    .line 179
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 182
    :try_start_3
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/server/content/SyncManager;

    iget-object v2, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/android/server/content/ContentService;->mFactoryTest:Z

    invoke-direct {v1, v2, v3}, Lcom/android/server/content/SyncManager;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_12} :catch_15
    .catchall {:try_start_3 .. :try_end_12} :catchall_13

    .line 185
    :cond_12
    goto :goto_1d

    .line 187
    :catchall_13
    move-exception v1

    goto :goto_21

    .line 183
    :catch_15
    move-exception v1

    .line 184
    :try_start_16
    const-string v2, "ContentService"

    const-string v3, "Can\'t create SyncManager"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    :goto_1d
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    monitor-exit v0

    return-object v1

    .line 187
    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_16 .. :try_end_22} :catchall_13

    throw v1
.end method

.method private handleIncomingUser(Landroid/net/Uri;IIIZI)I
    .registers 15

    .line 1241
    const/4 v0, -0x2

    if-ne p6, v0, :cond_7

    .line 1242
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p6

    .line 1245
    :cond_7
    const/4 v0, -0x1

    const-string v6, "No access to "

    const-string v7, "android.permission.INTERACT_ACROSS_USERS_FULL"

    if-ne p6, v0, :cond_23

    .line 1246
    iget-object p2, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v7, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7d

    .line 1248
    :cond_23
    if-ltz p6, :cond_7e

    .line 1250
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p6, v0, :cond_7d

    .line 1251
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/content/ContentService;->checkUriPermission(Landroid/net/Uri;IIII)I

    move-result p2

    if-eqz p2, :cond_7d

    .line 1253
    const/4 p2, 0x0

    .line 1254
    iget-object p4, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    invoke-virtual {p4, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p4

    const/4 v0, 0x1

    if-nez p4, :cond_42

    .line 1257
    goto :goto_50

    .line 1258
    :cond_42
    if-eqz p5, :cond_4f

    iget-object p4, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p4, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p4

    if-nez p4, :cond_4f

    .line 1261
    goto :goto_50

    .line 1263
    :cond_4f
    move v0, p2

    :goto_50
    if-nez v0, :cond_7d

    .line 1264
    if-eqz p5, :cond_57

    .line 1265
    const-string v7, "android.permission.INTERACT_ACROSS_USERS_FULL or android.permission.INTERACT_ACROSS_USERS"

    goto :goto_58

    .line 1267
    :cond_57
    nop

    .line 1268
    :goto_58
    new-instance p2, Ljava/lang/SecurityException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": neither user "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " nor current process has "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1274
    :cond_7d
    :goto_7d
    return p6

    .line 1249
    :cond_7e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid user: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private invalidateCacheLocked(ILjava/lang/String;Landroid/net/Uri;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mCache"
        }
    .end annotation

    .line 1176
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    .line 1177
    if-nez p1, :cond_b

    return-void

    .line 1179
    :cond_b
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    .line 1180
    if-nez p1, :cond_14

    return-void

    .line 1182
    :cond_14
    if-eqz p3, :cond_41

    .line 1183
    const/4 p2, 0x0

    :goto_17
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge p2, v0, :cond_40

    .line 1184
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 1185
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v1, :cond_3d

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1187
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_3f

    .line 1189
    :cond_3d
    add-int/lit8 p2, p2, 0x1

    .line 1191
    :goto_3f
    goto :goto_17

    :cond_40
    goto :goto_44

    .line 1194
    :cond_41
    invoke-virtual {p1}, Landroid/util/ArrayMap;->clear()V

    .line 1196
    :goto_44
    return-void
.end method

.method private static normalizeSyncable(I)I
    .registers 1

    .line 1293
    if-lez p0, :cond_4

    .line 1294
    const/4 p0, 0x1

    return p0

    .line 1295
    :cond_4
    if-nez p0, :cond_8

    .line 1296
    const/4 p0, 0x0

    return p0

    .line 1298
    :cond_8
    const/4 p0, -0x2

    return p0
.end method

.method private validateExtras(ILandroid/os/Bundle;)V
    .registers 4

    .line 1302
    const-string/jumbo v0, "v_exemption"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_23

    .line 1303
    if-eqz p1, :cond_23

    const/16 p2, 0x3e8

    if-eq p1, p2, :cond_23

    const/16 p2, 0x7d0

    if-ne p1, p2, :cond_14

    goto :goto_23

    .line 1310
    :cond_14
    const-string p1, "ContentService"

    const-string p2, "Invalid extras specified. requestsync -f/-F needs to run on \'adb shell\'"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Invalid extras specified."

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1314
    :cond_23
    :goto_23
    return-void
.end method


# virtual methods
.method public addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V
    .registers 14

    .line 813
    const/4 v0, 0x1

    invoke-static {p3, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 814
    if-eqz p1, :cond_4c

    .line 817
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 820
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to write the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    .line 825
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 827
    invoke-direct {p0, p4, p5}, Lcom/android/server/content/ContentService;->clampPeriod(J)J

    move-result-wide v3

    .line 828
    invoke-static {v3, v4}, Lcom/android/server/content/SyncStorageEngine;->calculateDefaultFlexTime(J)J

    move-result-wide v5

    .line 830
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide p4

    .line 832
    :try_start_2d
    new-instance v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v2, p1, p2, v0}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 834
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v1

    move-object v7, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/content/SyncManager;->updateOrAddPeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V
    :try_end_3a
    .catchall {:try_start_2d .. :try_end_3a} :catchall_3f

    .line 837
    invoke-static {p4, p5}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 838
    nop

    .line 839
    return-void

    .line 837
    :catchall_3f
    move-exception p1

    invoke-static {p4, p5}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw p1

    .line 818
    :cond_44
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Authority must not be empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 815
    :cond_4c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Account must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    .registers 7

    .line 1126
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1127
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v1

    .line 1129
    :try_start_8
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v3

    .line 1130
    if-eqz v3, :cond_1b

    if-eqz p2, :cond_1b

    .line 1131
    invoke-virtual {v3}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    .line 1132
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1131
    invoke-virtual {v3, p1, v0, p2}, Lcom/android/server/content/SyncStorageEngine;->addStatusChangeListener(IILandroid/content/ISyncStatusObserver;)V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_20

    .line 1135
    :cond_1b
    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1136
    nop

    .line 1137
    return-void

    .line 1135
    :catchall_20
    move-exception p1

    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public cancelRequest(Landroid/content/SyncRequest;)V
    .registers 11

    .line 669
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0

    .line 670
    if-nez v0, :cond_7

    return-void

    .line 671
    :cond_7
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 672
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 674
    invoke-virtual {p1}, Landroid/content/SyncRequest;->isPeriodic()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 675
    iget-object v3, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v5, "no permission to write the sync settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    :cond_1f
    new-instance v3, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/content/SyncRequest;->getBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 680
    invoke-direct {p0, v2, v3}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    .line 682
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v4

    .line 686
    :try_start_2f
    invoke-virtual {p1}, Landroid/content/SyncRequest;->getAccount()Landroid/accounts/Account;

    move-result-object v6

    .line 687
    invoke-virtual {p1}, Landroid/content/SyncRequest;->getProvider()Ljava/lang/String;

    move-result-object v7

    .line 688
    new-instance v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v8, v6, v7, v1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 689
    invoke-virtual {p1}, Landroid/content/SyncRequest;->isPeriodic()Z

    move-result p1

    if-eqz p1, :cond_5a

    .line 691
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cancelRequest() by uid="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v8, v3, v1}, Lcom/android/server/content/SyncManager;->removePeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 695
    :cond_5a
    invoke-virtual {v0, v8, v3}, Lcom/android/server/content/SyncManager;->cancelScheduledSyncOperation(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V

    .line 696
    const-string p1, "API"

    invoke-virtual {v0, v8, v3, p1}, Lcom/android/server/content/SyncManager;->cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_62
    .catchall {:try_start_2f .. :try_end_62} :catchall_67

    .line 698
    invoke-static {v4, v5}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 699
    nop

    .line 700
    return-void

    .line 698
    :catchall_67
    move-exception p1

    invoke-static {v4, v5}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public cancelSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)V
    .registers 5

    .line 623
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)V

    .line 624
    return-void
.end method

.method public cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)V
    .registers 8

    .line 642
    if-eqz p2, :cond_11

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_11

    .line 643
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Authority must be non-empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 645
    :cond_11
    :goto_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to modify the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p4, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 649
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 650
    if-eqz p3, :cond_34

    .line 651
    const-string p1, "ContentService"

    const-string p2, "cname not null."

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    return-void

    .line 655
    :cond_34
    :try_start_34
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p3

    .line 656
    if-eqz p3, :cond_48

    .line 658
    new-instance v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v2, p1, p2, p4}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 659
    invoke-virtual {p3, v2}, Lcom/android/server/content/SyncManager;->clearScheduledSyncOperations(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 660
    const/4 p1, 0x0

    const-string p2, "API"

    invoke-virtual {p3, v2, p1, p2}, Lcom/android/server/content/SyncManager;->cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_34 .. :try_end_48} :catchall_4d

    .line 663
    :cond_48
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 664
    nop

    .line 665
    return-void

    .line 663
    :catchall_4d
    move-exception p1

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw p1
.end method

.method protected declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 19

    move-object v1, p0

    move-object/from16 v0, p2

    monitor-enter p0

    .line 204
    :try_start_4
    iget-object v2, v1, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v3, "ContentService"

    invoke-static {v2, v3, v0}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v2
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_141

    if-nez v2, :cond_10

    monitor-exit p0

    return-void

    .line 205
    :cond_10
    :try_start_10
    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v3, "  "

    invoke-direct {v2, v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 207
    const-string v0, "-a"

    move-object/from16 v6, p3

    invoke-static {v6, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 211
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v11
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_141

    .line 213
    :try_start_23
    iget-object v3, v1, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-nez v3, :cond_2f

    .line 214
    const-string v0, "SyncManager not available yet"

    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v4, p1

    goto :goto_36

    .line 216
    :cond_2f
    iget-object v3, v1, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    move-object/from16 v4, p1

    invoke-virtual {v3, v4, v2, v0}, Lcom/android/server/content/SyncManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V

    .line 218
    :goto_36
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 219
    const-string v0, "Observer tree:"

    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 220
    iget-object v13, v1, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    monitor-enter v13
    :try_end_41
    .catchall {:try_start_23 .. :try_end_41} :catchall_13c

    .line 221
    const/4 v0, 0x2

    :try_start_42
    new-array v0, v0, [I

    .line 222
    new-instance v14, Landroid/util/SparseIntArray;

    invoke-direct {v14}, Landroid/util/SparseIntArray;-><init>()V

    .line 223
    iget-object v3, v1, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    const-string v7, ""

    const-string v8, "  "

    move-object/from16 v4, p1

    move-object v5, v2

    move-object/from16 v6, p3

    move-object v9, v0

    move-object v10, v14

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/content/ContentService$ObserverNode;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILandroid/util/SparseIntArray;)V

    .line 224
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 225
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 226
    const/4 v4, 0x0

    move v5, v4

    :goto_63
    invoke-virtual {v14}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_77

    .line 227
    invoke-virtual {v14, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    add-int/lit8 v5, v5, 0x1

    goto :goto_63

    .line 229
    :cond_77
    new-instance v5, Lcom/android/server/content/ContentService$2;

    invoke-direct {v5, p0, v14}, Lcom/android/server/content/ContentService$2;-><init>(Lcom/android/server/content/ContentService;Landroid/util/SparseIntArray;)V

    invoke-static {v3, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 243
    move v5, v4

    :goto_80
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_ac

    .line 244
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 245
    const-string v7, "  pid "

    invoke-virtual {v2, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v7, ": "

    invoke-virtual {v2, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v14, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v6, " observers"

    invoke-virtual {v2, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 243
    add-int/lit8 v5, v5, 0x1

    goto :goto_80

    .line 248
    :cond_ac
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 249
    const-string v3, " Total number of nodes: "

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 250
    const-string v3, " Total number of observers: "

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 252
    sget-object v0, Lcom/android/server/content/ContentService;->sObserverDeathDispatcher:Lcom/android/internal/os/BinderDeathDispatcher;

    const-string v3, " "

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/os/BinderDeathDispatcher;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 253
    monitor-exit v13
    :try_end_cc
    .catchall {:try_start_42 .. :try_end_cc} :catchall_139

    .line 254
    :try_start_cc
    sget-object v3, Lcom/android/server/content/ContentService;->sObserverLeakDetectedUid:Landroid/util/ArraySet;

    monitor-enter v3
    :try_end_cf
    .catchall {:try_start_cc .. :try_end_cf} :catchall_13c

    .line 255
    :try_start_cf
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 256
    const-string v0, "Observer leaking UIDs: "

    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 257
    sget-object v0, Lcom/android/server/content/ContentService;->sObserverLeakDetectedUid:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 258
    monitor-exit v3
    :try_end_e1
    .catchall {:try_start_cf .. :try_end_e1} :catchall_136

    .line 260
    :try_start_e1
    iget-object v3, v1, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    monitor-enter v3
    :try_end_e4
    .catchall {:try_start_e1 .. :try_end_e4} :catchall_13c

    .line 261
    :try_start_e4
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 262
    const-string v0, "Cached content:"

    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 264
    nop

    :goto_f0
    iget-object v0, v1, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v4, v0, :cond_129

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 267
    iget-object v0, v1, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 268
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 264
    add-int/lit8 v4, v4, 0x1

    goto :goto_f0

    .line 270
    :cond_129
    invoke-virtual {v2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 271
    monitor-exit v3
    :try_end_12d
    .catchall {:try_start_e4 .. :try_end_12d} :catchall_133

    .line 273
    :try_start_12d
    invoke-static {v11, v12}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V
    :try_end_130
    .catchall {:try_start_12d .. :try_end_130} :catchall_141

    .line 274
    nop

    .line 275
    monitor-exit p0

    return-void

    .line 271
    :catchall_133
    move-exception v0

    :try_start_134
    monitor-exit v3
    :try_end_135
    .catchall {:try_start_134 .. :try_end_135} :catchall_133

    :try_start_135
    throw v0
    :try_end_136
    .catchall {:try_start_135 .. :try_end_136} :catchall_13c

    .line 258
    :catchall_136
    move-exception v0

    :try_start_137
    monitor-exit v3
    :try_end_138
    .catchall {:try_start_137 .. :try_end_138} :catchall_136

    :try_start_138
    throw v0
    :try_end_139
    .catchall {:try_start_138 .. :try_end_139} :catchall_13c

    .line 253
    :catchall_139
    move-exception v0

    :try_start_13a
    monitor-exit v13
    :try_end_13b
    .catchall {:try_start_13a .. :try_end_13b} :catchall_139

    :try_start_13b
    throw v0
    :try_end_13c
    .catchall {:try_start_13b .. :try_end_13c} :catchall_13c

    .line 273
    :catchall_13c
    move-exception v0

    :try_start_13d
    invoke-static {v11, v12}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v0
    :try_end_141
    .catchall {:try_start_13d .. :try_end_141} :catchall_141

    .line 203
    :catchall_141
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCache(Ljava/lang/String;Landroid/net/Uri;I)Landroid/os/Bundle;
    .registers 7

    .line 1224
    const-string v0, "ContentService"

    invoke-direct {p0, p3, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1225
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CACHE_CONTENT"

    const-string v2, "ContentService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 1229
    invoke-direct {p0, p2}, Lcom/android/server/content/ContentService;->getProviderPackageName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1230
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 1232
    iget-object p2, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    monitor-enter p2

    .line 1233
    :try_start_2a
    invoke-direct {p0, p3, v0}, Lcom/android/server/content/ContentService;->findOrCreateCacheLocked(ILjava/lang/String;)Landroid/util/ArrayMap;

    move-result-object p3

    .line 1235
    invoke-virtual {p3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    monitor-exit p2

    return-object p1

    .line 1236
    :catchall_36
    move-exception p1

    monitor-exit p2
    :try_end_38
    .catchall {:try_start_2a .. :try_end_38} :catchall_36

    throw p1
.end method

.method public getCurrentSyncs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    .line 1030
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/content/ContentService;->getCurrentSyncsAsUser(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentSyncsAsUser(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    .line 1039
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1041
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v2, "no permission to read the sync stats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    .line 1045
    const-string v1, "android.permission.GET_ACCOUNTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2b

    const/4 v0, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    .line 1047
    :goto_2c
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v1

    .line 1049
    :try_start_30
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    .line 1050
    invoke-virtual {v3, p1, v0}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncsCopy(IZ)Ljava/util/List;

    move-result-object p1
    :try_end_3c
    .catchall {:try_start_30 .. :try_end_3c} :catchall_40

    .line 1052
    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1049
    return-object p1

    .line 1052
    :catchall_40
    move-exception p1

    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I
    .registers 4

    .line 893
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/content/ContentService;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I
    .registers 8

    .line 902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 904
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to read the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 909
    :try_start_23
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 910
    if-eqz v2, :cond_32

    .line 911
    const/4 v3, 0x0

    invoke-virtual {v2, p1, p3, p2, v3}, Lcom/android/server/content/SyncManager;->computeSyncable(Landroid/accounts/Account;ILjava/lang/String;Z)I

    move-result p1
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_38

    .line 915
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 911
    return p1

    .line 915
    :cond_32
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 916
    nop

    .line 917
    const/4 p1, -0x1

    return p1

    .line 915
    :catchall_38
    move-exception p1

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public getMasterSyncAutomatically()Z
    .registers 2

    .line 957
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/content/ContentService;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v0

    return v0
.end method

.method public getMasterSyncAutomaticallyAsUser(I)Z
    .registers 5

    .line 966
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 968
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to read the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 973
    :try_start_23
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 974
    if-eqz v2, :cond_35

    .line 975
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    move-result p1
    :try_end_31
    .catchall {:try_start_23 .. :try_end_31} :catchall_3b

    .line 978
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 975
    return p1

    .line 978
    :cond_35
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 979
    nop

    .line 980
    const/4 p1, 0x0

    return p1

    .line 978
    :catchall_3b
    move-exception p1

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/PeriodicSync;",
            ">;"
        }
    .end annotation

    .line 872
    if-eqz p1, :cond_38

    .line 875
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_30

    .line 878
    iget-object p3, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v1, "no permission to read the sync settings"

    invoke-virtual {p3, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p3

    .line 882
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 884
    :try_start_1a
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    new-instance v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v3, p1, p2, p3}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Lcom/android/server/content/SyncManager;->getPeriodicSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Ljava/util/List;

    move-result-object p1
    :try_end_27
    .catchall {:try_start_1a .. :try_end_27} :catchall_2b

    .line 887
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 884
    return-object p1

    .line 887
    :catchall_2b
    move-exception p1

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw p1

    .line 876
    :cond_30
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Authority must not be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 873
    :cond_38
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Account must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 6

    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 740
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 742
    :try_start_19
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 743
    invoke-virtual {v2, p1, p2}, Lcom/android/server/content/SyncManager;->getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_25

    .line 745
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 743
    return-object p1

    .line 745
    :catchall_25
    move-exception p1

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public getSyncAdapterTypes()[Landroid/content/SyncAdapterType;
    .registers 2

    .line 708
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/content/ContentService;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v0

    return-object v0
.end method

.method public getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;
    .registers 5

    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 725
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 727
    :try_start_19
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 728
    invoke-virtual {v2, p1}, Lcom/android/server/content/SyncManager;->getSyncAdapterTypes(I)[Landroid/content/SyncAdapterType;

    move-result-object p1
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_25

    .line 730
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 728
    return-object p1

    .line 730
    :catchall_25
    move-exception p1

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z
    .registers 4

    .line 751
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/content/ContentService;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .registers 7

    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 762
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to read the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 767
    :try_start_23
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 768
    if-eqz v2, :cond_35

    .line 769
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v2

    .line 770
    invoke-virtual {v2, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z

    move-result p1
    :try_end_31
    .catchall {:try_start_23 .. :try_end_31} :catchall_3b

    .line 773
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 769
    return p1

    .line 773
    :cond_35
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 774
    nop

    .line 775
    const/4 p1, 0x0

    return p1

    .line 773
    :catchall_3b
    move-exception p1

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Landroid/content/SyncStatusInfo;
    .registers 5

    .line 1058
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Landroid/content/SyncStatusInfo;

    move-result-object p1

    return-object p1
.end method

.method public getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Landroid/content/SyncStatusInfo;
    .registers 8

    .line 1068
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_56

    .line 1072
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "no permission to read the sync stats for user "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p4, p3}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1074
    iget-object p3, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v1, "no permission to read the sync stats"

    invoke-virtual {p3, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 1079
    :try_start_29
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p3
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_51

    .line 1080
    if-nez p3, :cond_34

    .line 1081
    const/4 p1, 0x0

    .line 1091
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1081
    return-object p1

    .line 1084
    :cond_34
    if-eqz p1, :cond_49

    if-eqz p2, :cond_49

    .line 1085
    :try_start_38
    new-instance v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v2, p1, p2, p4}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1089
    invoke-virtual {p3}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/server/content/SyncStorageEngine;->getStatusByAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/content/SyncStatusInfo;

    move-result-object p1
    :try_end_45
    .catchall {:try_start_38 .. :try_end_45} :catchall_51

    .line 1091
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1089
    return-object p1

    .line 1087
    :cond_49
    :try_start_49
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must call sync status with valid authority"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_51
    .catchall {:try_start_49 .. :try_end_51} :catchall_51

    .line 1091
    :catchall_51
    move-exception p1

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw p1

    .line 1069
    :cond_56
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Authority must not be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isSyncActive(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Z
    .registers 8

    .line 1012
    iget-object p3, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v1, "no permission to read the sync stats"

    invoke-virtual {p3, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p3

    .line 1015
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 1017
    :try_start_12
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_2e

    .line 1018
    if-nez v2, :cond_1d

    .line 1019
    const/4 p1, 0x0

    .line 1024
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1019
    return p1

    .line 1021
    :cond_1d
    :try_start_1d
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v2

    new-instance v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v3, p1, p2, p3}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Lcom/android/server/content/SyncStorageEngine;->isSyncActive(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result p1
    :try_end_2a
    .catchall {:try_start_1d .. :try_end_2a} :catchall_2e

    .line 1024
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1021
    return p1

    .line 1024
    :catchall_2e
    move-exception p1

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public isSyncPending(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Z
    .registers 5

    .line 1097
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->isSyncPendingAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Z

    move-result p1

    return p1
.end method

.method public isSyncPendingAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Z
    .registers 8

    .line 1103
    iget-object p3, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v1, "no permission to read the sync stats"

    invoke-virtual {p3, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "no permission to retrieve the sync settings for user "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p4, p3}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1107
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 1108
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p3

    .line 1109
    if-nez p3, :cond_2b

    const/4 p1, 0x0

    return p1

    .line 1113
    :cond_2b
    if-eqz p1, :cond_40

    if-eqz p2, :cond_40

    .line 1114
    :try_start_2f
    new-instance v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v2, p1, p2, p4}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1118
    invoke-virtual {p3}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/server/content/SyncStorageEngine;->isSyncPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result p1
    :try_end_3c
    .catchall {:try_start_2f .. :try_end_3c} :catchall_48

    .line 1120
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1118
    return p1

    .line 1116
    :cond_40
    :try_start_40
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid authority specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_48
    .catchall {:try_start_40 .. :try_end_48} :catchall_48

    .line 1120
    :catchall_48
    move-exception p1

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZIIILjava/lang/String;)V
    .registers 27

    .line 396
    move-object/from16 v8, p0

    move-object/from16 v15, p1

    if-eqz v15, :cond_11d

    .line 400
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 401
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v17

    .line 402
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v18

    .line 404
    const/4 v5, 0x2

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, v17

    move v4, v14

    move/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/content/ContentService;->handleIncomingUser(Landroid/net/Uri;IIIZI)I

    move-result v1

    .line 407
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 408
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/app/ActivityManagerInternal;->checkContentProviderAccess(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 409
    if-eqz v0, :cond_6f

    .line 410
    const/16 v2, 0x1a

    move/from16 v3, p6

    if-ge v3, v2, :cond_69

    .line 413
    const-string v2, "Failed to find provider"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    goto :goto_6f

    .line 417
    :cond_42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring notify for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContentService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    return-void

    .line 411
    :cond_69
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 425
    :cond_6f
    :goto_6f
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v2

    .line 427
    :try_start_73
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 428
    iget-object v5, v8, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    monitor-enter v5
    :try_end_7b
    .catchall {:try_start_73 .. :try_end_7b} :catchall_118

    .line 429
    :try_start_7b
    iget-object v9, v8, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    const/4 v11, 0x0

    move-object/from16 v10, p1

    move-object/from16 v12, p2

    move/from16 v13, p3

    move v6, v14

    move/from16 v14, p4

    move-object v7, v15

    move v15, v1

    move-object/from16 v16, v4

    invoke-virtual/range {v9 .. v16}, Lcom/android/server/content/ContentService$ObserverNode;->collectObserversLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZIILjava/util/ArrayList;)V

    .line 431
    monitor-exit v5
    :try_end_8f
    .catchall {:try_start_7b .. :try_end_8f} :catchall_115

    .line 432
    :try_start_8f
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 433
    const/4 v9, 0x0

    move v10, v9

    :goto_95
    if-ge v10, v5, :cond_e4

    .line 434
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/server/content/ContentService$ObserverCall;
    :try_end_9e
    .catchall {:try_start_8f .. :try_end_9e} :catchall_118

    .line 436
    :try_start_9e
    iget-object v0, v11, Lcom/android/server/content/ContentService$ObserverCall;->mObserver:Landroid/database/IContentObserver;

    iget-boolean v12, v11, Lcom/android/server/content/ContentService$ObserverCall;->mSelfChange:Z

    invoke-interface {v0, v12, v7, v1}, Landroid/database/IContentObserver;->onChange(ZLandroid/net/Uri;I)V
    :try_end_a5
    .catch Landroid/os/RemoteException; {:try_start_9e .. :try_end_a5} :catch_a6
    .catchall {:try_start_9e .. :try_end_a5} :catchall_118

    .line 455
    goto :goto_de

    .line 439
    :catch_a6
    move-exception v0

    .line 440
    :try_start_a7
    iget-object v12, v8, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    monitor-enter v12
    :try_end_aa
    .catchall {:try_start_a7 .. :try_end_aa} :catchall_118

    .line 441
    :try_start_aa
    const-string v0, "ContentService"

    const-string v13, "Found dead observer, removing"

    invoke-static {v0, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v0, v11, Lcom/android/server/content/ContentService$ObserverCall;->mObserver:Landroid/database/IContentObserver;

    invoke-interface {v0}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 443
    iget-object v11, v11, Lcom/android/server/content/ContentService$ObserverCall;->mNode:Lcom/android/server/content/ContentService$ObserverNode;

    .line 444
    invoke-static {v11}, Lcom/android/server/content/ContentService$ObserverNode;->access$200(Lcom/android/server/content/ContentService$ObserverNode;)Ljava/util/ArrayList;

    move-result-object v11

    .line 445
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 446
    move v14, v13

    move v13, v9

    :goto_c3
    if-ge v13, v14, :cond_dd

    .line 447
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;

    .line 448
    iget-object v15, v15, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    invoke-interface {v15}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v15

    if-ne v15, v0, :cond_da

    .line 449
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 450
    add-int/lit8 v13, v13, -0x1

    .line 451
    add-int/lit8 v14, v14, -0x1

    .line 446
    :cond_da
    add-int/lit8 v13, v13, 0x1

    goto :goto_c3

    .line 454
    :cond_dd
    monitor-exit v12

    .line 433
    :goto_de
    add-int/lit8 v10, v10, 0x1

    goto :goto_95

    .line 454
    :catchall_e1
    move-exception v0

    monitor-exit v12
    :try_end_e3
    .catchall {:try_start_aa .. :try_end_e3} :catchall_e1

    :try_start_e3
    throw v0

    .line 457
    :cond_e4
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_102

    .line 458
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v9

    .line 459
    if-eqz v9, :cond_102

    .line 460
    const/4 v10, 0x0

    .line 462
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v8, v6}, Lcom/android/server/content/ContentService;->getSyncExemptionForCaller(I)I

    move-result v14

    .line 460
    move/from16 v11, v18

    move v12, v6

    move v15, v6

    move/from16 v16, v17

    move-object/from16 v17, p7

    invoke-virtual/range {v9 .. v17}, Lcom/android/server/content/SyncManager;->scheduleLocalSync(Landroid/accounts/Account;IILjava/lang/String;IIILjava/lang/String;)V

    .line 467
    :cond_102
    iget-object v4, v8, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    monitor-enter v4
    :try_end_105
    .catchall {:try_start_e3 .. :try_end_105} :catchall_118

    .line 468
    :try_start_105
    invoke-direct/range {p0 .. p1}, Lcom/android/server/content/ContentService;->getProviderPackageName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 469
    invoke-direct {v8, v1, v0, v7}, Lcom/android/server/content/ContentService;->invalidateCacheLocked(ILjava/lang/String;Landroid/net/Uri;)V

    .line 470
    monitor-exit v4
    :try_end_10d
    .catchall {:try_start_105 .. :try_end_10d} :catchall_112

    .line 472
    invoke-static {v2, v3}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 473
    nop

    .line 474
    return-void

    .line 470
    :catchall_112
    move-exception v0

    :try_start_113
    monitor-exit v4
    :try_end_114
    .catchall {:try_start_113 .. :try_end_114} :catchall_112

    :try_start_114
    throw v0
    :try_end_115
    .catchall {:try_start_114 .. :try_end_115} :catchall_118

    .line 431
    :catchall_115
    move-exception v0

    :try_start_116
    monitor-exit v5
    :try_end_117
    .catchall {:try_start_116 .. :try_end_117} :catchall_115

    :try_start_117
    throw v0
    :try_end_118
    .catchall {:try_start_117 .. :try_end_118} :catchall_118

    .line 472
    :catchall_118
    move-exception v0

    invoke-static {v2, v3}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v0

    .line 397
    :cond_11d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Uri must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZZLjava/lang/String;)V
    .registers 14

    .line 488
    nop

    .line 489
    nop

    .line 490
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    const/16 v6, 0x2710

    .line 488
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/content/ContentService;->notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZIIILjava/lang/String;)V

    .line 491
    return-void
.end method

.method onBootPhase(I)V
    .registers 3

    .line 309
    const/16 v0, 0x226

    if-eq p1, v0, :cond_5

    goto :goto_8

    .line 311
    :cond_5
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    .line 314
    :goto_8
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-eqz v0, :cond_f

    .line 315
    invoke-virtual {v0, p1}, Lcom/android/server/content/SyncManager;->onBootPhase(I)V

    .line 317
    :cond_f
    return-void
.end method

.method public onDbCorruption(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1661
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    invoke-static {p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 1672
    new-instance v0, Lcom/android/server/content/ContentShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/content/ContentShellCommand;-><init>(Landroid/content/IContentService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/content/ContentShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 1673
    return-void
.end method

.method onStartUser(I)V
    .registers 3

    .line 191
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/android/server/content/SyncManager;->onStartUser(I)V

    .line 192
    :cond_7
    return-void
.end method

.method onStopUser(I)V
    .registers 3

    .line 199
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/android/server/content/SyncManager;->onStopUser(I)V

    .line 200
    :cond_7
    return-void
.end method

.method onUnlockUser(I)V
    .registers 3

    .line 195
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/android/server/content/SyncManager;->onUnlockUser(I)V

    .line 196
    :cond_7
    return-void
.end method

.method public putCache(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;I)V
    .registers 8

    .line 1201
    const/4 v0, 0x1

    invoke-static {p3, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 1202
    const-string v0, "ContentService"

    invoke-direct {p0, p4, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1203
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CACHE_CONTENT"

    const-string v2, "ContentService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 1207
    invoke-direct {p0, p2}, Lcom/android/server/content/ContentService;->getProviderPackageName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1208
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 1210
    iget-object p2, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    monitor-enter p2

    .line 1211
    :try_start_2e
    invoke-direct {p0, p4, v0}, Lcom/android/server/content/ContentService;->findOrCreateCacheLocked(ILjava/lang/String;)Landroid/util/ArrayMap;

    move-result-object p4

    .line 1213
    if-eqz p3, :cond_38

    .line 1214
    invoke-virtual {p4, p1, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3b

    .line 1216
    :cond_38
    invoke-virtual {p4, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    :goto_3b
    monitor-exit p2

    .line 1219
    return-void

    .line 1218
    :catchall_3d
    move-exception p1

    monitor-exit p2
    :try_end_3f
    .catchall {:try_start_2e .. :try_end_3f} :catchall_3d

    throw p1
.end method

.method public registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;)V
    .registers 10

    .line 366
    nop

    .line 367
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 366
    const/16 v5, 0x2710

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/content/ContentService;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;II)V

    .line 368
    return-void
.end method

.method public registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;II)V
    .registers 15

    .line 330
    if-eqz p3, :cond_78

    if-eqz p1, :cond_78

    .line 334
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 335
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 337
    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, v8

    move v3, v7

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/content/ContentService;->handleIncomingUser(Landroid/net/Uri;IIIZI)I

    move-result p4

    .line 340
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 341
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Landroid/app/ActivityManagerInternal;->checkContentProviderAccess(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 342
    if-eqz v0, :cond_63

    .line 343
    const/16 v1, 0x1a

    if-ge p5, v1, :cond_5d

    .line 346
    const-string p5, "Failed to find provider"

    invoke-virtual {v0, p5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_36

    goto :goto_63

    .line 350
    :cond_36
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Ignoring content changes for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " from "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ContentService"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    return-void

    .line 344
    :cond_5d
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 356
    :cond_63
    :goto_63
    iget-object p5, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    monitor-enter p5

    .line 357
    :try_start_66
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    iget-object v4, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    move-object v1, p1

    move-object v2, p3

    move v3, p2

    move v5, v7

    move v6, v8

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;Landroid/database/IContentObserver;ZLjava/lang/Object;III)V

    .line 361
    monitor-exit p5

    .line 362
    return-void

    .line 361
    :catchall_75
    move-exception p1

    monitor-exit p5
    :try_end_77
    .catchall {:try_start_66 .. :try_end_77} :catchall_75

    throw p1

    .line 331
    :cond_78
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "You must pass a valid uri and observer"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 10

    .line 843
    const/4 v0, 0x1

    invoke-static {p3, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 844
    if-eqz p1, :cond_59

    .line 847
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_51

    .line 850
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to write the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    .line 855
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 857
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 858
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v2

    .line 860
    :try_start_29
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v4

    new-instance v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v5, p1, p2, v1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "removePeriodicSync() by uid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 861
    invoke-virtual {v4, v5, p3, p1}, Lcom/android/server/content/SyncManager;->removePeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_29 .. :try_end_47} :catchall_4c

    .line 865
    invoke-static {v2, v3}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 866
    nop

    .line 867
    return-void

    .line 865
    :catchall_4c
    move-exception p1

    invoke-static {v2, v3}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw p1

    .line 848
    :cond_51
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Authority must not be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 845
    :cond_59
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Account must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    .registers 5

    .line 1141
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 1143
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 1144
    if-eqz v2, :cond_13

    if-eqz p1, :cond_13

    .line 1145
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/content/SyncStorageEngine;->removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_18

    .line 1148
    :cond_13
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1149
    nop

    .line 1150
    return-void

    .line 1148
    :catchall_18
    move-exception p1

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 18

    .line 516
    move-object v0, p0

    move-object/from16 v5, p3

    const/4 v1, 0x1

    invoke-static {v5, v1}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 517
    invoke-static/range {p3 .. p3}, Landroid/content/ContentResolver;->validateSyncExtrasBundle(Landroid/os/Bundle;)V

    .line 518
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 519
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 520
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    .line 522
    invoke-direct {p0, v8, v5}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    .line 523
    invoke-direct {p0, v8, v5}, Lcom/android/server/content/ContentService;->getSyncExemptionAndCleanUpExtrasForCaller(ILandroid/os/Bundle;)I

    move-result v7

    .line 527
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v11

    .line 529
    :try_start_21
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0

    .line 530
    if-eqz v0, :cond_32

    .line 531
    const/4 v6, -0x2

    move-object v1, p1

    move v3, v8

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v10, p4

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IIIILjava/lang/String;)V
    :try_end_32
    .catchall {:try_start_21 .. :try_end_32} :catchall_37

    .line 536
    :cond_32
    invoke-static {v11, v12}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 537
    nop

    .line 538
    return-void

    .line 536
    :catchall_37
    move-exception v0

    invoke-static {v11, v12}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public resetTodayStats()V
    .registers 4

    .line 1647
    const-string/jumbo v0, "resetTodayStats"

    invoke-direct {p0, v0}, Lcom/android/server/content/ContentService;->enforceShell(Ljava/lang/String;)V

    .line 1649
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-eqz v0, :cond_1c

    .line 1650
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1652
    :try_start_e
    iget-object v2, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->resetTodayStats()V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_17

    .line 1654
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1655
    goto :goto_1c

    .line 1654
    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1657
    :cond_1c
    :goto_1c
    return-void
.end method

.method public setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    .registers 5

    .line 922
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->setIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;II)V

    .line 923
    return-void
.end method

.method public setIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;II)V
    .registers 15

    .line 931
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 934
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to set the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p4, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 936
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to write the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    invoke-static {p3}, Lcom/android/server/content/ContentService;->normalizeSyncable(I)I

    move-result v7

    .line 940
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 941
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    .line 943
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 945
    :try_start_35
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object p3

    .line 946
    if-eqz p3, :cond_45

    .line 947
    invoke-virtual {p3}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    move-object v4, p1

    move v5, p4

    move-object v6, p2

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/content/SyncStorageEngine;->setIsSyncable(Landroid/accounts/Account;ILjava/lang/String;III)V
    :try_end_45
    .catchall {:try_start_35 .. :try_end_45} :catchall_4a

    .line 951
    :cond_45
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 952
    nop

    .line 953
    return-void

    .line 951
    :catchall_4a
    move-exception p1

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw p1

    .line 932
    :cond_4f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Authority must not be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMasterSyncAutomatically(Z)V
    .registers 3

    .line 985
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/content/ContentService;->setMasterSyncAutomaticallyAsUser(ZI)V

    .line 986
    return-void
.end method

.method public setMasterSyncAutomaticallyAsUser(ZI)V
    .registers 12

    .line 990
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to set the sync status for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 992
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to write the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 996
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 998
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 1000
    :try_start_2b
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 1001
    if-eqz v2, :cond_3e

    .line 1002
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    .line 1003
    invoke-direct {p0, v7}, Lcom/android/server/content/ContentService;->getSyncExemptionForCaller(I)I

    move-result v6

    .line 1002
    move v4, p1

    move v5, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/content/SyncStorageEngine;->setMasterSyncAutomatically(ZIIII)V
    :try_end_3e
    .catchall {:try_start_2b .. :try_end_3e} :catchall_43

    .line 1006
    :cond_3e
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1007
    nop

    .line 1008
    return-void

    .line 1006
    :catchall_43
    move-exception p1

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .registers 5

    .line 780
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    .line 781
    return-void
.end method

.method public setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V
    .registers 16

    .line 786
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_50

    .line 789
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to write the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to modify the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p4, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 793
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 794
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 795
    invoke-direct {p0, v7}, Lcom/android/server/content/ContentService;->getSyncExemptionForCaller(I)I

    move-result v6

    .line 797
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v9

    .line 799
    :try_start_35
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0

    .line 800
    if-eqz v0, :cond_46

    .line 801
    invoke-virtual {v0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v1

    move-object v2, p1

    move v3, p4

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/content/SyncStorageEngine;->setSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;ZIII)V
    :try_end_46
    .catchall {:try_start_35 .. :try_end_46} :catchall_4b

    .line 805
    :cond_46
    invoke-static {v9, v10}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 806
    nop

    .line 807
    return-void

    .line 805
    :catchall_4b
    move-exception p1

    invoke-static {v9, v10}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw p1

    .line 787
    :cond_50
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Authority must be non-empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sync(Landroid/content/SyncRequest;Ljava/lang/String;)V
    .registers 4

    .line 551
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/content/ContentService;->syncAsUser(Landroid/content/SyncRequest;ILjava/lang/String;)V

    .line 552
    return-void
.end method

.method public syncAsUser(Landroid/content/SyncRequest;ILjava/lang/String;)V
    .registers 19

    .line 570
    move-object v0, p0

    move/from16 v2, p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no permission to request sync as user: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 571
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 572
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    .line 574
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getBundle()Landroid/os/Bundle;

    move-result-object v6

    .line 576
    invoke-direct {p0, v8, v6}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    .line 577
    invoke-direct {p0, v8, v6}, Lcom/android/server/content/ContentService;->getSyncExemptionAndCleanUpExtrasForCaller(ILandroid/os/Bundle;)I

    move-result v7

    .line 581
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v11

    .line 583
    :try_start_2f
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v1
    :try_end_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_85

    .line 584
    if-nez v1, :cond_39

    .line 608
    invoke-static {v11, v12}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 585
    return-void

    .line 587
    :cond_39
    :try_start_39
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getSyncFlexTime()J

    move-result-wide v4

    .line 588
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getSyncRunTime()J

    move-result-wide v13

    .line 589
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->isPeriodic()Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 590
    iget-object v1, v0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v7, "no permission to write the sync settings"

    invoke-virtual {v1, v3, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 595
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getProvider()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v3, v7, v2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 597
    invoke-direct {p0, v13, v14}, Lcom/android/server/content/ContentService;->clampPeriod(J)J

    move-result-wide v2

    .line 599
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/content/SyncManager;->updateOrAddPeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V

    .line 601
    goto :goto_80

    .line 602
    :cond_6a
    nop

    .line 603
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getProvider()Ljava/lang/String;

    move-result-object v4

    const/4 v10, -0x2

    .line 602
    move-object v0, v1

    move-object v1, v3

    move/from16 v2, p2

    move v3, v8

    move-object v5, v6

    move v6, v10

    move-object/from16 v10, p3

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IIIILjava/lang/String;)V
    :try_end_80
    .catchall {:try_start_39 .. :try_end_80} :catchall_85

    .line 608
    :goto_80
    invoke-static {v11, v12}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 609
    nop

    .line 610
    return-void

    .line 608
    :catchall_85
    move-exception v0

    invoke-static {v11, v12}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public unregisterContentObserver(Landroid/database/IContentObserver;)V
    .registers 4

    .line 372
    if-eqz p1, :cond_f

    .line 375
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    monitor-enter v0

    .line 376
    :try_start_5
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    invoke-virtual {v1, p1}, Lcom/android/server/content/ContentService$ObserverNode;->removeObserverLocked(Landroid/database/IContentObserver;)Z

    .line 378
    monitor-exit v0

    .line 379
    return-void

    .line 378
    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw p1

    .line 373
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You must pass a valid observer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
