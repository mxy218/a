.class public Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;
.super Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterWorker;
.source "LocalEmitterWorker.java"

# interfaces
.implements Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver$IEnvListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalEmitterWorker"


# instance fields
.field private final NEARTIME:I

.field private final NORMASEND_BACKGROUND:I

.field private final NORMASEND_NET:I

.field private final NORMASEND_POWER:I

.field private final NORMASEND_START:I

.field private final NORMASEND_THRESHOLD:I

.field private final NORMASEND_TIMER:I

.field private emitterConfig:Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;

.field private eventStore:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;

.field private executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private isBusy:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private nearTimeIds:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private neartimeSendHandler:Landroid/os/Handler;

.field private normaSendHandler:Landroid/os/Handler;

.field private realTimeIds:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private realtimeSendHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;)V
    .registers 8

    .line 68
    invoke-direct {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterWorker;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 59
    iput v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->NORMASEND_START:I

    const/4 v1, 0x2

    .line 60
    iput v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->NORMASEND_THRESHOLD:I

    const/4 v1, 0x3

    .line 61
    iput v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->NORMASEND_NET:I

    const/4 v1, 0x4

    .line 62
    iput v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->NORMASEND_POWER:I

    const/4 v1, 0x5

    .line 63
    iput v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->NORMASEND_TIMER:I

    const/4 v1, 0x6

    .line 64
    iput v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->NORMASEND_BACKGROUND:I

    .line 65
    iput v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->NEARTIME:I

    .line 69
    iput-object p2, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->emitterConfig:Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;

    .line 70
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p2

    iput-object p2, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 72
    new-instance p2, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;

    invoke-direct {p2, p1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->eventStore:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;

    .line 73
    sget-object p2, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "##### LocalEmitterWorker, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {p2, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->isBusy:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 76
    new-instance p2, Landroid/os/HandlerThread;

    const-string v2, "LocalEmitterWorker.normaSend"

    invoke-direct {p2, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 78
    new-instance v2, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$1;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {v2, p0, p2, p1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$1;-><init>(Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->normaSendHandler:Landroid/os/Handler;

    .line 110
    new-instance p2, Landroid/os/HandlerThread;

    const-string v2, "LocalEmitterWorker.realtimeSend"

    invoke-direct {p2, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 112
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {v2, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->realtimeSendHandler:Landroid/os/Handler;

    .line 113
    new-instance p2, Landroid/os/HandlerThread;

    const-string v2, "LocalEmitterWorker.neartimeSend"

    invoke-direct {p2, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 115
    new-instance v2, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$2;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {v2, p0, p2}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$2;-><init>(Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->neartimeSendHandler:Landroid/os/Handler;

    .line 138
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p2, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->realTimeIds:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 139
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p2, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->nearTimeIds:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 140
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;->getInstance(Landroid/content/Context;)Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;->addEnvListener(Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver$IEnvListener;)V

    .line 141
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->resetMobileTrafficIf()V

    .line 142
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "##### LocalEmitterWorker 2, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;)Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->eventStore:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 50
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;)Landroid/os/Handler;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->realtimeSendHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;)Landroid/os/Handler;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->neartimeSendHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;Ljava/util/ArrayList;)V
    .registers 2

    .line 50
    invoke-direct {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->normalSend(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;)Z
    .registers 1

    .line 50
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->cacheCheck()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;)Landroid/os/Handler;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->normaSendHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;)Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->emitterConfig:Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;

    return-object p0
.end method

.method static synthetic access$502(Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;)Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->emitterConfig:Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;

    return-object p1
.end method

.method static synthetic access$600(Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->nearTimeIds:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method static synthetic access$700(Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;Ljava/util/ArrayList;ZLjava/lang/String;)V
    .registers 4

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->syncSendData(Ljava/util/ArrayList;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;Ljava/util/ArrayList;ZLjava/lang/String;)V
    .registers 4

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->sendData(Ljava/util/ArrayList;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->realTimeIds:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method private buildUri(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 9

    .line 340
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    .line 341
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 343
    invoke-static {p2}, Lcom/meizu/statsapp/v3/lib/plugin/utils/Utils;->getMD5([B)Ljava/lang/String;

    move-result-object p2

    const-string v1, "md5"

    .line 344
    invoke-virtual {p0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 345
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 349
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string v3, "ts"

    .line 350
    invoke-virtual {p0, v3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 351
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "nonce"

    .line 352
    invoke-virtual {p0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 354
    invoke-interface {v0, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "POST"

    const/4 v1, 0x0

    .line 357
    invoke-static {p2, p1, v0, v1}, Lcom/meizu/statsapp/v3/lib/plugin/utils/NetRequestUtil;->sign(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "sign"

    .line 356
    invoke-virtual {p0, p2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 358
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private cacheCheck()Z
    .registers 6

    .line 367
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->eventStore:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->getEventsCount(Ljava/lang/String;)J

    move-result-wide v0

    .line 368
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->emitterConfig:Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;

    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->getFlushCacheLimit()I

    move-result p0

    .line 369
    sget-object v2, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cacheCheck ------------------ eventSize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", flushCacheLimit:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    int-to-long v2, p0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_32

    const/4 p0, 0x1

    return p0

    :cond_32
    const/4 p0, 0x0

    return p0
.end method

.method private mobileTrafficCheck([B)Z
    .registers 10

    .line 400
    array-length p1, p1

    .line 401
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mobileTrafficCheck ------------------ flushSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_22

    .line 403
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->TAG:Ljava/lang/String;

    const-string p1, "Not flushing data to Server because no flush data"

    invoke-static {p0, p1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 406
    :cond_22
    iget-object v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterWorker;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/statsapp/v3/lib/plugin/utils/NetInfoUtils;->isWiFiWorking(Landroid/content/Context;)Z

    move-result v1

    .line 407
    iget-object v2, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->eventStore:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;

    invoke-virtual {v2}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->getTraffic()I

    move-result v2

    .line 408
    iget-object v3, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->emitterConfig:Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;

    invoke-virtual {v3}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->getFlushMobileTrafficLimit()J

    move-result-wide v3

    .line 409
    sget-object v5, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mobileTrafficCheck ------------------ isWifi:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", currentTraffic:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", mobileTrafficLimit:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    if-nez v1, :cond_97

    const-wide/16 v6, 0x0

    cmp-long v1, v3, v6

    if-gez v1, :cond_64

    return v5

    :cond_64
    add-int v1, v2, p1

    int-to-long v6, v1

    cmp-long v3, v6, v3

    if-lez v3, :cond_73

    .line 415
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->TAG:Ljava/lang/String;

    const-string p1, "Not flushing data to server because exceed mobileTrafficLimit"

    invoke-static {p0, p1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 418
    :cond_73
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->eventStore:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;

    invoke-virtual {p0, v1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->updateTraffic(I)V

    .line 419
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "flushing data to server currentTraffic:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", flushSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9e

    .line 422
    :cond_97
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->TAG:Ljava/lang/String;

    const-string p1, "flushing data to server in WiFi mode"

    invoke-static {p0, p1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9e
    return v5
.end method

.method private normalSend(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmittableEvent;",
            ">;)V"
        }
    .end annotation

    .line 249
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 250
    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 251
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmittableEvent;

    .line 252
    iget-object v2, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->realTimeIds:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmittableEvent;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    iget-object v2, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->nearTimeIds:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmittableEvent;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 253
    :cond_30
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 256
    :cond_34
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->TAG:Ljava/lang/String;

    const-string v1, "normalSend"

    invoke-static {v0, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    sget-boolean v0, Lcom/meizu/statsapp/v3/InitConfig;->sendEventSync:Z

    const-string v1, "/batch"

    const/4 v2, 0x1

    if-eqz v0, :cond_46

    .line 258
    invoke-direct {p0, p1, v2, v1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->syncSendData(Ljava/util/ArrayList;ZLjava/lang/String;)V

    goto :goto_49

    .line 260
    :cond_46
    invoke-direct {p0, p1, v2, v1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->sendData(Ljava/util/ArrayList;ZLjava/lang/String;)V

    :goto_49
    return-void
.end method

.method private resetMobileTrafficIf()V
    .registers 10

    .line 381
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 382
    iget-object v2, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->eventStore:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;

    invoke-virtual {v2}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->getLastResetTime()J

    move-result-wide v2

    sub-long v4, v0, v2

    .line 383
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    .line 385
    sget-object v6, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "beforeFlush ------------------ now:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", lastResetTime:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", intervalTime:"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", resetTrafficInterval:"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v2, 0x5265c00

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v2, v4, v2

    if-ltz v2, :cond_57

    .line 387
    sget-object v2, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->TAG:Ljava/lang/String;

    const-string v3, "do reset traffic"

    invoke-static {v2, v3}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object v2, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->eventStore:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->updateTraffic(I)V

    .line 389
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->eventStore:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;

    invoke-virtual {p0, v0, v1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->updateLastResetTime(J)V

    :cond_57
    return-void
.end method

.method private sendData(Ljava/util/ArrayList;ZLjava/lang/String;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmittableEvent;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1d8

    .line 272
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_1d8

    .line 276
    :cond_a
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterWorker;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;->getInstance(Landroid/content/Context;)Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;->fetchOrRequestUMID()Ljava/lang/String;

    move-result-object v0

    .line 277
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 278
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->TAG:Ljava/lang/String;

    const-string p1, "Not flushing data to Server because no umid"

    invoke-static {p0, p1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 282
    :cond_22
    iget-object v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->emitterConfig:Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;

    invoke-virtual {v1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->getPkgKey()Ljava/lang/String;

    move-result-object v1

    .line 283
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 284
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->TAG:Ljava/lang/String;

    const-string p1, "Not flushing data to Server because no pkgKey"

    invoke-static {p0, p1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 288
    :cond_36
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 289
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    .line 290
    :goto_42
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_7d

    .line 291
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmittableEvent;

    .line 292
    invoke-virtual {v6}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmittableEvent;->getId()J

    move-result-wide v7

    .line 293
    invoke-virtual {v6}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmittableEvent;->getPayload()Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;

    move-result-object v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "cseq"

    invoke-virtual {v9, v8, v7}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 294
    invoke-virtual {v6}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmittableEvent;->getPayload()Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;

    move-result-object v7

    const-string v8, "umid"

    invoke-virtual {v7, v8, v0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 295
    invoke-virtual {v6}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmittableEvent;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    invoke-virtual {v6}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmittableEvent;->getPayload()Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_42

    .line 298
    :cond_7d
    sget-object p1, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendData eventIds: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-static {v3}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->buildEvents(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 301
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 302
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "origData size: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, p1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/utils/Utils;->compress([B)[B

    move-result-object p1

    if-eqz p2, :cond_c7

    .line 304
    invoke-direct {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->mobileTrafficCheck([B)Z

    move-result p2

    if-nez p2, :cond_c7

    return-void

    .line 309
    :cond_c7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/constants/UxipConstants;->UPLOAD_URL:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->buildUri(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object p2

    .line 310
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendData buildUri "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterWorker;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;->getInstance(Landroid/content/Context;)Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, p2, v3, p1}, Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;->postMultipart(Ljava/lang/String;Ljava/util/Map;[B)Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;

    move-result-object p1

    if-eqz p1, :cond_197

    .line 312
    invoke-virtual {p1}, Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;->getResponseBody()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_197

    const/4 p2, 0x1

    .line 314
    :try_start_109
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;->getResponseBody()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "code"

    .line 315
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_118
    .catch Lorg/json/JSONException; {:try_start_109 .. :try_end_118} :catch_170

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_154

    .line 318
    :try_start_11c
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Successfully posted to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/meizu/statsapp/v3/lib/plugin/constants/UxipConstants;->UPLOAD_URL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Response is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16e

    :catch_151
    move-exception p1

    move v4, p2

    goto :goto_171

    :cond_154
    const/16 v3, 0x19f

    if-ne v0, v3, :cond_197

    .line 322
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "415 data error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16e
    .catch Lorg/json/JSONException; {:try_start_11c .. :try_end_16e} :catch_151

    :goto_16e
    move v4, p2

    goto :goto_197

    :catch_170
    move-exception p1

    .line 325
    :goto_171
    sget-object p2, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - Cause: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_197
    :goto_197
    if-eqz v4, :cond_1ba

    .line 329
    sget-object p1, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->TAG:Ljava/lang/String;

    const-string p2, "deleting sent events from DB."

    invoke-static {p1, p2}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1a4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1d8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    .line 331
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->eventStore:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;

    invoke-virtual {v0, p2, p3}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->removeEvent(J)Z

    goto :goto_1a4

    .line 334
    :cond_1ba
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Response is null or failed, unexpected failure posting to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/meizu/statsapp/v3/lib/plugin/constants/UxipConstants;->UPLOAD_URL:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d8
    :goto_1d8
    return-void
.end method

.method private syncSendData(Ljava/util/ArrayList;ZLjava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmittableEvent;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->isBusy:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 266
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->sendData(Ljava/util/ArrayList;ZLjava/lang/String;)V

    .line 267
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->isBusy:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    :cond_12
    return-void
.end method


# virtual methods
.method public add(Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)V
    .registers 4

    .line 174
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$5;

    invoke-direct {v1, p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$5;-><init>(Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addNeartime(Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)V
    .registers 4

    .line 212
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$7;

    invoke-direct {v1, p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$7;-><init>(Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public addRealtime(Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)V
    .registers 4

    .line 184
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$6;

    invoke-direct {v1, p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$6;-><init>(Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public environmentChanged(Ljava/lang/String;)V
    .registers 5

    .line 235
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "environmentChanged. changeName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CHANGE_NAME_NETWORKCONNECT"

    .line 236
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 237
    iget-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->emitterConfig:Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;

    invoke-virtual {p1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->isFlushOnReconnect()Z

    move-result p1

    if-eqz p1, :cond_43

    .line 238
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->normaSendHandler:Landroid/os/Handler;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_43

    :cond_2d
    const-string v0, "CHANGE_NAME_POWER"

    .line 240
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    .line 241
    iget-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->emitterConfig:Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;

    invoke-virtual {p1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->isFlushOnCharge()Z

    move-result p1

    if-eqz p1, :cond_43

    .line 242
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->normaSendHandler:Landroid/os/Handler;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_43
    :goto_43
    return-void
.end method

.method public flush()V
    .registers 3

    .line 225
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$8;

    invoke-direct {v1, p0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$8;-><init>(Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public init()V
    .registers 3

    .line 146
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->TAG:Ljava/lang/String;

    const-string v1, "EmitterWorker init"

    invoke-static {v0, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$3;

    invoke-direct {v1, p0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$3;-><init>(Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setEncrypt(Z)V
    .registers 2

    .line 432
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->eventStore:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;

    invoke-virtual {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->setEncrypt(Z)V

    return-void
.end method

.method public updateConfig(Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;)V
    .registers 4

    .line 161
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$4;

    invoke-direct {v1, p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$4;-><init>(Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
