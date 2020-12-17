.class public Lcom/meizu/statsapp/v3/lib/plugin/tracker/EventFilter;
.super Ljava/lang/Object;
.source "EventFilter.java"


# instance fields
.field private active:Z

.field private name:Ljava/lang/String;

.field private neartime:Z

.field private realtime:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZZ)V
    .registers 5

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/EventFilter;->name:Ljava/lang/String;

    .line 18
    iput-boolean p2, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/EventFilter;->active:Z

    .line 19
    iput-boolean p3, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/EventFilter;->realtime:Z

    .line 20
    iput-boolean p4, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/EventFilter;->neartime:Z

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/meizu/statsapp/v3/lib/plugin/tracker/EventFilter;
    .registers 6

    .line 56
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 57
    new-instance p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/EventFilter;

    const-string v1, "e_name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "e_active"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "e_realtime"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "e_neartime"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/EventFilter;-><init>(Ljava/lang/String;ZZZ)V
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_22} :catch_23

    return-object p0

    :catch_23
    move-exception p0

    .line 59
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/EventFilter;->name:Ljava/lang/String;

    return-object p0
.end method

.method public isActive()Z
    .registers 1

    .line 28
    iget-boolean p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/EventFilter;->active:Z

    return p0
.end method

.method public isNeartime()Z
    .registers 1

    .line 36
    iget-boolean p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/EventFilter;->neartime:Z

    return p0
.end method

.method public isRealtime()Z
    .registers 1

    .line 32
    iget-boolean p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/EventFilter;->realtime:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 41
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "e_name"

    .line 43
    iget-object v2, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/EventFilter;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "e_active"

    .line 44
    iget-boolean v2, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/EventFilter;->active:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "e_realtime"

    .line 45
    iget-boolean v2, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/EventFilter;->realtime:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "e_neartime"

    .line 46
    iget-boolean p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/EventFilter;->neartime:Z

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 47
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_25} :catch_26

    return-object p0

    :catch_26
    move-exception p0

    .line 49
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method
