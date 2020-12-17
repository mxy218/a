.class public Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;
.super Ljava/lang/Object;
.source "Tracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker$TrackerBuilder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Tracker"


# instance fields
.field private context:Landroid/content/Context;

.field private debug:Z

.field private emitter:Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;

.field private eventFilterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/meizu/statsapp/v3/lib/plugin/tracker/EventFilter;",
            ">;"
        }
    .end annotation
.end field

.field private sdkInstance:Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;

.field private sp:Landroid/content/SharedPreferences;

.field private subject:Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;


# direct methods
.method public constructor <init>(Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker$TrackerBuilder;)V
    .registers 5

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker$TrackerBuilder;->access$000(Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker$TrackerBuilder;)Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;->emitter:Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;

    .line 105
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker$TrackerBuilder;->access$100(Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker$TrackerBuilder;)Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;->subject:Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;

    .line 106
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker$TrackerBuilder;->access$200(Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker$TrackerBuilder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;->context:Landroid/content/Context;

    .line 107
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker$TrackerBuilder;->access$300(Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker$TrackerBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;->debug:Z

    .line 108
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;->subject:Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;

    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker$TrackerBuilder;->access$300(Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker$TrackerBuilder;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;->setDebug(Z)V

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;->eventFilterMap:Ljava/util/Map;

    .line 110
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker$TrackerBuilder;->access$200(Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker$TrackerBuilder;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "com.meizu.statsapp.v3.event_filter"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;->sp:Landroid/content/SharedPreferences;

    .line 111
    iget-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p1

    .line 112
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_46
    :goto_46
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 113
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/EventFilter;->fromString(Ljava/lang/String;)Lcom/meizu/statsapp/v3/lib/plugin/tracker/EventFilter;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 115
    iget-object v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;->eventFilterMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/EventFilter;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_46

    .line 118
    :cond_6a
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;->TAG:Ljava/lang/String;

    const-string p1, "Tracker created successfully."

    invoke-static {p0, p1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addCommon(Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)V
    .registers 7

    .line 133
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;->sdkInstance:Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;

    invoke-virtual {v0}, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->getSessionController()Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 135
    invoke-virtual {v0}, Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;->getOrGenerateSessionId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sid"

    invoke-virtual {p1, v2, v1}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    invoke-virtual {v0}, Lcom/meizu/statsapp/v3/lib/plugin/session/SessionController;->getSource()Ljava/lang/String;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {p1, v1, v0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 140
    :cond_1a
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;->subject:Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;

    if-eqz v0, :cond_4d

    .line 141
    invoke-virtual {v0}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;->getDeviceInfo()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->addMap(Ljava/util/Map;)V

    .line 142
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;->subject:Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;

    invoke-virtual {v0}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;->getAppInfo()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->addMap(Ljava/util/Map;)V

    .line 143
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;->subject:Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;

    invoke-virtual {v0}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;->getSettingProperty()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->addMap(Ljava/util/Map;)V

    .line 144
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;->subject:Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;

    iget-object v1, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;->getVolatileProperty(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->addMap(Ljava/util/Map;)V

    .line 145
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;->subject:Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;

    invoke-virtual {v0}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;->getEventAttributePairs()Ljava/util/Map;

    move-result-object v0

    const-string v1, "event_attrib"

    invoke-virtual {p1, v1, v0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    :cond_4d
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;->sdkInstance:Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;

    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;->getLocationFetcher()Lcom/meizu/statsapp/v3/lib/plugin/tracker/LocationFetcher;

    move-result-object p0

    if-eqz p0, :cond_99

    .line 151
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/LocationFetcher;->getLocation()Landroid/location/Location;

    move-result-object p0

    const-string v0, "loc_time"

    const-string v1, "latitude"

    const-string v2, "longitude"

    if-eqz p0, :cond_83

    .line 153
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_99

    :cond_83
    const/4 p0, 0x0

    .line 157
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_99
    :goto_99
    return-void
.end method

.method private filterEvent(Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)I
    .registers 3

    .line 231
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;->eventFilterMap:Ljava/util/Map;

    if-eqz p0, :cond_35

    .line 232
    invoke-virtual {p1}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->getMap()Ljava/util/Map;

    move-result-object p1

    const-string v0, "name"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/EventFilter;

    if-eqz p0, :cond_35

    .line 234
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/EventFilter;->isActive()Z

    move-result p1

    if-nez p1, :cond_25

    .line 235
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;->TAG:Ljava/lang/String;

    const-string p1, "eventFilterMap, Not Tracking for false active"

    invoke-static {p0, p1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 238
    :cond_25
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/EventFilter;->isRealtime()Z

    move-result p1

    if-eqz p1, :cond_2d

    const/4 p0, 0x2

    return p0

    .line 240
    :cond_2d
    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/EventFilter;->isNeartime()Z

    move-result p0

    if-eqz p0, :cond_35

    const/4 p0, 0x3

    return p0

    :cond_35
    const/4 p0, 0x1

    return p0
.end method

.method private send(Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;I)V
    .registers 5

    .line 213
    invoke-direct {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;->filterEvent(Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    return-void

    :cond_8
    if-le p2, v0, :cond_b

    goto :goto_c

    :cond_b
    move p2, v0

    .line 218
    :goto_c
    iget-boolean v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;->debug:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_12

    move p2, v1

    :cond_12
    if-ne p2, v1, :cond_1a

    .line 222
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;->emitter:Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;

    invoke-virtual {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->addRealtime(Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)V

    goto :goto_28

    :cond_1a
    const/4 v0, 0x3

    if-ne p2, v0, :cond_23

    .line 224
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;->emitter:Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;

    invoke-virtual {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->addNeartime(Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)V

    goto :goto_28

    .line 226
    :cond_23
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;->emitter:Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;

    invoke-virtual {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;->add(Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)V

    :goto_28
    return-void
.end method


# virtual methods
.method public getEmitter()Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;
    .registers 1

    .line 187
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;->emitter:Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;

    return-object p0
.end method

.method public init(Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;->sdkInstance:Lcom/meizu/statsapp/v3/lib/plugin/sdk/SDKInstanceImpl;

    return-void
.end method

.method public setEventFilterMap(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/meizu/statsapp/v3/lib/plugin/tracker/EventFilter;",
            ">;)V"
        }
    .end annotation

    .line 165
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;->eventFilterMap:Ljava/util/Map;

    .line 166
    iget-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 167
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 168
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;->eventFilterMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 169
    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 170
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 171
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/EventFilter;

    invoke-virtual {v0}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/EventFilter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_15

    .line 173
    :cond_35
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public track(Lcom/meizu/statsapp/v3/lib/plugin/events/Event;)V
    .registers 3

    const/4 v0, 0x1

    .line 191
    invoke-virtual {p0, p1, v0}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;->track(Lcom/meizu/statsapp/v3/lib/plugin/events/Event;I)V

    return-void
.end method

.method public track(Lcom/meizu/statsapp/v3/lib/plugin/events/Event;I)V
    .registers 3

    .line 196
    invoke-virtual {p1}, Lcom/meizu/statsapp/v3/lib/plugin/events/Event;->generatePayload()Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;

    move-result-object p1

    .line 197
    invoke-direct {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;->addCommon(Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)V

    .line 198
    invoke-direct {p0, p1, p2}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;->send(Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;I)V

    return-void
.end method

.method public trackX(Lcom/meizu/statsapp/v3/lib/plugin/events/Event;ILjava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/statsapp/v3/lib/plugin/events/Event;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 202
    invoke-virtual {p1}, Lcom/meizu/statsapp/v3/lib/plugin/events/Event;->generatePayload()Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;

    move-result-object p1

    .line 203
    invoke-direct {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;->addCommon(Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)V

    if-eqz p3, :cond_2b

    .line 205
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_11
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 206
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_11

    .line 209
    :cond_2b
    invoke-direct {p0, p1, p2}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;->send(Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;I)V

    return-void
.end method
