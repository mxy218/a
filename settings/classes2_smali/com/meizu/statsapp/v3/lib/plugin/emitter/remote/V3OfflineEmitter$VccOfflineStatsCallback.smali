.class Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$VccOfflineStatsCallback;
.super Lcom/meizu/statsapp/v3/lib/plugin/IVccOfflineStatsCallback$Stub;
.source "V3OfflineEmitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VccOfflineStatsCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;


# direct methods
.method private constructor <init>(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;)V
    .registers 2

    .line 214
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$VccOfflineStatsCallback;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;

    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/IVccOfflineStatsCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$1;)V
    .registers 3

    .line 214
    invoke-direct {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$VccOfflineStatsCallback;-><init>(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;)V

    return-void
.end method


# virtual methods
.method public onRealBulkInsertEvents(Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 226
    invoke-static {}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->access$1100()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRealBulkInsertEvents, eventIds:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_24
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_46

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    .line 228
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$VccOfflineStatsCallback;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;

    invoke-static {v0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->access$1300(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_24

    :cond_46
    return-void
.end method

.method public onRealInsertEvent(Ljava/lang/String;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 217
    invoke-static {}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->access$1100()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRealInsertEvent2Remote, eventId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$VccOfflineStatsCallback;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;

    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->access$1300(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 219
    iget-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$VccOfflineStatsCallback;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;

    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->access$1300(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_42

    .line 220
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter$VccOfflineStatsCallback;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;

    invoke-static {p0}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;->access$1800(Lcom/meizu/statsapp/v3/lib/plugin/emitter/remote/V3OfflineEmitter;)V

    :cond_42
    return-void
.end method

.method public onRealInsertH5Event(Ljava/lang/String;J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
