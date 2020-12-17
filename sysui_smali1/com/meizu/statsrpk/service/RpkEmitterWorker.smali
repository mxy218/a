.class public Lcom/meizu/statsrpk/service/RpkEmitterWorker;
.super Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterWorker;
.source "RpkEmitterWorker.java"

# interfaces
.implements Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver$IEnvListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "RpkEmitterWorker"


# instance fields
.field private eventStore:Lcom/meizu/statsrpk/storage/RpkEventStore;

.field private executorService:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5

    .line 48
    invoke-direct {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterWorker;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-static {p2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p2

    iput-object p2, p0, Lcom/meizu/statsrpk/service/RpkEmitterWorker;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 50
    new-instance p2, Lcom/meizu/statsrpk/storage/RpkEventStore;

    invoke-direct {p2, p1}, Lcom/meizu/statsrpk/storage/RpkEventStore;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/meizu/statsrpk/service/RpkEmitterWorker;->eventStore:Lcom/meizu/statsrpk/storage/RpkEventStore;

    .line 51
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;->getInstance(Landroid/content/Context;)Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;->addEnvListener(Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver$IEnvListener;)V

    .line 53
    iget-object p1, p0, Lcom/meizu/statsrpk/service/RpkEmitterWorker;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p2, Lcom/meizu/statsrpk/service/RpkEmitterWorker$1;

    invoke-direct {p2, p0}, Lcom/meizu/statsrpk/service/RpkEmitterWorker$1;-><init>(Lcom/meizu/statsrpk/service/RpkEmitterWorker;)V

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v0, 0x1b7740

    invoke-interface {p1, p2, v0, v1, p0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/statsrpk/service/RpkEmitterWorker;)V
    .registers 1

    .line 42
    invoke-direct {p0}, Lcom/meizu/statsrpk/service/RpkEmitterWorker;->flushQueueInternalByTimer()V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/statsrpk/service/RpkEmitterWorker;Ljava/lang/String;Ljava/lang/String;Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)V
    .registers 4

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/statsrpk/service/RpkEmitterWorker;->enqueueEventsInternal(Ljava/lang/String;Ljava/lang/String;Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/statsrpk/service/RpkEmitterWorker;Ljava/lang/String;)V
    .registers 2

    .line 42
    invoke-direct {p0, p1}, Lcom/meizu/statsrpk/service/RpkEmitterWorker;->environmentChangedInternal(Ljava/lang/String;)V

    return-void
.end method

.method private buildUri(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 9

    .line 171
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 174
    invoke-static {p2}, Lcom/meizu/statsapp/v3/lib/plugin/utils/Utils;->getMD5([B)Ljava/lang/String;

    move-result-object p2

    const-string v1, "md5"

    .line 175
    invoke-virtual {p0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 176
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 180
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v3, "ts"

    .line 181
    invoke-virtual {p0, v3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 182
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "nonce"

    .line 183
    invoke-virtual {p0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 185
    invoke-interface {v0, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "POST"

    const/4 v1, 0x0

    .line 188
    invoke-static {p2, p1, v0, v1}, Lcom/meizu/statsapp/v3/lib/plugin/utils/NetRequestUtil;->sign(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "sign"

    .line 187
    invoke-virtual {p0, p2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 189
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private cacheCheck(Ljava/lang/String;)Z
    .registers 7

    .line 230
    iget-object v0, p0, Lcom/meizu/statsrpk/service/RpkEmitterWorker;->eventStore:Lcom/meizu/statsrpk/storage/RpkEventStore;

    invoke-virtual {v0, p1}, Lcom/meizu/statsrpk/storage/RpkEventStore;->getEventsCountForAppKey(Ljava/lang/String;)J

    move-result-wide v0

    .line 232
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterWorker;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/meizu/statsapp/v3/lib/plugin/utils/NetInfoUtils;->isOnline(Landroid/content/Context;)Z

    move-result p0

    .line 233
    sget-object v2, Lcom/meizu/statsrpk/service/RpkEmitterWorker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cacheCheck appKey:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ------------------ eventSize:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", flushCacheLimit:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x5

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", networkAvailable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-ltz p1, :cond_44

    if-eqz p0, :cond_44

    const/4 p0, 0x1

    goto :goto_45

    :cond_44
    const/4 p0, 0x0

    :goto_45
    return p0
.end method

.method private enqueueEventsInternal(Ljava/lang/String;Ljava/lang/String;Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)V
    .registers 7

    if-eqz p1, :cond_43

    if-nez p3, :cond_5

    goto :goto_43

    .line 97
    :cond_5
    sget-object v0, Lcom/meizu/statsrpk/service/RpkEmitterWorker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Queuing event for sending later, appKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", payload:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/meizu/statsrpk/service/RpkEmitterWorker;->eventStore:Lcom/meizu/statsrpk/storage/RpkEventStore;

    invoke-virtual {v0}, Lcom/meizu/statsrpk/storage/RpkEventStore;->clearOldEventsIfNecessary()V

    .line 99
    iget-object v0, p0, Lcom/meizu/statsrpk/service/RpkEmitterWorker;->eventStore:Lcom/meizu/statsrpk/storage/RpkEventStore;

    invoke-virtual {v0, p1, p2, p3}, Lcom/meizu/statsrpk/storage/RpkEventStore;->insertEvent(Ljava/lang/String;Ljava/lang/String;Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)J

    move-result-wide p2

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-lez p2, :cond_43

    .line 100
    invoke-direct {p0, p1}, Lcom/meizu/statsrpk/service/RpkEmitterWorker;->cacheCheck(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_43

    .line 101
    iget-object p2, p0, Lcom/meizu/statsrpk/service/RpkEmitterWorker;->eventStore:Lcom/meizu/statsrpk/storage/RpkEventStore;

    invoke-virtual {p2, p1}, Lcom/meizu/statsrpk/storage/RpkEventStore;->getEmittableEvents(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/meizu/statsrpk/service/RpkEmitterWorker;->sendDataBatch(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_43
    :goto_43
    return-void
.end method

.method private environmentChangedInternal(Ljava/lang/String;)V
    .registers 5

    .line 80
    sget-object v0, Lcom/meizu/statsrpk/service/RpkEmitterWorker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "environmentChanged. changeName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/meizu/statsrpk/service/RpkEmitterWorker;->eventStore:Lcom/meizu/statsrpk/storage/RpkEventStore;

    invoke-virtual {v0}, Lcom/meizu/statsrpk/storage/RpkEventStore;->getAppKeys()Ljava/util/List;

    move-result-object v0

    const-string v1, "CHANGE_NAME_NETWORKCONNECT"

    .line 82
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 83
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_28
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 84
    invoke-direct {p0, v0}, Lcom/meizu/statsrpk/service/RpkEmitterWorker;->flushQueueInternalWhenEnvChanged(Ljava/lang/String;)V

    goto :goto_28

    :cond_38
    const-string v1, "CHANGE_NAME_POWER"

    .line 86
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_54

    .line 87
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_44
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 88
    invoke-direct {p0, v0}, Lcom/meizu/statsrpk/service/RpkEmitterWorker;->flushQueueInternalWhenEnvChanged(Ljava/lang/String;)V

    goto :goto_44

    :cond_54
    return-void
.end method

.method private flushQueueInternalByTimer()V
    .registers 5

    .line 208
    sget-object v0, Lcom/meizu/statsrpk/service/RpkEmitterWorker;->TAG:Ljava/lang/String;

    const-string v1, "flushQueueInternalByTimer"

    invoke-static {v0, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/meizu/statsrpk/service/RpkEmitterWorker;->eventStore:Lcom/meizu/statsrpk/storage/RpkEventStore;

    invoke-virtual {v0}, Lcom/meizu/statsrpk/storage/RpkEventStore;->getAppKeys()Ljava/util/List;

    move-result-object v0

    .line 210
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 211
    iget-object v2, p0, Lcom/meizu/statsrpk/service/RpkEmitterWorker;->eventStore:Lcom/meizu/statsrpk/storage/RpkEventStore;

    invoke-virtual {v2}, Lcom/meizu/statsrpk/storage/RpkEventStore;->clearOldEventsIfNecessary()V

    .line 212
    iget-object v2, p0, Lcom/meizu/statsrpk/service/RpkEmitterWorker;->eventStore:Lcom/meizu/statsrpk/storage/RpkEventStore;

    invoke-virtual {v2, v1}, Lcom/meizu/statsrpk/storage/RpkEventStore;->getEmittableEvents(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 213
    invoke-direct {p0, v1, v2}, Lcom/meizu/statsrpk/service/RpkEmitterWorker;->sendDataBatch(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_11

    .line 216
    :cond_2c
    iget-object v0, p0, Lcom/meizu/statsrpk/service/RpkEmitterWorker;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/meizu/statsrpk/service/RpkEmitterWorker$4;

    invoke-direct {v1, p0}, Lcom/meizu/statsrpk/service/RpkEmitterWorker$4;-><init>(Lcom/meizu/statsrpk/service/RpkEmitterWorker;)V

    const-wide/32 v2, 0x1b7740

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, p0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private flushQueueInternalWhenEnvChanged(Ljava/lang/String;)V
    .registers 5

    .line 198
    sget-object v0, Lcom/meizu/statsrpk/service/RpkEmitterWorker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flushQueueInternalWhenEnvChanged, appKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/meizu/statsrpk/service/RpkEmitterWorker;->eventStore:Lcom/meizu/statsrpk/storage/RpkEventStore;

    invoke-virtual {v0}, Lcom/meizu/statsrpk/storage/RpkEventStore;->clearOldEventsIfNecessary()V

    .line 200
    iget-object v0, p0, Lcom/meizu/statsrpk/service/RpkEmitterWorker;->eventStore:Lcom/meizu/statsrpk/storage/RpkEventStore;

    invoke-virtual {v0, p1}, Lcom/meizu/statsrpk/storage/RpkEventStore;->getEmittableEvents(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 201
    invoke-direct {p0, p1, v0}, Lcom/meizu/statsrpk/service/RpkEmitterWorker;->sendDataBatch(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method private sendDataBatch(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmittableEvent;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_1ad

    .line 107
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1ad

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto/16 :goto_1ad

    .line 112
    :cond_10
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterWorker;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;->getInstance(Landroid/content/Context;)Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;->fetchOrRequestUMID()Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 114
    sget-object p0, Lcom/meizu/statsrpk/service/RpkEmitterWorker;->TAG:Ljava/lang/String;

    const-string p1, "Not flushing data to Server because no umid"

    invoke-static {p0, p1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 119
    :cond_28
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 120
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    .line 121
    :goto_34
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_70

    .line 122
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmittableEvent;

    .line 123
    invoke-virtual {v5}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmittableEvent;->getId()J

    move-result-wide v6

    .line 124
    invoke-virtual {v5}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmittableEvent;->getPayload()Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;

    move-result-object v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "cseq"

    invoke-virtual {v8, v7, v6}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    invoke-virtual {v5}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmittableEvent;->getPayload()Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;

    move-result-object v6

    const-string/jumbo v7, "umid"

    invoke-virtual {v6, v7, v0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    invoke-virtual {v5}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmittableEvent;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-virtual {v5}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmittableEvent;->getPayload()Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    .line 129
    :cond_70
    sget-object p2, Lcom/meizu/statsrpk/service/RpkEmitterWorker;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendBatch eventIds: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-static {v2}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->buildEvents(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    .line 133
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {p2}, Lcom/meizu/statsapp/v3/lib/plugin/utils/Utils;->compress([B)[B

    move-result-object p2

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/meizu/statsapp/v3/lib/plugin/constants/UxipConstants;->UPLOAD_URL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/batch"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/meizu/statsrpk/service/RpkEmitterWorker;->buildUri(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    .line 138
    sget-object v4, Lcom/meizu/statsrpk/service/RpkEmitterWorker;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendDataBatch buildUri "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v4, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterWorker;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;->getInstance(Landroid/content/Context;)Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, p2}, Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;->postMultipart(Ljava/lang/String;Ljava/util/Map;[B)Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;

    move-result-object p2

    if-eqz p2, :cond_16c

    .line 142
    invoke-virtual {p2}, Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;->getResponseBody()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16c

    const/4 v0, 0x1

    .line 144
    :try_start_de
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;->getResponseBody()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "code"

    .line 145
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4
    :try_end_ed
    .catch Lorg/json/JSONException; {:try_start_de .. :try_end_ed} :catch_145

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_129

    .line 148
    :try_start_f1
    sget-object v3, Lcom/meizu/statsrpk/service/RpkEmitterWorker;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Successfully posted to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/meizu/statsapp/v3/lib/plugin/constants/UxipConstants;->UPLOAD_URL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    sget-object v3, Lcom/meizu/statsrpk/service/RpkEmitterWorker;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Response is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_143

    :catch_126
    move-exception p2

    move v3, v0

    goto :goto_146

    :cond_129
    const/16 v5, 0x19f

    if-ne v4, v5, :cond_16c

    .line 153
    sget-object v3, Lcom/meizu/statsrpk/service/RpkEmitterWorker;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "415 data error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_143
    .catch Lorg/json/JSONException; {:try_start_f1 .. :try_end_143} :catch_126

    :goto_143
    move v3, v0

    goto :goto_16c

    :catch_145
    move-exception p2

    .line 156
    :goto_146
    sget-object v0, Lcom/meizu/statsrpk/service/RpkEmitterWorker;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " - Cause: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/meizu/statsapp/v3/utils/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16c
    :goto_16c
    if-eqz v3, :cond_18f

    .line 160
    sget-object p2, Lcom/meizu/statsrpk/service/RpkEmitterWorker;->TAG:Ljava/lang/String;

    const-string v0, "deleting sent events from DB."

    invoke-static {p2, v0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_179
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1ad

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 162
    iget-object v2, p0, Lcom/meizu/statsrpk/service/RpkEmitterWorker;->eventStore:Lcom/meizu/statsrpk/storage/RpkEventStore;

    invoke-virtual {v2, p1, v0, v1}, Lcom/meizu/statsrpk/storage/RpkEventStore;->removeEvent(Ljava/lang/String;J)Z

    goto :goto_179

    .line 165
    :cond_18f
    sget-object p0, Lcom/meizu/statsrpk/service/RpkEmitterWorker;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Response is null or failed, unexpected failure posting to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/constants/UxipConstants;->UPLOAD_URL:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1ad
    :goto_1ad
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)V
    .registers 6

    .line 62
    iget-object v0, p0, Lcom/meizu/statsrpk/service/RpkEmitterWorker;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/meizu/statsrpk/service/RpkEmitterWorker$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/meizu/statsrpk/service/RpkEmitterWorker$2;-><init>(Lcom/meizu/statsrpk/service/RpkEmitterWorker;Ljava/lang/String;Ljava/lang/String;Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public environmentChanged(Ljava/lang/String;)V
    .registers 4

    .line 71
    iget-object v0, p0, Lcom/meizu/statsrpk/service/RpkEmitterWorker;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/meizu/statsrpk/service/RpkEmitterWorker$3;

    invoke-direct {v1, p0, p1}, Lcom/meizu/statsrpk/service/RpkEmitterWorker$3;-><init>(Lcom/meizu/statsrpk/service/RpkEmitterWorker;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
