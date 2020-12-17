.class public Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;
.super Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;
.source "V3OfflineEmitter.java"

# interfaces
.implements Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester$IRemoteConnCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$VccOfflineStatsCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "V3OfflineEmitter"


# instance fields
.field private callback:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$VccOfflineStatsCallback;

.field private emitterConfigUpdateSuccessful:Z

.field private executorService1:Ljava/util/concurrent/ScheduledExecutorService;

.field private packageName:Ljava/lang/String;

.field private rowId:J

.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 47
    iput-wide v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->rowId:J

    const/4 p2, 0x0

    .line 49
    iput-boolean p2, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->emitterConfigUpdateSuccessful:Z

    const/4 v0, 0x1

    .line 53
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->executorService1:Ljava/util/concurrent/ScheduledExecutorService;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->packageName:Ljava/lang/String;

    .line 56
    :try_start_17
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/utils/FlymeOSUtils;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 58
    iget-object v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.meizu.statsapp.v3.events_cache_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->sp:Landroid/content/SharedPreferences;

    goto :goto_4b

    .line 60
    :cond_41
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->mContext:Landroid/content/Context;

    const-string v1, "com.meizu.statsapp.v3.events_cache"

    invoke-virtual {v0, v1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->sp:Landroid/content/SharedPreferences;

    .line 62
    :goto_4b
    iget-object p2, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    const/16 v0, 0x1f4

    if-lt p2, v0, :cond_66

    .line 63
    iget-object p2, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 65
    :cond_66
    iget-object p2, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_74
    :goto_74
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_98

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 66
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    .line 67
    iget-wide v2, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->rowId:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_74

    .line 68
    iput-wide v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->rowId:J
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_93} :catch_94

    goto :goto_74

    :catch_94
    move-exception p2

    .line 72
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 74
    :cond_98
    new-instance p2, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$VccOfflineStatsCallback;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$VccOfflineStatsCallback;-><init>(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$1;)V

    iput-object p2, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->callback:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$VccOfflineStatsCallback;

    .line 75
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->getInstance(Landroid/content/Context;)Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->setRemoteConnCallback(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester$IRemoteConnCallback;)V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;)Z
    .registers 1

    .line 42
    iget-boolean p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->emitterConfigUpdateSuccessful:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;)J
    .registers 3

    .line 42
    iget-wide v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->rowId:J

    return-wide v0
.end method

.method static synthetic access$1008(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;)J
    .registers 5

    .line 42
    iget-wide v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->rowId:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->rowId:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;Z)Z
    .registers 2

    .line 42
    iput-boolean p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->emitterConfigUpdateSuccessful:Z

    return p1
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .registers 1

    .line 42
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;)Landroid/content/Context;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;)Landroid/content/SharedPreferences;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->sp:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;)V
    .registers 1

    .line 42
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->sendCachedEventsIfNecessary()V

    return-void
.end method

.method static synthetic access$1500(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;Ljava/util/ArrayList;Ljava/lang/String;)Z
    .registers 3

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->sendData(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;)Landroid/content/Context;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;)V
    .registers 1

    .line 42
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->addCachedEventsToRemote()V

    return-void
.end method

.method static synthetic access$1900(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;Ljava/util/List;Ljava/util/List;)V
    .registers 3

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->bulkAdd(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;)Ljava/lang/String;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;)Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->emitterConfig:Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;

    return-object p0
.end method

.method static synthetic access$400(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;)Landroid/content/Context;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;)V
    .registers 1

    .line 42
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->migrateOldEventsIfNecessary()V

    return-void
.end method

.method static synthetic access$600(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;)Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->emitterConfig:Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;

    return-object p0
.end method

.method static synthetic access$700(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;)Landroid/content/Context;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;)Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->emitterConfig:Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;

    return-object p0
.end method

.method static synthetic access$900(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;)Landroid/content/Context;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private addCachedEventsToRemote()V
    .registers 3

    .line 269
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->executorService1:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$7;

    invoke-direct {v1, p0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$7;-><init>(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private buildUri(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 9

    .line 362
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    .line 363
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 365
    invoke-static {p2}, Lcom/meizu/statsapp/v3/lib/plugin/utils/Utils;->getMD5([B)Ljava/lang/String;

    move-result-object p2

    const-string v1, "md5"

    .line 366
    invoke-virtual {p0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 367
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 371
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string v3, "ts"

    .line 372
    invoke-virtual {p0, v3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 373
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "nonce"

    .line 374
    invoke-virtual {p0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 376
    invoke-interface {v0, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "POST"

    const/4 v1, 0x0

    .line 379
    invoke-static {p2, p1, v0, v1}, Lcom/meizu/statsapp/v3/lib/plugin/utils/NetRequestUtil;->sign(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "sign"

    .line 378
    invoke-virtual {p0, p2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 380
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private bulkAdd(Ljava/util/List;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 292
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4a

    if-eqz v0, :cond_47

    .line 293
    rem-int/lit8 v2, v0, 0xa

    if-nez v2, :cond_47

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v0, -0xa

    .line 296
    iget-object v3, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->getInstance(Landroid/content/Context;)Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->packageName:Ljava/lang/String;

    invoke-interface {p1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-interface {p2, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->emitterBulkAddEvents(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Z

    .line 297
    sget-object v3, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addCachedEventToRemote 1, eventIds:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4a
    mul-int/lit8 v1, v1, 0xa

    .line 301
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_8b

    .line 302
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 303
    iget-object v2, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->getInstance(Landroid/content/Context;)Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;

    move-result-object v2

    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->packageName:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {p2, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v2, p0, v3, p2}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->emitterBulkAddEvents(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Z

    .line 304
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addCachedEventToRemote 2, eventIds:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8b
    return-void
.end method

.method private migrateOldEventsIfNecessary()V
    .registers 9

    .line 91
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->mContext:Landroid/content/Context;

    const-string v1, "statsapp_v3.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_86

    .line 94
    :try_start_e
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->TAG:Ljava/lang/String;

    const-string v2, "migrateOldEventsIfNecessary begin"

    invoke-static {v0, v2}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 97
    new-instance v3, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;

    iget-object v4, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;-><init>(Landroid/content/Context;)V

    .line 98
    invoke-virtual {v3}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->getEventsMax500()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_54

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmittableEvent;

    .line 99
    invoke-virtual {v5}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmittableEvent;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-virtual {v5}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmittableEvent;->getPayload()Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-virtual {v5}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmittableEvent;->getId()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->removeEvent(J)Z

    goto :goto_2e

    .line 103
    :cond_54
    sget-object v3, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "migrate ids: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-direct {p0, v0, v2}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->bulkAdd(Ljava/util/List;Ljava/util/List;)V

    .line 105
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 106
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->TAG:Ljava/lang/String;

    const-string v0, "migrateOldEventsIfNecessary end"

    invoke-static {p0, v0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_81} :catch_82

    goto :goto_86

    :catch_82
    move-exception p0

    .line 108
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_86
    :goto_86
    return-void
.end method

.method private sendCachedEventsIfNecessary()V
    .registers 3

    .line 239
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->executorService1:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$6;

    invoke-direct {v1, p0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$6;-><init>(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sendData(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmittableEvent;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;->getInstance(Landroid/content/Context;)Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/statsapp/v3/lib/plugin/sdk/UmidFetcher;->fetchOrRequestUMID()Ljava/lang/String;

    move-result-object v0

    .line 311
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_19

    .line 312
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->TAG:Ljava/lang/String;

    const-string p1, "Not flushing data to Server because no umid"

    invoke-static {p0, p1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 316
    :cond_19
    iget-object v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->emitterConfig:Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;

    invoke-virtual {v1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->getPkgKey()Ljava/lang/String;

    move-result-object v1

    .line 317
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 318
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->TAG:Ljava/lang/String;

    const-string p1, "Not flushing data to Server because no pkgKey"

    invoke-static {p0, p1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 322
    :cond_2d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 323
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, v2

    .line 324
    :goto_38
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_73

    .line 325
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmittableEvent;

    .line 326
    invoke-virtual {v6}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmittableEvent;->getId()J

    move-result-wide v7

    .line 327
    invoke-virtual {v6}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmittableEvent;->getPayload()Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;

    move-result-object v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "cseq"

    invoke-virtual {v9, v8, v7}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 328
    invoke-virtual {v6}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmittableEvent;->getPayload()Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;

    move-result-object v7

    const-string v8, "umid"

    invoke-virtual {v7, v8, v0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 329
    invoke-virtual {v6}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmittableEvent;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    invoke-virtual {v6}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmittableEvent;->getPayload()Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_38

    .line 332
    :cond_73
    sget-object p1, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendData eventIds: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-static {v4}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterMessageBuilder;->buildEvents(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    .line 334
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 335
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "origData size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/utils/Utils;->compress([B)[B

    move-result-object p1

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/meizu/statsapp/v3/lib/plugin/constants/UxipConstants;->UPLOAD_URL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->buildUri(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    .line 340
    sget-object v3, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendData buildUri "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;->getInstance(Landroid/content/Context;)Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, p1}, Lcom/meizu/statsapp/v3/lib/plugin/net/HttpSecureRequester;->postMultipart(Ljava/lang/String;Ljava/util/Map;[B)Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;

    move-result-object p0

    if-eqz p0, :cond_184

    .line 342
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;->getResponseBody()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_184

    const/4 p1, 0x1

    .line 344
    :try_start_f6
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/net/NetResponse;->getResponseBody()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "code"

    .line 345
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_105
    .catch Lorg/json/JSONException; {:try_start_f6 .. :try_end_105} :catch_15d

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_142

    .line 348
    :try_start_109
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully posted to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/meizu/statsapp/v3/lib/plugin/constants/UxipConstants;->UPLOAD_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    sget-object p2, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13d
    .catch Lorg/json/JSONException; {:try_start_109 .. :try_end_13d} :catch_13f

    move v2, p1

    goto :goto_184

    :catch_13f
    move-exception p0

    move v2, p1

    goto :goto_15e

    :cond_142
    const/16 p1, 0x19f

    if-ne v0, p1, :cond_184

    .line 351
    :try_start_146
    sget-object p1, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "415 data error "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15c
    .catch Lorg/json/JSONException; {:try_start_146 .. :try_end_15c} :catch_15d

    goto :goto_184

    :catch_15d
    move-exception p0

    .line 354
    :goto_15e
    sget-object p1, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - Cause: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_184
    :goto_184
    return v2
.end method


# virtual methods
.method public add(Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)V
    .registers 4

    .line 133
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->emitterConfig:Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;

    invoke-virtual {v0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->isActive()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 134
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->executorService1:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$3;

    invoke-direct {v1, p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$3;-><init>(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_12
    return-void
.end method

.method public addNeartime(Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)V
    .registers 5

    .line 175
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addNeartime payload:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->addRealtime(Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)V

    return-void
.end method

.method public addRealtime(Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)V
    .registers 4

    .line 154
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->emitterConfig:Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;

    invoke-virtual {v0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->isActive()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 155
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->executorService1:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$4;

    invoke-direct {v1, p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$4;-><init>(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_12
    return-void
.end method

.method public flush()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public init()V
    .registers 4

    .line 80
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remoteInit, packageName; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->emitterConfig:Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->executorService1:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$1;

    invoke-direct {v1, p0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$1;-><init>(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onServiceConnected()V
    .registers 4

    .line 206
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->getInstance(Landroid/content/Context;)Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->callback:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$VccOfflineStatsCallback;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->setCallback(Ljava/lang/String;Lcom/meizu/statsapp/v3/lib/plugin/IVccOfflineStatsCallback;)V

    .line 207
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->addCachedEventsToRemote()V

    return-void
.end method

.method public onServiceDisconnected()V
    .registers 1

    return-void
.end method

.method public setEncrypt(Z)V
    .registers 2

    return-void
.end method

.method public updateConfig(ZZZZJIJI)V
    .registers 11

    .line 118
    invoke-super/range {p0 .. p10}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->updateConfig(ZZZZJIJI)V

    .line 122
    sget-object p1, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "remoteUpdateConfig, packageName; "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", config: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->emitterConfig:Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->executorService1:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p2, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$2;

    invoke-direct {p2, p0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$2;-><init>(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
