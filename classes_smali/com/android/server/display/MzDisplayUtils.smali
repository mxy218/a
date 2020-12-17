.class public final Lcom/android/server/display/MzDisplayUtils;
.super Ljava/lang/Object;
.source "MzDisplayUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "MzDisplayUtils"

.field private static final USAGE_ACTION_AOD_IN:Ljava/lang/String; = "aod_in"

.field private static final USAGE_ACTION_AOD_STATES:Ljava/lang/String; = "aod_states"

.field private static final USAGE_ACTION_SCREEN_ON:Ljava/lang/String; = "screen_on"

.field private static mUsageStatsProxy:Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;

.field private static sInstance:Lcom/android/server/display/MzDisplayUtils;


# instance fields
.field private mAODShownAfterScreenOff:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mContext:Landroid/content/Context;

.field private mPreScreenOffDisplayState:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"  # Landroid/content/Context;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/MzDisplayUtils;->mPreScreenOffDisplayState:I

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/display/MzDisplayUtils;->mAODShownAfterScreenOff:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    iput-object p1, p0, Lcom/android/server/display/MzDisplayUtils;->mContext:Landroid/content/Context;

    .line 80
    return-void
.end method

.method private static checkProxyValid(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"  # Landroid/content/Context;

    .line 181
    sget-object v0, Lcom/android/server/display/MzDisplayUtils;->mUsageStatsProxy:Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;

    if-nez v0, :cond_13

    if-eqz p0, :cond_13

    .line 182
    const-string v0, "MzDisplayUtils"

    const-string v1, "UsageStatsProxy invalid, construct ..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-static {p0}, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;->getInstance(Landroid/content/Context;)Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/MzDisplayUtils;->mUsageStatsProxy:Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;

    .line 185
    :cond_13
    return-void
.end method

.method private static collectScreenOffAODIn(Landroid/content/Context;Z)V
    .registers 6
    .param p0, "context"  # Landroid/content/Context;
    .param p1, "aod_in"  # Z

    .line 188
    invoke-static {p0}, Lcom/android/server/display/MzDisplayUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 190
    sget-object v0, Lcom/android/server/display/MzDisplayUtils;->mUsageStatsProxy:Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;

    if-eqz v0, :cond_1e

    if-eqz p1, :cond_1e

    .line 191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 192
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "MzDisplayUtils"

    const-string/jumbo v2, "onOsEvent = aod_in"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    sget-object v1, Lcom/android/server/display/MzDisplayUtils;->mUsageStatsProxy:Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;

    const/4 v2, 0x0

    const-string v3, "aod_in"

    invoke-virtual {v1, v3, v2, v0}, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;->onOsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 196
    .end local v0  # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1e
    return-void
.end method

.method private static collectScreenOn(Landroid/content/Context;I)V
    .registers 6
    .param p0, "context"  # Landroid/content/Context;
    .param p1, "aod_states"  # I

    .line 199
    invoke-static {p0}, Lcom/android/server/display/MzDisplayUtils;->checkProxyValid(Landroid/content/Context;)V

    .line 201
    sget-object v0, Lcom/android/server/display/MzDisplayUtils;->mUsageStatsProxy:Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;

    if-eqz v0, :cond_3e

    .line 202
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 204
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "aod_states"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onOsEvent = screen_on, (keyType = aod_states, Value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 205
    const-string v2, "MzDisplayUtils"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    sget-object v1, Lcom/android/server/display/MzDisplayUtils;->mUsageStatsProxy:Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;

    const/4 v2, 0x0

    const-string/jumbo v3, "screen_on"

    invoke-virtual {v1, v3, v2, v0}, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;->onOsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 210
    .end local v0  # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3e
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/display/MzDisplayUtils;
    .registers 3
    .param p0, "context"  # Landroid/content/Context;

    const-class v0, Lcom/android/server/display/MzDisplayUtils;

    monitor-enter v0

    .line 72
    :try_start_3
    sget-object v1, Lcom/android/server/display/MzDisplayUtils;->sInstance:Lcom/android/server/display/MzDisplayUtils;

    if-nez v1, :cond_e

    .line 73
    new-instance v1, Lcom/android/server/display/MzDisplayUtils;

    invoke-direct {v1, p0}, Lcom/android/server/display/MzDisplayUtils;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/display/MzDisplayUtils;->sInstance:Lcom/android/server/display/MzDisplayUtils;

    .line 75
    :cond_e
    sget-object v1, Lcom/android/server/display/MzDisplayUtils;->sInstance:Lcom/android/server/display/MzDisplayUtils;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 71
    .end local p0  # "context":Landroid/content/Context;
    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isAODOn()Z
    .registers 2

    .line 54
    const/4 v0, 0x0

    const-string/jumbo v1, "persist.sys.meizu.aod"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_10

    .line 55
    invoke-static {}, Lcom/android/server/display/MzDisplayUtils;->isFODOn()Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_10
    const/4 v0, 0x1

    .line 54
    :cond_11
    return v0
.end method

.method public static isDeviceProvisioned(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"  # Landroid/content/Context;

    .line 171
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "device_provisioned"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v1, 0x1

    :cond_e
    return v1
.end method

.method public static isFODOn()Z
    .registers 1

    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method private isFingerprintAuthenticatingInAodMode()Z
    .registers 2

    .line 161
    const-class v0, Lcom/android/server/wm/FlymeWindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/FlymeWindowManagerInternal;

    .line 162
    invoke-virtual {v0}, Lcom/android/server/wm/FlymeWindowManagerInternal;->isFingerprintAuthenticatingInAodMode()Z

    move-result v0

    .line 161
    return v0
.end method

.method private static isInCall(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"  # Landroid/content/Context;

    .line 176
    const-string/jumbo v0, "telecom"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 177
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method public static isOpenDisplayDirectCurrentLight(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"  # Landroid/content/Context;

    .line 241
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public isAODShownAfterScreenOff()Z
    .registers 2

    .line 218
    iget-object v0, p0, Lcom/android/server/display/MzDisplayUtils;->mAODShownAfterScreenOff:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public setAODShownAfterScreenOff(Z)V
    .registers 4
    .param p1, "isAODShownAfterScreenOff"  # Z

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAODShownAfterScreenOff "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MzDisplayUtils"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p1, :cond_20

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto :goto_24

    :cond_20
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    :goto_24
    iput-object v0, p0, Lcom/android/server/display/MzDisplayUtils;->mAODShownAfterScreenOff:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 215
    return-void
.end method

.method protected updateAODPowerMode(Landroid/content/Context;I)I
    .registers 10
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "mode"  # I

    .line 83
    invoke-static {}, Lcom/android/server/display/MzDisplayUtils;->isAODOn()Z

    move-result v0

    const-string v1, "MzDisplayUtils"

    const/4 v2, 0x1

    if-nez v0, :cond_21

    .line 85
    if-ne p2, v2, :cond_c

    .line 86
    const/4 p2, 0x2

    .line 89
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AOD is off, return orignal mode :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return p2

    .line 93
    :cond_21
    const/4 v0, 0x0

    .line 95
    .local v0, "systemReady":Z
    :try_start_22
    invoke-static {}, Landroid/app/ActivityManager;->isSystemReady()Z

    move-result v3
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_26} :catch_28

    move v0, v3

    .line 98
    goto :goto_2c

    .line 96
    :catch_28
    move-exception v3

    .line 97
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 100
    .end local v3  # "e":Ljava/lang/Exception;
    :goto_2c
    const/4 v3, -0x1

    if-nez v0, :cond_37

    .line 101
    iput v3, p0, Lcom/android/server/display/MzDisplayUtils;->mPreScreenOffDisplayState:I

    .line 102
    const-string v2, "System not ready, return orignal mode "

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return p2

    .line 106
    :cond_37
    move v4, p2

    .line 107
    .local v4, "aodMode":I
    const/4 v5, 0x0

    if-eqz p2, :cond_6f

    if-eq p2, v2, :cond_5c

    const/4 v6, 0x2

    if-eq p2, v6, :cond_44

    .line 150
    move v2, p2

    .line 151
    .end local v4  # "aodMode":I
    .local v2, "aodMode":I
    iput v3, p0, Lcom/android/server/display/MzDisplayUtils;->mPreScreenOffDisplayState:I

    goto :goto_87

    .line 119
    .end local v2  # "aodMode":I
    .restart local v4  # "aodMode":I
    :cond_44
    iget v6, p0, Lcom/android/server/display/MzDisplayUtils;->mPreScreenOffDisplayState:I

    if-nez v6, :cond_4d

    .line 120
    const/4 v2, 0x2

    .line 121
    .end local v4  # "aodMode":I
    .restart local v2  # "aodMode":I
    invoke-static {p1, v5}, Lcom/android/server/display/MzDisplayUtils;->collectScreenOn(Landroid/content/Context;I)V

    goto :goto_52

    .line 123
    .end local v2  # "aodMode":I
    .restart local v4  # "aodMode":I
    :cond_4d
    const/4 v4, 0x2

    .line 124
    invoke-static {p1, v2}, Lcom/android/server/display/MzDisplayUtils;->collectScreenOn(Landroid/content/Context;I)V

    move v2, v4

    .line 127
    .end local v4  # "aodMode":I
    .restart local v2  # "aodMode":I
    :goto_52
    invoke-direct {p0}, Lcom/android/server/display/MzDisplayUtils;->isFingerprintAuthenticatingInAodMode()Z

    move-result v4

    if-eqz v4, :cond_59

    .line 128
    const/4 v2, 0x1

    .line 131
    :cond_59
    iput v3, p0, Lcom/android/server/display/MzDisplayUtils;->mPreScreenOffDisplayState:I

    .line 132
    goto :goto_87

    .line 135
    .end local v2  # "aodMode":I
    .restart local v4  # "aodMode":I
    :cond_5c
    invoke-static {p1}, Lcom/android/server/display/MzDisplayUtils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 136
    const/4 v2, 0x2

    .end local v4  # "aodMode":I
    .restart local v2  # "aodMode":I
    goto :goto_67

    .line 139
    .end local v2  # "aodMode":I
    .restart local v4  # "aodMode":I
    :cond_64
    move v2, p2

    .line 140
    .end local v4  # "aodMode":I
    .restart local v2  # "aodMode":I
    iput v3, p0, Lcom/android/server/display/MzDisplayUtils;->mPreScreenOffDisplayState:I

    .line 143
    :goto_67
    invoke-direct {p0}, Lcom/android/server/display/MzDisplayUtils;->isFingerprintAuthenticatingInAodMode()Z

    move-result v3

    if-eqz v3, :cond_87

    .line 144
    const/4 v2, 0x1

    goto :goto_87

    .line 109
    .end local v2  # "aodMode":I
    .restart local v4  # "aodMode":I
    :cond_6f
    invoke-static {p1}, Lcom/android/server/display/MzDisplayUtils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_84

    invoke-static {p1}, Lcom/android/server/display/MzDisplayUtils;->isInCall(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_7c

    goto :goto_84

    .line 113
    :cond_7c
    const/4 v4, 0x1

    .line 114
    invoke-static {p1, v2}, Lcom/android/server/display/MzDisplayUtils;->collectScreenOffAODIn(Landroid/content/Context;Z)V

    .line 115
    iput v3, p0, Lcom/android/server/display/MzDisplayUtils;->mPreScreenOffDisplayState:I

    .line 117
    move v2, v4

    goto :goto_87

    .line 110
    :cond_84
    :goto_84
    const/4 v2, 0x0

    .line 111
    .end local v4  # "aodMode":I
    .restart local v2  # "aodMode":I
    iput v5, p0, Lcom/android/server/display/MzDisplayUtils;->mPreScreenOffDisplayState:I

    .line 155
    :cond_87
    :goto_87
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAODPowerMode aodMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return v2
.end method
