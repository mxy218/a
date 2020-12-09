.class final Lcom/android/server/devicepolicy/NetworkLogger;
.super Ljava/lang/Object;
.source "NetworkLogger.java"


# static fields
.field private static final TAG:Ljava/lang/String;


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

    .line 44
    const-class v0, Lcom/android/server/devicepolicy/NetworkLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/devicepolicy/NetworkLogger;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/pm/PackageManagerInternal;)V
    .registers 5

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mIsLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    new-instance v0, Lcom/android/server/devicepolicy/NetworkLogger$1;

    invoke-direct {v0, p0}, Lcom/android/server/devicepolicy/NetworkLogger$1;-><init>(Lcom/android/server/devicepolicy/NetworkLogger;)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mNetdEventCallback:Landroid/net/INetdEventCallback;

    .line 87
    iput-object p1, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mDpm:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 88
    iput-object p2, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mPm:Landroid/content/pm/PackageManagerInternal;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/devicepolicy/NetworkLogger;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mIsLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/devicepolicy/NetworkLogger;)Landroid/content/pm/PackageManagerInternal;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mPm:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/devicepolicy/NetworkLogger;)Lcom/android/server/devicepolicy/NetworkLoggingHandler;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mNetworkLoggingHandler:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    return-object p0
.end method

.method private checkIpConnectivityMetricsService()Z
    .registers 3

    .line 92
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 93
    return v1

    .line 95
    :cond_6
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mDpm:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getIIpConnectivityMetrics()Landroid/net/IIpConnectivityMetrics;

    move-result-object v0

    .line 96
    if-nez v0, :cond_12

    .line 97
    const/4 v0, 0x0

    return v0

    .line 99
    :cond_12
    iput-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    .line 100
    return v1
.end method


# virtual methods
.method discardLogs()V
    .registers 2

    .line 182
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mNetworkLoggingHandler:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    if-eqz v0, :cond_7

    .line 183
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->discardLogs()V

    .line 185
    :cond_7
    return-void
.end method

.method forceBatchFinalization()J
    .registers 3

    .line 192
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mNetworkLoggingHandler:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->forceBatchFinalization()J

    move-result-wide v0

    return-wide v0
.end method

.method pause()V
    .registers 2

    .line 160
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mNetworkLoggingHandler:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    if-eqz v0, :cond_7

    .line 161
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->pause()V

    .line 163
    :cond_7
    return-void
.end method

.method resume()V
    .registers 2

    .line 173
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mNetworkLoggingHandler:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    if-eqz v0, :cond_7

    .line 174
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->resume()V

    .line 176
    :cond_7
    return-void
.end method

.method retrieveLogs(J)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroid/app/admin/NetworkEvent;",
            ">;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mNetworkLoggingHandler:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->retrieveFullLogBatch(J)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method startNetworkLogging()Z
    .registers 6

    .line 104
    sget-object v0, Lcom/android/server/devicepolicy/NetworkLogger;->TAG:Ljava/lang/String;

    const-string v1, "Starting network logging."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-direct {p0}, Lcom/android/server/devicepolicy/NetworkLogger;->checkIpConnectivityMetricsService()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_16

    .line 107
    sget-object v0, Lcom/android/server/devicepolicy/NetworkLogger;->TAG:Ljava/lang/String;

    const-string v2, "Failed to register callback with IIpConnectivityMetrics."

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return v1

    .line 111
    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    iget-object v2, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mNetdEventCallback:Landroid/net/INetdEventCallback;

    const/4 v3, 0x1

    invoke-interface {v0, v3, v2}, Landroid/net/IIpConnectivityMetrics;->addNetdEventCallback(ILandroid/net/INetdEventCallback;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 113
    new-instance v0, Lcom/android/server/ServiceThread;

    sget-object v2, Lcom/android/server/devicepolicy/NetworkLogger;->TAG:Ljava/lang/String;

    const/16 v4, 0xa

    invoke-direct {v0, v2, v4, v1}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 115
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 116
    new-instance v0, Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    iget-object v2, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mDpm:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-direct {v0, v2, v4}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;-><init>(Landroid/os/Looper;Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mNetworkLoggingHandler:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    .line 118
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mNetworkLoggingHandler:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->scheduleBatchFinalization()V

    .line 119
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mIsLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_4a} :catch_4c

    .line 120
    return v3

    .line 122
    :cond_4b
    return v1

    .line 124
    :catch_4c
    move-exception v0

    .line 125
    sget-object v2, Lcom/android/server/devicepolicy/NetworkLogger;->TAG:Ljava/lang/String;

    const-string v3, "Failed to make remote calls to register the callback"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    return v1
.end method

.method stopNetworkLogging()Z
    .registers 5

    .line 131
    sget-object v0, Lcom/android/server/devicepolicy/NetworkLogger;->TAG:Ljava/lang/String;

    const-string v1, "Stopping network logging"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mIsLoggingEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 134
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/NetworkLogger;->discardLogs()V

    .line 137
    const/4 v0, 0x1

    :try_start_11
    invoke-direct {p0}, Lcom/android/server/devicepolicy/NetworkLogger;->checkIpConnectivityMetricsService()Z

    move-result v1

    if-nez v1, :cond_27

    .line 139
    sget-object v1, Lcom/android/server/devicepolicy/NetworkLogger;->TAG:Ljava/lang/String;

    const-string v2, "Failed to unregister callback with IIpConnectivityMetrics."

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1e} :catch_37
    .catchall {:try_start_11 .. :try_end_1e} :catchall_35

    .line 141
    nop

    .line 149
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mHandlerThread:Lcom/android/server/ServiceThread;

    if-eqz v1, :cond_26

    .line 150
    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->quitSafely()Z

    .line 141
    :cond_26
    return v0

    .line 143
    :cond_27
    :try_start_27
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    invoke-interface {v1, v0}, Landroid/net/IIpConnectivityMetrics;->removeNetdEventCallback(I)Z

    move-result v0
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2d} :catch_37
    .catchall {:try_start_27 .. :try_end_2d} :catchall_35

    .line 149
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mHandlerThread:Lcom/android/server/ServiceThread;

    if-eqz v1, :cond_34

    .line 150
    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->quitSafely()Z

    .line 143
    :cond_34
    return v0

    .line 149
    :catchall_35
    move-exception v0

    goto :goto_48

    .line 145
    :catch_37
    move-exception v1

    .line 146
    :try_start_38
    sget-object v2, Lcom/android/server/devicepolicy/NetworkLogger;->TAG:Ljava/lang/String;

    const-string v3, "Failed to make remote calls to unregister the callback"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_35

    .line 147
    nop

    .line 149
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mHandlerThread:Lcom/android/server/ServiceThread;

    if-eqz v1, :cond_47

    .line 150
    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->quitSafely()Z

    .line 147
    :cond_47
    return v0

    .line 149
    :goto_48
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLogger;->mHandlerThread:Lcom/android/server/ServiceThread;

    if-eqz v1, :cond_4f

    .line 150
    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->quitSafely()Z

    :cond_4f
    throw v0
.end method
