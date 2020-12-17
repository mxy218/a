.class Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$7;
.super Ljava/lang/Object;
.source "LocalEmitterWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->addNeartime(Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;

.field final synthetic val$payload:Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;


# direct methods
.method constructor <init>(Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)V
    .registers 3

    .line 212
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$7;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;

    iput-object p2, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$7;->val$payload:Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 215
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$7;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;

    invoke-static {v0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->access$000(Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;)Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$7;->val$payload:Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;

    invoke-virtual {v0, v1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->insertEvent(Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)J

    move-result-wide v0

    .line 216
    iget-object v2, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$7;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;

    invoke-static {v2}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->access$600(Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$7;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;

    invoke-static {v0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->access$1100(Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 218
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$7;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;

    invoke-static {v0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->access$1100(Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$7;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;

    invoke-static {p0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->access$500(Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;)Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterConfig;->getNeartimeInterval()I

    move-result p0

    mul-int/lit16 p0, p0, 0x3e8

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3c
    return-void
.end method
