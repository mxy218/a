.class Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver$2;
.super Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;
.source "EnvironmentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;


# direct methods
.method constructor <init>(Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;J)V
    .registers 4

    .line 44
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver$2;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;

    invoke-direct {p0, p2, p3}, Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;-><init>(J)V

    return-void
.end method


# virtual methods
.method public onTrigger()V
    .registers 4

    .line 47
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver$2;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;

    invoke-static {v0}, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;->access$000(Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver$IEnvListener;

    const-string v2, "CHANGE_NAME_POWER"

    .line 48
    invoke-interface {v1, v2}, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver$IEnvListener;->environmentChanged(Ljava/lang/String;)V

    goto :goto_a

    .line 50
    :cond_1c
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver$2;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;

    invoke-static {p0}, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;->access$200(Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;)Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;->cancel()V

    return-void
.end method
