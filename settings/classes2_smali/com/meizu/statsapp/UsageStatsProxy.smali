.class public Lcom/meizu/statsapp/UsageStatsProxy;
.super Ljava/lang/Object;
.source "UsageStatsProxy.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static sLock:Ljava/lang/Object;

.field private static sUsageStatsProxy:Lcom/meizu/statsapp/UsageStatsProxy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/statsapp/UsageStatsProxy;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ZZ)V
    .registers 4

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _WARNING_()V
    .registers 2

    const-string v0, "UsageStatsProxy"

    const-string v1, "_WARNING_, DO NOT USE STATSAPP V2 INTERFACE IN V3!"

    .line 42
    invoke-static {v0, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;Z)Lcom/meizu/statsapp/UsageStatsProxy;
    .registers 5

    .line 56
    invoke-static {}, Lcom/meizu/statsapp/UsageStatsProxy;->_WARNING_()V

    .line 57
    sget-object v0, Lcom/meizu/statsapp/UsageStatsProxy;->sUsageStatsProxy:Lcom/meizu/statsapp/UsageStatsProxy;

    if-nez v0, :cond_1b

    .line 58
    sget-object v0, Lcom/meizu/statsapp/UsageStatsProxy;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 59
    :try_start_a
    sget-object v1, Lcom/meizu/statsapp/UsageStatsProxy;->sUsageStatsProxy:Lcom/meizu/statsapp/UsageStatsProxy;

    if-nez v1, :cond_16

    .line 60
    new-instance v1, Lcom/meizu/statsapp/UsageStatsProxy;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/meizu/statsapp/UsageStatsProxy;-><init>(Landroid/content/Context;ZZ)V

    sput-object v1, Lcom/meizu/statsapp/UsageStatsProxy;->sUsageStatsProxy:Lcom/meizu/statsapp/UsageStatsProxy;

    .line 62
    :cond_16
    monitor-exit v0

    goto :goto_1b

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_18

    throw p0

    .line 64
    :cond_1b
    :goto_1b
    sget-object p0, Lcom/meizu/statsapp/UsageStatsProxy;->sUsageStatsProxy:Lcom/meizu/statsapp/UsageStatsProxy;

    return-object p0
.end method


# virtual methods
.method public onLog(Ljava/lang/String;Ljava/util/Map;)V
    .registers 3
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

    .line 202
    invoke-static {}, Lcom/meizu/statsapp/UsageStatsProxy;->_WARNING_()V

    .line 203
    invoke-static {}, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->getInstance()Lcom/meizu/statsapp/v3/UsageStatsProxy3;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->onLog(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
