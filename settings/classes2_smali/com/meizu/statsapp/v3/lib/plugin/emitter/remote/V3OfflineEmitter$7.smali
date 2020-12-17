.class Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$7;
.super Ljava/lang/Object;
.source "V3OfflineEmitter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->addCachedEventsToRemote()V
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

    .line 269
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$7;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 272
    invoke-static {}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->access$1100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "addCachedEventsToRemote begin"

    invoke-static {v0, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$7;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;

    invoke-static {v0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->access$1300(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 274
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 275
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 276
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_25
    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 277
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    .line 278
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->fromString(Ljava/lang/String;)Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;

    move-result-object v3

    if-eqz v3, :cond_25

    .line 280
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 284
    :cond_53
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$7;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;

    invoke-static {p0, v1, v2}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->access$1900(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;Ljava/util/List;Ljava/util/List;)V

    .line 285
    invoke-static {}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->access$1100()Ljava/lang/String;

    move-result-object p0

    const-string v0, "addCachedEventsToRemote end"

    invoke-static {p0, v0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
