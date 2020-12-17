.class public Lcom/meizu/statsapp/v3/UsageStatsProxy3;
.super Ljava/lang/Object;
.source "UsageStatsProxy3.java"


# static fields
.field private static TAG:Ljava/lang/String; = "UsageStatsProxy3"

.field private static final lock:Ljava/lang/Object;

.field private static usageStatsProxy:Lcom/meizu/statsapp/v3/UsageStatsProxy3;


# instance fields
.field private context:Landroid/content/Context;

.field private mApplication:Landroid/app/Application;

.field private pageController:Lcom/meizu/statsapp/v3/lib/plugin/page/PageController;

.field private pkgKey:Ljava/lang/String;

.field private pkgType:I

.field private sdkInstanceImpl:Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;

.field private sessionController:Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;ILjava/lang/String;Lcom/meizu/statsapp/v3/InitConfig;)V
    .registers 7

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_9a

    .line 53
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_92

    if-eqz p4, :cond_8a

    .line 59
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xf

    if-le p4, v0, :cond_82

    .line 62
    iput-object p1, p0, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->mApplication:Landroid/app/Application;

    .line 63
    iget-object p1, p0, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->mApplication:Landroid/app/Application;

    invoke-virtual {p1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->context:Landroid/content/Context;

    .line 64
    iput-object p3, p0, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->pkgKey:Ljava/lang/String;

    .line 65
    iput p2, p0, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->pkgType:I

    .line 68
    sget-boolean p1, Lcom/meizu/statsapp/v3/utils/log/Logger;->sDebug:Z

    if-eqz p1, :cond_3a

    .line 69
    iget-object p1, p0, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->context:Landroid/content/Context;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_3a

    .line 71
    new-instance p2, Lcom/meizu/statsapp/v3/utils/log/EncryptLogger;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/meizu/statsapp/v3/utils/log/EncryptLogger;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/meizu/statsapp/v3/utils/log/Logger;->setHook(Lcom/meizu/statsapp/v3/utils/log/ILog;)V

    .line 75
    :cond_3a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 76
    sget-object p3, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->TAG:Ljava/lang/String;

    const-string p4, "##### UsageStatsProxy3 init"

    invoke-static {p3, p4}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    new-instance p3, Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;

    iget-object p4, p0, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->mApplication:Landroid/app/Application;

    invoke-virtual {p4}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p3, p4}, Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->sessionController:Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;

    .line 79
    new-instance p3, Lcom/meizu/statsapp/v3/lib/plugin/page/PageController;

    iget-object p4, p0, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->mApplication:Landroid/app/Application;

    invoke-virtual {p4}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p3, p4}, Lcom/meizu/statsapp/v3/lib/plugin/page/PageController;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->pageController:Lcom/meizu/statsapp/v3/lib/plugin/page/PageController;

    .line 81
    sget-boolean p3, Lcom/meizu/statsapp/v3/InitConfig;->mainThreadInit:Z

    if-eqz p3, :cond_66

    .line 82
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->realInit()V

    .line 92
    :cond_66
    sget-object p0, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "##### UsageStatsProxy3 init complete, "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 60
    :cond_82
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "android OS version too low!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 57
    :cond_8a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "initConfig is null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 54
    :cond_92
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "pkgKey is null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 51
    :cond_9a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The context is null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$000(Lcom/meizu/statsapp/v3/UsageStatsProxy3;)Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->sdkInstanceImpl:Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 31
    sget-object v0, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/statsapp/v3/UsageStatsProxy3;)V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->realInit()V

    return-void
.end method

.method private static deleteDirectory(Ljava/io/File;)Z
    .registers 4

    .line 112
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 113
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_26

    const/4 v1, 0x0

    .line 115
    :goto_d
    array-length v2, v0

    if-ge v1, v2, :cond_26

    .line 116
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 117
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->deleteDirectory(Ljava/io/File;)Z

    goto :goto_23

    .line 119
    :cond_1e
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :goto_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 124
    :cond_26
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method

.method public static getInstance()Lcom/meizu/statsapp/v3/UsageStatsProxy3;
    .registers 2

    .line 174
    sget-object v0, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->usageStatsProxy:Lcom/meizu/statsapp/v3/UsageStatsProxy3;

    if-eqz v0, :cond_5

    return-object v0

    .line 175
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UsageStatsProxy3 is not initialised - invoke at least once with parameterised init"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static init(Landroid/app/Application;Lcom/meizu/statsapp/v3/PkgType;Ljava/lang/String;Lcom/meizu/statsapp/v3/InitConfig;)V
    .registers 6

    .line 139
    sget-object v0, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->usageStatsProxy:Lcom/meizu/statsapp/v3/UsageStatsProxy3;

    if-nez v0, :cond_1b

    .line 140
    sget-object v0, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 141
    :try_start_7
    sget-object v1, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->usageStatsProxy:Lcom/meizu/statsapp/v3/UsageStatsProxy3;

    if-nez v1, :cond_16

    .line 142
    new-instance v1, Lcom/meizu/statsapp/v3/UsageStatsProxy3;

    invoke-virtual {p1}, Lcom/meizu/statsapp/v3/PkgType;->value()I

    move-result p1

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/meizu/statsapp/v3/UsageStatsProxy3;-><init>(Landroid/app/Application;ILjava/lang/String;Lcom/meizu/statsapp/v3/InitConfig;)V

    sput-object v1, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->usageStatsProxy:Lcom/meizu/statsapp/v3/UsageStatsProxy3;

    .line 144
    :cond_16
    monitor-exit v0

    goto :goto_1b

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw p0

    :cond_1b
    :goto_1b
    return-void
.end method

.method private realInit()V
    .registers 7

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 97
    sget-object v2, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "##### UsageStatsProxy3 realInit 1, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    new-instance v2, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;

    iget-object v3, p0, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->context:Landroid/content/Context;

    iget v4, p0, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->pkgType:I

    iget-object v5, p0, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->pkgKey:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object v2, p0, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->sdkInstanceImpl:Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;

    .line 100
    :try_start_2c
    iget-object v2, p0, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->context:Landroid/content/Context;

    const-string v3, "mz_statsapp_v3_base"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->deleteDirectory(Ljava/io/File;)Z

    .line 101
    iget-object v2, p0, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->context:Landroid/content/Context;

    const-string v3, "mz_statsapp_v3_dex"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->deleteDirectory(Ljava/io/File;)Z

    .line 102
    iget-object v2, p0, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->context:Landroid/content/Context;

    const-string v3, "mz_statsapp_v3_patch"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->deleteDirectory(Ljava/io/File;)Z
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_4e} :catch_4f

    goto :goto_53

    :catch_4f
    move-exception v2

    .line 104
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    :goto_53
    iget-object v2, p0, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->sessionController:Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;

    iget-object v3, p0, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->sdkInstanceImpl:Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;

    invoke-virtual {v2, v3}, Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;->attach(Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;)V

    .line 107
    iget-object v2, p0, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->sdkInstanceImpl:Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;

    iget-object p0, p0, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->sessionController:Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;

    invoke-virtual {v2, p0}, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->attach(Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;)V

    .line 108
    sget-object p0, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "##### UsageStatsProxy3 realInit 2, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 193
    :cond_3
    new-instance v0, Lcom/meizu/statsapp/v3/UsageStatsProxy3$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/meizu/statsapp/v3/UsageStatsProxy3$1;-><init>(Lcom/meizu/statsapp/v3/UsageStatsProxy3;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/meizu/statsapp/v3/GlobalExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLog(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    .line 261
    :cond_3
    new-instance v0, Lcom/meizu/statsapp/v3/UsageStatsProxy3$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/meizu/statsapp/v3/UsageStatsProxy3$4;-><init>(Lcom/meizu/statsapp/v3/UsageStatsProxy3;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/meizu/statsapp/v3/GlobalExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPageStart(Ljava/lang/String;)V
    .registers 2

    if-nez p1, :cond_3

    return-void

    .line 425
    :cond_3
    iget-object p0, p0, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->pageController:Lcom/meizu/statsapp/v3/lib/plugin/page/PageController;

    invoke-virtual {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/page/PageController;->startPage(Ljava/lang/String;)V

    return-void
.end method

.method public onPageStop(Ljava/lang/String;)V
    .registers 10

    if-nez p1, :cond_3

    return-void

    .line 437
    :cond_3
    iget-object v0, p0, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->pageController:Lcom/meizu/statsapp/v3/lib/plugin/page/PageController;

    invoke-virtual {v0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/page/PageController;->stopPage(Ljava/lang/String;)Lcom/meizu/statsapp/v3/lib/plugin/page/PageController$Page;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 439
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 440
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 441
    iget-object v5, p0, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->context:Landroid/content/Context;

    iget-wide v6, v0, Lcom/meizu/statsapp/v3/lib/plugin/page/PageController$Page;->time:J

    .line 443
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 444
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 441
    invoke-static {v5, p1, v6, v1}, Lcom/meizu/statsapp/v3/lib/plugin/events/EventUtil;->buildPageEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/statsapp/v3/lib/plugin/events/PageEvent;

    move-result-object p1

    .line 445
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 446
    iget-wide v5, v0, Lcom/meizu/statsapp/v3/lib/plugin/page/PageController$Page;->elapse:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "duration2"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    invoke-virtual {p1, v1}, Lcom/meizu/statsapp/v3/lib/plugin/events/PageEvent;->setProperties(Ljava/util/Map;)V

    .line 448
    new-instance v0, Lcom/meizu/statsapp/v3/UsageStatsProxy3$10;

    invoke-direct {v0, p0, p1}, Lcom/meizu/statsapp/v3/UsageStatsProxy3$10;-><init>(Lcom/meizu/statsapp/v3/UsageStatsProxy3;Lcom/meizu/statsapp/v3/lib/plugin/events/PageEvent;)V

    invoke-static {v0}, Lcom/meizu/statsapp/v3/GlobalExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_3f
    return-void
.end method
