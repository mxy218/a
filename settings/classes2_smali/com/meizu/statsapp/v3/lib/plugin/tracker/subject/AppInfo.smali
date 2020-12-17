.class Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/AppInfo$AppInfoBuilder;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "AppInfo"


# instance fields
.field private appPairs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/AppInfo$AppInfoBuilder;)V
    .registers 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/AppInfo;->appPairs:Ljava/util/HashMap;

    .line 21
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/AppInfo$AppInfoBuilder;->access$000(Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/AppInfo$AppInfoBuilder;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/AppInfo;->setChannelId(Landroid/content/Context;)V

    .line 23
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/AppInfo$AppInfoBuilder;->access$000(Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/AppInfo$AppInfoBuilder;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 24
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/AppInfo$AppInfoBuilder;->access$000(Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/AppInfo$AppInfoBuilder;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/AppInfo;->setContextualParams(Landroid/content/Context;)V

    .line 27
    :cond_1e
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/AppInfo;->TAG:Ljava/lang/String;

    const-string p1, "AppInfo created successfully."

    invoke-static {p0, p1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/AppInfo$AppInfoBuilder;Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/AppInfo$1;)V
    .registers 3

    .line 16
    invoke-direct {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/AppInfo;-><init>(Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/AppInfo$AppInfoBuilder;)V

    return-void
.end method

.method private add(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_f

    .line 98
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    if-eqz p2, :cond_f

    .line 99
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/AppInfo;->appPairs:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    return-void
.end method

.method private getChannelId(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const-string p0, "uxip_channel_num"

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "0"

    if-eqz v0, :cond_55

    .line 74
    :try_start_a
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x80

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_55

    .line 75
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_55

    .line 76
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_23

    goto :goto_2d

    :cond_23
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 77
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_2d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_2d} :catch_2e

    :goto_2d
    return-object v1

    :catch_2e
    move-exception p0

    .line 80
    sget-object p1, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/AppInfo;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - Cause: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_55
    return-object v1
.end method

.method private setChannelId(Landroid/content/Context;)V
    .registers 3

    .line 64
    invoke-direct {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/AppInfo;->getChannelId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "channel_id"

    invoke-direct {p0, v0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/AppInfo;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMap()Ljava/util/Map;
    .registers 1

    .line 121
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/AppInfo;->appPairs:Ljava/util/HashMap;

    return-object p0
.end method

.method public setContextualParams(Landroid/content/Context;)V
    .registers 2

    return-void
.end method
