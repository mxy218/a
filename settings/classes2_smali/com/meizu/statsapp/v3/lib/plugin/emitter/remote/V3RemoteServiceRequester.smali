.class public Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;
.super Ljava/lang/Object;
.source "V3RemoteServiceRequester.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester$IRemoteConnCallback;,
        Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester$ServiceConn;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "V3RemoteServiceRequester"

.field private static final lock:Ljava/lang/Object;

.field private static sInstance:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;


# instance fields
.field private context:Landroid/content/Context;

.field private remoteConnCallback:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester$IRemoteConnCallback;

.field private final serviceConn:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester$ServiceConn;

.field private vccOfflineStatsInterface:Lcom/meizu/statsapp/v3/lib/plugin/IVccOfflineStatsInterface;

.field private vccOfflineStatsService:Landroid/content/pm/ServiceInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 7

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester$ServiceConn;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester$ServiceConn;-><init>(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester$1;)V

    iput-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->serviceConn:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester$ServiceConn;

    .line 37
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->context:Landroid/content/Context;

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 39
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.meizu.dataservice.action.vccOfflineStats"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x40

    .line 41
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 42
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryIntentServices for ACTION_VCC_OFFLINE_STATS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_78

    .line 44
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 45
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 46
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const-string v3, "com.meizu.dataservice"

    .line 47
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 48
    sget-object p1, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "choose serviceName---"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pkgName---"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object p1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->vccOfflineStatsService:Landroid/content/pm/ServiceInfo;

    :cond_78
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 24
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;Lcom/meizu/statsapp/v3/lib/plugin/IVccOfflineStatsInterface;)Lcom/meizu/statsapp/v3/lib/plugin/IVccOfflineStatsInterface;
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->vccOfflineStatsInterface:Lcom/meizu/statsapp/v3/lib/plugin/IVccOfflineStatsInterface;

    return-object p1
.end method

.method static synthetic access$300(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;)Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester$IRemoteConnCallback;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->remoteConnCallback:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester$IRemoteConnCallback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;)Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester$ServiceConn;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->serviceConn:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester$ServiceConn;

    return-object p0
.end method

.method static synthetic access$500(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;)Landroid/content/Context;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->context:Landroid/content/Context;

    return-object p0
.end method

.method private bindRemoteService()V
    .registers 6

    .line 234
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->vccOfflineStatsService:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_8e

    .line 235
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->serviceConn:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester$ServiceConn;

    monitor-enter v0

    .line 236
    :try_start_7
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.meizu.dataservice.action.vccOfflineStats"

    .line 237
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    iget-object v2, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->vccOfflineStatsService:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->vccOfflineStatsService:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->vccOfflineStatsService:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 241
    iget-object v2, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->serviceConn:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester$ServiceConn;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 242
    sget-object v2, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindService, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->serviceConn:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester$ServiceConn;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_51
    .catchall {:try_start_7 .. :try_end_51} :catchall_8b

    if-eqz v1, :cond_89

    .line 245
    :try_start_53
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->serviceConn:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester$ServiceConn;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 246
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->TAG:Ljava/lang/String;

    const-string v1, "serviceConn wait END"

    invoke-static {p0, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_61
    .catch Ljava/lang/InterruptedException; {:try_start_53 .. :try_end_61} :catch_62
    .catchall {:try_start_53 .. :try_end_61} :catchall_8b

    goto :goto_89

    :catch_62
    move-exception p0

    .line 248
    :try_start_63
    sget-object v1, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - Cause:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_89
    :goto_89
    monitor-exit v0

    goto :goto_8e

    :catchall_8b
    move-exception p0

    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_63 .. :try_end_8d} :catchall_8b

    throw p0

    :cond_8e
    :goto_8e
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;
    .registers 3

    .line 57
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->sInstance:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;

    if-nez v0, :cond_17

    .line 58
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 59
    :try_start_7
    sget-object v1, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->sInstance:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;

    if-nez v1, :cond_12

    .line 60
    new-instance v1, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;

    invoke-direct {v1, p0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->sInstance:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;

    .line 62
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 64
    :cond_17
    :goto_17
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->sInstance:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;

    return-object p0
.end method

.method private internalAdd(Ljava/lang/String;JLcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)Z
    .registers 5

    .line 93
    :try_start_0
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->vccOfflineStatsInterface:Lcom/meizu/statsapp/v3/lib/plugin/IVccOfflineStatsInterface;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/meizu/statsapp/v3/lib/plugin/IVccOfflineStatsInterface;->emitterAddEvent(Ljava/lang/String;JLcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 p0, 0x1

    return p0

    :catch_7
    move-exception p0

    .line 96
    sget-object p1, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Exception:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " - Cause:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private internalBulkAdd(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;",
            ">;)Z"
        }
    .end annotation

    .line 128
    :try_start_0
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->vccOfflineStatsInterface:Lcom/meizu/statsapp/v3/lib/plugin/IVccOfflineStatsInterface;

    invoke-interface {p0, p1, p2, p3}, Lcom/meizu/statsapp/v3/lib/plugin/IVccOfflineStatsInterface;->emitterBulkAddEvents(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 p0, 0x1

    return p0

    :catch_7
    move-exception p0

    .line 131
    sget-object p1, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Exception:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " - Cause:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private internalUpdateConfig(Ljava/lang/String;Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;)Z
    .registers 4

    .line 157
    :try_start_0
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->vccOfflineStatsInterface:Lcom/meizu/statsapp/v3/lib/plugin/IVccOfflineStatsInterface;

    invoke-interface {p0, p1, p2}, Lcom/meizu/statsapp/v3/lib/plugin/IVccOfflineStatsInterface;->emitterUpdateConfig(Ljava/lang/String;Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 p0, 0x1

    return p0

    :catch_7
    move-exception p0

    .line 160
    sget-object p1, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - Cause:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method emitterAddEvent(Ljava/lang/String;JLcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)Z
    .registers 6

    .line 78
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->vccOfflineStatsService:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_1a

    .line 79
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->vccOfflineStatsInterface:Lcom/meizu/statsapp/v3/lib/plugin/IVccOfflineStatsInterface;

    if-eqz v0, :cond_10

    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->internalAdd(Ljava/lang/String;JLcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p0, 0x1

    return p0

    .line 85
    :cond_10
    sget-object p1, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->TAG:Ljava/lang/String;

    const-string p2, "not get remote interface."

    invoke-static {p1, p2}, Lcom/meizu/statsapp/v3/utils/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->bindRemoteService()V

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public emitterBulkAddEvents(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;",
            ">;)Z"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->vccOfflineStatsService:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_1a

    .line 114
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->vccOfflineStatsInterface:Lcom/meizu/statsapp/v3/lib/plugin/IVccOfflineStatsInterface;

    if-eqz v0, :cond_10

    .line 115
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->internalBulkAdd(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p0, 0x1

    return p0

    .line 120
    :cond_10
    sget-object p1, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->TAG:Ljava/lang/String;

    const-string p2, "not get remote interface."

    invoke-static {p1, p2}, Lcom/meizu/statsapp/v3/utils/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->bindRemoteService()V

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public emitterUpdateConfig(Ljava/lang/String;Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;)Z
    .registers 4

    .line 142
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->vccOfflineStatsService:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_1a

    .line 143
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->vccOfflineStatsInterface:Lcom/meizu/statsapp/v3/lib/plugin/IVccOfflineStatsInterface;

    if-eqz v0, :cond_10

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->internalUpdateConfig(Ljava/lang/String;Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;)Z

    move-result p1

    if-eqz p1, :cond_10

    const/4 p0, 0x1

    return p0

    .line 149
    :cond_10
    sget-object p1, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->TAG:Ljava/lang/String;

    const-string p2, "not get remote interface."

    invoke-static {p1, p2}, Lcom/meizu/statsapp/v3/utils/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->bindRemoteService()V

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public setCallback(Ljava/lang/String;Lcom/meizu/statsapp/v3/lib/plugin/IVccOfflineStatsCallback;)V
    .registers 4

    .line 216
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->vccOfflineStatsService:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_3a

    .line 217
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->vccOfflineStatsInterface:Lcom/meizu/statsapp/v3/lib/plugin/IVccOfflineStatsInterface;

    if-eqz p0, :cond_33

    .line 219
    :try_start_8
    invoke-interface {p0, p1, p2}, Lcom/meizu/statsapp/v3/lib/plugin/IVccOfflineStatsInterface;->setCallback(Ljava/lang/String;Lcom/meizu/statsapp/v3/lib/plugin/IVccOfflineStatsCallback;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_c

    goto :goto_33

    :catch_c
    move-exception p0

    .line 221
    sget-object p1, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - Cause:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_33
    :goto_33
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->TAG:Ljava/lang/String;

    const-string p1, "not get remote interface."

    invoke-static {p0, p1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    return-void
.end method

.method setRemoteConnCallback(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester$IRemoteConnCallback;)V
    .registers 2

    .line 68
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester;->remoteConnCallback:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3RemoteServiceRequester$IRemoteConnCallback;

    return-void
.end method
