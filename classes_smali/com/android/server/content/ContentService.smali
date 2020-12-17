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
    .registers 12
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "factoryTest"  # Z

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
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 285
    .local v0, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    new-instance v1, Lcom/android/server/content/ContentService$3;

    invoke-direct {v1, p0}, Lcom/android/server/content/ContentService$3;-><init>(Lcom/android/server/content/ContentService;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->setSyncAdapterPackagesprovider(Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;)V

    .line 293
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 294
    .local v1, "packageFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 295
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 296
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    const-string v2, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 298
    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 299
    iget-object v2, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/content/ContentService;->mCacheReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 302
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 303
    .local v2, "localeFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 304
    iget-object v3, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/content/ContentService;->mCacheReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    move-object v6, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 306
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/content/ContentService;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/content/ContentService;

    .line 85
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/content/ContentService;ILjava/lang/String;Landroid/net/Uri;)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/content/ContentService;
    .param p1, "x1"  # I
    .param p2, "x2"  # Ljava/lang/String;
    .param p3, "x3"  # Landroid/net/Uri;

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
    .param p1, "uri"  # Landroid/net/Uri;
    .param p2, "pid"  # I
    .param p3, "uid"  # I
    .param p4, "modeFlags"  # I
    .param p5, "userHandle"  # I

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

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return v0

    .line 480
    :catch_f
    move-exception v0

    .line 481
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    return v1
.end method

.method private clampPeriod(J)J
    .registers 7
    .param p1, "period"  # J

    .line 555
    invoke-static {}, Landroid/app/job/JobInfo;->getMinPeriodMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 556
    .local v0, "minPeriod":J
    cmp-long v2, p1, v0

    if-gez v2, :cond_30

    .line 557
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested poll frequency of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " seconds being rounded up to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "s."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ContentService"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    move-wide p1, v0

    .line 561
    :cond_30
    return-wide p1
.end method

.method private enforceCrossUserPermission(ILjava/lang/String;)V
    .registers 6
    .param p1, "userHandle"  # I
    .param p2, "message"  # Ljava/lang/String;

    .line 1290
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1291
    .local v0, "callingUser":I
    if-eq v0, p1, :cond_d

    .line 1292
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v2, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    :cond_d
    return-void
.end method

.method private enforceShell(Ljava/lang/String;)V
    .registers 6
    .param p1, "method"  # Ljava/lang/String;

    .line 1644
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1645
    .local v0, "callingUid":I
    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_22

    if-nez v0, :cond_b

    goto :goto_22

    .line 1646
    :cond_b
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-shell user attempted to call "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1648
    :cond_22
    :goto_22
    return-void
.end method

.method private findOrCreateCacheLocked(ILjava/lang/String;)Landroid/util/ArrayMap;
    .registers 6
    .param p1, "userId"  # I
    .param p2, "providerPackageName"  # Ljava/lang/String;
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
    .local v0, "userCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;>;"
    if-nez v0, :cond_15

    .line 1163
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    .line 1164
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1166
    :cond_15
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 1167
    .local v1, "packageCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;"
    if-nez v1, :cond_26

    .line 1168
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    move-object v1, v2

    .line 1169
    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1171
    :cond_26
    return-object v1
.end method

.method private getProviderPackageName(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .param p1, "uri"  # Landroid/net/Uri;

    .line 1153
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1154
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 1155
    .local v0, "pi":Landroid/content/pm/ProviderInfo;
    if-eqz v0, :cond_14

    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return-object v1
.end method

.method private getSyncExemptionAndCleanUpExtrasForCaller(ILandroid/os/Bundle;)I
    .registers 9
    .param p1, "callingUid"  # I
    .param p2, "extras"  # Landroid/os/Bundle;

    .line 1328
    if-eqz p2, :cond_11

    .line 1329
    nop

    .line 1330
    const/4 v0, -0x1

    const-string/jumbo v1, "v_exemption"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1333
    .local v2, "exemption":I
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1334
    if-eq v2, v0, :cond_11

    .line 1335
    return v2

    .line 1338
    .end local v2  # "exemption":I
    :cond_11
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 1339
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 1340
    .local v0, "ami":Landroid/app/ActivityManagerInternal;
    const/4 v1, 0x0

    if-nez v0, :cond_1d

    .line 1341
    return v1

    .line 1343
    :cond_1d
    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v2

    .line 1344
    .local v2, "procState":I
    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->isUidActive(I)Z

    move-result v3

    .line 1347
    .local v3, "isUidActive":Z
    const/4 v4, 0x2

    if-le v2, v4, :cond_35

    const/4 v5, 0x4

    if-ne v2, v5, :cond_2c

    goto :goto_35

    .line 1351
    :cond_2c
    const/4 v4, 0x7

    if-le v2, v4, :cond_33

    if-eqz v3, :cond_32

    goto :goto_33

    .line 1354
    :cond_32
    return v1

    .line 1352
    :cond_33
    :goto_33
    const/4 v1, 0x1

    return v1

    .line 1349
    :cond_35
    :goto_35
    return v4
.end method

.method private getSyncExemptionForCaller(I)I
    .registers 3
    .param p1, "callingUid"  # I

    .line 1323
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/ContentService;->getSyncExemptionAndCleanUpExtrasForCaller(ILandroid/os/Bundle;)I

    move-result v0

    return v0
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
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_16
    const-string v2, "ContentService"

    const-string v3, "Can\'t create SyncManager"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    .end local v1  # "e":Landroid/database/sqlite/SQLiteException;
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
    .param p1, "uri"  # Landroid/net/Uri;
    .param p2, "pid"  # I
    .param p3, "uid"  # I
    .param p4, "modeFlags"  # I
    .param p5, "allowNonFull"  # Z
    .param p6, "userId"  # I

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

    if-ne p6, v0, :cond_24

    .line 1246
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8c

    .line 1248
    :cond_24
    if-ltz p6, :cond_8d

    .line 1250
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p6, v0, :cond_8c

    .line 1251
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/content/ContentService;->checkUriPermission(Landroid/net/Uri;IIII)I

    move-result v0

    if-eqz v0, :cond_8c

    .line 1253
    const/4 v0, 0x0

    .line 1255
    .local v0, "allow":Z
    if-nez p6, :cond_47

    .line 1256
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1255
    invoke-static {v1}, Landroid/os/UserHandle;->isMultiOpenUserId(I)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 1257
    const/4 v0, 0x1

    goto :goto_5e

    .line 1259
    :cond_47
    iget-object v1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_51

    .line 1262
    const/4 v0, 0x1

    goto :goto_5e

    .line 1263
    :cond_51
    if-eqz p5, :cond_5e

    iget-object v1, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5e

    .line 1266
    const/4 v0, 0x1

    .line 1268
    :cond_5e
    :goto_5e
    if-nez v0, :cond_8c

    .line 1269
    if-eqz p5, :cond_65

    .line 1270
    const-string v7, "android.permission.INTERACT_ACROSS_USERS_FULL or android.permission.INTERACT_ACROSS_USERS"

    goto :goto_66

    .line 1272
    :cond_65
    nop

    :goto_66
    move-object v1, v7

    .line 1273
    .local v1, "permissions":Ljava/lang/String;
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": neither user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " nor current process has "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1279
    .end local v0  # "allow":Z
    .end local v1  # "permissions":Ljava/lang/String;
    :cond_8c
    :goto_8c
    return p6

    .line 1249
    :cond_8d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private invalidateCacheLocked(ILjava/lang/String;Landroid/net/Uri;)V
    .registers 10
    .param p1, "userId"  # I
    .param p2, "providerPackageName"  # Ljava/lang/String;
    .param p3, "uri"  # Landroid/net/Uri;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mCache"
        }
    .end annotation

    .line 1176
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 1177
    .local v0, "userCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;>;"
    if-nez v0, :cond_b

    return-void

    .line 1179
    :cond_b
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 1180
    .local v1, "packageCache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;"
    if-nez v1, :cond_14

    return-void

    .line 1182
    :cond_14
    if-eqz p3, :cond_41

    .line 1183
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_40

    .line 1184
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 1185
    .local v3, "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;"
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v4, :cond_3d

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 1187
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_3f

    .line 1189
    :cond_3d
    add-int/lit8 v2, v2, 0x1

    .line 1191
    .end local v3  # "key":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;"
    :goto_3f
    goto :goto_17

    .end local v2  # "i":I
    :cond_40
    goto :goto_44

    .line 1194
    :cond_41
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 1196
    :goto_44
    return-void
.end method

.method private static normalizeSyncable(I)I
    .registers 2
    .param p0, "syncable"  # I

    .line 1298
    if-lez p0, :cond_4

    .line 1299
    const/4 v0, 0x1

    return v0

    .line 1300
    :cond_4
    if-nez p0, :cond_8

    .line 1301
    const/4 v0, 0x0

    return v0

    .line 1303
    :cond_8
    const/4 v0, -0x2

    return v0
.end method

.method private validateExtras(ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "callingUid"  # I
    .param p2, "extras"  # Landroid/os/Bundle;

    .line 1307
    const-string/jumbo v0, "v_exemption"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1308
    if-eqz p1, :cond_25

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_25

    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_14

    goto :goto_25

    .line 1314
    :cond_14
    const-string v0, "Invalid extras specified."

    .line 1315
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "ContentService"

    const-string v2, "Invalid extras specified. requestsync -f/-F needs to run on \'adb shell\'"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Invalid extras specified."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1319
    .end local v0  # "msg":Ljava/lang/String;
    :cond_25
    :goto_25
    return-void
.end method


# virtual methods
.method public addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V
    .registers 24
    .param p1, "account"  # Landroid/accounts/Account;
    .param p2, "authority"  # Ljava/lang/String;
    .param p3, "extras"  # Landroid/os/Bundle;
    .param p4, "pollFrequency"  # J

    .line 813
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v10, p3

    const/4 v0, 0x1

    invoke-static {v10, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 814
    if-eqz v2, :cond_5b

    .line 817
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_51

    .line 820
    iget-object v0, v1, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v4, "no permission to write the sync settings"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {v1, v0, v10}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    .line 825
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v11

    .line 827
    .local v11, "userId":I
    move-wide/from16 v3, p4

    invoke-direct {v1, v3, v4}, Lcom/android/server/content/ContentService;->clampPeriod(J)J

    move-result-wide v12

    .line 828
    .end local p4  # "pollFrequency":J
    .local v12, "pollFrequency":J
    invoke-static {v12, v13}, Lcom/android/server/content/SyncStorageEngine;->calculateDefaultFlexTime(J)J

    move-result-wide v14

    .line 830
    .local v14, "defaultFlex":J
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v16

    .line 832
    .local v16, "identityToken":J
    :try_start_35
    new-instance v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v9, p2

    invoke-direct {v4, v2, v9, v11}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 834
    .local v4, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v3

    move-wide v5, v12

    move-wide v7, v14

    move-object/from16 v9, p3

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/content/SyncManager;->updateOrAddPeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V
    :try_end_47
    .catchall {:try_start_35 .. :try_end_47} :catchall_4c

    .line 837
    .end local v4  # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-static/range {v16 .. v17}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 838
    nop

    .line 839
    return-void

    .line 837
    :catchall_4c
    move-exception v0

    invoke-static/range {v16 .. v17}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v0

    .line 818
    .end local v11  # "userId":I
    .end local v12  # "pollFrequency":J
    .end local v14  # "defaultFlex":J
    .end local v16  # "identityToken":J
    .restart local p4  # "pollFrequency":J
    :cond_51
    move-wide/from16 v3, p4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "Authority must not be empty."

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 815
    :cond_5b
    move-wide/from16 v3, p4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v5, "Account must not be null"

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    .registers 9
    .param p1, "mask"  # I
    .param p2, "callback"  # Landroid/content/ISyncStatusObserver;

    .line 1126
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1127
    .local v0, "callingUid":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v1

    .line 1129
    .local v1, "identityToken":J
    :try_start_8
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v3

    .line 1130
    .local v3, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v3, :cond_1b

    if-eqz p2, :cond_1b

    .line 1131
    invoke-virtual {v3}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v4

    .line 1132
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 1131
    invoke-virtual {v4, p1, v5, p2}, Lcom/android/server/content/SyncStorageEngine;->addStatusChangeListener(IILandroid/content/ISyncStatusObserver;)V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_20

    .line 1135
    .end local v3  # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_1b
    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1136
    nop

    .line 1137
    return-void

    .line 1135
    :catchall_20
    move-exception v3

    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public cancelRequest(Landroid/content/SyncRequest;)V
    .registers 14
    .param p1, "request"  # Landroid/content/SyncRequest;

    .line 669
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0

    .line 670
    .local v0, "syncManager":Lcom/android/server/content/SyncManager;
    if-nez v0, :cond_7

    return-void

    .line 671
    :cond_7
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 672
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 674
    .local v2, "callingUid":I
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
    .local v3, "extras":Landroid/os/Bundle;
    invoke-direct {p0, v2, v3}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    .line 682
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v4

    .line 686
    .local v4, "identityToken":J
    :try_start_2f
    invoke-virtual {p1}, Landroid/content/SyncRequest;->getAccount()Landroid/accounts/Account;

    move-result-object v6

    .line 687
    .local v6, "account":Landroid/accounts/Account;
    invoke-virtual {p1}, Landroid/content/SyncRequest;->getProvider()Ljava/lang/String;

    move-result-object v7

    .line 688
    .local v7, "provider":Ljava/lang/String;
    new-instance v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v8, v6, v7, v1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 689
    .local v8, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-virtual {p1}, Landroid/content/SyncRequest;->isPeriodic()Z

    move-result v9

    if-eqz v9, :cond_5a

    .line 691
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cancelRequest() by uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v8, v3, v10}, Lcom/android/server/content/SyncManager;->removePeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 695
    :cond_5a
    invoke-virtual {v0, v8, v3}, Lcom/android/server/content/SyncManager;->cancelScheduledSyncOperation(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)V

    .line 696
    const-string v9, "API"

    invoke-virtual {v0, v8, v3, v9}, Lcom/android/server/content/SyncManager;->cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_62
    .catchall {:try_start_2f .. :try_end_62} :catchall_67

    .line 698
    .end local v6  # "account":Landroid/accounts/Account;
    .end local v7  # "provider":Ljava/lang/String;
    .end local v8  # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-static {v4, v5}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 699
    nop

    .line 700
    return-void

    .line 698
    :catchall_67
    move-exception v6

    invoke-static {v4, v5}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public cancelSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "account"  # Landroid/accounts/Account;
    .param p2, "authority"  # Ljava/lang/String;
    .param p3, "cname"  # Landroid/content/ComponentName;

    .line 623
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)V

    .line 624
    return-void
.end method

.method public cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)V
    .registers 11
    .param p1, "account"  # Landroid/accounts/Account;
    .param p2, "authority"  # Ljava/lang/String;
    .param p3, "cname"  # Landroid/content/ComponentName;
    .param p4, "userId"  # I

    .line 642
    if-eqz p2, :cond_11

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_11

    .line 643
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authority must be non-empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

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
    .local v0, "identityToken":J
    if-eqz p3, :cond_34

    .line 651
    const-string v2, "ContentService"

    const-string v3, "cname not null."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    return-void

    .line 655
    :cond_34
    :try_start_34
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 656
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_48

    .line 658
    new-instance v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v3, p1, p2, p4}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 659
    .local v3, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-virtual {v2, v3}, Lcom/android/server/content/SyncManager;->clearScheduledSyncOperations(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 660
    const/4 v4, 0x0

    const-string v5, "API"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/content/SyncManager;->cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_34 .. :try_end_48} :catchall_4d

    .line 663
    .end local v2  # "syncManager":Lcom/android/server/content/SyncManager;
    .end local v3  # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_48
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 664
    nop

    .line 665
    return-void

    .line 663
    :catchall_4d
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method protected declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 22
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw_"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    monitor-enter p0

    .line 204
    :try_start_5
    iget-object v0, v1, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v3, "ContentService"

    invoke-static {v0, v3, v2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_159

    if-nez v0, :cond_11

    monitor-exit p0

    return-void

    .line 205
    :cond_11
    :try_start_11
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v3, "  "

    invoke-direct {v0, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    move-object v3, v0

    .line 207
    .local v3, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    const-string v0, "-a"

    move-object/from16 v12, p3

    invoke-static {v12, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    move v13, v0

    .line 211
    .local v13, "dumpAll":Z
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_26
    .catchall {:try_start_11 .. :try_end_26} :catchall_159

    move-wide v14, v4

    .line 213
    .local v14, "identityToken":J
    :try_start_27
    iget-object v0, v1, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-nez v0, :cond_33

    .line 214
    const-string v0, "SyncManager not available yet"

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v11, p1

    goto :goto_3a

    .line 216
    :cond_33
    iget-object v0, v1, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    move-object/from16 v11, p1

    invoke-virtual {v0, v11, v3, v13}, Lcom/android/server/content/SyncManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V

    .line 218
    :goto_3a
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 219
    const-string v0, "Observer tree:"

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 220
    iget-object v10, v1, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    monitor-enter v10
    :try_end_45
    .catchall {:try_start_27 .. :try_end_45} :catchall_154

    .line 221
    const/4 v0, 0x2

    :try_start_46
    new-array v0, v0, [I

    .line 222
    .local v0, "counts":[I
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    move-object v9, v4

    .line 223
    .local v9, "pidCounts":Landroid/util/SparseIntArray;
    iget-object v4, v1, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    const-string v8, ""

    const-string v16, "  "
    :try_end_54
    .catchall {:try_start_46 .. :try_end_54} :catchall_14d

    move-object/from16 v5, p1

    move-object v6, v3

    move-object/from16 v7, p3

    move-object/from16 v17, v9

    .end local v9  # "pidCounts":Landroid/util/SparseIntArray;
    .local v17, "pidCounts":Landroid/util/SparseIntArray;
    move-object/from16 v9, v16

    move-object/from16 v16, v10

    move-object v10, v0

    move-object/from16 v11, v17

    :try_start_62
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/content/ContentService$ObserverNode;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILandroid/util/SparseIntArray;)V

    .line 224
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 225
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v4, "sorted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    move v6, v5

    .local v6, "i":I
    :goto_6f
    invoke-virtual/range {v17 .. v17}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_87

    .line 227
    move-object/from16 v7, v17

    .end local v17  # "pidCounts":Landroid/util/SparseIntArray;
    .local v7, "pidCounts":Landroid/util/SparseIntArray;
    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v17, v7

    goto :goto_6f

    .end local v7  # "pidCounts":Landroid/util/SparseIntArray;
    .restart local v17  # "pidCounts":Landroid/util/SparseIntArray;
    :cond_87
    move-object/from16 v7, v17

    .line 229
    .end local v6  # "i":I
    .end local v17  # "pidCounts":Landroid/util/SparseIntArray;
    .restart local v7  # "pidCounts":Landroid/util/SparseIntArray;
    new-instance v6, Lcom/android/server/content/ContentService$2;

    invoke-direct {v6, v1, v7}, Lcom/android/server/content/ContentService$2;-><init>(Lcom/android/server/content/ContentService;Landroid/util/SparseIntArray;)V

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 243
    move v6, v5

    .restart local v6  # "i":I
    :goto_92
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_be

    .line 244
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 245
    .local v8, "pid":I
    const-string v9, "  pid "

    invoke-virtual {v3, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v9, ": "

    invoke-virtual {v3, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v7, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v9

    invoke-virtual {v3, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v9, " observers"

    invoke-virtual {v3, v9}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 243
    .end local v8  # "pid":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_92

    .line 248
    .end local v6  # "i":I
    :cond_be
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 249
    const-string v6, " Total number of nodes: "

    invoke-virtual {v3, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    aget v6, v0, v5

    invoke-virtual {v3, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 250
    const-string v6, " Total number of observers: "

    invoke-virtual {v3, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const/4 v6, 0x1

    aget v6, v0, v6

    invoke-virtual {v3, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 252
    sget-object v6, Lcom/android/server/content/ContentService;->sObserverDeathDispatcher:Lcom/android/internal/os/BinderDeathDispatcher;

    const-string v8, " "

    invoke-virtual {v6, v3, v8}, Lcom/android/internal/os/BinderDeathDispatcher;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 253
    .end local v0  # "counts":[I
    .end local v4  # "sorted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v7  # "pidCounts":Landroid/util/SparseIntArray;
    monitor-exit v16
    :try_end_de
    .catchall {:try_start_62 .. :try_end_de} :catchall_152

    .line 254
    :try_start_de
    sget-object v4, Lcom/android/server/content/ContentService;->sObserverLeakDetectedUid:Landroid/util/ArraySet;

    monitor-enter v4
    :try_end_e1
    .catchall {:try_start_de .. :try_end_e1} :catchall_154

    .line 255
    :try_start_e1
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 256
    const-string v0, "Observer leaking UIDs: "

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 257
    sget-object v0, Lcom/android/server/content/ContentService;->sObserverLeakDetectedUid:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 258
    monitor-exit v4
    :try_end_f3
    .catchall {:try_start_e1 .. :try_end_f3} :catchall_14a

    .line 260
    :try_start_f3
    iget-object v4, v1, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    monitor-enter v4
    :try_end_f6
    .catchall {:try_start_f3 .. :try_end_f6} :catchall_154

    .line 261
    :try_start_f6
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 262
    const-string v0, "Cached content:"

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 264
    move v0, v5

    .local v0, "i":I
    :goto_102
    iget-object v5, v1, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5
    :try_end_108
    .catchall {:try_start_f6 .. :try_end_108} :catchall_145

    if-ge v0, v5, :cond_13b

    .line 265
    :try_start_10a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 267
    iget-object v5, v1, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 268
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;
    :try_end_138
    .catchall {:try_start_10a .. :try_end_138} :catchall_148

    .line 264
    add-int/lit8 v0, v0, 0x1

    goto :goto_102

    .line 270
    .end local v0  # "i":I
    :cond_13b
    :try_start_13b
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 271
    monitor-exit v4
    :try_end_13f
    .catchall {:try_start_13b .. :try_end_13f} :catchall_145

    .line 273
    :try_start_13f
    invoke-static {v14, v15}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V
    :try_end_142
    .catchall {:try_start_13f .. :try_end_142} :catchall_159

    .line 274
    nop

    .line 275
    monitor-exit p0

    return-void

    .line 271
    .end local p0  # "this":Lcom/android/server/content/ContentService;
    :catchall_145
    move-exception v0

    :goto_146
    :try_start_146
    monitor-exit v4
    :try_end_147
    .catchall {:try_start_146 .. :try_end_147} :catchall_148

    .end local v3  # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v13  # "dumpAll":Z
    .end local v14  # "identityToken":J
    .end local p1  # "fd":Ljava/io/FileDescriptor;
    .end local p2  # "pw_":Ljava/io/PrintWriter;
    .end local p3  # "args":[Ljava/lang/String;
    :try_start_147
    throw v0
    :try_end_148
    .catchall {:try_start_147 .. :try_end_148} :catchall_154

    .restart local v3  # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v13  # "dumpAll":Z
    .restart local v14  # "identityToken":J
    .restart local p0  # "this":Lcom/android/server/content/ContentService;
    .restart local p1  # "fd":Ljava/io/FileDescriptor;
    .restart local p2  # "pw_":Ljava/io/PrintWriter;
    .restart local p3  # "args":[Ljava/lang/String;
    :catchall_148
    move-exception v0

    goto :goto_146

    .line 258
    :catchall_14a
    move-exception v0

    :try_start_14b
    monitor-exit v4
    :try_end_14c
    .catchall {:try_start_14b .. :try_end_14c} :catchall_14a

    .end local v3  # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v13  # "dumpAll":Z
    .end local v14  # "identityToken":J
    .end local p0  # "this":Lcom/android/server/content/ContentService;
    .end local p1  # "fd":Ljava/io/FileDescriptor;
    .end local p2  # "pw_":Ljava/io/PrintWriter;
    .end local p3  # "args":[Ljava/lang/String;
    :try_start_14c
    throw v0
    :try_end_14d
    .catchall {:try_start_14c .. :try_end_14d} :catchall_154

    .line 253
    .restart local v3  # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v13  # "dumpAll":Z
    .restart local v14  # "identityToken":J
    .restart local p0  # "this":Lcom/android/server/content/ContentService;
    .restart local p1  # "fd":Ljava/io/FileDescriptor;
    .restart local p2  # "pw_":Ljava/io/PrintWriter;
    .restart local p3  # "args":[Ljava/lang/String;
    :catchall_14d
    move-exception v0

    move-object/from16 v16, v10

    :goto_150
    :try_start_150
    monitor-exit v16
    :try_end_151
    .catchall {:try_start_150 .. :try_end_151} :catchall_152

    .end local v3  # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v13  # "dumpAll":Z
    .end local v14  # "identityToken":J
    .end local p0  # "this":Lcom/android/server/content/ContentService;
    .end local p1  # "fd":Ljava/io/FileDescriptor;
    .end local p2  # "pw_":Ljava/io/PrintWriter;
    .end local p3  # "args":[Ljava/lang/String;
    :try_start_151
    throw v0
    :try_end_152
    .catchall {:try_start_151 .. :try_end_152} :catchall_154

    .restart local v3  # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v13  # "dumpAll":Z
    .restart local v14  # "identityToken":J
    .restart local p0  # "this":Lcom/android/server/content/ContentService;
    .restart local p1  # "fd":Ljava/io/FileDescriptor;
    .restart local p2  # "pw_":Ljava/io/PrintWriter;
    .restart local p3  # "args":[Ljava/lang/String;
    :catchall_152
    move-exception v0

    goto :goto_150

    .line 273
    :catchall_154
    move-exception v0

    :try_start_155
    invoke-static {v14, v15}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v0
    :try_end_159
    .catchall {:try_start_155 .. :try_end_159} :catchall_159

    .line 203
    .end local v3  # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v13  # "dumpAll":Z
    .end local v14  # "identityToken":J
    .end local p0  # "this":Lcom/android/server/content/ContentService;
    .end local p1  # "fd":Ljava/io/FileDescriptor;
    .end local p2  # "pw_":Ljava/io/PrintWriter;
    .end local p3  # "args":[Ljava/lang/String;
    :catchall_159
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCache(Ljava/lang/String;Landroid/net/Uri;I)Landroid/os/Bundle;
    .registers 9
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "key"  # Landroid/net/Uri;
    .param p3, "userId"  # I

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
    .local v0, "providerPackageName":Ljava/lang/String;
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 1232
    .local v1, "fullKey":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;"
    iget-object v2, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1233
    :try_start_2a
    invoke-direct {p0, p3, v0}, Lcom/android/server/content/ContentService;->findOrCreateCacheLocked(ILjava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v3

    .line 1235
    .local v3, "cache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;"
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    monitor-exit v2

    return-object v4

    .line 1236
    .end local v3  # "cache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;"
    :catchall_36
    move-exception v3

    monitor-exit v2
    :try_end_38
    .catchall {:try_start_2a .. :try_end_38} :catchall_36

    throw v3
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
    .param p1, "userId"  # I
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
    .local v0, "canAccessAccounts":Z
    :goto_2c
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v1

    .line 1049
    .local v1, "identityToken":J
    :try_start_30
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    .line 1050
    invoke-virtual {v3, p1, v0}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncsCopy(IZ)Ljava/util/List;

    move-result-object v3
    :try_end_3c
    .catchall {:try_start_30 .. :try_end_3c} :catchall_40

    .line 1052
    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1049
    return-object v3

    .line 1052
    :catchall_40
    move-exception v3

    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I
    .registers 4
    .param p1, "account"  # Landroid/accounts/Account;
    .param p2, "providerName"  # Ljava/lang/String;

    .line 893
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/content/ContentService;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I
    .registers 8
    .param p1, "account"  # Landroid/accounts/Account;
    .param p2, "providerName"  # Ljava/lang/String;
    .param p3, "userId"  # I

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
    .local v0, "identityToken":J
    :try_start_23
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 910
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_32

    .line 911
    const/4 v3, 0x0

    invoke-virtual {v2, p1, p3, p2, v3}, Lcom/android/server/content/SyncManager;->computeSyncable(Landroid/accounts/Account;ILjava/lang/String;Z)I

    move-result v3
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_38

    .line 915
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 911
    return v3

    .line 915
    .end local v2  # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_32
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 916
    nop

    .line 917
    const/4 v2, -0x1

    return v2

    .line 915
    :catchall_38
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
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
    .registers 6
    .param p1, "userId"  # I

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
    .local v0, "identityToken":J
    :try_start_23
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 974
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_35

    .line 975
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    move-result v3
    :try_end_31
    .catchall {:try_start_23 .. :try_end_31} :catchall_3b

    .line 978
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 975
    return v3

    .line 978
    .end local v2  # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_35
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 979
    nop

    .line 980
    const/4 v2, 0x0

    return v2

    .line 978
    :catchall_3b
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Ljava/util/List;
    .registers 9
    .param p1, "account"  # Landroid/accounts/Account;
    .param p2, "providerName"  # Ljava/lang/String;
    .param p3, "cname"  # Landroid/content/ComponentName;
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

    move-result v0

    if-nez v0, :cond_30

    .line 878
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to read the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 882
    .local v0, "userId":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v1

    .line 884
    .local v1, "identityToken":J
    :try_start_1a
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v3

    new-instance v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v4, p1, p2, v0}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Lcom/android/server/content/SyncManager;->getPeriodicSyncs(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Ljava/util/List;

    move-result-object v3
    :try_end_27
    .catchall {:try_start_1a .. :try_end_27} :catchall_2b

    .line 887
    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 884
    return-object v3

    .line 887
    :catchall_2b
    move-exception v3

    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v3

    .line 876
    .end local v0  # "userId":I
    .end local v1  # "identityToken":J
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authority must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 873
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Account must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 7
    .param p1, "authority"  # Ljava/lang/String;
    .param p2, "userId"  # I

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
    .local v0, "identityToken":J
    :try_start_19
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 743
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    invoke-virtual {v2, p1, p2}, Lcom/android/server/content/SyncManager;->getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_25

    .line 745
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 743
    return-object v3

    .line 745
    .end local v2  # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_25
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
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
    .registers 6
    .param p1, "userId"  # I

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
    .local v0, "identityToken":J
    :try_start_19
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 728
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    invoke-virtual {v2, p1}, Lcom/android/server/content/SyncManager;->getSyncAdapterTypes(I)[Landroid/content/SyncAdapterType;

    move-result-object v3
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_25

    .line 730
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 728
    return-object v3

    .line 730
    .end local v2  # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_25
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z
    .registers 4
    .param p1, "account"  # Landroid/accounts/Account;
    .param p2, "providerName"  # Ljava/lang/String;

    .line 751
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/content/ContentService;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .registers 8
    .param p1, "account"  # Landroid/accounts/Account;
    .param p2, "providerName"  # Ljava/lang/String;
    .param p3, "userId"  # I

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
    .local v0, "identityToken":J
    :try_start_23
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 768
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_35

    .line 769
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    .line 770
    invoke-virtual {v3, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z

    move-result v3
    :try_end_31
    .catchall {:try_start_23 .. :try_end_31} :catchall_3b

    .line 773
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 769
    return v3

    .line 773
    .end local v2  # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_35
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 774
    nop

    .line 775
    const/4 v2, 0x0

    return v2

    .line 773
    :catchall_3b
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Landroid/content/SyncStatusInfo;
    .registers 5
    .param p1, "account"  # Landroid/accounts/Account;
    .param p2, "authority"  # Ljava/lang/String;
    .param p3, "cname"  # Landroid/content/ComponentName;

    .line 1058
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Landroid/content/SyncStatusInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Landroid/content/SyncStatusInfo;
    .registers 10
    .param p1, "account"  # Landroid/accounts/Account;
    .param p2, "authority"  # Ljava/lang/String;
    .param p3, "cname"  # Landroid/content/ComponentName;
    .param p4, "userId"  # I

    .line 1068
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 1072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to read the sync stats for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p4, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1074
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v2, "no permission to read the sync stats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 1079
    .local v0, "identityToken":J
    :try_start_29
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_51

    .line 1080
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-nez v2, :cond_34

    .line 1081
    const/4 v3, 0x0

    .line 1091
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1081
    return-object v3

    .line 1084
    :cond_34
    if-eqz p1, :cond_49

    if-eqz p2, :cond_49

    .line 1085
    :try_start_38
    new-instance v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v3, p1, p2, p4}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1089
    .local v3, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/content/SyncStorageEngine;->getStatusByAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/content/SyncStatusInfo;

    move-result-object v4
    :try_end_45
    .catchall {:try_start_38 .. :try_end_45} :catchall_51

    .line 1091
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1089
    return-object v4

    .line 1087
    .end local v3  # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_49
    :try_start_49
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Must call sync status with valid authority"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0  # "identityToken":J
    .end local p0  # "this":Lcom/android/server/content/ContentService;
    .end local p1  # "account":Landroid/accounts/Account;
    .end local p2  # "authority":Ljava/lang/String;
    .end local p3  # "cname":Landroid/content/ComponentName;
    .end local p4  # "userId":I
    throw v3
    :try_end_51
    .catchall {:try_start_49 .. :try_end_51} :catchall_51

    .line 1091
    .end local v2  # "syncManager":Lcom/android/server/content/SyncManager;
    .restart local v0  # "identityToken":J
    .restart local p0  # "this":Lcom/android/server/content/ContentService;
    .restart local p1  # "account":Landroid/accounts/Account;
    .restart local p2  # "authority":Ljava/lang/String;
    .restart local p3  # "cname":Landroid/content/ComponentName;
    .restart local p4  # "userId":I
    :catchall_51
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v2

    .line 1069
    .end local v0  # "identityToken":J
    :cond_56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authority must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSyncActive(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Z
    .registers 10
    .param p1, "account"  # Landroid/accounts/Account;
    .param p2, "authority"  # Ljava/lang/String;
    .param p3, "cname"  # Landroid/content/ComponentName;

    .line 1012
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v2, "no permission to read the sync stats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1015
    .local v0, "userId":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v1

    .line 1017
    .local v1, "identityToken":J
    :try_start_12
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v3
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_2e

    .line 1018
    .local v3, "syncManager":Lcom/android/server/content/SyncManager;
    if-nez v3, :cond_1d

    .line 1019
    const/4 v4, 0x0

    .line 1024
    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1019
    return v4

    .line 1021
    :cond_1d
    :try_start_1d
    invoke-virtual {v3}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v4

    new-instance v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v5, p1, p2, v0}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-virtual {v4, v5}, Lcom/android/server/content/SyncStorageEngine;->isSyncActive(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v4
    :try_end_2a
    .catchall {:try_start_1d .. :try_end_2a} :catchall_2e

    .line 1024
    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1021
    return v4

    .line 1024
    .end local v3  # "syncManager":Lcom/android/server/content/SyncManager;
    :catchall_2e
    move-exception v3

    invoke-static {v1, v2}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public isSyncPending(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Z
    .registers 5
    .param p1, "account"  # Landroid/accounts/Account;
    .param p2, "authority"  # Ljava/lang/String;
    .param p3, "cname"  # Landroid/content/ComponentName;

    .line 1097
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->isSyncPendingAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public isSyncPendingAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Z
    .registers 10
    .param p1, "account"  # Landroid/accounts/Account;
    .param p2, "authority"  # Ljava/lang/String;
    .param p3, "cname"  # Landroid/content/ComponentName;
    .param p4, "userId"  # I

    .line 1103
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v2, "no permission to read the sync stats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "no permission to retrieve the sync settings for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p4, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 1107
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 1108
    .local v0, "identityToken":J
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 1109
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-nez v2, :cond_2b

    const/4 v3, 0x0

    return v3

    .line 1113
    :cond_2b
    if-eqz p1, :cond_40

    if-eqz p2, :cond_40

    .line 1114
    :try_start_2f
    new-instance v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v3, p1, p2, p4}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1118
    .local v3, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/content/SyncStorageEngine;->isSyncPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v4
    :try_end_3c
    .catchall {:try_start_2f .. :try_end_3c} :catchall_48

    .line 1120
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1118
    return v4

    .line 1116
    .end local v3  # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_40
    :try_start_40
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid authority specified"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0  # "identityToken":J
    .end local v2  # "syncManager":Lcom/android/server/content/SyncManager;
    .end local p0  # "this":Lcom/android/server/content/ContentService;
    .end local p1  # "account":Landroid/accounts/Account;
    .end local p2  # "authority":Ljava/lang/String;
    .end local p3  # "cname":Landroid/content/ComponentName;
    .end local p4  # "userId":I
    throw v3
    :try_end_48
    .catchall {:try_start_40 .. :try_end_48} :catchall_48

    .line 1120
    .restart local v0  # "identityToken":J
    .restart local v2  # "syncManager":Lcom/android/server/content/SyncManager;
    .restart local p0  # "this":Lcom/android/server/content/ContentService;
    .restart local p1  # "account":Landroid/accounts/Account;
    .restart local p2  # "authority":Ljava/lang/String;
    .restart local p3  # "cname":Landroid/content/ComponentName;
    .restart local p4  # "userId":I
    :catchall_48
    move-exception v3

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZIIILjava/lang/String;)V
    .registers 30
    .param p1, "uri"  # Landroid/net/Uri;
    .param p2, "observer"  # Landroid/database/IContentObserver;
    .param p3, "observerWantsSelfNotifications"  # Z
    .param p4, "flags"  # I
    .param p5, "userHandle"  # I
    .param p6, "targetSdkVersion"  # I
    .param p7, "callingPackage"  # Ljava/lang/String;

    .line 396
    move-object/from16 v8, p0

    move-object/from16 v15, p1

    if-eqz v15, :cond_1ae

    .line 400
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 401
    .local v14, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v18

    .line 402
    .local v18, "callingPid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v19

    .line 404
    .local v19, "callingUserHandle":I
    const/4 v5, 0x2

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, v18

    move v4, v14

    move/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/content/ContentService;->handleIncomingUser(Landroid/net/Uri;IIIZI)I

    move-result v1

    .line 407
    .end local p5  # "userHandle":I
    .local v1, "userHandle":I
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 408
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/app/ActivityManagerInternal;->checkContentProviderAccess(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 409
    .local v2, "msg":Ljava/lang/String;
    if-eqz v2, :cond_6f

    .line 410
    const/16 v0, 0x1a

    move/from16 v3, p6

    if-ge v3, v0, :cond_69

    .line 413
    const-string v0, "Failed to find provider"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    goto :goto_71

    .line 417
    :cond_42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring notify for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " from "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ContentService"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    return-void

    .line 411
    :cond_69
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_6f
    move/from16 v3, p6

    .line 425
    :goto_71
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v4

    .line 427
    .local v4, "identityToken":J
    :try_start_75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 428
    .local v6, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    iget-object v7, v8, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    monitor-enter v7
    :try_end_7e
    .catchall {:try_start_75 .. :try_end_7e} :catchall_1a5

    .line 429
    :try_start_7e
    iget-object v9, v8, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;
    :try_end_80
    .catchall {:try_start_7e .. :try_end_80} :catchall_198

    const/4 v11, 0x0

    move-object/from16 v10, p1

    move-object/from16 v12, p2

    move/from16 v13, p3

    move/from16 v20, v14

    .end local v14  # "callingUid":I
    .local v20, "callingUid":I
    move/from16 v14, p4

    move v15, v1

    move-object/from16 v16, v6

    :try_start_8e
    invoke-virtual/range {v9 .. v16}, Lcom/android/server/content/ContentService$ObserverNode;->collectObserversLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZIILjava/util/ArrayList;)V

    .line 431
    monitor-exit v7
    :try_end_92
    .catchall {:try_start_8e .. :try_end_92} :catchall_18e

    .line 432
    :try_start_92
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_96
    .catchall {:try_start_92 .. :try_end_96} :catchall_186

    move v7, v0

    .line 433
    .local v7, "numCalls":I
    const/4 v0, 0x0

    move v9, v0

    .local v9, "i":I
    :goto_99
    if-ge v9, v7, :cond_13b

    .line 434
    :try_start_9b
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/ContentService$ObserverCall;
    :try_end_a1
    .catchall {:try_start_9b .. :try_end_a1} :catchall_132

    move-object v10, v0

    .line 436
    .local v10, "oc":Lcom/android/server/content/ContentService$ObserverCall;
    :try_start_a2
    iget-object v0, v10, Lcom/android/server/content/ContentService$ObserverCall;->mObserver:Landroid/database/IContentObserver;

    iget-boolean v11, v10, Lcom/android/server/content/ContentService$ObserverCall;->mSelfChange:Z
    :try_end_a6
    .catch Landroid/os/RemoteException; {:try_start_a2 .. :try_end_a6} :catch_c4
    .catchall {:try_start_a2 .. :try_end_a6} :catchall_bb

    move-object/from16 v15, p1

    :try_start_a8
    invoke-interface {v0, v11, v15, v1}, Landroid/database/IContentObserver;->onChange(ZLandroid/net/Uri;I)V
    :try_end_ab
    .catch Landroid/os/RemoteException; {:try_start_a8 .. :try_end_ab} :catch_b9
    .catchall {:try_start_a8 .. :try_end_ab} :catchall_b1

    .line 455
    move-object/from16 p5, v2

    move-object/from16 v21, v6

    goto/16 :goto_114

    .line 472
    .end local v6  # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .end local v7  # "numCalls":I
    .end local v9  # "i":I
    .end local v10  # "oc":Lcom/android/server/content/ContentService$ObserverCall;
    :catchall_b1
    move-exception v0

    move-object/from16 p5, v2

    move-object v3, v15

    move/from16 v2, v20

    goto/16 :goto_1aa

    .line 439
    .restart local v6  # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v7  # "numCalls":I
    .restart local v9  # "i":I
    .restart local v10  # "oc":Lcom/android/server/content/ContentService$ObserverCall;
    :catch_b9
    move-exception v0

    goto :goto_c7

    .line 472
    .end local v6  # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .end local v7  # "numCalls":I
    .end local v9  # "i":I
    .end local v10  # "oc":Lcom/android/server/content/ContentService$ObserverCall;
    :catchall_bb
    move-exception v0

    move-object/from16 v3, p1

    move-object/from16 p5, v2

    move/from16 v2, v20

    goto/16 :goto_1aa

    .line 439
    .restart local v6  # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v7  # "numCalls":I
    .restart local v9  # "i":I
    .restart local v10  # "oc":Lcom/android/server/content/ContentService$ObserverCall;
    :catch_c4
    move-exception v0

    move-object/from16 v15, p1

    :goto_c7
    move-object v11, v0

    .line 440
    .local v11, "ex":Landroid/os/RemoteException;
    :try_start_c8
    iget-object v12, v8, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    monitor-enter v12
    :try_end_cb
    .catchall {:try_start_c8 .. :try_end_cb} :catchall_12d

    .line 441
    :try_start_cb
    const-string v0, "ContentService"

    const-string v13, "Found dead observer, removing"

    invoke-static {v0, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v0, v10, Lcom/android/server/content/ContentService$ObserverCall;->mObserver:Landroid/database/IContentObserver;

    invoke-interface {v0}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 443
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v13, v10, Lcom/android/server/content/ContentService$ObserverCall;->mNode:Lcom/android/server/content/ContentService$ObserverNode;

    .line 444
    invoke-static {v13}, Lcom/android/server/content/ContentService$ObserverNode;->access$200(Lcom/android/server/content/ContentService$ObserverNode;)Ljava/util/ArrayList;

    move-result-object v13

    .line 445
    .local v13, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14
    :try_end_e2
    .catchall {:try_start_cb .. :try_end_e2} :catchall_11e

    .line 446
    .local v14, "numList":I
    const/16 v16, 0x0

    move-object/from16 p5, v2

    move v2, v14

    move/from16 v14, v16

    .local v2, "numList":I
    .local v14, "j":I
    .local p5, "msg":Ljava/lang/String;
    :goto_e9
    if-ge v14, v2, :cond_111

    .line 447
    :try_start_eb
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    :try_end_f1
    .catchall {:try_start_eb .. :try_end_f1} :catchall_10d

    move-object/from16 v17, v16

    .line 448
    .local v17, "oe":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    move-object/from16 v21, v6

    move-object/from16 v3, v17

    .end local v6  # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .end local v17  # "oe":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    .local v3, "oe":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    .local v21, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    :try_start_f7
    iget-object v6, v3, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    invoke-interface {v6}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-ne v6, v0, :cond_106

    .line 449
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 450
    add-int/lit8 v14, v14, -0x1

    .line 451
    add-int/lit8 v2, v2, -0x1

    .line 446
    .end local v3  # "oe":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    :cond_106
    add-int/lit8 v14, v14, 0x1

    move/from16 v3, p6

    move-object/from16 v6, v21

    goto :goto_e9

    .line 454
    .end local v0  # "binder":Landroid/os/IBinder;
    .end local v2  # "numList":I
    .end local v13  # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;>;"
    .end local v14  # "j":I
    .end local v21  # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v6  # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    :catchall_10d
    move-exception v0

    move-object/from16 v21, v6

    .end local v6  # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v21  # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    goto :goto_123

    .line 446
    .end local v21  # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v0  # "binder":Landroid/os/IBinder;
    .restart local v2  # "numList":I
    .restart local v6  # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v13  # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;>;"
    .restart local v14  # "j":I
    :cond_111
    move-object/from16 v21, v6

    .line 454
    .end local v0  # "binder":Landroid/os/IBinder;
    .end local v2  # "numList":I
    .end local v6  # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .end local v13  # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;>;"
    .end local v14  # "j":I
    .restart local v21  # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    monitor-exit v12

    .line 433
    .end local v10  # "oc":Lcom/android/server/content/ContentService$ObserverCall;
    .end local v11  # "ex":Landroid/os/RemoteException;
    :goto_114
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, p5

    move/from16 v3, p6

    move-object/from16 v6, v21

    goto/16 :goto_99

    .line 454
    .end local v21  # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .end local p5  # "msg":Ljava/lang/String;
    .local v2, "msg":Ljava/lang/String;
    .restart local v6  # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v10  # "oc":Lcom/android/server/content/ContentService$ObserverCall;
    .restart local v11  # "ex":Landroid/os/RemoteException;
    :catchall_11e
    move-exception v0

    move-object/from16 p5, v2

    move-object/from16 v21, v6

    .end local v2  # "msg":Ljava/lang/String;
    .end local v6  # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v21  # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local p5  # "msg":Ljava/lang/String;
    :goto_123
    monitor-exit v12
    :try_end_124
    .catchall {:try_start_f7 .. :try_end_124} :catchall_12b

    .end local v1  # "userHandle":I
    .end local v4  # "identityToken":J
    .end local v18  # "callingPid":I
    .end local v19  # "callingUserHandle":I
    .end local v20  # "callingUid":I
    .end local p0  # "this":Lcom/android/server/content/ContentService;
    .end local p1  # "uri":Landroid/net/Uri;
    .end local p2  # "observer":Landroid/database/IContentObserver;
    .end local p3  # "observerWantsSelfNotifications":Z
    .end local p4  # "flags":I
    .end local p5  # "msg":Ljava/lang/String;
    .end local p6  # "targetSdkVersion":I
    .end local p7  # "callingPackage":Ljava/lang/String;
    :try_start_124
    throw v0
    :try_end_125
    .catchall {:try_start_124 .. :try_end_125} :catchall_125

    .line 472
    .end local v7  # "numCalls":I
    .end local v9  # "i":I
    .end local v10  # "oc":Lcom/android/server/content/ContentService$ObserverCall;
    .end local v11  # "ex":Landroid/os/RemoteException;
    .end local v21  # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v1  # "userHandle":I
    .restart local v4  # "identityToken":J
    .restart local v18  # "callingPid":I
    .restart local v19  # "callingUserHandle":I
    .restart local v20  # "callingUid":I
    .restart local p0  # "this":Lcom/android/server/content/ContentService;
    .restart local p1  # "uri":Landroid/net/Uri;
    .restart local p2  # "observer":Landroid/database/IContentObserver;
    .restart local p3  # "observerWantsSelfNotifications":Z
    .restart local p4  # "flags":I
    .restart local p5  # "msg":Ljava/lang/String;
    .restart local p6  # "targetSdkVersion":I
    .restart local p7  # "callingPackage":Ljava/lang/String;
    :catchall_125
    move-exception v0

    move-object v3, v15

    move/from16 v2, v20

    goto/16 :goto_1aa

    .line 454
    .restart local v7  # "numCalls":I
    .restart local v9  # "i":I
    .restart local v10  # "oc":Lcom/android/server/content/ContentService$ObserverCall;
    .restart local v11  # "ex":Landroid/os/RemoteException;
    .restart local v21  # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    :catchall_12b
    move-exception v0

    goto :goto_123

    .line 472
    .end local v7  # "numCalls":I
    .end local v9  # "i":I
    .end local v10  # "oc":Lcom/android/server/content/ContentService$ObserverCall;
    .end local v11  # "ex":Landroid/os/RemoteException;
    .end local v21  # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .end local p5  # "msg":Ljava/lang/String;
    .restart local v2  # "msg":Ljava/lang/String;
    :catchall_12d
    move-exception v0

    move-object/from16 p5, v2

    move-object v3, v15

    goto :goto_137

    :catchall_132
    move-exception v0

    move-object/from16 p5, v2

    move-object/from16 v3, p1

    :goto_137
    move/from16 v2, v20

    .end local v2  # "msg":Ljava/lang/String;
    .restart local p5  # "msg":Ljava/lang/String;
    goto/16 :goto_1aa

    .line 433
    .end local p5  # "msg":Ljava/lang/String;
    .restart local v2  # "msg":Ljava/lang/String;
    .restart local v6  # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v7  # "numCalls":I
    .restart local v9  # "i":I
    :cond_13b
    move-object/from16 v15, p1

    move-object/from16 p5, v2

    move-object/from16 v21, v6

    .line 457
    .end local v2  # "msg":Ljava/lang/String;
    .end local v6  # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .end local v9  # "i":I
    .restart local v21  # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local p5  # "msg":Ljava/lang/String;
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_170

    .line 458
    :try_start_145
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0

    .line 459
    .local v0, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v0, :cond_167

    .line 460
    const/4 v10, 0x0

    .line 462
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v13
    :try_end_150
    .catchall {:try_start_145 .. :try_end_150} :catchall_16b

    move/from16 v2, v20

    .end local v20  # "callingUid":I
    .local v2, "callingUid":I
    :try_start_152
    invoke-direct {v8, v2}, Lcom/android/server/content/ContentService;->getSyncExemptionForCaller(I)I

    move-result v14
    :try_end_156
    .catchall {:try_start_152 .. :try_end_156} :catchall_164

    .line 460
    move-object v9, v0

    move/from16 v11, v19

    move v12, v2

    move-object v3, v15

    move v15, v2

    move/from16 v16, v18

    move-object/from16 v17, p7

    :try_start_160
    invoke-virtual/range {v9 .. v17}, Lcom/android/server/content/SyncManager;->scheduleLocalSync(Landroid/accounts/Account;IILjava/lang/String;IIILjava/lang/String;)V

    goto :goto_173

    .line 472
    .end local v0  # "syncManager":Lcom/android/server/content/SyncManager;
    .end local v7  # "numCalls":I
    .end local v21  # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    :catchall_164
    move-exception v0

    move-object v3, v15

    goto :goto_1aa

    .line 459
    .end local v2  # "callingUid":I
    .restart local v0  # "syncManager":Lcom/android/server/content/SyncManager;
    .restart local v7  # "numCalls":I
    .restart local v20  # "callingUid":I
    .restart local v21  # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    :cond_167
    move-object v3, v15

    move/from16 v2, v20

    .end local v20  # "callingUid":I
    .restart local v2  # "callingUid":I
    goto :goto_173

    .line 472
    .end local v0  # "syncManager":Lcom/android/server/content/SyncManager;
    .end local v2  # "callingUid":I
    .end local v7  # "numCalls":I
    .end local v21  # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v20  # "callingUid":I
    :catchall_16b
    move-exception v0

    move-object v3, v15

    move/from16 v2, v20

    .end local v20  # "callingUid":I
    .restart local v2  # "callingUid":I
    goto :goto_1aa

    .line 457
    .end local v2  # "callingUid":I
    .restart local v7  # "numCalls":I
    .restart local v20  # "callingUid":I
    .restart local v21  # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    :cond_170
    move-object v3, v15

    move/from16 v2, v20

    .line 467
    .end local v20  # "callingUid":I
    .restart local v2  # "callingUid":I
    :goto_173
    iget-object v6, v8, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    monitor-enter v6
    :try_end_176
    .catchall {:try_start_160 .. :try_end_176} :catchall_1a1

    .line 468
    :try_start_176
    invoke-direct/range {p0 .. p1}, Lcom/android/server/content/ContentService;->getProviderPackageName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 469
    .local v0, "providerPackageName":Ljava/lang/String;
    invoke-direct {v8, v1, v0, v3}, Lcom/android/server/content/ContentService;->invalidateCacheLocked(ILjava/lang/String;Landroid/net/Uri;)V

    .line 470
    .end local v0  # "providerPackageName":Ljava/lang/String;
    monitor-exit v6
    :try_end_17e
    .catchall {:try_start_176 .. :try_end_17e} :catchall_183

    .line 472
    .end local v7  # "numCalls":I
    .end local v21  # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    invoke-static {v4, v5}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 473
    nop

    .line 474
    return-void

    .line 470
    .restart local v7  # "numCalls":I
    .restart local v21  # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    :catchall_183
    move-exception v0

    :try_start_184
    monitor-exit v6
    :try_end_185
    .catchall {:try_start_184 .. :try_end_185} :catchall_183

    .end local v1  # "userHandle":I
    .end local v2  # "callingUid":I
    .end local v4  # "identityToken":J
    .end local v18  # "callingPid":I
    .end local v19  # "callingUserHandle":I
    .end local p0  # "this":Lcom/android/server/content/ContentService;
    .end local p1  # "uri":Landroid/net/Uri;
    .end local p2  # "observer":Landroid/database/IContentObserver;
    .end local p3  # "observerWantsSelfNotifications":Z
    .end local p4  # "flags":I
    .end local p5  # "msg":Ljava/lang/String;
    .end local p6  # "targetSdkVersion":I
    .end local p7  # "callingPackage":Ljava/lang/String;
    :try_start_185
    throw v0
    :try_end_186
    .catchall {:try_start_185 .. :try_end_186} :catchall_1a1

    .line 472
    .end local v7  # "numCalls":I
    .end local v21  # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v1  # "userHandle":I
    .local v2, "msg":Ljava/lang/String;
    .restart local v4  # "identityToken":J
    .restart local v18  # "callingPid":I
    .restart local v19  # "callingUserHandle":I
    .restart local v20  # "callingUid":I
    .restart local p0  # "this":Lcom/android/server/content/ContentService;
    .restart local p1  # "uri":Landroid/net/Uri;
    .restart local p2  # "observer":Landroid/database/IContentObserver;
    .restart local p3  # "observerWantsSelfNotifications":Z
    .restart local p4  # "flags":I
    .restart local p6  # "targetSdkVersion":I
    .restart local p7  # "callingPackage":Ljava/lang/String;
    :catchall_186
    move-exception v0

    move-object/from16 v3, p1

    move-object/from16 p5, v2

    move/from16 v2, v20

    .end local v20  # "callingUid":I
    .local v2, "callingUid":I
    .restart local p5  # "msg":Ljava/lang/String;
    goto :goto_1aa

    .line 431
    .end local p5  # "msg":Ljava/lang/String;
    .local v2, "msg":Ljava/lang/String;
    .restart local v6  # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v20  # "callingUid":I
    :catchall_18e
    move-exception v0

    move-object/from16 v3, p1

    move-object/from16 p5, v2

    move-object/from16 v21, v6

    move/from16 v2, v20

    .end local v6  # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .end local v20  # "callingUid":I
    .local v2, "callingUid":I
    .restart local v21  # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local p5  # "msg":Ljava/lang/String;
    goto :goto_19f

    .end local v21  # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .end local p5  # "msg":Ljava/lang/String;
    .local v2, "msg":Ljava/lang/String;
    .restart local v6  # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .local v14, "callingUid":I
    :catchall_198
    move-exception v0

    move-object/from16 p5, v2

    move-object/from16 v21, v6

    move v2, v14

    move-object v3, v15

    .end local v6  # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .end local v14  # "callingUid":I
    .local v2, "callingUid":I
    .restart local v21  # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local p5  # "msg":Ljava/lang/String;
    :goto_19f
    :try_start_19f
    monitor-exit v7
    :try_end_1a0
    .catchall {:try_start_19f .. :try_end_1a0} :catchall_1a3

    .end local v1  # "userHandle":I
    .end local v2  # "callingUid":I
    .end local v4  # "identityToken":J
    .end local v18  # "callingPid":I
    .end local v19  # "callingUserHandle":I
    .end local p0  # "this":Lcom/android/server/content/ContentService;
    .end local p1  # "uri":Landroid/net/Uri;
    .end local p2  # "observer":Landroid/database/IContentObserver;
    .end local p3  # "observerWantsSelfNotifications":Z
    .end local p4  # "flags":I
    .end local p5  # "msg":Ljava/lang/String;
    .end local p6  # "targetSdkVersion":I
    .end local p7  # "callingPackage":Ljava/lang/String;
    :try_start_1a0
    throw v0
    :try_end_1a1
    .catchall {:try_start_1a0 .. :try_end_1a1} :catchall_1a1

    .line 472
    .end local v21  # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .restart local v1  # "userHandle":I
    .restart local v2  # "callingUid":I
    .restart local v4  # "identityToken":J
    .restart local v18  # "callingPid":I
    .restart local v19  # "callingUserHandle":I
    .restart local p0  # "this":Lcom/android/server/content/ContentService;
    .restart local p1  # "uri":Landroid/net/Uri;
    .restart local p2  # "observer":Landroid/database/IContentObserver;
    .restart local p3  # "observerWantsSelfNotifications":Z
    .restart local p4  # "flags":I
    .restart local p5  # "msg":Ljava/lang/String;
    .restart local p6  # "targetSdkVersion":I
    .restart local p7  # "callingPackage":Ljava/lang/String;
    :catchall_1a1
    move-exception v0

    goto :goto_1aa

    .line 431
    .restart local v21  # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    :catchall_1a3
    move-exception v0

    goto :goto_19f

    .line 472
    .end local v21  # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/ContentService$ObserverCall;>;"
    .end local p5  # "msg":Ljava/lang/String;
    .local v2, "msg":Ljava/lang/String;
    .restart local v14  # "callingUid":I
    :catchall_1a5
    move-exception v0

    move-object/from16 p5, v2

    move v2, v14

    move-object v3, v15

    .end local v14  # "callingUid":I
    .local v2, "callingUid":I
    .restart local p5  # "msg":Ljava/lang/String;
    :goto_1aa
    invoke-static {v4, v5}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v0

    .line 397
    .end local v1  # "userHandle":I
    .end local v2  # "callingUid":I
    .end local v4  # "identityToken":J
    .end local v18  # "callingPid":I
    .end local v19  # "callingUserHandle":I
    .local p5, "userHandle":I
    :cond_1ae
    move-object v3, v15

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Uri must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZZLjava/lang/String;)V
    .registers 14
    .param p1, "uri"  # Landroid/net/Uri;
    .param p2, "observer"  # Landroid/database/IContentObserver;
    .param p3, "observerWantsSelfNotifications"  # Z
    .param p4, "syncToNetwork"  # Z
    .param p5, "callingPackage"  # Ljava/lang/String;

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
    .param p1, "phase"  # I

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
    .param p1, "tag"  # Ljava/lang/String;
    .param p2, "message"  # Ljava/lang/String;
    .param p3, "stacktrace"  # Ljava/lang/String;

    .line 1666
    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    invoke-static {p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"  # Ljava/io/FileDescriptor;
    .param p2, "out"  # Ljava/io/FileDescriptor;
    .param p3, "err"  # Ljava/io/FileDescriptor;
    .param p4, "args"  # [Ljava/lang/String;
    .param p5, "callback"  # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"  # Landroid/os/ResultReceiver;

    .line 1677
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

    .line 1678
    return-void
.end method

.method onStartUser(I)V
    .registers 3
    .param p1, "userHandle"  # I

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
    .param p1, "userHandle"  # I

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
    .param p1, "userHandle"  # I

    .line 195
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/android/server/content/SyncManager;->onUnlockUser(I)V

    .line 196
    :cond_7
    return-void
.end method

.method public putCache(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;I)V
    .registers 9
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "key"  # Landroid/net/Uri;
    .param p3, "value"  # Landroid/os/Bundle;
    .param p4, "userId"  # I

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
    .local v0, "providerPackageName":Ljava/lang/String;
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 1210
    .local v1, "fullKey":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;"
    iget-object v2, p0, Lcom/android/server/content/ContentService;->mCache:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1211
    :try_start_2e
    invoke-direct {p0, p4, v0}, Lcom/android/server/content/ContentService;->findOrCreateCacheLocked(ILjava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v3

    .line 1213
    .local v3, "cache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;"
    if-eqz p3, :cond_38

    .line 1214
    invoke-virtual {v3, v1, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3b

    .line 1216
    :cond_38
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    .end local v3  # "cache":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/util/Pair<Ljava/lang/String;Landroid/net/Uri;>;Landroid/os/Bundle;>;"
    :goto_3b
    monitor-exit v2

    .line 1219
    return-void

    .line 1218
    :catchall_3d
    move-exception v3

    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_2e .. :try_end_3f} :catchall_3d

    throw v3
.end method

.method public registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;)V
    .registers 10
    .param p1, "uri"  # Landroid/net/Uri;
    .param p2, "notifyForDescendants"  # Z
    .param p3, "observer"  # Landroid/database/IContentObserver;

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
    .registers 24
    .param p1, "uri"  # Landroid/net/Uri;
    .param p2, "notifyForDescendants"  # Z
    .param p3, "observer"  # Landroid/database/IContentObserver;
    .param p4, "userHandle"  # I
    .param p5, "targetSdkVersion"  # I

    .line 330
    move-object/from16 v8, p0

    move-object/from16 v15, p1

    if-eqz p3, :cond_8c

    if-eqz v15, :cond_8c

    .line 334
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 335
    .local v14, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v17

    .line 337
    .local v17, "pid":I
    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, v17

    move v4, v14

    move/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/content/ContentService;->handleIncomingUser(Landroid/net/Uri;IIIZI)I

    move-result v1

    .line 340
    .end local p4  # "userHandle":I
    .local v1, "userHandle":I
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 341
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/app/ActivityManagerInternal;->checkContentProviderAccess(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 342
    .local v2, "msg":Ljava/lang/String;
    if-eqz v2, :cond_6d

    .line 343
    const/16 v0, 0x1a

    move/from16 v3, p5

    if-ge v3, v0, :cond_67

    .line 346
    const-string v0, "Failed to find provider"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    goto :goto_6f

    .line 350
    :cond_40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring content changes for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " from "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ContentService"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    return-void

    .line 344
    :cond_67
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_6d
    move/from16 v3, p5

    .line 356
    :goto_6f
    iget-object v4, v8, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    monitor-enter v4

    .line 357
    :try_start_72
    iget-object v9, v8, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;

    iget-object v13, v8, Lcom/android/server/content/ContentService;->mRootNode:Lcom/android/server/content/ContentService$ObserverNode;
    :try_end_76
    .catchall {:try_start_72 .. :try_end_76} :catchall_86

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    move/from16 v12, p2

    move v5, v14

    .end local v14  # "uid":I
    .local v5, "uid":I
    move/from16 v15, v17

    move/from16 v16, v1

    :try_start_81
    invoke-virtual/range {v9 .. v16}, Lcom/android/server/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;Landroid/database/IContentObserver;ZLjava/lang/Object;III)V

    .line 361
    monitor-exit v4

    .line 362
    return-void

    .line 361
    .end local v5  # "uid":I
    .restart local v14  # "uid":I
    :catchall_86
    move-exception v0

    move v5, v14

    .end local v14  # "uid":I
    .restart local v5  # "uid":I
    :goto_88
    monitor-exit v4
    :try_end_89
    .catchall {:try_start_81 .. :try_end_89} :catchall_8a

    throw v0

    :catchall_8a
    move-exception v0

    goto :goto_88

    .line 330
    .end local v1  # "userHandle":I
    .end local v2  # "msg":Ljava/lang/String;
    .end local v5  # "uid":I
    .end local v17  # "pid":I
    .restart local p4  # "userHandle":I
    :cond_8c
    move/from16 v3, p5

    .line 331
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must pass a valid uri and observer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 12
    .param p1, "account"  # Landroid/accounts/Account;
    .param p2, "authority"  # Ljava/lang/String;
    .param p3, "extras"  # Landroid/os/Bundle;

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
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 858
    .local v1, "userId":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v2

    .line 860
    .local v2, "identityToken":J
    :try_start_29
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v4

    new-instance v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v5, p1, p2, v1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removePeriodicSync() by uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 861
    invoke-virtual {v4, v5, p3, v6}, Lcom/android/server/content/SyncManager;->removePeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
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
    move-exception v4

    invoke-static {v2, v3}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v4

    .line 848
    .end local v0  # "callingUid":I
    .end local v1  # "userId":I
    .end local v2  # "identityToken":J
    :cond_51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Authority must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 845
    :cond_59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Account must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    .registers 6
    .param p1, "callback"  # Landroid/content/ISyncStatusObserver;

    .line 1141
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 1143
    .local v0, "identityToken":J
    :try_start_4
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 1144
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_13

    if-eqz p1, :cond_13

    .line 1145
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine;->removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_18

    .line 1148
    .end local v2  # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_13
    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1149
    nop

    .line 1150
    return-void

    .line 1148
    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 25
    .param p1, "account"  # Landroid/accounts/Account;
    .param p2, "authority"  # Ljava/lang/String;
    .param p3, "extras"  # Landroid/os/Bundle;
    .param p4, "callingPackage"  # Ljava/lang/String;

    .line 516
    move-object/from16 v1, p0

    move-object/from16 v13, p3

    const/4 v0, 0x1

    invoke-static {v13, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 517
    invoke-static/range {p3 .. p3}, Landroid/content/ContentResolver;->validateSyncExtrasBundle(Landroid/os/Bundle;)V

    .line 518
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v14

    .line 519
    .local v14, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 520
    .local v15, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v16

    .line 522
    .local v16, "callingPid":I
    invoke-direct {v1, v15, v13}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    .line 523
    invoke-direct {v1, v15, v13}, Lcom/android/server/content/ContentService;->getSyncExemptionAndCleanUpExtrasForCaller(ILandroid/os/Bundle;)I

    move-result v17

    .line 527
    .local v17, "syncExemption":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v18

    .line 529
    .local v18, "identityToken":J
    :try_start_22
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0

    .line 530
    .local v0, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v0, :cond_3c

    .line 531
    const/4 v8, -0x2

    move-object v2, v0

    move-object/from16 v3, p1

    move v4, v14

    move v5, v15

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v9, v17

    move v10, v15

    move/from16 v11, v16

    move-object/from16 v12, p4

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IIIILjava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_22 .. :try_end_3c} :catchall_41

    .line 536
    .end local v0  # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_3c
    invoke-static/range {v18 .. v19}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 537
    nop

    .line 538
    return-void

    .line 536
    :catchall_41
    move-exception v0

    invoke-static/range {v18 .. v19}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public resetTodayStats()V
    .registers 4

    .line 1652
    const-string/jumbo v0, "resetTodayStats"

    invoke-direct {p0, v0}, Lcom/android/server/content/ContentService;->enforceShell(Ljava/lang/String;)V

    .line 1654
    iget-object v0, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    if-eqz v0, :cond_1c

    .line 1655
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1657
    .local v0, "token":J
    :try_start_e
    iget-object v2, p0, Lcom/android/server/content/ContentService;->mSyncManager:Lcom/android/server/content/SyncManager;

    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->resetTodayStats()V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_17

    .line 1659
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1660
    goto :goto_1c

    .line 1659
    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1662
    .end local v0  # "token":J
    :cond_1c
    :goto_1c
    return-void
.end method

.method public setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    .registers 5
    .param p1, "account"  # Landroid/accounts/Account;
    .param p2, "providerName"  # Ljava/lang/String;
    .param p3, "syncable"  # I

    .line 922
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->setIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;II)V

    .line 923
    return-void
.end method

.method public setIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;II)V
    .registers 20
    .param p1, "account"  # Landroid/accounts/Account;
    .param p2, "providerName"  # Ljava/lang/String;
    .param p3, "syncable"  # I
    .param p4, "userId"  # I

    .line 931
    move-object v1, p0

    move/from16 v9, p4

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_58

    .line 934
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no permission to set the sync settings for user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v9, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 936
    iget-object v0, v1, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v3, "no permission to write the sync settings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    invoke-static/range {p3 .. p3}, Lcom/android/server/content/ContentService;->normalizeSyncable(I)I

    move-result v10

    .line 940
    .end local p3  # "syncable":I
    .local v10, "syncable":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 941
    .local v11, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 943
    .local v12, "callingPid":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v13

    .line 945
    .local v13, "identityToken":J
    :try_start_38
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0

    .line 946
    .local v0, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v0, :cond_4e

    .line 947
    invoke-virtual {v0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v2

    move-object/from16 v3, p1

    move/from16 v4, p4

    move-object/from16 v5, p2

    move v6, v10

    move v7, v11

    move v8, v12

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/content/SyncStorageEngine;->setIsSyncable(Landroid/accounts/Account;ILjava/lang/String;III)V
    :try_end_4e
    .catchall {:try_start_38 .. :try_end_4e} :catchall_53

    .line 951
    .end local v0  # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_4e
    invoke-static {v13, v14}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 952
    nop

    .line 953
    return-void

    .line 951
    :catchall_53
    move-exception v0

    invoke-static {v13, v14}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v0

    .line 932
    .end local v10  # "syncable":I
    .end local v11  # "callingUid":I
    .end local v12  # "callingPid":I
    .end local v13  # "identityToken":J
    .restart local p3  # "syncable":I
    :cond_58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Authority must not be empty"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMasterSyncAutomatically(Z)V
    .registers 3
    .param p1, "flag"  # Z

    .line 985
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/content/ContentService;->setMasterSyncAutomaticallyAsUser(ZI)V

    .line 986
    return-void
.end method

.method public setMasterSyncAutomaticallyAsUser(ZI)V
    .registers 14
    .param p1, "flag"  # Z
    .param p2, "userId"  # I

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

    move-result v0

    .line 996
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 998
    .local v1, "callingPid":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v9

    .line 1000
    .local v9, "identityToken":J
    :try_start_2b
    invoke-direct {p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v2

    .line 1001
    .local v2, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v2, :cond_40

    .line 1002
    invoke-virtual {v2}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    .line 1003
    invoke-direct {p0, v0}, Lcom/android/server/content/ContentService;->getSyncExemptionForCaller(I)I

    move-result v6

    .line 1002
    move v4, p1

    move v5, p2

    move v7, v0

    move v8, v1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/content/SyncStorageEngine;->setMasterSyncAutomatically(ZIIII)V
    :try_end_40
    .catchall {:try_start_2b .. :try_end_40} :catchall_45

    .line 1006
    .end local v2  # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_40
    invoke-static {v9, v10}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 1007
    nop

    .line 1008
    return-void

    .line 1006
    :catchall_45
    move-exception v2

    invoke-static {v9, v10}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .registers 5
    .param p1, "account"  # Landroid/accounts/Account;
    .param p2, "providerName"  # Ljava/lang/String;
    .param p3, "sync"  # Z

    .line 780
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/content/ContentService;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    .line 781
    return-void
.end method

.method public setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V
    .registers 21
    .param p1, "account"  # Landroid/accounts/Account;
    .param p2, "providerName"  # Ljava/lang/String;
    .param p3, "sync"  # Z
    .param p4, "userId"  # I

    .line 786
    move-object/from16 v1, p0

    move/from16 v10, p4

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 789
    iget-object v0, v1, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v3, "no permission to write the sync settings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no permission to modify the sync settings for user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v10, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 793
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 794
    .local v11, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 795
    .local v12, "callingPid":I
    invoke-direct {v1, v11}, Lcom/android/server/content/ContentService;->getSyncExemptionForCaller(I)I

    move-result v13

    .line 797
    .local v13, "syncExemptionFlag":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v14

    .line 799
    .local v14, "identityToken":J
    :try_start_39
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0

    .line 800
    .local v0, "syncManager":Lcom/android/server/content/SyncManager;
    if-eqz v0, :cond_51

    .line 801
    invoke-virtual {v0}, Lcom/android/server/content/SyncManager;->getSyncStorageEngine()Lcom/android/server/content/SyncStorageEngine;

    move-result-object v2

    move-object/from16 v3, p1

    move/from16 v4, p4

    move-object/from16 v5, p2

    move/from16 v6, p3

    move v7, v13

    move v8, v11

    move v9, v12

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/content/SyncStorageEngine;->setSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;ZIII)V
    :try_end_51
    .catchall {:try_start_39 .. :try_end_51} :catchall_56

    .line 805
    .end local v0  # "syncManager":Lcom/android/server/content/SyncManager;
    :cond_51
    invoke-static {v14, v15}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 806
    nop

    .line 807
    return-void

    .line 805
    :catchall_56
    move-exception v0

    invoke-static {v14, v15}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v0

    .line 787
    .end local v11  # "callingUid":I
    .end local v12  # "callingPid":I
    .end local v13  # "syncExemptionFlag":I
    .end local v14  # "identityToken":J
    :cond_5b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Authority must be non-empty"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sync(Landroid/content/SyncRequest;Ljava/lang/String;)V
    .registers 4
    .param p1, "request"  # Landroid/content/SyncRequest;
    .param p2, "callingPackage"  # Ljava/lang/String;

    .line 551
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/content/ContentService;->syncAsUser(Landroid/content/SyncRequest;ILjava/lang/String;)V

    .line 552
    return-void
.end method

.method public syncAsUser(Landroid/content/SyncRequest;ILjava/lang/String;)V
    .registers 30
    .param p1, "request"  # Landroid/content/SyncRequest;
    .param p2, "userId"  # I
    .param p3, "callingPackage"  # Ljava/lang/String;

    .line 570
    move-object/from16 v1, p0

    move/from16 v13, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no permission to request sync as user: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v13, v0}, Lcom/android/server/content/ContentService;->enforceCrossUserPermission(ILjava/lang/String;)V

    .line 571
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 572
    .local v14, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    .line 574
    .local v15, "callingPid":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getBundle()Landroid/os/Bundle;

    move-result-object v12

    .line 576
    .local v12, "extras":Landroid/os/Bundle;
    invoke-direct {v1, v14, v12}, Lcom/android/server/content/ContentService;->validateExtras(ILandroid/os/Bundle;)V

    .line 577
    invoke-direct {v1, v14, v12}, Lcom/android/server/content/ContentService;->getSyncExemptionAndCleanUpExtrasForCaller(ILandroid/os/Bundle;)I

    move-result v23

    .line 581
    .local v23, "syncExemption":I
    invoke-static {}, Lcom/android/server/content/ContentService;->clearCallingIdentity()J

    move-result-wide v24

    .line 583
    .local v24, "identityToken":J
    :try_start_30
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v0
    :try_end_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_99

    .line 584
    .local v0, "syncManager":Lcom/android/server/content/SyncManager;
    if-nez v0, :cond_3a

    .line 608
    invoke-static/range {v24 .. v25}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 585
    return-void

    .line 587
    :cond_3a
    :try_start_3a
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getSyncFlexTime()J

    move-result-wide v20

    .line 588
    .local v20, "flextime":J
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getSyncRunTime()J

    move-result-wide v2

    move-wide v10, v2

    .line 589
    .local v10, "runAtTime":J
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->isPeriodic()Z

    move-result v2
    :try_end_47
    .catchall {:try_start_3a .. :try_end_47} :catchall_99

    if-eqz v2, :cond_76

    .line 590
    :try_start_49
    iget-object v2, v1, Lcom/android/server/content/ContentService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v4, "no permission to write the sync settings"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    new-instance v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 595
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v13}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    move-object/from16 v17, v2

    .line 597
    .local v17, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    invoke-direct {v1, v10, v11}, Lcom/android/server/content/ContentService;->clampPeriod(J)J

    move-result-wide v18

    .line 599
    .end local v10  # "runAtTime":J
    .local v18, "runAtTime":J
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/ContentService;->getSyncManager()Lcom/android/server/content/SyncManager;

    move-result-object v16

    move-object/from16 v22, v12

    invoke-virtual/range {v16 .. v22}, Lcom/android/server/content/SyncManager;->updateOrAddPeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V
    :try_end_6f
    .catchall {:try_start_49 .. :try_end_6f} :catchall_72

    .line 601
    .end local v17  # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    move-object/from16 v18, v12

    goto :goto_92

    .line 608
    .end local v0  # "syncManager":Lcom/android/server/content/SyncManager;
    .end local v18  # "runAtTime":J
    .end local v20  # "flextime":J
    :catchall_72
    move-exception v0

    move-object/from16 v18, v12

    goto :goto_9c

    .line 602
    .restart local v0  # "syncManager":Lcom/android/server/content/SyncManager;
    .restart local v10  # "runAtTime":J
    .restart local v20  # "flextime":J
    :cond_76
    nop

    .line 603
    :try_start_77
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncRequest;->getProvider()Ljava/lang/String;

    move-result-object v6
    :try_end_7f
    .catchall {:try_start_77 .. :try_end_7f} :catchall_99

    const/4 v8, -0x2

    .line 602
    move-object v2, v0

    move/from16 v4, p2

    move v5, v14

    move-object v7, v12

    move/from16 v9, v23

    move-wide/from16 v16, v10

    .end local v10  # "runAtTime":J
    .local v16, "runAtTime":J
    move v10, v14

    move v11, v15

    move-object/from16 v18, v12

    .end local v12  # "extras":Landroid/os/Bundle;
    .local v18, "extras":Landroid/os/Bundle;
    move-object/from16 v12, p3

    :try_start_8f
    invoke-virtual/range {v2 .. v12}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IIIILjava/lang/String;)V
    :try_end_92
    .catchall {:try_start_8f .. :try_end_92} :catchall_97

    .line 608
    .end local v0  # "syncManager":Lcom/android/server/content/SyncManager;
    .end local v16  # "runAtTime":J
    .end local v20  # "flextime":J
    :goto_92
    invoke-static/range {v24 .. v25}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    .line 609
    nop

    .line 610
    return-void

    .line 608
    :catchall_97
    move-exception v0

    goto :goto_9c

    .end local v18  # "extras":Landroid/os/Bundle;
    .restart local v12  # "extras":Landroid/os/Bundle;
    :catchall_99
    move-exception v0

    move-object/from16 v18, v12

    .end local v12  # "extras":Landroid/os/Bundle;
    .restart local v18  # "extras":Landroid/os/Bundle;
    :goto_9c
    invoke-static/range {v24 .. v25}, Lcom/android/server/content/ContentService;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public unregisterContentObserver(Landroid/database/IContentObserver;)V
    .registers 4
    .param p1, "observer"  # Landroid/database/IContentObserver;

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
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v1

    .line 373
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must pass a valid observer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
