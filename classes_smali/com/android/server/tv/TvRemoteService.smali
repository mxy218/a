.class public Lcom/android/server/tv/TvRemoteService;
.super Lcom/android/server/SystemService;
.source "TvRemoteService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tv/TvRemoteService$UserProvider;,
        Lcom/android/server/tv/TvRemoteService$UserHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_KEYS:Z = false

.field private static final TAG:Ljava/lang/String; = "TvRemoteService"


# instance fields
.field private mBridgeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/tv/UinputBridge;",
            ">;"
        }
    .end annotation
.end field

.field public final mHandler:Lcom/android/server/tv/TvRemoteService$UserHandler;

.field private final mLock:Ljava/lang/Object;

.field private mProviderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/tv/TvRemoteProviderProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mProviderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/tv/TvRemoteProviderProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mBridgeMap:Ljava/util/Map;

    .line 47
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mProviderMap:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mProviderList:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mLock:Ljava/lang/Object;

    .line 66
    new-instance v0, Lcom/android/server/tv/TvRemoteService$UserHandler;

    new-instance v1, Lcom/android/server/tv/TvRemoteService$UserProvider;

    invoke-direct {v1, p0, p0}, Lcom/android/server/tv/TvRemoteService$UserProvider;-><init>(Lcom/android/server/tv/TvRemoteService;Lcom/android/server/tv/TvRemoteService;)V

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/tv/TvRemoteService$UserHandler;-><init>(Lcom/android/server/tv/TvRemoteService;Lcom/android/server/tv/TvRemoteService$UserProvider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mHandler:Lcom/android/server/tv/TvRemoteService$UserHandler;

    .line 67
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/tv/TvRemoteService;)Ljava/util/Map;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/android/server/tv/TvRemoteService;->mProviderMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/tv/TvRemoteService;)Ljava/lang/Object;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/android/server/tv/TvRemoteService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/server/tv/TvRemoteService;Landroid/os/IBinder;I)V
    .registers 3

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/TvRemoteService;->sendPointerUpInternalLocked(Landroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/tv/TvRemoteService;Landroid/os/IBinder;)V
    .registers 2

    .line 41
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvRemoteService;->sendPointerSyncInternalLocked(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/tv/TvRemoteService;)Ljava/util/ArrayList;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/android/server/tv/TvRemoteService;->mProviderList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/tv/TvRemoteService;Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;Ljava/lang/String;III)V
    .registers 7

    .line 41
    invoke-direct/range {p0 .. p6}, Lcom/android/server/tv/TvRemoteService;->openInputBridgeInternalLocked(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;Ljava/lang/String;III)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/tv/TvRemoteService;Landroid/os/IBinder;)V
    .registers 2

    .line 41
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvRemoteService;->closeInputBridgeInternalLocked(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/tv/TvRemoteService;Landroid/os/IBinder;)V
    .registers 2

    .line 41
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvRemoteService;->clearInputBridgeInternalLocked(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/tv/TvRemoteService;Landroid/os/IBinder;J)V
    .registers 4

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/tv/TvRemoteService;->sendTimeStampInternalLocked(Landroid/os/IBinder;J)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/tv/TvRemoteService;Landroid/os/IBinder;I)V
    .registers 3

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/TvRemoteService;->sendKeyDownInternalLocked(Landroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/tv/TvRemoteService;Landroid/os/IBinder;I)V
    .registers 3

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/TvRemoteService;->sendKeyUpInternalLocked(Landroid/os/IBinder;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/tv/TvRemoteService;Landroid/os/IBinder;III)V
    .registers 5

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/tv/TvRemoteService;->sendPointerDownInternalLocked(Landroid/os/IBinder;III)V

    return-void
.end method

.method private clearInputBridgeInternalLocked(Landroid/os/IBinder;)V
    .registers 3

    .line 144
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mBridgeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/UinputBridge;

    .line 145
    if-eqz v0, :cond_d

    .line 146
    invoke-virtual {v0, p1}, Lcom/android/server/tv/UinputBridge;->clear(Landroid/os/IBinder;)V

    .line 148
    :cond_d
    return-void
.end method

.method private closeInputBridgeInternalLocked(Landroid/os/IBinder;)V
    .registers 3

    .line 130
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mBridgeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/UinputBridge;

    .line 131
    if-eqz v0, :cond_d

    .line 132
    invoke-virtual {v0, p1}, Lcom/android/server/tv/UinputBridge;->close(Landroid/os/IBinder;)V

    .line 135
    :cond_d
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mBridgeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    return-void
.end method

.method private informInputBridgeConnected(Landroid/os/IBinder;)V
    .registers 5

    .line 90
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mHandler:Lcom/android/server/tv/TvRemoteService$UserHandler;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1, v1, p1}, Lcom/android/server/tv/TvRemoteService$UserHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 91
    return-void
.end method

.method private openInputBridgeInternalLocked(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;Ljava/lang/String;III)V
    .registers 14

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mBridgeMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 107
    invoke-direct {p0, p2}, Lcom/android/server/tv/TvRemoteService;->informInputBridgeConnected(Landroid/os/IBinder;)V

    .line 108
    return-void

    .line 111
    :cond_c
    new-instance v6, Lcom/android/server/tv/UinputBridge;

    move-object v0, v6

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/tv/UinputBridge;-><init>(Landroid/os/IBinder;Ljava/lang/String;III)V

    .line 113
    iget-object p4, p0, Lcom/android/server/tv/TvRemoteService;->mBridgeMap:Ljava/util/Map;

    invoke-interface {p4, p2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object p4, p0, Lcom/android/server/tv/TvRemoteService;->mProviderMap:Ljava/util/Map;

    invoke-interface {p4, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-direct {p0, p2}, Lcom/android/server/tv/TvRemoteService;->informInputBridgeConnected(Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_24} :catch_25

    .line 121
    goto :goto_3c

    .line 119
    :catch_25
    move-exception p1

    .line 120
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot create device for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TvRemoteService"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :goto_3c
    return-void
.end method

.method private sendKeyDownInternalLocked(Landroid/os/IBinder;I)V
    .registers 4

    .line 162
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mBridgeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/UinputBridge;

    .line 163
    if-eqz v0, :cond_d

    .line 164
    invoke-virtual {v0, p1, p2}, Lcom/android/server/tv/UinputBridge;->sendKeyDown(Landroid/os/IBinder;I)V

    .line 166
    :cond_d
    return-void
.end method

.method private sendKeyUpInternalLocked(Landroid/os/IBinder;I)V
    .registers 4

    .line 173
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mBridgeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/UinputBridge;

    .line 174
    if-eqz v0, :cond_d

    .line 175
    invoke-virtual {v0, p1, p2}, Lcom/android/server/tv/UinputBridge;->sendKeyUp(Landroid/os/IBinder;I)V

    .line 177
    :cond_d
    return-void
.end method

.method private sendPointerDownInternalLocked(Landroid/os/IBinder;III)V
    .registers 6

    .line 185
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mBridgeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/UinputBridge;

    .line 186
    if-eqz v0, :cond_d

    .line 187
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/tv/UinputBridge;->sendPointerDown(Landroid/os/IBinder;III)V

    .line 189
    :cond_d
    return-void
.end method

.method private sendPointerSyncInternalLocked(Landroid/os/IBinder;)V
    .registers 3

    .line 208
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mBridgeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/UinputBridge;

    .line 209
    if-eqz v0, :cond_d

    .line 210
    invoke-virtual {v0, p1}, Lcom/android/server/tv/UinputBridge;->sendPointerSync(Landroid/os/IBinder;)V

    .line 212
    :cond_d
    return-void
.end method

.method private sendPointerUpInternalLocked(Landroid/os/IBinder;I)V
    .registers 4

    .line 197
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mBridgeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/UinputBridge;

    .line 198
    if-eqz v0, :cond_d

    .line 199
    invoke-virtual {v0, p1, p2}, Lcom/android/server/tv/UinputBridge;->sendPointerUp(Landroid/os/IBinder;I)V

    .line 201
    :cond_d
    return-void
.end method

.method private sendTimeStampInternalLocked(Landroid/os/IBinder;J)V
    .registers 5

    .line 151
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mBridgeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/UinputBridge;

    .line 152
    if-eqz v0, :cond_d

    .line 153
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/tv/UinputBridge;->sendTimestamp(Landroid/os/IBinder;J)V

    .line 155
    :cond_d
    return-void
.end method


# virtual methods
.method public monitor()V
    .registers 3

    .line 77
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    monitor-exit v0

    .line 78
    return-void

    .line 77
    :catchall_5
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5

    throw v1
.end method

.method public onBootPhase(I)V
    .registers 3

    .line 82
    const/16 v0, 0x258

    if-ne p1, v0, :cond_a

    .line 84
    iget-object p1, p0, Lcom/android/server/tv/TvRemoteService;->mHandler:Lcom/android/server/tv/TvRemoteService$UserHandler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/tv/TvRemoteService$UserHandler;->sendEmptyMessage(I)Z

    .line 86
    :cond_a
    return-void
.end method

.method public onStart()V
    .registers 1

    .line 73
    return-void
.end method
