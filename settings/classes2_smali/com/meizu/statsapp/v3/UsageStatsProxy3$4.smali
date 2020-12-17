.class Lcom/meizu/statsapp/v3/UsageStatsProxy3$4;
.super Ljava/lang/Object;
.source "UsageStatsProxy3.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/statsapp/v3/UsageStatsProxy3;->onLog(Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/statsapp/v3/UsageStatsProxy3;

.field final synthetic val$logName:Ljava/lang/String;

.field final synthetic val$properties:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/meizu/statsapp/v3/UsageStatsProxy3;Ljava/lang/String;Ljava/util/Map;)V
    .registers 4

    .line 261
    iput-object p1, p0, Lcom/meizu/statsapp/v3/UsageStatsProxy3$4;->this$0:Lcom/meizu/statsapp/v3/UsageStatsProxy3;

    iput-object p2, p0, Lcom/meizu/statsapp/v3/UsageStatsProxy3$4;->val$logName:Ljava/lang/String;

    iput-object p3, p0, Lcom/meizu/statsapp/v3/UsageStatsProxy3$4;->val$properties:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 264
    iget-object v0, p0, Lcom/meizu/statsapp/v3/UsageStatsProxy3$4;->this$0:Lcom/meizu/statsapp/v3/UsageStatsProxy3;

    invoke-static {v0}, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->access$000(Lcom/meizu/statsapp/v3/UsageStatsProxy3;)Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;

    move-result-object v0

    if-nez v0, :cond_16

    .line 265
    invoke-static {}, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onLog, sdkInstanceImpl is NULL!"

    invoke-static {v0, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/meizu/statsapp/v3/UsageStatsProxy3$4;->this$0:Lcom/meizu/statsapp/v3/UsageStatsProxy3;

    invoke-static {v0}, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->access$200(Lcom/meizu/statsapp/v3/UsageStatsProxy3;)V

    .line 268
    :cond_16
    iget-object v0, p0, Lcom/meizu/statsapp/v3/UsageStatsProxy3$4;->this$0:Lcom/meizu/statsapp/v3/UsageStatsProxy3;

    invoke-static {v0}, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->access$000(Lcom/meizu/statsapp/v3/UsageStatsProxy3;)Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/statsapp/v3/UsageStatsProxy3$4;->val$logName:Ljava/lang/String;

    iget-object p0, p0, Lcom/meizu/statsapp/v3/UsageStatsProxy3$4;->val$properties:Ljava/util/Map;

    invoke-virtual {v0, v1, p0}, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->onLog(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
