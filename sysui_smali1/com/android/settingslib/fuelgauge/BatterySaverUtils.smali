.class public Lcom/android/settingslib/fuelgauge/BatterySaverUtils;
.super Ljava/lang/Object;
.source "BatterySaverUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/fuelgauge/BatterySaverUtils$Parameters;
    }
.end annotation


# direct methods
.method private static getSystemUiBroadcast(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .registers 3

    .line 181
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p0, 0x10000000

    .line 182
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p0, "com.android.systemui"

    .line 183
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method

.method public static maybeShowBatterySaverConfirmation(Landroid/content/Context;Landroid/os/Bundle;)Z
    .registers 5

    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "low_power_warning_acknowledged"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_e

    return v1

    :cond_e
    const-string v0, "PNW.startSaverConfirmation"

    .line 172
    invoke-static {v0, p1}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->getSystemUiBroadcast(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    .line 171
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static setBatterySaverConfirmationAcknowledged(Landroid/content/Context;)V
    .registers 3

    .line 189
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "low_power_warning_acknowledged"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static declared-synchronized setPowerSaveMode(Landroid/content/Context;ZZ)Z
    .registers 9

    const-class v0, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;

    monitor-enter v0

    .line 119
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 121
    new-instance v2, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(I)V

    const-string v4, "extra_confirm_only"

    const/4 v5, 0x0

    .line 122
    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p1, :cond_1f

    if-eqz p2, :cond_1f

    .line 124
    invoke-static {p0, v2}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->maybeShowBatterySaverConfirmation(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v4
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_67

    if-eqz v4, :cond_1f

    .line 125
    monitor-exit v0

    return v5

    :cond_1f
    if-eqz p1, :cond_26

    if-nez p2, :cond_26

    .line 128
    :try_start_23
    invoke-static {p0}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->setBatterySaverConfirmationAcknowledged(Landroid/content/Context;)V

    .line 131
    :cond_26
    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    invoke-virtual {p2, p1}, Landroid/os/PowerManager;->setPowerSaveModeEnabled(Z)Z

    move-result p2

    if-eqz p2, :cond_65

    if-eqz p1, :cond_63

    const-string p1, "low_power_manual_activation_count"

    .line 134
    invoke-static {v1, p1, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    add-int/2addr p1, v3

    const-string p2, "low_power_manual_activation_count"

    .line 135
    invoke-static {v1, p2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 137
    new-instance p2, Lcom/android/settingslib/fuelgauge/BatterySaverUtils$Parameters;

    invoke-direct {p2, p0}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils$Parameters;-><init>(Landroid/content/Context;)V

    .line 139
    iget v4, p2, Lcom/android/settingslib/fuelgauge/BatterySaverUtils$Parameters;->startNth:I

    if-lt p1, v4, :cond_63

    iget p2, p2, Lcom/android/settingslib/fuelgauge/BatterySaverUtils$Parameters;->endNth:I

    if-gt p1, p2, :cond_63

    const-string p1, "low_power_trigger_level"

    .line 141
    invoke-static {v1, p1, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_63

    const-string/jumbo p1, "suppress_auto_battery_saver_suggestion"

    .line 142
    invoke-static {v1, p1, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_63

    .line 144
    invoke-static {p0, v2}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->showAutoBatterySaverSuggestion(Landroid/content/Context;Landroid/os/Bundle;)V
    :try_end_63
    .catchall {:try_start_23 .. :try_end_63} :catchall_67

    .line 148
    :cond_63
    monitor-exit v0

    return v3

    .line 150
    :cond_65
    monitor-exit v0

    return v5

    :catchall_67
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static showAutoBatterySaverSuggestion(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 3

    const-string v0, "PNW.autoSaverSuggestion"

    .line 177
    invoke-static {v0, p1}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->getSystemUiBroadcast(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static suppressAutoBatterySaver(Landroid/content/Context;)V
    .registers 3

    .line 196
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "suppress_auto_battery_saver_suggestion"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
