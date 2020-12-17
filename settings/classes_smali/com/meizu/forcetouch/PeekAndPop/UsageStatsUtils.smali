.class public Lcom/meizu/forcetouch/PeekAndPop/UsageStatsUtils;
.super Ljava/lang/Object;
.source "UsageStatsUtils.java"


# static fields
.field private static sUsageStatsProxy:Lcom/meizu/statsapp/UsageStatsProxy;

.field private static sUsageStatsUtils:Lcom/meizu/forcetouch/PeekAndPop/UsageStatsUtils;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p0, 0x1

    .line 42
    invoke-static {p1, p0}, Lcom/meizu/statsapp/UsageStatsProxy;->getInstance(Landroid/content/Context;Z)Lcom/meizu/statsapp/UsageStatsProxy;

    move-result-object p0

    sput-object p0, Lcom/meizu/forcetouch/PeekAndPop/UsageStatsUtils;->sUsageStatsProxy:Lcom/meizu/statsapp/UsageStatsProxy;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/meizu/forcetouch/PeekAndPop/UsageStatsUtils;
    .registers 2

    .line 46
    sget-object v0, Lcom/meizu/forcetouch/PeekAndPop/UsageStatsUtils;->sUsageStatsUtils:Lcom/meizu/forcetouch/PeekAndPop/UsageStatsUtils;

    if-nez v0, :cond_b

    .line 47
    new-instance v0, Lcom/meizu/forcetouch/PeekAndPop/UsageStatsUtils;

    invoke-direct {v0, p0}, Lcom/meizu/forcetouch/PeekAndPop/UsageStatsUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/meizu/forcetouch/PeekAndPop/UsageStatsUtils;->sUsageStatsUtils:Lcom/meizu/forcetouch/PeekAndPop/UsageStatsUtils;

    .line 49
    :cond_b
    sget-object p0, Lcom/meizu/forcetouch/PeekAndPop/UsageStatsUtils;->sUsageStatsUtils:Lcom/meizu/forcetouch/PeekAndPop/UsageStatsUtils;

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

    .line 63
    sget-object p0, Lcom/meizu/forcetouch/PeekAndPop/UsageStatsUtils;->sUsageStatsProxy:Lcom/meizu/statsapp/UsageStatsProxy;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/statsapp/UsageStatsProxy;->onLog(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
