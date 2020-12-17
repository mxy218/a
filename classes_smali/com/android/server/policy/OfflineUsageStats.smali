.class public Lcom/android/server/policy/OfflineUsageStats;
.super Ljava/lang/Object;
.source "OfflineUsageStats.java"


# static fields
.field public static final MOBEVENT_ACTION_HOME:Ljava/lang/String; = "press_home_key"

.field public static final MOBEVENT_ACTION_HOME_LONG_PRESS_SCREEN_OFF:Ljava/lang/String; = "3"

.field public static final MOBEVENT_ACTION_HOME_LONG_PRESS_VOICE_ON:Ljava/lang/String; = "4"

.field public static final MOBEVENT_ACTION_HOME_MBACK:Ljava/lang/String; = "1"

.field public static final MOBEVENT_ACTION_HOME_PRESS:Ljava/lang/String; = "2"

.field public static final MOBEVENT_ACTION_HOME_SCREEN_ON:Ljava/lang/String; = "1"

.field public static final MOBEVENT_ACTION_HOME_SLIDE_UP:Ljava/lang/String; = "5"

.field public static final MOBEVENT_ACTION_LONG_SCREEN_SHOT:Ljava/lang/String; = "6"

.field public static final MOBEVENT_ACTION_POWER:Ljava/lang/String; = "press_power_key"

.field public static final MOBEVENT_ACTION_POWER_HANGUP:Ljava/lang/String; = "4"

.field public static final MOBEVENT_ACTION_POWER_LONG_PRESS:Ljava/lang/String; = "3"

.field public static final MOBEVENT_ACTION_POWER_SCREEN_OFF:Ljava/lang/String; = "2"

.field public static final MOBEVENT_ACTION_POWER_SCREEN_ON:Ljava/lang/String; = "1"

.field public static final MOBEVENT_ACTION_SCREEN_SHOT:Ljava/lang/String; = "5"

.field public static final MOBEVENT_ACTION_VOLUME:Ljava/lang/String; = "press_volume_key"

.field public static final MOBEVENT_ACTION_VOLUME_ACCEPT_CALL:Ljava/lang/String; = "3"

.field public static final MOBEVENT_ACTION_VOLUME_DOWN:Ljava/lang/String; = "2"

.field public static final MOBEVENT_ACTION_VOLUME_UP:Ljava/lang/String; = "1"

.field public static final MOBEVENT_KEY_TYPE:Ljava/lang/String; = "press_key"

.field public static final MOBEVENT_TAP_TYPE:Ljava/lang/String; = "tap_key"

.field private static TAG:Ljava/lang/String; = null

.field public static final USAGE_ACTION_AUO_LUMINANCE_VALUE:Ljava/lang/String; = "auto_luminance_value"

.field public static final USAGE_ACTION_AUTOMAICBRIGHTNESS:Ljava/lang/String; = "change_screen_luminance"

.field public static final USAGE_ACTION_BATTERY_LEVEL_VALUE:Ljava/lang/String; = "battery"

.field public static final USAGE_ACTION_LIGHT_VALUE:Ljava/lang/String; = "ambient_light_value"

.field public static final USAGE_ACTION_LUMINANCE_VALUE:Ljava/lang/String; = "luminance_value"

.field public static final USAGE_ACTION_SET_BRIGHTNESSMODE:Ljava/lang/String; = "set_auto_luminance"

.field public static final USAGE_ACTION_SET_TYPE:Ljava/lang/String; = "set_type"

.field public static final USAGE_ACTION_USING_APP_VALUE:Ljava/lang/String; = "using_app"

.field private static mUsageStatsProxy:Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    const-string v0, "OfflineUsageStats"

    sput-object v0, Lcom/android/server/policy/OfflineUsageStats;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkProxyValid(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"  # Landroid/content/Context;

    .line 158
    sget-object v0, Lcom/android/server/policy/OfflineUsageStats;->mUsageStatsProxy:Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;

    if-nez v0, :cond_11

    .line 159
    sget-object v0, Lcom/android/server/policy/OfflineUsageStats;->TAG:Ljava/lang/String;

    const-string v1, "UsageStatsProxy invalid, construct ..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-static {p0}, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;->getInstance(Landroid/content/Context;)Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/OfflineUsageStats;->mUsageStatsProxy:Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;

    .line 162
    :cond_11
    return-void
.end method

.method public static collectAutomaticBrightnessInfo(Landroid/content/Context;FI)V
    .registers 10
    .param p0, "context"  # Landroid/content/Context;
    .param p1, "lux"  # F
    .param p2, "screenAutoBrightness"  # I

    .line 220
    invoke-static {p0}, Lcom/android/server/policy/OfflineUsageStats;->checkProxyValid(Landroid/content/Context;)V

    .line 222
    sget-object v0, Lcom/android/server/policy/OfflineUsageStats;->mUsageStatsProxy:Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;

    if-eqz v0, :cond_6a

    .line 223
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 224
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ambient_light_value"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "luminance_value"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, -0x2

    const/4 v3, 0x0

    const-string/jumbo v4, "screen_brightness_mode"

    invoke-static {v1, v4, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 229
    .local v1, "brightnessMode":I
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "auto_luminance_value"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    invoke-static {p0}, Lcom/android/server/policy/OfflineUsageStats;->getTopPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, "using_app":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_45

    .line 232
    const-string/jumbo v4, "using_app"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    :cond_45
    const-class v4, Landroid/os/BatteryManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryManagerInternal;

    .line 235
    .local v4, "batteryManagerInternal":Landroid/os/BatteryManagerInternal;
    if-eqz v4, :cond_62

    .line 236
    invoke-virtual {v4}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    move-result v5

    .line 237
    .local v5, "currentBatteryLevel":I
    const/16 v6, 0x64

    invoke-static {v5, v3, v6}, Landroid/util/MathUtils;->constrain(III)I

    move-result v3

    .line 238
    .end local v5  # "currentBatteryLevel":I
    .local v3, "currentBatteryLevel":I
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "battery"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .end local v3  # "currentBatteryLevel":I
    :cond_62
    sget-object v3, Lcom/android/server/policy/OfflineUsageStats;->mUsageStatsProxy:Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;

    const/4 v5, 0x0

    const-string v6, "change_screen_luminance"

    invoke-virtual {v3, v6, v5, v0}, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;->onOsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 242
    .end local v0  # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1  # "brightnessMode":I
    .end local v2  # "using_app":Ljava/lang/String;
    .end local v4  # "batteryManagerInternal":Landroid/os/BatteryManagerInternal;
    :cond_6a
    return-void
.end method

.method public static collectHomeLongScreenOff(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"  # Landroid/content/Context;

    .line 268
    invoke-static {p0}, Lcom/android/server/policy/OfflineUsageStats;->checkProxyValid(Landroid/content/Context;)V

    .line 269
    const-string/jumbo v0, "press_home_key"

    const-string/jumbo v1, "press_key"

    const-string v2, "3"

    invoke-static {v0, v1, v2}, Lcom/android/server/policy/OfflineUsageStats;->onOsEventOnly(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method public static collectHomeLongVoiceOn(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"  # Landroid/content/Context;

    .line 73
    invoke-static {p0}, Lcom/android/server/policy/OfflineUsageStats;->checkProxyValid(Landroid/content/Context;)V

    .line 74
    const-string/jumbo v0, "press_home_key"

    const-string/jumbo v1, "press_key"

    const-string v2, "4"

    invoke-static {v0, v1, v2}, Lcom/android/server/policy/OfflineUsageStats;->onOsEventOnly(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public static collectInterceptLongScreenShot(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"  # Landroid/content/Context;

    .line 89
    invoke-static {p0}, Lcom/android/server/policy/OfflineUsageStats;->checkProxyValid(Landroid/content/Context;)V

    .line 90
    const-string/jumbo v0, "press_power_key"

    const-string/jumbo v1, "press_key"

    const-string v2, "6"

    invoke-static {v0, v1, v2}, Lcom/android/server/policy/OfflineUsageStats;->onOsEventOnly(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public static collectInterceptScreenShot(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"  # Landroid/content/Context;

    .line 81
    invoke-static {p0}, Lcom/android/server/policy/OfflineUsageStats;->checkProxyValid(Landroid/content/Context;)V

    .line 82
    const-string/jumbo v0, "press_power_key"

    const-string/jumbo v1, "press_key"

    const-string v2, "5"

    invoke-static {v0, v1, v2}, Lcom/android/server/policy/OfflineUsageStats;->onOsEventOnly(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public static collectPowerHangUp(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"  # Landroid/content/Context;

    .line 121
    invoke-static {p0}, Lcom/android/server/policy/OfflineUsageStats;->checkProxyValid(Landroid/content/Context;)V

    .line 122
    const-string/jumbo v0, "press_power_key"

    const-string/jumbo v1, "press_key"

    const-string v2, "4"

    invoke-static {v0, v1, v2}, Lcom/android/server/policy/OfflineUsageStats;->onOsEventOnly(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public static collectPowerLongPress(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"  # Landroid/content/Context;

    .line 129
    invoke-static {p0}, Lcom/android/server/policy/OfflineUsageStats;->checkProxyValid(Landroid/content/Context;)V

    .line 130
    const-string/jumbo v0, "press_power_key"

    const-string/jumbo v1, "press_key"

    const-string v2, "3"

    invoke-static {v0, v1, v2}, Lcom/android/server/policy/OfflineUsageStats;->onOsEventOnly(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public static collectPowerScreenOn(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"  # Landroid/content/Context;

    .line 113
    invoke-static {p0}, Lcom/android/server/policy/OfflineUsageStats;->checkProxyValid(Landroid/content/Context;)V

    .line 114
    const-string/jumbo v0, "press_power_key"

    const-string/jumbo v1, "press_key"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/android/server/policy/OfflineUsageStats;->onOsEventOnly(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public static collectPressHomeKey(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"  # Landroid/content/Context;

    .line 97
    invoke-static {p0}, Lcom/android/server/policy/OfflineUsageStats;->checkProxyValid(Landroid/content/Context;)V

    .line 98
    const-string/jumbo v0, "press_home_key"

    const-string/jumbo v1, "press_key"

    const-string v2, "2"

    invoke-static {v0, v1, v2}, Lcom/android/server/policy/OfflineUsageStats;->onOsEventOnly(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public static collectScreenBrightnessModeSetting(Landroid/content/Context;II)V
    .registers 7
    .param p0, "context"  # Landroid/content/Context;
    .param p1, "oldMode"  # I
    .param p2, "newMode"  # I

    .line 209
    invoke-static {p0}, Lcom/android/server/policy/OfflineUsageStats;->checkProxyValid(Landroid/content/Context;)V

    .line 211
    sget-object v0, Lcom/android/server/policy/OfflineUsageStats;->mUsageStatsProxy:Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;

    if-eqz v0, :cond_27

    if-eq p1, p2, :cond_27

    .line 212
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 213
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x1

    if-ne p2, v1, :cond_15

    const-string/jumbo v1, "on"

    goto :goto_18

    :cond_15
    const-string/jumbo v1, "off"

    :goto_18
    const-string/jumbo v2, "set_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v1, Lcom/android/server/policy/OfflineUsageStats;->mUsageStatsProxy:Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;

    const/4 v2, 0x0

    const-string/jumbo v3, "set_auto_luminance"

    invoke-virtual {v1, v3, v2, v0}, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;->onOsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 216
    .end local v0  # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_27
    return-void
.end method

.method public static collectScreenBrightnessSetting(Landroid/content/Context;I)V
    .registers 7
    .param p0, "context"  # Landroid/content/Context;
    .param p1, "brightness"  # I

    .line 194
    invoke-static {p0}, Lcom/android/server/policy/OfflineUsageStats;->checkProxyValid(Landroid/content/Context;)V

    .line 196
    sget-object v0, Lcom/android/server/policy/OfflineUsageStats;->mUsageStatsProxy:Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;

    if-eqz v0, :cond_34

    .line 197
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 198
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "luminance_value"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x2

    const-string/jumbo v4, "screen_brightness_mode"

    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 203
    .local v1, "brightnessMode":I
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "auto_luminance_value"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v2, Lcom/android/server/policy/OfflineUsageStats;->mUsageStatsProxy:Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;

    const/4 v3, 0x0

    const-string v4, "change_screen_luminance"

    invoke-virtual {v2, v4, v3, v0}, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;->onOsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 206
    .end local v0  # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1  # "brightnessMode":I
    :cond_34
    return-void
.end method

.method public static collectTouchHomeKey(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"  # Landroid/content/Context;

    .line 105
    invoke-static {p0}, Lcom/android/server/policy/OfflineUsageStats;->checkProxyValid(Landroid/content/Context;)V

    .line 106
    const-string/jumbo v0, "press_home_key"

    const-string/jumbo v1, "tap_key"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/android/server/policy/OfflineUsageStats;->onOsEventOnly(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public static collectVolumeAcceptCall(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"  # Landroid/content/Context;

    .line 137
    invoke-static {p0}, Lcom/android/server/policy/OfflineUsageStats;->checkProxyValid(Landroid/content/Context;)V

    .line 138
    const-string/jumbo v0, "press_volume_key"

    const-string/jumbo v1, "press_key"

    const-string v2, "3"

    invoke-static {v0, v1, v2}, Lcom/android/server/policy/OfflineUsageStats;->onOsEventOnly(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public static collectVolumeDown(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"  # Landroid/content/Context;

    .line 153
    invoke-static {p0}, Lcom/android/server/policy/OfflineUsageStats;->checkProxyValid(Landroid/content/Context;)V

    .line 154
    const-string/jumbo v0, "press_volume_key"

    const-string/jumbo v1, "press_key"

    const-string v2, "2"

    invoke-static {v0, v1, v2}, Lcom/android/server/policy/OfflineUsageStats;->onOsEventOnly(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public static collectVolumeUp(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"  # Landroid/content/Context;

    .line 145
    invoke-static {p0}, Lcom/android/server/policy/OfflineUsageStats;->checkProxyValid(Landroid/content/Context;)V

    .line 146
    const-string/jumbo v0, "press_volume_key"

    const-string/jumbo v1, "press_key"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/android/server/policy/OfflineUsageStats;->onOsEventOnly(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method private static getTopPackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p0, "context"  # Landroid/content/Context;

    .line 245
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 247
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_19

    .line 248
    sget-object v1, Lcom/android/server/policy/OfflineUsageStats;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "running task is null, ams is abnormal!!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    return-object v3

    .line 252
    :cond_19
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 254
    .local v1, "rTi":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v1, :cond_44

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_44

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_44

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-nez v4, :cond_37

    goto :goto_44

    .line 259
    :cond_37
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 260
    .local v2, "pkgName":Ljava/lang/String;
    return-object v2

    .line 255
    .end local v2  # "pkgName":Ljava/lang/String;
    :cond_44
    :goto_44
    sget-object v2, Lcom/android/server/policy/OfflineUsageStats;->TAG:Ljava/lang/String;

    const-string v4, "failed to get RunningTaskInfo"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    return-object v3
.end method

.method private static onOsEventOnly(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "eventName"  # Ljava/lang/String;
    .param p1, "keyType"  # Ljava/lang/String;
    .param p2, "value"  # Ljava/lang/String;

    .line 165
    sget-object v0, Lcom/android/server/policy/OfflineUsageStats;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onOsEvent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", keyType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    sget-object v0, Lcom/android/server/policy/OfflineUsageStats;->mUsageStatsProxy:Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;

    if-nez v0, :cond_2c

    .line 167
    return-void

    .line 187
    :cond_2c
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 188
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v1, Lcom/android/server/policy/OfflineUsageStats;->mUsageStatsProxy:Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;->onOsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 190
    return-void
.end method
