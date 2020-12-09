.class Lcom/android/server/location/ContextHubClientManager;
.super Ljava/lang/Object;
.source "ContextHubClientManager.java"


# static fields
.field private static final DEBUG_LOG_ENABLED:Z = false

.field private static final MAX_CLIENT_ID:I = 0x7fff

.field private static final TAG:Ljava/lang/String; = "ContextHubClientManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

.field private final mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Short;",
            "Lcom/android/server/location/ContextHubClientBroker;",
            ">;"
        }
    .end annotation
.end field

.field private mNextHostEndPointId:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/hardware/contexthub/V1_0/IContexthub;)V
    .registers 4

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/ContextHubClientManager;->mNextHostEndPointId:I

    .line 76
    iput-object p1, p0, Lcom/android/server/location/ContextHubClientManager;->mContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/android/server/location/ContextHubClientManager;->mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

    .line 78
    return-void
.end method

.method private broadcastMessage(ILandroid/hardware/location/NanoAppMessage;)V
    .registers 4

    .line 253
    new-instance v0, Lcom/android/server/location/-$$Lambda$ContextHubClientManager$f15OSYbsSONpkXn7GinnrBPeumw;

    invoke-direct {v0, p2}, Lcom/android/server/location/-$$Lambda$ContextHubClientManager$f15OSYbsSONpkXn7GinnrBPeumw;-><init>(Landroid/hardware/location/NanoAppMessage;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/ContextHubClientManager;->forEachClientOfHub(ILjava/util/function/Consumer;)V

    .line 254
    return-void
.end method

.method private forEachClientOfHub(ILjava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/location/ContextHubClientBroker;",
            ">;)V"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/ContextHubClientBroker;

    .line 264
    invoke-virtual {v1}, Lcom/android/server/location/ContextHubClientBroker;->getAttachedContextHubId()I

    move-result v2

    if-ne v2, p1, :cond_1f

    .line 265
    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 267
    :cond_1f
    goto :goto_a

    .line 268
    :cond_20
    return-void
.end method

.method private getClientBroker(ILandroid/app/PendingIntent;J)Lcom/android/server/location/ContextHubClientBroker;
    .registers 8

    .line 279
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/ContextHubClientBroker;

    .line 280
    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/location/ContextHubClientBroker;->hasPendingIntent(Landroid/app/PendingIntent;J)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 281
    invoke-virtual {v1}, Lcom/android/server/location/ContextHubClientBroker;->getAttachedContextHubId()I

    move-result v2

    if-ne v2, p1, :cond_23

    .line 282
    return-object v1

    .line 284
    :cond_23
    goto :goto_a

    .line 286
    :cond_24
    const/4 p1, 0x0

    return-object p1
.end method

.method private getHostEndPointId()S
    .registers 7

    .line 229
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const v1, 0x8000

    if-eq v0, v1, :cond_34

    .line 233
    iget v0, p0, Lcom/android/server/location/ContextHubClientManager;->mNextHostEndPointId:I

    .line 234
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    :goto_10
    const/16 v3, 0x7fff

    if-gt v0, v3, :cond_32

    .line 235
    iget-object v4, p0, Lcom/android/server/location/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    int-to-short v5, v2

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    .line 236
    if-ne v2, v3, :cond_24

    goto :goto_26

    :cond_24
    add-int/lit8 v1, v2, 0x1

    :goto_26
    iput v1, p0, Lcom/android/server/location/ContextHubClientManager;->mNextHostEndPointId:I

    .line 237
    goto :goto_32

    .line 240
    :cond_29
    if-ne v2, v3, :cond_2d

    move v2, v1

    goto :goto_2f

    :cond_2d
    add-int/lit8 v2, v2, 0x1

    .line 234
    :goto_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 243
    :cond_32
    :goto_32
    int-to-short v0, v2

    return v0

    .line 230
    :cond_34
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not register client - max limit exceeded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$broadcastMessage$4(Landroid/hardware/location/NanoAppMessage;Lcom/android/server/location/ContextHubClientBroker;)V
    .registers 2

    .line 253
    invoke-virtual {p1, p0}, Lcom/android/server/location/ContextHubClientBroker;->sendMessageToClient(Landroid/hardware/location/NanoAppMessage;)V

    return-void
.end method

.method static synthetic lambda$onHubReset$2(Lcom/android/server/location/ContextHubClientBroker;)V
    .registers 1

    .line 209
    invoke-virtual {p0}, Lcom/android/server/location/ContextHubClientBroker;->onHubReset()V

    return-void
.end method

.method static synthetic lambda$onNanoAppAborted$3(JILcom/android/server/location/ContextHubClientBroker;)V
    .registers 4

    .line 218
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/location/ContextHubClientBroker;->onNanoAppAborted(JI)V

    return-void
.end method

.method static synthetic lambda$onNanoAppLoaded$0(JLcom/android/server/location/ContextHubClientBroker;)V
    .registers 3

    .line 194
    invoke-virtual {p2, p0, p1}, Lcom/android/server/location/ContextHubClientBroker;->onNanoAppLoaded(J)V

    return-void
.end method

.method static synthetic lambda$onNanoAppUnloaded$1(JLcom/android/server/location/ContextHubClientBroker;)V
    .registers 3

    .line 202
    invoke-virtual {p2, p0, p1}, Lcom/android/server/location/ContextHubClientBroker;->onNanoAppUnloaded(J)V

    return-void
.end method


# virtual methods
.method onHubReset(I)V
    .registers 3

    .line 209
    sget-object v0, Lcom/android/server/location/-$$Lambda$ContextHubClientManager$aRAV9Gn84ao-4XOiN6tFizfZjHo;->INSTANCE:Lcom/android/server/location/-$$Lambda$ContextHubClientManager$aRAV9Gn84ao-4XOiN6tFizfZjHo;

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/ContextHubClientManager;->forEachClientOfHub(ILjava/util/function/Consumer;)V

    .line 210
    return-void
.end method

.method onMessageFromNanoApp(ILandroid/hardware/contexthub/V1_0/ContextHubMsg;)V
    .registers 5

    .line 153
    invoke-static {p2}, Lcom/android/server/location/ContextHubServiceUtil;->createNanoAppMessage(Landroid/hardware/contexthub/V1_0/ContextHubMsg;)Landroid/hardware/location/NanoAppMessage;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Landroid/hardware/location/NanoAppMessage;->isBroadcastMessage()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 160
    invoke-direct {p0, p1, v0}, Lcom/android/server/location/ContextHubClientManager;->broadcastMessage(ILandroid/hardware/location/NanoAppMessage;)V

    goto :goto_3f

    .line 162
    :cond_e
    iget-object p1, p0, Lcom/android/server/location/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-short v1, p2, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->hostEndPoint:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/location/ContextHubClientBroker;

    .line 163
    if-eqz p1, :cond_22

    .line 164
    invoke-virtual {p1, v0}, Lcom/android/server/location/ContextHubClientBroker;->sendMessageToClient(Landroid/hardware/location/NanoAppMessage;)V

    goto :goto_3f

    .line 166
    :cond_22
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot send message to unregistered client (host endpoint ID = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short p2, p2, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->hostEndPoint:S

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ContextHubClientManager"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :goto_3f
    return-void
.end method

.method onNanoAppAborted(IJI)V
    .registers 6

    .line 218
    new-instance v0, Lcom/android/server/location/-$$Lambda$ContextHubClientManager$WHzSH2f-YJ3FaiF7JXPP-7oX9EE;

    invoke-direct {v0, p2, p3, p4}, Lcom/android/server/location/-$$Lambda$ContextHubClientManager$WHzSH2f-YJ3FaiF7JXPP-7oX9EE;-><init>(JI)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/ContextHubClientManager;->forEachClientOfHub(ILjava/util/function/Consumer;)V

    .line 219
    return-void
.end method

.method onNanoAppLoaded(IJ)V
    .registers 5

    .line 194
    new-instance v0, Lcom/android/server/location/-$$Lambda$ContextHubClientManager$VPD5ebhe8Z67S8QKuTR4KzeshK8;

    invoke-direct {v0, p2, p3}, Lcom/android/server/location/-$$Lambda$ContextHubClientManager$VPD5ebhe8Z67S8QKuTR4KzeshK8;-><init>(J)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/ContextHubClientManager;->forEachClientOfHub(ILjava/util/function/Consumer;)V

    .line 195
    return-void
.end method

.method onNanoAppUnloaded(IJ)V
    .registers 5

    .line 202
    new-instance v0, Lcom/android/server/location/-$$Lambda$ContextHubClientManager$gN_vRogwyzr9qBjrQpKwwHzrFAo;

    invoke-direct {v0, p2, p3}, Lcom/android/server/location/-$$Lambda$ContextHubClientManager$gN_vRogwyzr9qBjrQpKwwHzrFAo;-><init>(J)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/ContextHubClientManager;->forEachClientOfHub(ILjava/util/function/Consumer;)V

    .line 203
    return-void
.end method

.method registerClient(Landroid/hardware/location/ContextHubInfo;Landroid/app/PendingIntent;J)Landroid/hardware/location/IContextHubClient;
    .registers 16

    .line 128
    nop

    .line 129
    monitor-enter p0

    .line 130
    :try_start_2
    invoke-virtual {p1}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/server/location/ContextHubClientManager;->getClientBroker(ILandroid/app/PendingIntent;J)Lcom/android/server/location/ContextHubClientBroker;

    move-result-object v0

    .line 132
    if-nez v0, :cond_2c

    .line 133
    invoke-direct {p0}, Lcom/android/server/location/ContextHubClientManager;->getHostEndPointId()S

    move-result v0

    .line 134
    new-instance v10, Lcom/android/server/location/ContextHubClientBroker;

    iget-object v2, p0, Lcom/android/server/location/ContextHubClientManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/location/ContextHubClientManager;->mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

    move-object v1, v10

    move-object v4, p0

    move-object v5, p1

    move v6, v0

    move-object v7, p2

    move-wide v8, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/server/location/ContextHubClientBroker;-><init>(Landroid/content/Context;Landroid/hardware/contexthub/V1_0/IContexthub;Lcom/android/server/location/ContextHubClientManager;Landroid/hardware/location/ContextHubInfo;SLandroid/app/PendingIntent;J)V

    .line 137
    iget-object p1, p0, Lcom/android/server/location/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-virtual {p1, p2, v10}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string p1, "Registered"
    :try_end_2a
    .catchall {:try_start_2 .. :try_end_2a} :catchall_51

    move-object v0, v10

    goto :goto_2e

    .line 132
    :cond_2c
    const-string p1, "Regenerated"

    .line 140
    :goto_2e
    :try_start_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_51

    .line 142
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " client with host endpoint ID "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/location/ContextHubClientBroker;->getHostEndPointId()S

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ContextHubClientManager"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-static {v0}, Landroid/hardware/location/IContextHubClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubClient;

    move-result-object p1

    return-object p1

    .line 140
    :catchall_51
    move-exception p1

    :try_start_52
    monitor-exit p0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw p1
.end method

.method registerClient(Landroid/hardware/location/ContextHubInfo;Landroid/hardware/location/IContextHubClientCallback;)Landroid/hardware/location/IContextHubClient;
    .registers 12

    .line 93
    monitor-enter p0

    .line 94
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/location/ContextHubClientManager;->getHostEndPointId()S

    move-result v7

    .line 95
    new-instance v8, Lcom/android/server/location/ContextHubClientBroker;

    iget-object v1, p0, Lcom/android/server/location/ContextHubClientManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/location/ContextHubClientManager;->mContextHubProxy:Landroid/hardware/contexthub/V1_0/IContexthub;

    move-object v0, v8

    move-object v3, p0

    move-object v4, p1

    move v5, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/ContextHubClientBroker;-><init>(Landroid/content/Context;Landroid/hardware/contexthub/V1_0/IContexthub;Lcom/android/server/location/ContextHubClientManager;Landroid/hardware/location/ContextHubInfo;SLandroid/hardware/location/IContextHubClientCallback;)V

    .line 98
    iget-object p1, p0, Lcom/android/server/location/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v7}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-virtual {p1, p2, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_4d

    .line 102
    :try_start_1d
    invoke-virtual {v8}, Lcom/android/server/location/ContextHubClientBroker;->attachDeathRecipient()V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_20} :catch_40

    .line 108
    nop

    .line 110
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Registered client with host endpoint ID "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/server/location/ContextHubClientBroker;->getHostEndPointId()S

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ContextHubClientManager"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-static {v8}, Landroid/hardware/location/IContextHubClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubClient;

    move-result-object p1

    return-object p1

    .line 103
    :catch_40
    move-exception p1

    .line 105
    const-string p1, "ContextHubClientManager"

    const-string p2, "Failed to attach death recipient to client"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {v8}, Lcom/android/server/location/ContextHubClientBroker;->close()V

    .line 107
    const/4 p1, 0x0

    return-object p1

    .line 99
    :catchall_4d
    move-exception p1

    :try_start_4e
    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw p1
.end method

.method unregisterClient(S)V
    .registers 5

    .line 181
    iget-object v0, p0, Lcom/android/server/location/ContextHubClientManager;->mHostEndPointIdToClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ContextHubClientManager"

    if-eqz v0, :cond_23

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unregistered client with host endpoint ID "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 184
    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot unregister non-existing client with host endpoint ID "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :goto_37
    return-void
.end method
