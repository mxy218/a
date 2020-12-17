.class Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$6$1;
.super Ljava/lang/Object;
.source "LocalEmitterWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$6;


# direct methods
.method constructor <init>(Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$6;)V
    .registers 2

    .line 189
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$6$1;->this$1:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 192
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$6$1;->this$1:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$6;

    iget-object v0, v0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$6;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;

    invoke-static {v0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->access$900(Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 193
    iget-object v3, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$6$1;->this$1:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$6;

    iget-object v3, v3, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$6;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;

    invoke-static {v3}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->access$000(Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;)Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/storage/LocalEventStore;->getEventByRowId(J)Lcom/meizu/statsapp/v3/lib/plugin/emitter/EventBean;

    move-result-object v1

    if-nez v1, :cond_2b

    goto :goto_c

    .line 195
    :cond_2b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 196
    new-instance v3, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmittableEvent;

    invoke-virtual {v1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EventBean;->getId()J

    move-result-wide v4

    iget-object v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$6$1;->this$1:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$6;

    iget-object v1, v1, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$6;->val$payload:Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;

    const-string v6, ""

    invoke-direct {v3, v6, v4, v5, v1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmittableEvent;-><init>(Ljava/lang/String;JLcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-static {}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v3, "realtime send"

    invoke-static {v1, v3}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    sget-boolean v1, Lcom/meizu/statsapp/v3/InitConfig;->sendEventSync:Z

    const-string v3, "/realtime"

    const/4 v4, 0x0

    if-eqz v1, :cond_5a

    .line 199
    iget-object v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$6$1;->this$1:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$6;

    iget-object v1, v1, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$6;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;

    invoke-static {v1, v2, v4, v3}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->access$700(Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;Ljava/util/ArrayList;ZLjava/lang/String;)V

    goto :goto_c

    .line 201
    :cond_5a
    iget-object v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$6$1;->this$1:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$6;

    iget-object v1, v1, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$6;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;

    invoke-static {v1, v2, v4, v3}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->access$800(Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;Ljava/util/ArrayList;ZLjava/lang/String;)V

    goto :goto_c

    .line 204
    :cond_62
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$6$1;->this$1:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$6;

    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker$6;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;

    invoke-static {p0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;->access$900(Lcom/meizu/statsapp/v3/lib/plugin/emitter/local/LocalEmitterWorker;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method
