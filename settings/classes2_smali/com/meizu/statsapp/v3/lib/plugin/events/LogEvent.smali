.class public Lcom/meizu/statsapp/v3/lib/plugin/events/LogEvent;
.super Lcom/meizu/statsapp/v3/lib/plugin/events/Event;
.source "LogEvent.java"


# instance fields
.field private properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private time:J


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/meizu/statsapp/v3/lib/plugin/events/Event;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public generatePayload()Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;
    .registers 4

    .line 44
    new-instance v0, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;

    invoke-direct {v0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;-><init>()V

    .line 45
    iget-object v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/events/Event;->eventName:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    iget-object v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/events/Event;->network:Ljava/lang/String;

    const-string v2, "network"

    invoke-virtual {v0, v2, v1}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "type"

    const-string v2, "log"

    .line 47
    invoke-virtual {v0, v1, v2}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    iget-wide v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/events/LogEvent;->time:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "time"

    invoke-virtual {v0, v2, v1}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/events/LogEvent;->properties:Ljava/util/Map;

    const-string v1, "value"

    invoke-virtual {v0, v1, p0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public setProperties(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/events/LogEvent;->properties:Ljava/util/Map;

    return-void
.end method

.method public setTime(J)V
    .registers 3

    .line 36
    iput-wide p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/events/LogEvent;->time:J

    return-void
.end method
