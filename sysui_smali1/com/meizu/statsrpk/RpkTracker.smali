.class public Lcom/meizu/statsrpk/RpkTracker;
.super Ljava/lang/Object;
.source "RpkTracker.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RpkTracker"


# instance fields
.field private rpkEmitter:Lcom/meizu/statsrpk/RpkEmitter;

.field private rpkInfo:Lcom/meizu/statsrpk/RpkInfo;

.field private rpkInstanceImpl:Lcom/meizu/statsrpk/RpkInstanceImpl;

.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/meizu/statsrpk/RpkEmitter;Lcom/meizu/statsrpk/RpkInfo;)V
    .registers 5

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p2, p0, Lcom/meizu/statsrpk/RpkTracker;->rpkEmitter:Lcom/meizu/statsrpk/RpkEmitter;

    .line 41
    iput-object p3, p0, Lcom/meizu/statsrpk/RpkTracker;->rpkInfo:Lcom/meizu/statsrpk/RpkInfo;

    .line 42
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "statsrpk_config_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p3, Lcom/meizu/statsrpk/RpkInfo;->rpkPkgName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/statsrpk/RpkTracker;->sp:Landroid/content/SharedPreferences;

    .line 43
    sget-object p0, Lcom/meizu/statsrpk/RpkTracker;->TAG:Ljava/lang/String;

    const-string p1, "RpkTracker created successfully."

    invoke-static {p0, p1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private filterEvent(Ljava/lang/String;)I
    .registers 8

    .line 89
    iget-object p0, p0, Lcom/meizu/statsrpk/RpkTracker;->sp:Landroid/content/SharedPreferences;

    const-string v0, "event_filters"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 90
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3a

    const-string v0, ","

    .line 91
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    move v2, v0

    .line 92
    :goto_19
    array-length v3, p0

    if-ge v2, v3, :cond_3a

    .line 93
    aget-object v3, p0, v2

    const-string v4, ":"

    .line 94
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v0

    .line 95
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 96
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    return v3

    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_3a
    return v1
.end method


# virtual methods
.method init(Lcom/meizu/statsrpk/RpkInstanceImpl;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/meizu/statsrpk/RpkTracker;->rpkInstanceImpl:Lcom/meizu/statsrpk/RpkInstanceImpl;

    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 7

    .line 51
    iget-object v0, p0, Lcom/meizu/statsrpk/RpkTracker;->sp:Landroid/content/SharedPreferences;

    const-string v1, "active"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 54
    :cond_c
    invoke-direct {p0, p1}, Lcom/meizu/statsrpk/RpkTracker;->filterEvent(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_13

    return-void

    .line 58
    :cond_13
    new-instance v0, Lcom/meizu/statsrpk/RpkEvent;

    invoke-direct {v0}, Lcom/meizu/statsrpk/RpkEvent;-><init>()V

    const-string v1, "action_x"

    .line 59
    iput-object v1, v0, Lcom/meizu/statsrpk/RpkEvent;->type:Ljava/lang/String;

    .line 60
    iput-object p1, v0, Lcom/meizu/statsrpk/RpkEvent;->eventName:Ljava/lang/String;

    .line 61
    iput-object p2, v0, Lcom/meizu/statsrpk/RpkEvent;->pageName:Ljava/lang/String;

    .line 62
    iput-object p3, v0, Lcom/meizu/statsrpk/RpkEvent;->properties:Ljava/util/Map;

    .line 63
    iget-object p1, p0, Lcom/meizu/statsrpk/RpkTracker;->rpkInstanceImpl:Lcom/meizu/statsrpk/RpkInstanceImpl;

    invoke-virtual {p1}, Lcom/meizu/statsrpk/RpkInstanceImpl;->getRpkPageController()Lcom/meizu/statsrpk/RpkPageController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meizu/statsrpk/RpkPageController;->getOrGenerateSessionId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/meizu/statsrpk/RpkEvent;->sessionId:Ljava/lang/String;

    .line 64
    iget-object p1, p0, Lcom/meizu/statsrpk/RpkTracker;->rpkEmitter:Lcom/meizu/statsrpk/RpkEmitter;

    iget-object p0, p0, Lcom/meizu/statsrpk/RpkTracker;->rpkInfo:Lcom/meizu/statsrpk/RpkInfo;

    invoke-virtual {p1, v0, p0}, Lcom/meizu/statsrpk/RpkEmitter;->track(Lcom/meizu/statsrpk/RpkEvent;Lcom/meizu/statsrpk/RpkInfo;)V

    return-void
.end method

.method public trackPage(Ljava/lang/String;JJJ)V
    .registers 11

    .line 68
    iget-object v0, p0, Lcom/meizu/statsrpk/RpkTracker;->sp:Landroid/content/SharedPreferences;

    const-string v1, "active"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 71
    :cond_c
    invoke-direct {p0, p1}, Lcom/meizu/statsrpk/RpkTracker;->filterEvent(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    return-void

    .line 75
    :cond_14
    new-instance v0, Lcom/meizu/statsrpk/RpkEvent;

    invoke-direct {v0}, Lcom/meizu/statsrpk/RpkEvent;-><init>()V

    const-string v1, "page"

    .line 76
    iput-object v1, v0, Lcom/meizu/statsrpk/RpkEvent;->type:Ljava/lang/String;

    .line 77
    iput-object p1, v0, Lcom/meizu/statsrpk/RpkEvent;->eventName:Ljava/lang/String;

    .line 78
    iput-object p1, v0, Lcom/meizu/statsrpk/RpkEvent;->pageName:Ljava/lang/String;

    .line 79
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 80
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "start"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "end"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-static {p6, p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "duration2"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iput-object p1, v0, Lcom/meizu/statsrpk/RpkEvent;->properties:Ljava/util/Map;

    .line 84
    iget-object p1, p0, Lcom/meizu/statsrpk/RpkTracker;->rpkInstanceImpl:Lcom/meizu/statsrpk/RpkInstanceImpl;

    invoke-virtual {p1}, Lcom/meizu/statsrpk/RpkInstanceImpl;->getRpkPageController()Lcom/meizu/statsrpk/RpkPageController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meizu/statsrpk/RpkPageController;->getOrGenerateSessionId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/meizu/statsrpk/RpkEvent;->sessionId:Ljava/lang/String;

    .line 85
    iget-object p1, p0, Lcom/meizu/statsrpk/RpkTracker;->rpkEmitter:Lcom/meizu/statsrpk/RpkEmitter;

    iget-object p0, p0, Lcom/meizu/statsrpk/RpkTracker;->rpkInfo:Lcom/meizu/statsrpk/RpkInfo;

    invoke-virtual {p1, v0, p0}, Lcom/meizu/statsrpk/RpkEmitter;->track(Lcom/meizu/statsrpk/RpkEvent;Lcom/meizu/statsrpk/RpkInfo;)V

    return-void
.end method
