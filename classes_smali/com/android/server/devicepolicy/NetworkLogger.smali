.class final Lcom/android/server/devicepolicy/NetworkLogger;
.super Ljava/lang/Object;
.source "NetworkLogger.java"


# static fields
.field private static final CTS_TEST_PKG_PREFIX_STR:Ljava/lang/String; = "com.android.cts."

.field private static final CTS_TEST_PKG_STR:Ljava/lang/String; = "com.android.cts.deviceowner"

.field private static final TAG:Ljava/lang/String;

.field private static isInCts:Z


# instance fields
.field private final mDpm:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field private mHandlerThread:Lcom/android/server/ServiceThread;

.field private mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

.field private final mIsLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mNetdEventCallback:Landroid/net/INetdEventCallback;

.field private mNetworkLoggingHandler:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

.field private final mPm:Landroid/content/pm/PackageManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    const-class v0, Lcom/android/server/devicepolicy/NetworkLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/devicepolicy/NetworkLogger;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/pm/PackageManagerInternal;)V
    .registers 5
    .param p1, "dpm"  # Lcom/android/server/devicepolicy/DevicePolicyManagerService;
    .param p2, "pm"  # Landroid/content/pm/PackageManagerInternal;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mIsLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    new-instance v0, Lcom/android/server/devicepolicy/NetworkLogger$1;

    invoke-direct {v0, p0}, Lcom/android/server/devicepolicy/NetworkLogger$1;-><init>(Lcom/android/server/devicepolicy/NetworkLogger;)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mNetdEventCallback:Landroid/net/INetdEventCallback;

    .line 105
    iput-object p1, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mDpm:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 106
    iput-object p2, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mPm:Landroid/content/pm/PackageManagerInternal;

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/devicepolicy/NetworkLogger;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/devicepolicy/NetworkLogger;

    .line 43
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mIsLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100()Z
    .registers 1

    .line 43
    sget-boolean v0, Lcom/android/server/devicepolicy/NetworkLogger;->isInCts:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/devicepolicy/NetworkLogger;)Landroid/content/pm/PackageManagerInternal;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/devicepolicy/NetworkLogger;

    .line 43
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mPm:Landroid/content/pm/PackageManagerInternal;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/devicepolicy/NetworkLogger;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"  # Lcom/android/server/devicepolicy/NetworkLogger;
    .param p1, "x1"  # Ljava/lang/String;

    .line 43
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/NetworkLogger;->isCtsPkg(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/devicepolicy/NetworkLogger;)Lcom/android/server/devicepolicy/NetworkLoggingHandler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/devicepolicy/NetworkLogger;

    .line 43
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mNetworkLoggingHandler:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    return-object v0
.end method

.method private checkIpConnectivityMetricsService()Z
    .registers 3

    .line 110
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 111
    return v1

    .line 113
    :cond_6
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mDpm:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getIIpConnectivityMetrics()Landroid/net/IIpConnectivityMetrics;

    move-result-object v0

    .line 114
    .local v0, "service":Landroid/net/IIpConnectivityMetrics;
    if-nez v0, :cond_12

    .line 115
    const/4 v1, 0x0

    return v1

    .line 117
    :cond_12
    iput-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    .line 118
    return v1
.end method

.method private isCtsPkg(Ljava/lang/String;)Z
    .registers 5
    .param p1, "pkg"  # Ljava/lang/String;

    .line 58
    sget-object v0, Lcom/android/server/devicepolicy/NetworkLogger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isCtsPkg pkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const-string v0, "com.android.cts.deviceowner"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    if-eqz p1, :cond_2a

    .line 60
    const-string v0, "com.android.cts."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_2c

    .line 63
    :cond_2a
    const/4 v0, 0x0

    return v0

    .line 61
    :cond_2c
    :goto_2c
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method discardLogs()V
    .registers 2

    .line 201
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mNetworkLoggingHandler:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    if-eqz v0, :cond_7

    .line 202
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->discardLogs()V

    .line 204
    :cond_7
    return-void
.end method

.method forceBatchFinalization()J
    .registers 3

    .line 211
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mNetworkLoggingHandler:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->forceBatchFinalization()J

    move-result-wide v0

    return-wide v0
.end method

.method pause()V
    .registers 2

    .line 179
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mNetworkLoggingHandler:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    if-eqz v0, :cond_7

    .line 180
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->pause()V

    .line 182
    :cond_7
    return-void
.end method

.method resume()V
    .registers 2

    .line 192
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mNetworkLoggingHandler:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    if-eqz v0, :cond_7

    .line 193
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->resume()V

    .line 195
    :cond_7
    return-void
.end method

.method retrieveLogs(J)Ljava/util/List;
    .registers 4
    .param p1, "batchToken"  # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroid/app/admin/NetworkEvent;",
            ">;"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mNetworkLoggingHandler:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->retrieveFullLogBatch(J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method startNetworkLogging()Z
    .registers 6

    .line 122
    sget-object v0, Lcom/android/server/devicepolicy/NetworkLogger;->TAG:Ljava/lang/String;

    const-string v1, "Starting network logging."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v0, 0x0

    const-string/jumbo v1, "vendor.meizu.sys.cts_state"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/devicepolicy/NetworkLogger;->isInCts:Z

    .line 124
    invoke-direct {p0}, Lcom/android/server/devicepolicy/NetworkLogger;->checkIpConnectivityMetricsService()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 126
    sget-object v1, Lcom/android/server/devicepolicy/NetworkLogger;->TAG:Ljava/lang/String;

    const-string v2, "Failed to register callback with IIpConnectivityMetrics."

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return v0

    .line 130
    :cond_1f
    :try_start_1f
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    iget-object v2, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mNetdEventCallback:Landroid/net/INetdEventCallback;

    const/4 v3, 0x1

    invoke-interface {v1, v3, v2}, Landroid/net/IIpConnectivityMetrics;->addNetdEventCallback(ILandroid/net/INetdEventCallback;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 132
    new-instance v1, Lcom/android/server/ServiceThread;

    sget-object v2, Lcom/android/server/devicepolicy/NetworkLogger;->TAG:Ljava/lang/String;

    const/16 v4, 0xa

    invoke-direct {v1, v2, v4, v0}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v1, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 134
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->start()V

    .line 135
    new-instance v1, Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    iget-object v2, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mDpm:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-direct {v1, v2, v4}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;-><init>(Landroid/os/Looper;Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V

    iput-object v1, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mNetworkLoggingHandler:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    .line 137
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mNetworkLoggingHandler:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->scheduleBatchFinalization()V

    .line 138
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mIsLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_53} :catch_55

    .line 139
    return v3

    .line 141
    :cond_54
    return v0

    .line 143
    :catch_55
    move-exception v1

    .line 144
    .local v1, "re":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/devicepolicy/NetworkLogger;->TAG:Ljava/lang/String;

    const-string v3, "Failed to make remote calls to register the callback"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    return v0
.end method

.method stopNetworkLogging()Z
    .registers 5

    .line 150
    sget-object v0, Lcom/android/server/devicepolicy/NetworkLogger;->TAG:Ljava/lang/String;

    const-string v1, "Stopping network logging"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mIsLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 153
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/NetworkLogger;->discardLogs()V

    .line 156
    const/4 v0, 0x1

    :try_start_11
    invoke-direct {p0}, Lcom/android/server/devicepolicy/NetworkLogger;->checkIpConnectivityMetricsService()Z

    move-result v1

    if-nez v1, :cond_27

    .line 158
    sget-object v1, Lcom/android/server/devicepolicy/NetworkLogger;->TAG:Ljava/lang/String;

    const-string v2, "Failed to unregister callback with IIpConnectivityMetrics."

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1e} :catch_37
    .catchall {:try_start_11 .. :try_end_1e} :catchall_35

    .line 160
    nop

    .line 168
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mHandlerThread:Lcom/android/server/ServiceThread;

    if-eqz v1, :cond_26

    .line 169
    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->quitSafely()Z

    .line 160
    :cond_26
    return v0

    .line 162
    :cond_27
    :try_start_27
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    invoke-interface {v1, v0}, Landroid/net/IIpConnectivityMetrics;->removeNetdEventCallback(I)Z

    move-result v0
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2d} :catch_37
    .catchall {:try_start_27 .. :try_end_2d} :catchall_35

    .line 168
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mHandlerThread:Lcom/android/server/ServiceThread;

    if-eqz v1, :cond_34

    .line 169
    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->quitSafely()Z

    .line 162
    :cond_34
    return v0

    .line 168
    :catchall_35
    move-exception v0

    goto :goto_48

    .line 164
    :catch_37
    move-exception v1

    .line 165
    .local v1, "re":Landroid/os/RemoteException;
    :try_start_38
    sget-object v2, Lcom/android/server/devicepolicy/NetworkLogger;->TAG:Ljava/lang/String;

    const-string v3, "Failed to make remote calls to unregister the callback"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_35

    .line 166
    nop

    .line 168
    iget-object v2, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mHandlerThread:Lcom/android/server/ServiceThread;

    if-eqz v2, :cond_47

    .line 169
    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->quitSafely()Z

    .line 166
    :cond_47
    return v0

    .line 168
    .end local v1  # "re":Landroid/os/RemoteException;
    :goto_48
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mHandlerThread:Lcom/android/server/ServiceThread;

    if-eqz v1, :cond_4f

    .line 169
    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->quitSafely()Z

    :cond_4f
    throw v0
.end method
