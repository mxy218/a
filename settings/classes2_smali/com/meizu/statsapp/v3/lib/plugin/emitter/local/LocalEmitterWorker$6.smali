.class Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$6;
.super Ljava/lang/Object;
.source "LocalEmitterWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->addRealtime(Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)V
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

    .line 184
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$6;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;

    iput-object p2, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$6;->val$payload:Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 187
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$6;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;

    invoke-static {v0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->access$000(Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;)Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$6;->val$payload:Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;

    invoke-virtual {v0, v1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->insertEvent(Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)J

    move-result-wide v0

    .line 188
    iget-object v2, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$6;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;

    invoke-static {v2}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->access$900(Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$6;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;

    invoke-static {v0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->access$1000(Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$6$1;

    invoke-direct {v1, p0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$6$1;-><init>(Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$6;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
