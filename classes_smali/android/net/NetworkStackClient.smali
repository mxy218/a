.class public Landroid/net/NetworkStackClient;
.super Ljava/lang/Object;
.source "NetworkStackClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkStackClient$NetworkStackConnection;,
        Landroid/net/NetworkStackClient$NetworkStackHealthListener;,
        Landroid/net/NetworkStackClient$NetworkStackCallback;
    }
.end annotation


# static fields
.field private static final CONFIG_ALWAYS_RATELIMIT_NETWORKSTACK_CRASH:Ljava/lang/String; = "always_ratelimit_networkstack_crash"

.field private static final CONFIG_MIN_CRASH_INTERVAL_MS:Ljava/lang/String; = "min_crash_interval"

.field private static final CONFIG_MIN_UPTIME_BEFORE_CRASH_MS:Ljava/lang/String; = "min_uptime_before_crash"

.field private static final DEFAULT_MIN_CRASH_INTERVAL_MS:J = 0x1499700L

.field private static final DEFAULT_MIN_UPTIME_BEFORE_CRASH_MS:J = 0x1b7740L

.field private static final IN_PROCESS_SUFFIX:Ljava/lang/String; = ".InProcess"

.field private static final NETWORKSTACK_TIMEOUT_MS:I = 0x2710

.field private static final PREFS_FILE:Ljava/lang/String; = "NetworkStackClientPrefs.xml"

.field private static final PREF_KEY_LAST_CRASH_TIME:Ljava/lang/String; = "lastcrash_time"

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Landroid/net/NetworkStackClient;


# instance fields
.field private mConnector:Landroid/net/INetworkStackConnector;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPendingNetStackRequests"
        }
    .end annotation
.end field

.field private final mHealthListeners:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mHealthListeners"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/net/NetworkStackClient$NetworkStackHealthListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLog:Landroid/net/util/SharedLog;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLog"
        }
    .end annotation
.end field

.field private final mPendingNetStackRequests:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPendingNetStackRequests"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/NetworkStackClient$NetworkStackCallback;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mWasSystemServerInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 60
    const-class v0, Landroid/net/NetworkStackClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/NetworkStackClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/NetworkStackClient;->mPendingNetStackRequests:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Landroid/net/util/SharedLog;

    sget-object v1, Landroid/net/NetworkStackClient;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/net/util/SharedLog;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/NetworkStackClient;->mLog:Landroid/net/util/SharedLog;

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/NetworkStackClient;->mWasSystemServerInitialized:Z

    .line 96
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/net/NetworkStackClient;->mHealthListeners:Landroid/util/ArraySet;

    .line 116
    return-void
.end method

.method static synthetic access$000(Landroid/net/NetworkStackClient;Ljava/lang/String;)V
    .registers 2

    .line 59
    invoke-direct {p0, p1}, Landroid/net/NetworkStackClient;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Landroid/net/NetworkStackClient;Landroid/os/IBinder;)V
    .registers 2

    .line 59
    invoke-direct {p0, p1}, Landroid/net/NetworkStackClient;->registerNetworkStackService(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$200(Landroid/net/NetworkStackClient;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/net/NetworkStackClient;->maybeCrashWithTerribleFailure(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private checkNetworkStackPermission(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)V
    .registers 4

    .line 332
    nop

    .line 333
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.permission.MAINLINE_NETWORK_STACK"

    invoke-virtual {p1, v0, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 334
    if-nez p1, :cond_e

    .line 338
    return-void

    .line 335
    :cond_e
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Network stack does not have permission android.permission.MAINLINE_NETWORK_STACK"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static declared-synchronized getInstance()Landroid/net/NetworkStackClient;
    .registers 2

    const-class v0, Landroid/net/NetworkStackClient;

    monitor-enter v0

    .line 122
    :try_start_3
    sget-object v1, Landroid/net/NetworkStackClient;->sInstance:Landroid/net/NetworkStackClient;

    if-nez v1, :cond_e

    .line 123
    new-instance v1, Landroid/net/NetworkStackClient;

    invoke-direct {v1}, Landroid/net/NetworkStackClient;-><init>()V

    sput-object v1, Landroid/net/NetworkStackClient;->sInstance:Landroid/net/NetworkStackClient;

    .line 125
    :cond_e
    sget-object v1, Landroid/net/NetworkStackClient;->sInstance:Landroid/net/NetworkStackClient;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 121
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getNetworkStackIntent(Landroid/content/pm/PackageManager;Z)Landroid/content/Intent;
    .registers 8

    .line 300
    const-class v0, Landroid/net/INetworkStackConnector;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 301
    new-instance v1, Landroid/content/Intent;

    .line 302
    if-eqz p2, :cond_1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".InProcess"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1b
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 303
    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v2

    .line 305
    if-nez v2, :cond_27

    .line 306
    const/4 p1, 0x0

    return-object p1

    .line 308
    :cond_27
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 310
    const/4 v3, -0x1

    .line 312
    :try_start_2b
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v3
    :try_end_33
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2b .. :try_end_33} :catch_34

    .line 316
    goto :goto_3a

    .line 313
    :catch_34
    move-exception v0

    .line 314
    const-string v4, "Network stack package not found"

    invoke-direct {p0, v4, v0}, Landroid/net/NetworkStackClient;->logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 318
    :goto_3a
    if-eqz p2, :cond_3f

    const/16 v0, 0x3e8

    goto :goto_41

    :cond_3f
    const/16 v0, 0x431

    .line 319
    :goto_41
    if-ne v3, v0, :cond_49

    .line 323
    if-nez p2, :cond_48

    .line 324
    invoke-direct {p0, p1, v2}, Landroid/net/NetworkStackClient;->checkNetworkStackPermission(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)V

    .line 327
    :cond_48
    return-object v1

    .line 320
    :cond_49
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid network stack UID: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getRemoteConnector()Landroid/net/INetworkStackConnector;
    .registers 8

    .line 470
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 471
    :cond_5
    const-string/jumbo v3, "network_stack"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_24

    .line 472
    const-wide/16 v3, 0x14

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 473
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/16 v5, 0x2710

    cmp-long v3, v3, v5

    if-lez v3, :cond_5

    .line 474
    const-string v1, "Timeout waiting for NetworkStack connector"

    invoke-direct {p0, v1, v0}, Landroid/net/NetworkStackClient;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_23} :catch_2a

    .line 475
    return-object v0

    .line 481
    :cond_24
    nop

    .line 483
    invoke-static {v3}, Landroid/net/INetworkStackConnector$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStackConnector;

    move-result-object v0

    return-object v0

    .line 478
    :catch_2a
    move-exception v1

    .line 479
    const-string v2, "Error waiting for NetworkStack connector"

    invoke-direct {p0, v2, v1}, Landroid/net/NetworkStackClient;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 480
    return-object v0
.end method

.method private getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 6

    .line 398
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 399
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "NetworkStackClientPrefs.xml"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 400
    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p1

    .line 401
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object p1
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    .line 400
    return-object p1

    .line 402
    :catchall_15
    move-exception p1

    .line 403
    const-string v0, "Error loading shared preferences"

    invoke-direct {p0, v0, p1}, Landroid/net/NetworkStackClient;->logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 404
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic lambda$fetchIpMemoryStore$3(Landroid/net/IIpMemoryStoreCallbacks;Landroid/net/INetworkStackConnector;)V
    .registers 2

    .line 191
    :try_start_0
    invoke-interface {p1, p0}, Landroid/net/INetworkStackConnector;->fetchIpMemoryStore(Landroid/net/IIpMemoryStoreCallbacks;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 194
    goto :goto_8

    .line 192
    :catch_4
    move-exception p0

    .line 193
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 195
    :goto_8
    return-void
.end method

.method static synthetic lambda$makeDhcpServer$0(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;Landroid/net/INetworkStackConnector;)V
    .registers 4

    .line 146
    :try_start_0
    invoke-interface {p3, p0, p1, p2}, Landroid/net/INetworkStackConnector;->makeDhcpServer(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 149
    goto :goto_8

    .line 147
    :catch_4
    move-exception p0

    .line 148
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 150
    :goto_8
    return-void
.end method

.method static synthetic lambda$makeIpClient$1(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;Landroid/net/INetworkStackConnector;)V
    .registers 3

    .line 161
    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/net/INetworkStackConnector;->makeIpClient(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 164
    goto :goto_8

    .line 162
    :catch_4
    move-exception p0

    .line 163
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 165
    :goto_8
    return-void
.end method

.method static synthetic lambda$makeNetworkMonitor$2(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;Landroid/net/INetworkStackConnector;)V
    .registers 4

    .line 176
    :try_start_0
    invoke-interface {p3, p0, p1, p2}, Landroid/net/INetworkStackConnector;->makeNetworkMonitor(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 179
    goto :goto_8

    .line 177
    :catch_4
    move-exception p0

    .line 178
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 180
    :goto_8
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 4

    .line 431
    iget-object v0, p0, Landroid/net/NetworkStackClient;->mLog:Landroid/net/util/SharedLog;

    monitor-enter v0

    .line 432
    :try_start_3
    iget-object v1, p0, Landroid/net/NetworkStackClient;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {v1, p1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 433
    monitor-exit v0

    .line 434
    return-void

    .line 433
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method private logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 437
    sget-object v0, Landroid/net/NetworkStackClient;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v0, p0, Landroid/net/NetworkStackClient;->mLog:Landroid/net/util/SharedLog;

    monitor-enter v0

    .line 439
    :try_start_8
    iget-object v1, p0, Landroid/net/NetworkStackClient;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {v1, p1, p2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 440
    monitor-exit v0

    .line 441
    return-void

    .line 440
    :catchall_f
    move-exception p1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_f

    throw p1
.end method

.method private loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 444
    iget-object v0, p0, Landroid/net/NetworkStackClient;->mLog:Landroid/net/util/SharedLog;

    monitor-enter v0

    .line 445
    :try_start_3
    iget-object v1, p0, Landroid/net/NetworkStackClient;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {v1, p1, p2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 446
    monitor-exit v0

    .line 447
    return-void

    .line 446
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method private logi(Ljava/lang/String;)V
    .registers 4

    .line 453
    iget-object v0, p0, Landroid/net/NetworkStackClient;->mLog:Landroid/net/util/SharedLog;

    monitor-enter v0

    .line 454
    :try_start_3
    iget-object v1, p0, Landroid/net/NetworkStackClient;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {v1, p1}, Landroid/net/util/SharedLog;->i(Ljava/lang/String;)V

    .line 455
    monitor-exit v0

    .line 456
    return-void

    .line 455
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method private maybeCrashWithTerribleFailure(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .registers 22

    .line 342
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Landroid/net/NetworkStackClient;->logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 344
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 345
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 346
    const-string v7, "connectivity"

    const-string v8, "min_crash_interval"

    const-wide/32 v9, 0x1499700

    invoke-static {v7, v8, v9, v10}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v7

    .line 348
    const-string v9, "connectivity"

    const-string v10, "min_uptime_before_crash"

    const-wide/32 v11, 0x1b7740

    invoke-static {v9, v10, v11, v12}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v9

    .line 350
    const/4 v11, 0x0

    const-string v12, "connectivity"

    const-string v13, "always_ratelimit_networkstack_crash"

    invoke-static {v12, v13, v11}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    .line 353
    move-object/from16 v13, p2

    invoke-direct {v0, v13}, Landroid/net/NetworkStackClient;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 354
    invoke-direct {v0, v13}, Landroid/net/NetworkStackClient;->tryGetLastCrashTime(Landroid/content/SharedPreferences;)J

    move-result-wide v14

    .line 367
    sget-boolean v16, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/16 v17, 0x1

    if-eqz v16, :cond_46

    if-nez v12, :cond_46

    move/from16 v12, v17

    goto :goto_47

    :cond_46
    move v12, v11

    .line 368
    :goto_47
    cmp-long v3, v3, v9

    if-gez v3, :cond_4e

    move/from16 v3, v17

    goto :goto_4f

    :cond_4e
    move v3, v11

    .line 369
    :goto_4f
    const-wide/16 v9, 0x0

    cmp-long v4, v14, v9

    if-eqz v4, :cond_5c

    cmp-long v4, v14, v5

    if-gez v4, :cond_5c

    move/from16 v4, v17

    goto :goto_5d

    :cond_5c
    move v4, v11

    .line 370
    :goto_5d
    if-eqz v4, :cond_65

    add-long/2addr v14, v7

    cmp-long v4, v5, v14

    if-gez v4, :cond_65

    goto :goto_67

    :cond_65
    move/from16 v17, v11

    .line 372
    :goto_67
    if-nez v12, :cond_92

    if-nez v3, :cond_6d

    if-eqz v17, :cond_92

    .line 384
    :cond_6d
    if-eqz v2, :cond_91

    .line 386
    iget-object v1, v0, Landroid/net/NetworkStackClient;->mHealthListeners:Landroid/util/ArraySet;

    monitor-enter v1

    .line 387
    :try_start_72
    new-instance v3, Landroid/util/ArraySet;

    iget-object v0, v0, Landroid/net/NetworkStackClient;->mHealthListeners:Landroid/util/ArraySet;

    invoke-direct {v3, v0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 388
    monitor-exit v1
    :try_end_7a
    .catchall {:try_start_72 .. :try_end_7a} :catchall_8e

    .line 389
    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_91

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkStackClient$NetworkStackHealthListener;

    .line 390
    invoke-interface {v1, v2}, Landroid/net/NetworkStackClient$NetworkStackHealthListener;->onNetworkStackFailure(Ljava/lang/String;)V

    .line 391
    goto :goto_7e

    .line 388
    :catchall_8e
    move-exception v0

    :try_start_8f
    monitor-exit v1
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_8e

    throw v0

    .line 393
    :cond_91
    return-void

    .line 378
    :cond_92
    invoke-direct {v0, v13, v5, v6}, Landroid/net/NetworkStackClient;->tryWriteLastCrashTime(Landroid/content/SharedPreferences;J)V

    .line 379
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private registerNetworkStackService(Landroid/os/IBinder;)V
    .registers 6

    .line 227
    invoke-static {p1}, Landroid/net/INetworkStackConnector$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStackConnector;

    move-result-object v0

    .line 229
    const-string/jumbo v1, "network_stack"

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {v1, p1, v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 231
    const-string p1, "Network stack service registered"

    invoke-direct {p0, p1}, Landroid/net/NetworkStackClient;->log(Ljava/lang/String;)V

    .line 234
    iget-object p1, p0, Landroid/net/NetworkStackClient;->mPendingNetStackRequests:Ljava/util/ArrayList;

    monitor-enter p1

    .line 235
    :try_start_14
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/net/NetworkStackClient;->mPendingNetStackRequests:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 236
    iget-object v2, p0, Landroid/net/NetworkStackClient;->mPendingNetStackRequests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 237
    iput-object v0, p0, Landroid/net/NetworkStackClient;->mConnector:Landroid/net/INetworkStackConnector;

    .line 238
    monitor-exit p1
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_38

    .line 240
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_27
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkStackClient$NetworkStackCallback;

    .line 241
    invoke-interface {v1, v0}, Landroid/net/NetworkStackClient$NetworkStackCallback;->onNetworkStackConnected(Landroid/net/INetworkStackConnector;)V

    .line 242
    goto :goto_27

    .line 243
    :cond_37
    return-void

    .line 238
    :catchall_38
    move-exception v0

    :try_start_39
    monitor-exit p1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v0
.end method

.method private requestConnector(Landroid/net/NetworkStackClient$NetworkStackCallback;)V
    .registers 4

    .line 488
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 489
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_21

    const/16 v1, 0x3ea

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_21

    const/16 v1, 0x3e9

    .line 490
    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_21

    .line 492
    :cond_19
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Only the system server should try to bind to the network stack."

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 496
    :cond_21
    :goto_21
    iget-boolean v0, p0, Landroid/net/NetworkStackClient;->mWasSystemServerInitialized:Z

    if-nez v0, :cond_36

    .line 499
    invoke-direct {p0}, Landroid/net/NetworkStackClient;->getRemoteConnector()Landroid/net/INetworkStackConnector;

    move-result-object v0

    .line 500
    iget-object v1, p0, Landroid/net/NetworkStackClient;->mPendingNetStackRequests:Ljava/util/ArrayList;

    monitor-enter v1

    .line 501
    :try_start_2c
    iput-object v0, p0, Landroid/net/NetworkStackClient;->mConnector:Landroid/net/INetworkStackConnector;

    .line 502
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_33

    .line 503
    invoke-interface {p1, v0}, Landroid/net/NetworkStackClient$NetworkStackCallback;->onNetworkStackConnected(Landroid/net/INetworkStackConnector;)V

    .line 504
    return-void

    .line 502
    :catchall_33
    move-exception p1

    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw p1

    .line 508
    :cond_36
    iget-object v0, p0, Landroid/net/NetworkStackClient;->mPendingNetStackRequests:Ljava/util/ArrayList;

    monitor-enter v0

    .line 509
    :try_start_39
    iget-object v1, p0, Landroid/net/NetworkStackClient;->mConnector:Landroid/net/INetworkStackConnector;

    .line 510
    if-nez v1, :cond_44

    .line 511
    iget-object v1, p0, Landroid/net/NetworkStackClient;->mPendingNetStackRequests:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    monitor-exit v0

    return-void

    .line 514
    :cond_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_39 .. :try_end_45} :catchall_49

    .line 516
    invoke-interface {p1, v1}, Landroid/net/NetworkStackClient$NetworkStackCallback;->onNetworkStackConnected(Landroid/net/INetworkStackConnector;)V

    .line 517
    return-void

    .line 514
    :catchall_49
    move-exception p1

    :try_start_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw p1
.end method

.method private tryGetLastCrashTime(Landroid/content/SharedPreferences;)J
    .registers 5

    .line 409
    const-wide/16 v0, 0x0

    if-nez p1, :cond_5

    return-wide v0

    .line 411
    :cond_5
    :try_start_5
    const-string v2, "lastcrash_time"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_c

    return-wide v0

    .line 412
    :catchall_c
    move-exception p1

    .line 413
    const-string v2, "Error getting last crash time"

    invoke-direct {p0, v2, p1}, Landroid/net/NetworkStackClient;->logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 414
    return-wide v0
.end method

.method private tryWriteLastCrashTime(Landroid/content/SharedPreferences;J)V
    .registers 5

    .line 419
    if-nez p1, :cond_3

    return-void

    .line 421
    :cond_3
    :try_start_3
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "lastcrash_time"

    invoke-interface {p1, v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_11

    .line 424
    goto :goto_17

    .line 422
    :catchall_11
    move-exception p1

    .line 423
    const-string p2, "Error writing last crash time"

    invoke-direct {p0, p2, p1}, Landroid/net/NetworkStackClient;->logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 425
    :goto_17
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 5

    .line 524
    iget-object v0, p0, Landroid/net/NetworkStackClient;->mLog:Landroid/net/util/SharedLog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1}, Landroid/net/util/SharedLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Landroid/net/NetworkStackClient;->mPendingNetStackRequests:Ljava/util/ArrayList;

    monitor-enter v0

    .line 528
    :try_start_9
    iget-object v1, p0, Landroid/net/NetworkStackClient;->mPendingNetStackRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 529
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_29

    .line 531
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pendingNetStackRequests length: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 533
    return-void

    .line 529
    :catchall_29
    move-exception p1

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p1
.end method

.method public fetchIpMemoryStore(Landroid/net/IIpMemoryStoreCallbacks;)V
    .registers 3

    .line 189
    new-instance v0, Landroid/net/-$$Lambda$NetworkStackClient$qInwLPrclXOFvKSYRjcCaCSeEhw;

    invoke-direct {v0, p1}, Landroid/net/-$$Lambda$NetworkStackClient$qInwLPrclXOFvKSYRjcCaCSeEhw;-><init>(Landroid/net/IIpMemoryStoreCallbacks;)V

    invoke-direct {p0, v0}, Landroid/net/NetworkStackClient;->requestConnector(Landroid/net/NetworkStackClient$NetworkStackCallback;)V

    .line 196
    return-void
.end method

.method public init()V
    .registers 2

    .line 250
    const-string v0, "Network stack init"

    invoke-direct {p0, v0}, Landroid/net/NetworkStackClient;->log(Ljava/lang/String;)V

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/NetworkStackClient;->mWasSystemServerInitialized:Z

    .line 252
    return-void
.end method

.method public makeDhcpServer(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;)V
    .registers 5

    .line 144
    new-instance v0, Landroid/net/-$$Lambda$NetworkStackClient$tuv4lz5fwSxR2XuU69pB4cKkltA;

    invoke-direct {v0, p1, p2, p3}, Landroid/net/-$$Lambda$NetworkStackClient$tuv4lz5fwSxR2XuU69pB4cKkltA;-><init>(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;)V

    invoke-direct {p0, v0}, Landroid/net/NetworkStackClient;->requestConnector(Landroid/net/NetworkStackClient$NetworkStackCallback;)V

    .line 151
    return-void
.end method

.method public makeIpClient(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;)V
    .registers 4

    .line 159
    new-instance v0, Landroid/net/-$$Lambda$NetworkStackClient$EsrnifYD8E-HxTwVQsf45HJKvtM;

    invoke-direct {v0, p1, p2}, Landroid/net/-$$Lambda$NetworkStackClient$EsrnifYD8E-HxTwVQsf45HJKvtM;-><init>(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;)V

    invoke-direct {p0, v0}, Landroid/net/NetworkStackClient;->requestConnector(Landroid/net/NetworkStackClient$NetworkStackCallback;)V

    .line 166
    return-void
.end method

.method public makeNetworkMonitor(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;)V
    .registers 5

    .line 174
    new-instance v0, Landroid/net/-$$Lambda$NetworkStackClient$8Y7GJyozK7_xixdmgfHS4QSif-A;

    invoke-direct {v0, p1, p2, p3}, Landroid/net/-$$Lambda$NetworkStackClient$8Y7GJyozK7_xixdmgfHS4QSif-A;-><init>(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;)V

    invoke-direct {p0, v0}, Landroid/net/NetworkStackClient;->requestConnector(Landroid/net/NetworkStackClient$NetworkStackCallback;)V

    .line 181
    return-void
.end method

.method public registerHealthListener(Landroid/net/NetworkStackClient$NetworkStackHealthListener;)V
    .registers 4

    .line 132
    iget-object v0, p0, Landroid/net/NetworkStackClient;->mHealthListeners:Landroid/util/ArraySet;

    monitor-enter v0

    .line 133
    :try_start_3
    iget-object v1, p0, Landroid/net/NetworkStackClient;->mHealthListeners:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 134
    monitor-exit v0

    .line 135
    return-void

    .line 134
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public start(Landroid/content/Context;)V
    .registers 7

    .line 263
    const-string v0, "Starting network stack"

    invoke-direct {p0, v0}, Landroid/net/NetworkStackClient;->log(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 268
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/net/NetworkStackClient;->getNetworkStackIntent(Landroid/content/pm/PackageManager;Z)Landroid/content/Intent;

    move-result-object v1

    .line 271
    if-nez v1, :cond_1b

    .line 272
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/net/NetworkStackClient;->getNetworkStackIntent(Landroid/content/pm/PackageManager;Z)Landroid/content/Intent;

    move-result-object v1

    .line 273
    const-string v0, "Starting network stack process"

    invoke-direct {p0, v0}, Landroid/net/NetworkStackClient;->log(Ljava/lang/String;)V

    goto :goto_20

    .line 275
    :cond_1b
    const-string v0, "Starting network stack in-process"

    invoke-direct {p0, v0}, Landroid/net/NetworkStackClient;->log(Ljava/lang/String;)V

    .line 278
    :goto_20
    const/4 v0, 0x0

    if-nez v1, :cond_29

    .line 279
    const-string v1, "Could not resolve the network stack"

    invoke-direct {p0, v1, p1, v0}, Landroid/net/NetworkStackClient;->maybeCrashWithTerribleFailure(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 280
    return-void

    .line 283
    :cond_29
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 287
    new-instance v3, Landroid/net/NetworkStackClient$NetworkStackConnection;

    invoke-direct {v3, p0, p1, v2, v0}, Landroid/net/NetworkStackClient$NetworkStackConnection;-><init>(Landroid/net/NetworkStackClient;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkStackClient$1;)V

    const/16 v0, 0x41

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v3, v0, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_55

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not bind to network stack in-process, or in app with "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, v2}, Landroid/net/NetworkStackClient;->maybeCrashWithTerribleFailure(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 292
    return-void

    .line 295
    :cond_55
    const-string p1, "Network stack service start requested"

    invoke-direct {p0, p1}, Landroid/net/NetworkStackClient;->log(Ljava/lang/String;)V

    .line 296
    return-void
.end method
