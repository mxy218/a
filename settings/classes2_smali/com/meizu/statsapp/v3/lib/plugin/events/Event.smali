.class public abstract Lcom/meizu/statsapp/v3/lib/plugin/events/Event;
.super Ljava/lang/Object;
.source "Event.java"


# instance fields
.field protected final eventName:Ljava/lang/String;

.field protected final network:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-static {p2}, Lcom/meizu/statsapp/v3/lib/plugin/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/events/Event;->eventName:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/meizu/statsapp/v3/lib/plugin/events/Event;->network:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract generatePayload()Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;
.end method
