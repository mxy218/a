.class Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface$2;
.super Ljava/lang/Object;
.source "RpkUsageStatsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;->track(Lcom/meizu/statsrpk/RpkEvent;Lcom/meizu/statsrpk/RpkInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;

.field final synthetic val$rpkEvent:Lcom/meizu/statsrpk/RpkEvent;

.field final synthetic val$rpkInfo:Lcom/meizu/statsrpk/RpkInfo;


# direct methods
.method constructor <init>(Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;Lcom/meizu/statsrpk/RpkEvent;Lcom/meizu/statsrpk/RpkInfo;)V
    .registers 4

    .line 89
    iput-object p1, p0, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface$2;->this$1:Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;

    iput-object p2, p0, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface$2;->val$rpkEvent:Lcom/meizu/statsrpk/RpkEvent;

    iput-object p3, p0, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface$2;->val$rpkInfo:Lcom/meizu/statsrpk/RpkInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 92
    iget-object v0, p0, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface$2;->this$1:Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;

    invoke-static {v0}, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;->access$100(Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;)Lcom/meizu/statsrpk/service/RpkEmitterWorker;

    move-result-object v0

    if-eqz v0, :cond_145

    const/4 v0, 0x0

    .line 94
    iget-object v1, p0, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface$2;->val$rpkEvent:Lcom/meizu/statsrpk/RpkEvent;

    iget-object v1, v1, Lcom/meizu/statsrpk/RpkEvent;->type:Ljava/lang/String;

    const-string v2, "action_x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "sid"

    if-eqz v1, :cond_36

    .line 95
    iget-object v0, p0, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface$2;->this$1:Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;

    invoke-static {v0}, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;->access$200(Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface$2;->val$rpkEvent:Lcom/meizu/statsrpk/RpkEvent;

    iget-object v3, v1, Lcom/meizu/statsrpk/RpkEvent;->eventName:Ljava/lang/String;

    iget-object v4, v1, Lcom/meizu/statsrpk/RpkEvent;->pageName:Ljava/lang/String;

    iget-object v1, v1, Lcom/meizu/statsrpk/RpkEvent;->properties:Ljava/util/Map;

    invoke-static {v0, v3, v4, v1}, Lcom/meizu/statsapp/v3/lib/plugin/events/EventUtil;->buildActionXEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/meizu/statsapp/v3/lib/plugin/events/ActionXEvent;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lcom/meizu/statsapp/v3/lib/plugin/events/ActionXEvent;->generatePayload()Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface$2;->val$rpkEvent:Lcom/meizu/statsrpk/RpkEvent;

    iget-object v1, v1, Lcom/meizu/statsrpk/RpkEvent;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_8d

    .line 98
    :cond_36
    iget-object v1, p0, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface$2;->val$rpkEvent:Lcom/meizu/statsrpk/RpkEvent;

    iget-object v1, v1, Lcom/meizu/statsrpk/RpkEvent;->type:Ljava/lang/String;

    const-string v3, "page"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 99
    iget-object v0, p0, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface$2;->this$1:Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;

    invoke-static {v0}, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;->access$200(Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface$2;->val$rpkEvent:Lcom/meizu/statsrpk/RpkEvent;

    iget-object v3, v1, Lcom/meizu/statsrpk/RpkEvent;->eventName:Ljava/lang/String;

    iget-object v1, v1, Lcom/meizu/statsrpk/RpkEvent;->properties:Ljava/util/Map;

    const-string/jumbo v4, "start"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface$2;->val$rpkEvent:Lcom/meizu/statsrpk/RpkEvent;

    iget-object v4, v4, Lcom/meizu/statsrpk/RpkEvent;->properties:Ljava/util/Map;

    const-string v5, "end"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v0, v3, v1, v4}, Lcom/meizu/statsapp/v3/lib/plugin/events/EventUtil;->buildPageEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/statsapp/v3/lib/plugin/events/PageEvent;

    move-result-object v0

    .line 100
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 101
    iget-object v3, p0, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface$2;->val$rpkEvent:Lcom/meizu/statsrpk/RpkEvent;

    iget-object v3, v3, Lcom/meizu/statsrpk/RpkEvent;->properties:Ljava/util/Map;

    const-string v4, "duration2"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-virtual {v0, v1}, Lcom/meizu/statsapp/v3/lib/plugin/events/PageEvent;->setProperties(Ljava/util/Map;)V

    .line 103
    invoke-virtual {v0}, Lcom/meizu/statsapp/v3/lib/plugin/events/PageEvent;->generatePayload()Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface$2;->val$rpkEvent:Lcom/meizu/statsrpk/RpkEvent;

    iget-object v1, v1, Lcom/meizu/statsrpk/RpkEvent;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8d
    :goto_8d
    if-eqz v0, :cond_145

    .line 108
    iget-object v1, p0, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface$2;->this$1:Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;

    invoke-static {v1}, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;->access$000(Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;)Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;

    move-result-object v1

    if-eqz v1, :cond_d1

    .line 109
    iget-object v1, p0, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface$2;->this$1:Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;

    invoke-static {v1}, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;->access$000(Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;)Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;->getDeviceInfo()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->addMap(Ljava/util/Map;)V

    .line 110
    iget-object v1, p0, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface$2;->this$1:Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;

    invoke-static {v1}, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;->access$000(Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;)Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;->getAppInfo()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->addMap(Ljava/util/Map;)V

    .line 111
    iget-object v1, p0, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface$2;->this$1:Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;

    invoke-static {v1}, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;->access$000(Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;)Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;->getSettingProperty()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->addMap(Ljava/util/Map;)V

    .line 112
    iget-object v1, p0, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface$2;->this$1:Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;

    invoke-static {v1}, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;->access$000(Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;)Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface$2;->this$1:Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;

    invoke-static {v2}, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;->access$200(Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;->getVolatileProperty(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->addMap(Ljava/util/Map;)V

    .line 115
    :cond_d1
    invoke-static {}, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->getInstance()Lcom/meizu/statsapp/v3/UsageStatsProxy3;

    move-result-object v1

    if-eqz v1, :cond_12f

    invoke-static {}, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->getInstance()Lcom/meizu/statsapp/v3/UsageStatsProxy3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->getLocationFetcher()Lcom/meizu/statsapp/v3/lib/plugin/tracker/LocationFetcher;

    move-result-object v1

    if-eqz v1, :cond_12f

    .line 116
    invoke-static {}, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->getInstance()Lcom/meizu/statsapp/v3/UsageStatsProxy3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->getLocationFetcher()Lcom/meizu/statsapp/v3/lib/plugin/tracker/LocationFetcher;

    move-result-object v1

    if-eqz v1, :cond_12f

    .line 118
    invoke-virtual {v1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/LocationFetcher;->getLocation()Landroid/location/Location;

    move-result-object v1

    const-string v2, "loc_time"

    const-string v3, "latitude"

    const-string v4, "longitude"

    if-eqz v1, :cond_119

    .line 120
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_12f

    :cond_119
    const/4 v1, 0x0

    .line 124
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    :cond_12f
    :goto_12f
    iget-object v1, p0, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface$2;->this$1:Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;

    iget-object v2, p0, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface$2;->val$rpkInfo:Lcom/meizu/statsrpk/RpkInfo;

    invoke-static {v1, v0, v2}, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;->access$300(Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;Lcom/meizu/statsrpk/RpkInfo;)V

    .line 131
    iget-object v1, p0, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface$2;->this$1:Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;

    invoke-static {v1}, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;->access$100(Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface;)Lcom/meizu/statsrpk/service/RpkEmitterWorker;

    move-result-object v1

    iget-object p0, p0, Lcom/meizu/statsrpk/service/RpkUsageStatsService$RpkStatsInterface$2;->val$rpkInfo:Lcom/meizu/statsrpk/RpkInfo;

    iget-object v2, p0, Lcom/meizu/statsrpk/RpkInfo;->appKey:Ljava/lang/String;

    iget-object p0, p0, Lcom/meizu/statsrpk/RpkInfo;->rpkPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2, p0, v0}, Lcom/meizu/statsrpk/service/RpkEmitterWorker;->add(Ljava/lang/String;Ljava/lang/String;Lcom/meizu/statsapp/v3/lib/plugin/payload/TrackerPayload;)V

    :cond_145
    return-void
.end method
