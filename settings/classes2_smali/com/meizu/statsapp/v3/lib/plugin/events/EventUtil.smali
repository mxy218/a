.class public Lcom/meizu/statsapp/v3/lib/plugin/events/EventUtil;
.super Ljava/lang/Object;
.source "EventUtil.java"


# direct methods
.method public static buildActionXEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/meizu/statsapp/v3/lib/plugin/events/ActionXEvent;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/meizu/statsapp/v3/lib/plugin/events/ActionXEvent;"
        }
    .end annotation

    .line 20
    invoke-static {p0}, Lcom/meizu/statsapp/v3/lib/plugin/utils/FlymeOSUtils;->isBox(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 21
    invoke-static {p0}, Lcom/meizu/statsapp/v3/lib/plugin/utils/NetInfoUtils;->getNetworkTypeForFlymeTv(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_f

    .line 23
    :cond_b
    invoke-static {p0}, Lcom/meizu/statsapp/v3/lib/plugin/utils/NetInfoUtils;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 25
    :goto_f
    new-instance v0, Lcom/meizu/statsapp/v3/lib/plugin/events/ActionXEvent;

    invoke-direct {v0, p1, p0}, Lcom/meizu/statsapp/v3/lib/plugin/events/ActionXEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/events/ActionXEvent;->setTime(J)V

    .line 27
    invoke-virtual {v0, p2}, Lcom/meizu/statsapp/v3/lib/plugin/events/ActionXEvent;->setPage(Ljava/lang/String;)V

    if-eqz p3, :cond_53

    .line 30
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_28
    :goto_28
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_53

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 31
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 32
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_28

    const/16 v1, 0xa

    .line 33
    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_28

    const/4 v2, 0x0

    .line 34
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    .line 35
    invoke-interface {p1, p2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28

    .line 39
    :cond_53
    invoke-virtual {v0, p3}, Lcom/meizu/statsapp/v3/lib/plugin/events/ActionXEvent;->setProperties(Ljava/util/Map;)V

    const/4 p0, 0x0

    .line 40
    invoke-virtual {v0, p0}, Lcom/meizu/statsapp/v3/lib/plugin/events/ActionXEvent;->setEvent_attrib(Ljava/util/Map;)V

    return-object v0
.end method

.method public static buildLogEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Lcom/meizu/statsapp/v3/lib/plugin/events/LogEvent;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/meizu/statsapp/v3/lib/plugin/events/LogEvent;"
        }
    .end annotation

    .line 48
    invoke-static {p0}, Lcom/meizu/statsapp/v3/lib/plugin/utils/FlymeOSUtils;->isBox(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 49
    invoke-static {p0}, Lcom/meizu/statsapp/v3/lib/plugin/utils/NetInfoUtils;->getNetworkTypeForFlymeTv(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_f

    .line 51
    :cond_b
    invoke-static {p0}, Lcom/meizu/statsapp/v3/lib/plugin/utils/NetInfoUtils;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 53
    :goto_f
    new-instance v0, Lcom/meizu/statsapp/v3/lib/plugin/events/LogEvent;

    invoke-direct {v0, p1, p0}, Lcom/meizu/statsapp/v3/lib/plugin/events/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/events/LogEvent;->setTime(J)V

    if-eqz p2, :cond_50

    .line 57
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_25
    :goto_25
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_50

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 58
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 59
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_25

    const/16 v2, 0xa

    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_25

    const/4 v3, 0x0

    .line 61
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-interface {p1, v1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_25

    .line 66
    :cond_50
    invoke-virtual {v0, p2}, Lcom/meizu/statsapp/v3/lib/plugin/events/LogEvent;->setProperties(Ljava/util/Map;)V

    return-object v0
.end method

.method public static buildPageEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/statsapp/v3/lib/plugin/events/PageEvent;
    .registers 5

    .line 75
    invoke-static {p0}, Lcom/meizu/statsapp/v3/lib/plugin/utils/FlymeOSUtils;->isBox(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 76
    invoke-static {p0}, Lcom/meizu/statsapp/v3/lib/plugin/utils/NetInfoUtils;->getNetworkTypeForFlymeTv(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_f

    .line 78
    :cond_b
    invoke-static {p0}, Lcom/meizu/statsapp/v3/lib/plugin/utils/NetInfoUtils;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 80
    :goto_f
    new-instance v0, Lcom/meizu/statsapp/v3/lib/plugin/events/PageEvent;

    invoke-direct {v0, p1, p0}, Lcom/meizu/statsapp/v3/lib/plugin/events/PageEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0, p2}, Lcom/meizu/statsapp/v3/lib/plugin/events/PageEvent;->setLaunch(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0, p3}, Lcom/meizu/statsapp/v3/lib/plugin/events/PageEvent;->setTerminate(Ljava/lang/String;)V

    return-object v0
.end method
