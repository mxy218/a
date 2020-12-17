.class Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface$1;
.super Ljava/lang/Object;
.source "RpkUsageStatsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;-><init>(Lcom/meizu/statsrpk/service/RpkUsageStatsService;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$this$0:Lcom/meizu/statsrpk/service/RpkUsageStatsService;


# direct methods
.method constructor <init>(Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;Lcom/meizu/statsrpk/service/RpkUsageStatsService;Landroid/content/Context;)V
    .registers 4

    .line 75
    iput-object p1, p0, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface$1;->this$1:Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;

    iput-object p2, p0, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface$1;->val$this$0:Lcom/meizu/statsrpk/service/RpkUsageStatsService;

    iput-object p3, p0, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 78
    new-instance v0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;

    invoke-direct {v0}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;-><init>()V

    .line 79
    iget-object v1, p0, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;->context(Landroid/content/Context;)Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;

    .line 81
    iget-object v1, p0, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface$1;->this$1:Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;

    invoke-virtual {v0}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;->build()Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;->access$002(Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;)Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;

    .line 82
    iget-object p0, p0, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface$1;->this$1:Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;

    new-instance v0, Lcom/meizu/statsrpk/service/RpkEmitterWorker;

    invoke-static {p0}, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;->access$200(Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/meizu/statsrpk/service/RpkEmitterWorker;-><init>(Landroid/content/Context;I)V

    invoke-static {p0, v0}, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;->access$102(Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;Lcom/meizu/statsrpk/service/RpkEmitterWorker;)Lcom/meizu/statsrpk/service/RpkEmitterWorker;

    return-void
.end method
