.class Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$4;
.super Ljava/lang/Object;
.source "LocalEmitterWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->updateConfig(Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;

.field final synthetic val$config:Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;


# direct methods
.method constructor <init>(Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;)V
    .registers 3

    .line 161
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$4;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;

    iput-object p2, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$4;->val$config:Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 164
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$4;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;

    iget-object v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$4;->val$config:Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;

    invoke-static {v0, v1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->access$502(Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;)Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;

    .line 165
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$4;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;

    invoke-static {v0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->access$400(Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 166
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$4;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;

    invoke-static {v0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->access$500(Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;)Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->getFlushDelayInterval()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_34

    .line 167
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$4;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;

    invoke-static {v0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->access$400(Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$4;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;

    invoke-static {p0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->access$500(Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;)Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->getFlushDelayInterval()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_34
    return-void
.end method
