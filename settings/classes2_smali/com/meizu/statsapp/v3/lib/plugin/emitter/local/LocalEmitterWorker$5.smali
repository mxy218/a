.class Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$5;
.super Ljava/lang/Object;
.source "LocalEmitterWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->add(Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)V
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

    .line 174
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$5;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;

    iput-object p2, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$5;->val$payload:Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 177
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$5;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;

    invoke-static {v0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->access$000(Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;)Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$5;->val$payload:Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;

    invoke-virtual {v0, v1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->insertEvent(Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)J

    .line 178
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$5;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;

    invoke-static {p0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->access$400(Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
