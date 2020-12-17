.class public Lcom/meizu/statsapp/v3/lib/plugin/events/ActionXEvent;
.super Lcom/meizu/statsapp/v3/lib/plugin/events/Event;
.source "ActionXEvent.java"


# instance fields
.field private event_attrib:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private page:Ljava/lang/String;

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

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/meizu/statsapp/v3/lib/plugin/events/Event;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public generatePayload()Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;
    .registers 4

    .line 51
    new-instance v0, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;

    invoke-direct {v0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;-><init>()V

    .line 52
    iget-object v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/events/Event;->eventName:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    iget-object v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/events/Event;->network:Ljava/lang/String;

    const-string v2, "network"

    invoke-virtual {v0, v2, v1}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "type"

    const-string v2, "action_x"

    .line 54
    invoke-virtual {v0, v1, v2}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    iget-wide v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/events/ActionXEvent;->time:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "time"

    invoke-virtual {v0, v2, v1}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    iget-object v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/events/ActionXEvent;->page:Ljava/lang/String;

    const-string v2, "page"

    invoke-virtual {v0, v2, v1}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    iget-object v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/events/ActionXEvent;->properties:Ljava/util/Map;

    const-string v2, "value"

    invoke-virtual {v0, v2, v1}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/events/ActionXEvent;->event_attrib:Ljava/util/Map;

    const-string v1, "event_attrib"

    invoke-virtual {v0, v1, p0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public setEvent_attrib(Ljava/util/Map;)V
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

    .line 47
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/events/ActionXEvent;->event_attrib:Ljava/util/Map;

    return-void
.end method

.method public setPage(Ljava/lang/String;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/events/ActionXEvent;->page:Ljava/lang/String;

    return-void
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

    .line 43
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/events/ActionXEvent;->properties:Ljava/util/Map;

    return-void
.end method

.method public setTime(J)V
    .registers 3

    .line 35
    iput-wide p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/events/ActionXEvent;->time:J

    return-void
.end method
