.class public Lcom/meizu/statsapp/v3/lib/plugin/tracker/LocationFetcher;
.super Ljava/lang/Object;
.source "LocationFetcher.java"


# static fields
.field private static TAG:Ljava/lang/String; = "LocationFetcher"


# instance fields
.field private context:Landroid/content/Context;

.field private enable:Z

.field sp:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/LocationFetcher;->context:Landroid/content/Context;

    const-string v0, "com.meizu.statsapp.v3.common"

    const/4 v1, 0x0

    .line 24
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/LocationFetcher;->sp:Landroid/content/SharedPreferences;

    return-void
.end method

.method private getLocation(Landroid/content/Context;)Landroid/location/Location;
    .registers 4

    const-string p0, "location"

    .line 59
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    .line 60
    new-instance p1, Landroid/location/Criteria;

    invoke-direct {p1}, Landroid/location/Criteria;-><init>()V

    const/4 v0, 0x1

    .line 61
    invoke-virtual {p1, v0}, Landroid/location/Criteria;->setPowerRequirement(I)V

    const/4 v1, 0x2

    .line 62
    invoke-virtual {p1, v1}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 63
    invoke-virtual {p0, p1, v0}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6e

    .line 66
    :try_start_1b
    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p0

    .line 67
    sget-object p1, Lcom/meizu/statsapp/v3/lib/plugin/tracker/LocationFetcher;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Location found:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/SecurityException; {:try_start_1b .. :try_end_35} :catch_52
    .catch Ljava/lang/ClassCastException; {:try_start_1b .. :try_end_35} :catch_36

    return-object p0

    :catch_36
    move-exception p0

    .line 72
    sget-object p1, Lcom/meizu/statsapp/v3/lib/plugin/tracker/LocationFetcher;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClassCastException:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_75

    :catch_52
    move-exception p0

    .line 70
    sget-object p1, Lcom/meizu/statsapp/v3/lib/plugin/tracker/LocationFetcher;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Security exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_75

    .line 75
    :cond_6e
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/LocationFetcher;->TAG:Ljava/lang/String;

    const-string p1, "Location Manager provider is null."

    invoke-static {p0, p1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_75
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getLocation()Landroid/location/Location;
    .registers 2

    .line 40
    iget-boolean v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/LocationFetcher;->enable:Z

    if-eqz v0, :cond_e

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 44
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/LocationFetcher;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/LocationFetcher;->getLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object p0

    return-object p0

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method public setEnable(Z)V
    .registers 5

    .line 35
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/LocationFetcher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setReportLocation enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iput-boolean p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/LocationFetcher;->enable:Z

    return-void
.end method

.method public setInterval(J)V
    .registers 6

    .line 28
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/LocationFetcher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInterval intervalInMills: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/LocationFetcher;->sp:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "POSITION_INTERVAL"

    .line 30
    invoke-interface {p0, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 31
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
