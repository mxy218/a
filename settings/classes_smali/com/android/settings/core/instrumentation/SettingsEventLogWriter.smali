.class public Lcom/android/settings/core/instrumentation/SettingsEventLogWriter;
.super Lcom/android/settingslib/core/instrumentation/EventLogWriter;
.source "SettingsEventLogWriter.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Lcom/android/settingslib/core/instrumentation/EventLogWriter;-><init>()V

    return-void
.end method

.method private static shouldDisableGenericEventLogging()Z
    .registers 3

    const/4 v0, 0x1

    const-string/jumbo v1, "settings_ui"

    const-string v2, "event_logging_enabled"

    .line 68
    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public action(Landroid/content/Context;II)V
    .registers 5

    .line 53
    invoke-static {}, Lcom/android/settings/core/instrumentation/SettingsEventLogWriter;->shouldDisableGenericEventLogging()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 56
    :cond_7
    invoke-super {p0, p1, p2, p3}, Lcom/android/settingslib/core/instrumentation/EventLogWriter;->action(Landroid/content/Context;II)V

    return-void
.end method

.method public action(Landroid/content/Context;ILjava/lang/String;)V
    .registers 5

    .line 45
    invoke-static {}, Lcom/android/settings/core/instrumentation/SettingsEventLogWriter;->shouldDisableGenericEventLogging()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 48
    :cond_7
    invoke-super {p0, p1, p2, p3}, Lcom/android/settingslib/core/instrumentation/EventLogWriter;->action(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public action(Landroid/content/Context;IZ)V
    .registers 5

    .line 61
    invoke-static {}, Lcom/android/settings/core/instrumentation/SettingsEventLogWriter;->shouldDisableGenericEventLogging()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 64
    :cond_7
    invoke-super {p0, p1, p2, p3}, Lcom/android/settingslib/core/instrumentation/EventLogWriter;->action(Landroid/content/Context;IZ)V

    return-void
.end method

.method public hidden(Landroid/content/Context;I)V
    .registers 4

    .line 37
    invoke-static {}, Lcom/android/settings/core/instrumentation/SettingsEventLogWriter;->shouldDisableGenericEventLogging()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 40
    :cond_7
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/instrumentation/EventLogWriter;->hidden(Landroid/content/Context;I)V

    return-void
.end method

.method public visible(Landroid/content/Context;II)V
    .registers 5

    .line 29
    invoke-static {}, Lcom/android/settings/core/instrumentation/SettingsEventLogWriter;->shouldDisableGenericEventLogging()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 32
    :cond_7
    invoke-super {p0, p1, p2, p3}, Lcom/android/settingslib/core/instrumentation/EventLogWriter;->visible(Landroid/content/Context;II)V

    return-void
.end method
