.class Lcom/meizu/statsapp/v3/UsageStatsProxy3$10;
.super Ljava/lang/Object;
.source "UsageStatsProxy3.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/statsapp/v3/UsageStatsProxy3;->onPageStop(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/statsapp/v3/UsageStatsProxy3;

.field final synthetic val$pageEvent:Lcom/meizu/statsapp/v3/lib/plugin/events/PageEvent;


# direct methods
.method constructor <init>(Lcom/meizu/statsapp/v3/UsageStatsProxy3;Lcom/meizu/statsapp/v3/lib/plugin/events/PageEvent;)V
    .registers 3

    .line 448
    iput-object p1, p0, Lcom/meizu/statsapp/v3/UsageStatsProxy3$10;->this$0:Lcom/meizu/statsapp/v3/UsageStatsProxy3;

    iput-object p2, p0, Lcom/meizu/statsapp/v3/UsageStatsProxy3$10;->val$pageEvent:Lcom/meizu/statsapp/v3/lib/plugin/events/PageEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 451
    iget-object v0, p0, Lcom/meizu/statsapp/v3/UsageStatsProxy3$10;->this$0:Lcom/meizu/statsapp/v3/UsageStatsProxy3;

    invoke-static {v0}, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->access$000(Lcom/meizu/statsapp/v3/UsageStatsProxy3;)Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;

    move-result-object v0

    if-nez v0, :cond_16

    .line 452
    invoke-static {}, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPageStop, sdkInstanceImpl is NULL!"

    invoke-static {v0, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/meizu/statsapp/v3/UsageStatsProxy3$10;->this$0:Lcom/meizu/statsapp/v3/UsageStatsProxy3;

    invoke-static {v0}, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->access$200(Lcom/meizu/statsapp/v3/UsageStatsProxy3;)V

    .line 455
    :cond_16
    iget-object v0, p0, Lcom/meizu/statsapp/v3/UsageStatsProxy3$10;->this$0:Lcom/meizu/statsapp/v3/UsageStatsProxy3;

    invoke-static {v0}, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->access$000(Lcom/meizu/statsapp/v3/UsageStatsProxy3;)Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->getTracker()Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/statsapp/v3/UsageStatsProxy3$10;->val$pageEvent:Lcom/meizu/statsapp/v3/lib/plugin/events/PageEvent;

    invoke-virtual {v0, p0}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;->track(Lcom/meizu/statsapp/v3/lib/plugin/events/Event;)V

    return-void
.end method
