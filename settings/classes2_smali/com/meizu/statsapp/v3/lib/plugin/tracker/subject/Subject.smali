.class public Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;
.super Ljava/lang/Object;
.source "Subject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "Subject"


# instance fields
.field private appInfo:Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/AppInfo;

.field private deviceInfo:Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;

.field private eventAttributePairs:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private settingPropertyPairs:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;)V
    .registers 8

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;->eventAttributePairs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;->settingPropertyPairs:Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 37
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;->setDefaultDebug()V

    .line 38
    invoke-direct {p0}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;->setDefaultFlymeVersion()V

    .line 39
    sget-object v2, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "##### Subject step 1, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;->access$000(Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_75

    .line 41
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;->access$000(Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;->setContextualParams(Landroid/content/Context;)V

    .line 42
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;->access$100(Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 43
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;->access$000(Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;->setDefaultPackage(Landroid/content/Context;)V

    goto :goto_60

    .line 45
    :cond_55
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;->access$000(Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;)Landroid/content/Context;

    move-result-object v2

    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;->access$100(Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;->setReplacePackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    :goto_60
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;->access$200(Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;->setPkgKey(Ljava/lang/String;)V

    .line 48
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;->access$300(Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;->setPkgType(I)V

    .line 49
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;->access$400(Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;->setSdkVersion(Ljava/lang/String;)V

    .line 51
    :cond_75
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##### Subject step 2, "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    sget-object p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;->TAG:Ljava/lang/String;

    const-string p1, "Subject created successfully."

    invoke-static {p0, p1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$1;)V
    .registers 3

    .line 23
    invoke-direct {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;-><init>(Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;)V

    return-void
.end method

.method private addSettingProperty(Ljava/lang/String;I)V
    .registers 4

    if-eqz p1, :cond_11

    .line 202
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 203
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;->settingPropertyPairs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    return-void
.end method

.method private addSettingProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_f

    .line 196
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    if-eqz p2, :cond_f

    .line 197
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;->settingPropertyPairs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    return-void
.end method

.method private addSettingProperty(Ljava/lang/String;Z)V
    .registers 4

    if-eqz p1, :cond_11

    .line 208
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 209
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;->settingPropertyPairs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    return-void
.end method

.method private setDefaultDebug()V
    .registers 3

    const-string v0, "debug"

    const/4 v1, 0x0

    .line 122
    invoke-direct {p0, v0, v1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;->addSettingProperty(Ljava/lang/String;Z)V

    return-void
.end method

.method private setDefaultFlymeVersion()V
    .registers 3

    .line 136
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const-string v1, "flyme_ver"

    invoke-direct {p0, v1, v0}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;->addSettingProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setDefaultPackage(Landroid/content/Context;)V
    .registers 5

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pkg_name"

    .line 145
    invoke-direct {p0, v1, v0}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;->addSettingProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-static {v0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/utils/FlymeOSUtils;->getPackageVersion(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pkg_ver"

    invoke-direct {p0, v2, v1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;->addSettingProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {v0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/utils/FlymeOSUtils;->getPackageCode(Ljava/lang/String;Landroid/content/Context;)I

    move-result p1

    const-string v0, "pkg_ver_code"

    invoke-direct {p0, v0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;->addSettingProperty(Ljava/lang/String;I)V

    return-void
.end method

.method private setPkgKey(Ljava/lang/String;)V
    .registers 3

    const-string v0, "pkg_key"

    .line 178
    invoke-direct {p0, v0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;->addSettingProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setPkgType(I)V
    .registers 3

    const-string v0, "pkg_type"

    .line 185
    invoke-direct {p0, v0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;->addSettingProperty(Ljava/lang/String;I)V

    return-void
.end method

.method private setReplacePackage(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8

    .line 151
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### setReplacePackage, replacePackage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :try_start_16
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x4000

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p2
    :try_end_20
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_20} :catch_21

    goto :goto_26

    :catch_21
    move-exception p2

    .line 156
    invoke-virtual {p2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p2, 0x0

    :goto_26
    const-string v0, "pkg_ver_code"

    const-string v1, "pkg_ver"

    const-string v2, "pkg_name"

    const-string v3, ""

    if-eqz p2, :cond_56

    .line 159
    iget-object v4, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v2, v4}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;->addSettingProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v2, p2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;->addSettingProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget v1, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-direct {p0, v0, v1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;->addSettingProperty(Ljava/lang/String;I)V

    .line 162
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setReplacePackage, packageInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_60

    .line 164
    :cond_56
    invoke-direct {p0, v2, v3}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;->addSettingProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-direct {p0, v1, v3}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;->addSettingProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 166
    invoke-direct {p0, v0, p2}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;->addSettingProperty(Ljava/lang/String;I)V

    .line 168
    :goto_60
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 169
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;->eventAttributePairs:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "_my_pkg_name_"

    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;->eventAttributePairs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p1}, Lcom/meizu/statsapp/v3/lib/plugin/utils/FlymeOSUtils;->getPackageVersion(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_my_pkg_ver_"

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;->eventAttributePairs:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p1}, Lcom/meizu/statsapp/v3/lib/plugin/utils/FlymeOSUtils;->getPackageCode(Ljava/lang/String;Landroid/content/Context;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "_my_pkg_ver_code_"

    invoke-virtual {p0, p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSdkVersion(Ljava/lang/String;)V
    .registers 3

    const-string v0, "sdk_ver"

    .line 192
    invoke-direct {p0, v0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;->addSettingProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAppInfo()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 274
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;->appInfo:Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/AppInfo;

    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/AppInfo;->getMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceInfo()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 270
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;->deviceInfo:Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;

    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;->getMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getEventAttributePairs()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 278
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;->eventAttributePairs:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public getSettingProperty()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 282
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;->settingPropertyPairs:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public getVolatileProperty(Landroid/content/Context;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 241
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 242
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/utils/FlymeOSUtils;->getImsi(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23

    const/4 v1, 0x0

    .line 244
    aget-object v2, v0, v1

    if-eqz v2, :cond_17

    .line 245
    aget-object v1, v0, v1

    const-string v2, "imsi1"

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    const/4 v1, 0x1

    .line 247
    aget-object v2, v0, v1

    if-eqz v2, :cond_23

    .line 248
    aget-object v0, v0, v1

    const-string v1, "imsi2"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_23
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/utils/FlymeOSUtils;->getLocationLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lla"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/utils/FlymeOSUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "imei"

    .line 258
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/utils/NetInfoUtils;->getMACAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "mac_address"

    .line 260
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object p1, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVolatileProperty ..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setContextualParams(Landroid/content/Context;)V
    .registers 3

    .line 110
    new-instance v0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo$DeviceInfoBuilder;

    invoke-direct {v0}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo$DeviceInfoBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo$DeviceInfoBuilder;->context(Landroid/content/Context;)Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo$DeviceInfoBuilder;

    invoke-virtual {v0}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo$DeviceInfoBuilder;->build()Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;->deviceInfo:Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/DeviceInfo;

    .line 111
    new-instance v0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/AppInfo$AppInfoBuilder;

    invoke-direct {v0}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/AppInfo$AppInfoBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/AppInfo$AppInfoBuilder;->context(Landroid/content/Context;)Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/AppInfo$AppInfoBuilder;

    invoke-virtual {v0}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/AppInfo$AppInfoBuilder;->build()Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/AppInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;->appInfo:Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/AppInfo;

    return-void
.end method

.method public setDebug(Z)V
    .registers 3

    const-string v0, "debug"

    .line 129
    invoke-direct {p0, v0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;->addSettingProperty(Ljava/lang/String;Z)V

    return-void
.end method
