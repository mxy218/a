.class public Lcom/meizu/settings/datareport/UsageStatsProxy;
.super Ljava/lang/Object;
.source "UsageStatsProxy.java"


# static fields
.field private static final DEBUG:Z

.field private static mSettingsUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;


# instance fields
.field private mReportDataEnable:Z

.field private mUsageStatsProxy:Lcom/meizu/statsapp/v3/UsageStatsProxy3;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 24
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "userdebug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_18

    :cond_16
    const/4 v0, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v0, 0x1

    :goto_19
    sput-boolean v0, Lcom/meizu/settings/datareport/UsageStatsProxy;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {p1}, Lcom/meizu/settings/utils/MzUtils;->isPermissionAllow(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/meizu/settings/datareport/UsageStatsProxy;->mReportDataEnable:Z

    .line 60
    iget-boolean p1, p0, Lcom/meizu/settings/datareport/UsageStatsProxy;->mReportDataEnable:Z

    if-nez p1, :cond_e

    return-void

    .line 64
    :cond_e
    invoke-static {}, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->getInstance()Lcom/meizu/statsapp/v3/UsageStatsProxy3;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/datareport/UsageStatsProxy;->mUsageStatsProxy:Lcom/meizu/statsapp/v3/UsageStatsProxy3;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;
    .registers 3

    .line 32
    sget-object v0, Lcom/meizu/settings/datareport/UsageStatsProxy;->mSettingsUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    if-nez v0, :cond_17

    .line 33
    const-class v0, Lcom/meizu/settings/datareport/UsageStatsProxy;

    monitor-enter v0

    .line 34
    :try_start_7
    sget-object v1, Lcom/meizu/settings/datareport/UsageStatsProxy;->mSettingsUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    if-nez v1, :cond_12

    .line 35
    new-instance v1, Lcom/meizu/settings/datareport/UsageStatsProxy;

    invoke-direct {v1, p0}, Lcom/meizu/settings/datareport/UsageStatsProxy;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/meizu/settings/datareport/UsageStatsProxy;->mSettingsUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    .line 37
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 39
    :cond_17
    :goto_17
    sget-object p0, Lcom/meizu/settings/datareport/UsageStatsProxy;->mSettingsUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    return-object p0
.end method

.method public static init(Landroid/app/Application;)V
    .registers 4

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init...., allow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/settings/utils/MzUtils;->isPermissionAllow(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsageStatsProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->isPermissionAllow(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_29

    return-void

    :cond_29
    const-string/jumbo v0, "real start init..."

    .line 49
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v0, Lcom/meizu/statsapp/v3/InitConfig;

    invoke-direct {v0}, Lcom/meizu/statsapp/v3/InitConfig;-><init>()V

    const/4 v1, 0x0

    .line 51
    invoke-virtual {v0, v1}, Lcom/meizu/statsapp/v3/InitConfig;->setReportLocation(Z)Lcom/meizu/statsapp/v3/InitConfig;

    const/4 v1, 0x1

    .line 52
    invoke-virtual {v0, v1}, Lcom/meizu/statsapp/v3/InitConfig;->setOffline(Z)Lcom/meizu/statsapp/v3/InitConfig;

    .line 53
    sget-object v1, Lcom/meizu/statsapp/v3/PkgType;->APP:Lcom/meizu/statsapp/v3/PkgType;

    const-string v2, "CJ3R3E8V3TFLAY1406EJ6L6L"

    invoke-static {p0, v1, v2, v0}, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->init(Landroid/app/Application;Lcom/meizu/statsapp/v3/PkgType;Ljava/lang/String;Lcom/meizu/statsapp/v3/InitConfig;)V

    .line 55
    new-instance v0, Lcom/meizu/settings/datareport/UsageStatsProxy;

    invoke-direct {v0, p0}, Lcom/meizu/settings/datareport/UsageStatsProxy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/meizu/settings/datareport/UsageStatsProxy;->mSettingsUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    return-void
.end method


# virtual methods
.method public onPageStart(Ljava/lang/String;)V
    .registers 3

    .line 68
    iget-boolean v0, p0, Lcom/meizu/settings/datareport/UsageStatsProxy;->mReportDataEnable:Z

    if-nez v0, :cond_5

    return-void

    .line 72
    :cond_5
    iget-object p0, p0, Lcom/meizu/settings/datareport/UsageStatsProxy;->mUsageStatsProxy:Lcom/meizu/statsapp/v3/UsageStatsProxy3;

    invoke-virtual {p0, p1}, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->onPageStart(Ljava/lang/String;)V

    .line 73
    sget-boolean p0, Lcom/meizu/settings/datareport/UsageStatsProxy;->DEBUG:Z

    if-eqz p0, :cond_25

    .line 74
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onPageStart:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UsageStatsProxy"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    return-void
.end method

.method public onPageStop(Ljava/lang/String;)V
    .registers 3

    .line 79
    iget-boolean v0, p0, Lcom/meizu/settings/datareport/UsageStatsProxy;->mReportDataEnable:Z

    if-nez v0, :cond_5

    return-void

    .line 83
    :cond_5
    iget-object p0, p0, Lcom/meizu/settings/datareport/UsageStatsProxy;->mUsageStatsProxy:Lcom/meizu/statsapp/v3/UsageStatsProxy3;

    invoke-virtual {p0, p1}, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->onPageStop(Ljava/lang/String;)V

    .line 84
    sget-boolean p0, Lcom/meizu/settings/datareport/UsageStatsProxy;->DEBUG:Z

    if-eqz p0, :cond_25

    .line 85
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onPageStop:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UsageStatsProxy"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    return-void
.end method

.method public reportData(Ljava/lang/String;Ljava/lang/String;Landroid/preference/Preference;)V
    .registers 9

    .line 91
    invoke-virtual {p3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-void

    .line 95
    :cond_b
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 97
    instance-of v2, p3, Lcom/meizu/common/preference/SwitchPreference;

    const-string v3, "1"

    const-string v4, "0"

    if-eqz v2, :cond_23

    .line 98
    check-cast p3, Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {p3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result p3

    if-eqz p3, :cond_21

    goto :goto_3d

    :cond_21
    move-object v3, v4

    goto :goto_3d

    .line 99
    :cond_23
    instance-of v2, p3, Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_30

    .line 100
    check-cast p3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result p3

    if-eqz p3, :cond_21

    goto :goto_3d

    .line 102
    :cond_30
    invoke-virtual {p3}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p3

    if-eqz p3, :cond_3b

    .line 104
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3d

    :cond_3b
    const-string v3, ""

    .line 108
    :goto_3d
    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-virtual {p0, p2, p1, v1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public reportData(Ljava/lang/String;Ljava/lang/String;Landroid/preference/Preference;Ljava/lang/Object;)V
    .registers 6

    .line 137
    invoke-virtual {p3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p3

    .line 138
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 142
    :cond_b
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 143
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {v0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-virtual {p0, p2, p1, v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public reportData(Ljava/lang/String;Ljava/lang/String;Landroidx/preference/Preference;)V
    .registers 9

    .line 114
    invoke-virtual {p3}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-void

    .line 118
    :cond_b
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 120
    instance-of v2, p3, Landroidx/preference/SwitchPreference;

    const-string v3, "1"

    const-string v4, "0"

    if-eqz v2, :cond_23

    .line 121
    check-cast p3, Landroidx/preference/SwitchPreference;

    invoke-virtual {p3}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p3

    if-eqz p3, :cond_21

    goto :goto_3d

    :cond_21
    move-object v3, v4

    goto :goto_3d

    .line 122
    :cond_23
    instance-of v2, p3, Landroidx/preference/CheckBoxPreference;

    if-eqz v2, :cond_30

    .line 123
    check-cast p3, Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p3}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p3

    if-eqz p3, :cond_21

    goto :goto_3d

    .line 125
    :cond_30
    invoke-virtual {p3}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p3

    if-eqz p3, :cond_3b

    .line 127
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3d

    :cond_3b
    const-string v3, ""

    .line 131
    :goto_3d
    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-virtual {p0, p2, p1, v1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "value"

    .line 149
    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-virtual {p0, p1, p2, v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 167
    invoke-virtual {p4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {v0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    invoke-virtual {p0, p2, p1, v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public reportData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 154
    iget-boolean v0, p0, Lcom/meizu/settings/datareport/UsageStatsProxy;->mReportDataEnable:Z

    if-nez v0, :cond_5

    return-void

    .line 158
    :cond_5
    iget-object p0, p0, Lcom/meizu/settings/datareport/UsageStatsProxy;->mUsageStatsProxy:Lcom/meizu/statsapp/v3/UsageStatsProxy3;

    invoke-virtual {p0, p1, p2, p3}, Lcom/meizu/statsapp/v3/UsageStatsProxy3;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 159
    sget-boolean p0, Lcom/meizu/settings/datareport/UsageStatsProxy;->DEBUG:Z

    if-eqz p0, :cond_38

    .line 160
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "event:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", pageName:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",values:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UsageStatsProxy"

    .line 160
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    return-void
.end method
