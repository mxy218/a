.class Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$6;
.super Ljava/lang/Object;
.source "V3OfflineEmitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->sendCachedEventsIfNecessary()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;


# direct methods
.method constructor <init>(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;)V
    .registers 2

    .line 239
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$6;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 244
    iget-object v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$6;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;

    invoke-static {v1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->access$1300(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 245
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    .line 246
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->fromString(Ljava/lang/String;)Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;

    move-result-object v3

    if-eqz v3, :cond_46

    .line 248
    new-instance v6, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmittableEvent;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v4, v5, v3}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmittableEvent;-><init>(Ljava/lang/String;JLcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    :cond_46
    const/16 v3, 0xc8

    if-lt v2, v3, :cond_18

    .line 255
    :cond_4a
    invoke-static {}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->access$1100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "number of cached events > 50, send "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " by myself"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$6;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;

    const-string v2, "/batch"

    invoke-static {v1, v0, v2}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->access$1500(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 258
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_79
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmittableEvent;

    .line 259
    iget-object v2, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$6;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;

    invoke-static {v2}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->access$1300(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-virtual {v1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmittableEvent;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_79

    .line 261
    :cond_9f
    invoke-static {}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->access$1100()Ljava/lang/String;

    move-result-object p0

    const-string v0, "number of cached events > 50, sent successfully"

    invoke-static {p0, v0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a8
    return-void
.end method
