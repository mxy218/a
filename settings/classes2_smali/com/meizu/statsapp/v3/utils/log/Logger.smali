.class public Lcom/meizu/statsapp/v3/utils/log/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/statsapp/v3/utils/log/Logger$LogInfo;
    }
.end annotation


# static fields
.field private static sConsoleLogLevel:Lcom/meizu/statsapp/v3/utils/log/LogLevel;

.field public static sDebug:Z

.field private static sHook:Lcom/meizu/statsapp/v3/utils/log/ILog;

.field private static workHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 15
    sget-object v0, Lcom/meizu/statsapp/v3/utils/log/LogLevel;->DEBUG:Lcom/meizu/statsapp/v3/utils/log/LogLevel;

    sput-object v0, Lcom/meizu/statsapp/v3/utils/log/Logger;->sConsoleLogLevel:Lcom/meizu/statsapp/v3/utils/log/LogLevel;

    const/4 v0, 0x0

    .line 19
    sput-boolean v0, Lcom/meizu/statsapp/v3/utils/log/Logger;->sDebug:Z

    :try_start_7
    const-string v1, "persist.meizu.usagestats.log"

    const-string v2, "false"

    .line 24
    invoke-static {v1, v2}, Lcom/meizu/statsapp/v3/utils/reflect/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1d

    const-string v2, "true"

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v0, 0x1

    .line 26
    sput-boolean v0, Lcom/meizu/statsapp/v3/utils/log/Logger;->sDebug:Z

    goto :goto_1f

    .line 28
    :cond_1d
    sput-boolean v0, Lcom/meizu/statsapp/v3/utils/log/Logger;->sDebug:Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1f} :catch_1f

    .line 33
    :catch_1f
    :goto_1f
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UsageStats_Logger"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 35
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/meizu/statsapp/v3/utils/log/Logger;->workHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Lcom/meizu/statsapp/v3/utils/log/LogLevel;
    .registers 1

    .line 12
    sget-object v0, Lcom/meizu/statsapp/v3/utils/log/Logger;->sConsoleLogLevel:Lcom/meizu/statsapp/v3/utils/log/LogLevel;

    return-object v0
.end method

.method static synthetic access$100()Lcom/meizu/statsapp/v3/utils/log/ILog;
    .registers 1

    .line 12
    sget-object v0, Lcom/meizu/statsapp/v3/utils/log/Logger;->sHook:Lcom/meizu/statsapp/v3/utils/log/ILog;

    return-object v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 52
    sget-boolean v0, Lcom/meizu/statsapp/v3/utils/log/Logger;->sDebug:Z

    if-eqz v0, :cond_1b

    .line 53
    sget-object v0, Lcom/meizu/statsapp/v3/utils/log/Logger;->workHandler:Landroid/os/Handler;

    new-instance v8, Lcom/meizu/statsapp/v3/utils/log/Logger$LogInfo;

    sget-object v2, Lcom/meizu/statsapp/v3/utils/log/LogLevel;->DEBUG:Lcom/meizu/statsapp/v3/utils/log/LogLevel;

    invoke-static {}, Lcom/meizu/statsapp/v3/utils/log/Logger;->getThread()J

    move-result-wide v5

    invoke-static {}, Lcom/meizu/statsapp/v3/utils/log/Logger;->getThreadName()Ljava/lang/String;

    move-result-object v7

    move-object v1, v8

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/meizu/statsapp/v3/utils/log/Logger$LogInfo;-><init>(Lcom/meizu/statsapp/v3/utils/log/LogLevel;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1b
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 67
    sget-boolean v0, Lcom/meizu/statsapp/v3/utils/log/Logger;->sDebug:Z

    if-eqz v0, :cond_1b

    .line 68
    sget-object v0, Lcom/meizu/statsapp/v3/utils/log/Logger;->workHandler:Landroid/os/Handler;

    new-instance v8, Lcom/meizu/statsapp/v3/utils/log/Logger$LogInfo;

    sget-object v2, Lcom/meizu/statsapp/v3/utils/log/LogLevel;->ERROR:Lcom/meizu/statsapp/v3/utils/log/LogLevel;

    invoke-static {}, Lcom/meizu/statsapp/v3/utils/log/Logger;->getThread()J

    move-result-wide v5

    invoke-static {}, Lcom/meizu/statsapp/v3/utils/log/Logger;->getThreadName()Ljava/lang/String;

    move-result-object v7

    move-object v1, v8

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/meizu/statsapp/v3/utils/log/Logger$LogInfo;-><init>(Lcom/meizu/statsapp/v3/utils/log/LogLevel;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1b
    return-void
.end method

.method private static getThread()J
    .registers 2

    .line 77
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method private static getThreadName()Ljava/lang/String;
    .registers 1

    .line 81
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 57
    sget-boolean v0, Lcom/meizu/statsapp/v3/utils/log/Logger;->sDebug:Z

    if-eqz v0, :cond_1b

    .line 58
    sget-object v0, Lcom/meizu/statsapp/v3/utils/log/Logger;->workHandler:Landroid/os/Handler;

    new-instance v8, Lcom/meizu/statsapp/v3/utils/log/Logger$LogInfo;

    sget-object v2, Lcom/meizu/statsapp/v3/utils/log/LogLevel;->INFO:Lcom/meizu/statsapp/v3/utils/log/LogLevel;

    invoke-static {}, Lcom/meizu/statsapp/v3/utils/log/Logger;->getThread()J

    move-result-wide v5

    invoke-static {}, Lcom/meizu/statsapp/v3/utils/log/Logger;->getThreadName()Ljava/lang/String;

    move-result-object v7

    move-object v1, v8

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/meizu/statsapp/v3/utils/log/Logger$LogInfo;-><init>(Lcom/meizu/statsapp/v3/utils/log/LogLevel;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1b
    return-void
.end method

.method public static setHook(Lcom/meizu/statsapp/v3/utils/log/ILog;)V
    .registers 1

    .line 39
    sput-object p0, Lcom/meizu/statsapp/v3/utils/log/Logger;->sHook:Lcom/meizu/statsapp/v3/utils/log/ILog;

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 47
    sget-boolean v0, Lcom/meizu/statsapp/v3/utils/log/Logger;->sDebug:Z

    if-eqz v0, :cond_1b

    .line 48
    sget-object v0, Lcom/meizu/statsapp/v3/utils/log/Logger;->workHandler:Landroid/os/Handler;

    new-instance v8, Lcom/meizu/statsapp/v3/utils/log/Logger$LogInfo;

    sget-object v2, Lcom/meizu/statsapp/v3/utils/log/LogLevel;->VERBOSE:Lcom/meizu/statsapp/v3/utils/log/LogLevel;

    invoke-static {}, Lcom/meizu/statsapp/v3/utils/log/Logger;->getThread()J

    move-result-wide v5

    invoke-static {}, Lcom/meizu/statsapp/v3/utils/log/Logger;->getThreadName()Ljava/lang/String;

    move-result-object v7

    move-object v1, v8

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/meizu/statsapp/v3/utils/log/Logger$LogInfo;-><init>(Lcom/meizu/statsapp/v3/utils/log/LogLevel;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1b
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 62
    sget-boolean v0, Lcom/meizu/statsapp/v3/utils/log/Logger;->sDebug:Z

    if-eqz v0, :cond_1b

    .line 63
    sget-object v0, Lcom/meizu/statsapp/v3/utils/log/Logger;->workHandler:Landroid/os/Handler;

    new-instance v8, Lcom/meizu/statsapp/v3/utils/log/Logger$LogInfo;

    sget-object v2, Lcom/meizu/statsapp/v3/utils/log/LogLevel;->WARN:Lcom/meizu/statsapp/v3/utils/log/LogLevel;

    invoke-static {}, Lcom/meizu/statsapp/v3/utils/log/Logger;->getThread()J

    move-result-wide v5

    invoke-static {}, Lcom/meizu/statsapp/v3/utils/log/Logger;->getThreadName()Ljava/lang/String;

    move-result-object v7

    move-object v1, v8

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/meizu/statsapp/v3/utils/log/Logger$LogInfo;-><init>(Lcom/meizu/statsapp/v3/utils/log/LogLevel;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1b
    return-void
.end method
