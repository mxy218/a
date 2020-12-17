.class Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$8;
.super Ljava/lang/Object;
.source "LocalEmitterWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->flush()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;


# direct methods
.method constructor <init>(Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;)V
    .registers 2

    .line 225
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$8;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 228
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$8;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;

    invoke-static {p0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->access$400(Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
