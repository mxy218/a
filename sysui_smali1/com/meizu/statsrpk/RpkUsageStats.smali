.class public Lcom/meizu/statsrpk/RpkUsageStats;
.super Ljava/lang/Object;
.source "RpkUsageStats.java"


# static fields
.field private static TAG:Ljava/lang/String; = "RpkUsageStats"

.field private static sInstance:Lcom/meizu/statsrpk/RpkUsageStats;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRpkInfo:Lcom/meizu/statsrpk/RpkInfo;

.field private mRpkInstance:Lcom/meizu/statsrpk/RpkInstanceImpl;

.field private mSP:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/statsrpk/RpkUsageStats;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3d

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/statsrpk/RpkUsageStats;->mContext:Landroid/content/Context;

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 47
    new-instance p1, Lcom/meizu/statsrpk/RpkInfo;

    invoke-direct {p1}, Lcom/meizu/statsrpk/RpkInfo;-><init>()V

    iput-object p1, p0, Lcom/meizu/statsrpk/RpkUsageStats;->mRpkInfo:Lcom/meizu/statsrpk/RpkInfo;

    .line 48
    iget-object p1, p0, Lcom/meizu/statsrpk/RpkUsageStats;->mRpkInfo:Lcom/meizu/statsrpk/RpkInfo;

    iput-object p2, p1, Lcom/meizu/statsrpk/RpkInfo;->rpkPkgName:Ljava/lang/String;

    .line 49
    iput-object p3, p1, Lcom/meizu/statsrpk/RpkInfo;->rpkVer:Ljava/lang/String;

    .line 50
    iput p4, p1, Lcom/meizu/statsrpk/RpkInfo;->rpkVerCode:I

    .line 51
    invoke-direct {p0, p2}, Lcom/meizu/statsrpk/RpkUsageStats;->findRelativeApp(Ljava/lang/String;)V

    .line 52
    sget-object p0, Lcom/meizu/statsrpk/RpkUsageStats;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "##### RpkUsageStats init complete, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 43
    :cond_3d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The context is null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$000(Lcom/meizu/statsrpk/RpkUsageStats;)Lcom/meizu/statsrpk/RpkInstanceImpl;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/meizu/statsrpk/RpkUsageStats;->mRpkInstance:Lcom/meizu/statsrpk/RpkInstanceImpl;

    return-object p0
.end method

.method static synthetic access$002(Lcom/meizu/statsrpk/RpkUsageStats;Lcom/meizu/statsrpk/RpkInstanceImpl;)Lcom/meizu/statsrpk/RpkInstanceImpl;
    .registers 2

    .line 22
    iput-object p1, p0, Lcom/meizu/statsrpk/RpkUsageStats;->mRpkInstance:Lcom/meizu/statsrpk/RpkInstanceImpl;

    return-object p1
.end method

.method static synthetic access$100(Lcom/meizu/statsrpk/RpkUsageStats;)Landroid/content/SharedPreferences;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/meizu/statsrpk/RpkUsageStats;->mSP:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$102(Lcom/meizu/statsrpk/RpkUsageStats;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .registers 2

    .line 22
    iput-object p1, p0, Lcom/meizu/statsrpk/RpkUsageStats;->mSP:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic access$200(Lcom/meizu/statsrpk/RpkUsageStats;)Landroid/content/Context;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/meizu/statsrpk/RpkUsageStats;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/meizu/statsrpk/RpkUsageStats;)Lcom/meizu/statsrpk/RpkInfo;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/meizu/statsrpk/RpkUsageStats;->mRpkInfo:Lcom/meizu/statsrpk/RpkInfo;

    return-object p0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .registers 1

    .line 22
    sget-object v0, Lcom/meizu/statsrpk/RpkUsageStats;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private findRelativeApp(Ljava/lang/String;)V
    .registers 5

    .line 100
    sget-object v0, Lcom/meizu/statsrpk/RpkUsageStats;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##### RpkUsageStats findRelativeApp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    new-instance v0, Lcom/meizu/statsrpk/RpkUsageStats$4;

    invoke-direct {v0, p0, p1}, Lcom/meizu/statsrpk/RpkUsageStats$4;-><init>(Lcom/meizu/statsrpk/RpkUsageStats;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/meizu/statsrpk/RpkExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getInstance()Lcom/meizu/statsrpk/RpkUsageStats;
    .registers 1

    .line 56
    sget-object v0, Lcom/meizu/statsrpk/RpkUsageStats;->sInstance:Lcom/meizu/statsrpk/RpkUsageStats;

    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 32
    sget-object v0, Lcom/meizu/statsrpk/RpkUsageStats;->sInstance:Lcom/meizu/statsrpk/RpkUsageStats;

    if-nez v0, :cond_17

    .line 33
    sget-object v0, Lcom/meizu/statsrpk/RpkUsageStats;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 34
    :try_start_7
    sget-object v1, Lcom/meizu/statsrpk/RpkUsageStats;->sInstance:Lcom/meizu/statsrpk/RpkUsageStats;

    if-nez v1, :cond_12

    .line 35
    new-instance v1, Lcom/meizu/statsrpk/RpkUsageStats;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/meizu/statsrpk/RpkUsageStats;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v1, Lcom/meizu/statsrpk/RpkUsageStats;->sInstance:Lcom/meizu/statsrpk/RpkUsageStats;

    .line 37
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    return-void
.end method


# virtual methods
.method public onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 7
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

    .line 60
    sget-object v0, Lcom/meizu/statsrpk/RpkUsageStats;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##### RpkUsageStats onEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance v0, Lcom/meizu/statsrpk/RpkUsageStats$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/meizu/statsrpk/RpkUsageStats$1;-><init>(Lcom/meizu/statsrpk/RpkUsageStats;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/meizu/statsrpk/RpkExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPageHide(Ljava/lang/String;)V
    .registers 5

    .line 84
    sget-object v0, Lcom/meizu/statsrpk/RpkUsageStats;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##### RpkUsageStats onPageHide: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance v0, Lcom/meizu/statsrpk/RpkUsageStats$3;

    invoke-direct {v0, p0, p1}, Lcom/meizu/statsrpk/RpkUsageStats$3;-><init>(Lcom/meizu/statsrpk/RpkUsageStats;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/meizu/statsrpk/RpkExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPageShow(Ljava/lang/String;)V
    .registers 5

    .line 72
    sget-object v0, Lcom/meizu/statsrpk/RpkUsageStats;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##### RpkUsageStats onPageShow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance v0, Lcom/meizu/statsrpk/RpkUsageStats$2;

    invoke-direct {v0, p0, p1}, Lcom/meizu/statsrpk/RpkUsageStats$2;-><init>(Lcom/meizu/statsrpk/RpkUsageStats;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/meizu/statsrpk/RpkExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
