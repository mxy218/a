.class Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;
.super Lcom/meizu/statsrpk/IRpkStatsInterface$Stub;
.source "RpkUsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/statsrpk/service/RpkUsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RpkStatsInterface"
.end annotation


# instance fields
.field private executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final mContext:Landroid/content/Context;

.field private rpkEmitterWorker:Lcom/meizu/statsrpk/service/RpkEmitterWorker;

.field private subject:Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;

.field final synthetic this$0:Lcom/meizu/statsrpk/service/RpkUsageStatsService;


# direct methods
.method constructor <init>(Lcom/meizu/statsrpk/service/RpkUsageStatsService;Landroid/content/Context;)V
    .registers 5

    .line 71
    iput-object p1, p0, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;->this$0:Lcom/meizu/statsrpk/service/RpkUsageStatsService;

    invoke-direct {p0}, Lcom/meizu/statsrpk/IRpkStatsInterface$Stub;-><init>()V

    .line 72
    iput-object p2, p0, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    .line 74
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 75
    iget-object v0, p0, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface$1;-><init>(Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;Lcom/meizu/statsrpk/service/RpkUsageStatsService;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;)Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;->subject:Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;

    return-object p0
.end method

.method static synthetic access$002(Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;)Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;->subject:Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;

    return-object p1
.end method

.method static synthetic access$100(Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;)Lcom/meizu/statsrpk/service/RpkEmitterWorker;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;->rpkEmitterWorker:Lcom/meizu/statsrpk/service/RpkEmitterWorker;

    return-object p0
.end method

.method static synthetic access$102(Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;Lcom/meizu/statsrpk/service/RpkEmitterWorker;)Lcom/meizu/statsrpk/service/RpkEmitterWorker;
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;->rpkEmitterWorker:Lcom/meizu/statsrpk/service/RpkEmitterWorker;

    return-object p1
.end method

.method static synthetic access$200(Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;)Landroid/content/Context;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;Lcom/meizu/statsrpk/RpkInfo;)V
    .registers 3

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;->appendRpkInfo(Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;Lcom/meizu/statsrpk/RpkInfo;)V

    return-void
.end method

.method private appendRpkInfo(Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;Lcom/meizu/statsrpk/RpkInfo;)V
    .registers 4

    .line 139
    iget-object p0, p2, Lcom/meizu/statsrpk/RpkInfo;->apkPkgName:Ljava/lang/String;

    const-string v0, "pkg_name"

    invoke-virtual {p1, v0, p0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 140
    iget-object p0, p2, Lcom/meizu/statsrpk/RpkInfo;->rpkVer:Ljava/lang/String;

    const-string v0, "pkg_ver"

    invoke-virtual {p1, v0, p0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    iget p0, p2, Lcom/meizu/statsrpk/RpkInfo;->rpkVerCode:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "pkg_ver_code"

    invoke-virtual {p1, v0, p0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "channel_id"

    const-string v0, "102027"

    .line 142
    invoke-virtual {p1, p0, v0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 144
    iget-object p2, p2, Lcom/meizu/statsrpk/RpkInfo;->rpkPkgName:Ljava/lang/String;

    const-string v0, "rpkPkgName"

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "event_attrib"

    .line 145
    invoke-virtual {p1, p2, p0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public track(Lcom/meizu/statsrpk/RpkEvent;Lcom/meizu/statsrpk/RpkInfo;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface$2;-><init>(Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;Lcom/meizu/statsrpk/RpkEvent;Lcom/meizu/statsrpk/RpkInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
