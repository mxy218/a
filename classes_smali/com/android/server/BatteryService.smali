.class public final Lcom/android/server/BatteryService;
.super Lcom/android/server/SystemService;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BatteryService$HealthServiceWrapper;,
        Lcom/android/server/BatteryService$LocalService;,
        Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;,
        Lcom/android/server/BatteryService$BinderService;,
        Lcom/android/server/BatteryService$HealthHalCallback;,
        Lcom/android/server/BatteryService$Led;,
        Lcom/android/server/BatteryService$Shell;
    }
.end annotation


# static fields
.field private static final BATTERY_LEVEL_CHANGE_THROTTLE_MS:J = 0xea60L

.field private static final BATTERY_PLUGGED_NONE:I = 0x0

.field private static final BATTERY_SCALE:I = 0x64

.field private static final DEBUG:Z = false

.field private static final DUMPSYS_ARGS:[Ljava/lang/String;

.field private static final DUMPSYS_DATA_PATH:Ljava/lang/String; = "/data/system/"

.field private static final HEALTH_HAL_WAIT_MS:J = 0x3e8L

.field private static final MAX_BATTERY_LEVELS_QUEUE_SIZE:I = 0x64

.field static final OPTION_FORCE_UPDATE:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private mBatteryLevelCritical:Z

.field private mBatteryLevelLow:Z

.field private mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mBatteryPropertiesRegistrar:Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field mBinderService:Lcom/android/server/BatteryService$BinderService;

.field private mChargeStartLevel:I

.field private mChargeStartTime:J

.field private final mContext:Landroid/content/Context;

.field private mCriticalBatteryLevel:I

.field private mDischargeStartLevel:I

.field private mDischargeStartTime:J

.field private final mHandler:Landroid/os/Handler;

.field private mHealthHalCallback:Lcom/android/server/BatteryService$HealthHalCallback;

.field private mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

.field private mHealthServiceWrapper:Lcom/android/server/BatteryService$HealthServiceWrapper;

.field private mInvalidCharger:I

.field private mLastBatteryHealth:I

.field private mLastBatteryLevel:I

.field private mLastBatteryLevelChangedSentMs:J

.field private mLastBatteryLevelCritical:Z

.field private mLastBatteryPresent:Z

.field private mLastBatteryStatus:I

.field private mLastBatteryTemperature:I

.field private mLastBatteryVoltage:I

.field private mLastChargeCounter:I

.field private final mLastHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

.field private mLastInvalidCharger:I

.field private mLastLowBatteryWarningLevel:I

.field private mLastMaxChargingCurrent:I

.field private mLastMaxChargingVoltage:I

.field private mLastPlugType:I

.field private mLed:Lcom/android/server/BatteryService$Led;

.field private mLineageBatteryLights:Lorg/lineageos/internal/notification/LineageBatteryLights;

.field private final mLock:Ljava/lang/Object;

.field private mLowBatteryCloseWarningLevel:I

.field private mLowBatteryWarningLevel:I

.field private mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mPlugType:I

.field private mSentLowBatteryBroadcast:Z

.field private mSequence:I

.field private mShutdownBatteryTemperature:I

.field private mUpdatesStopped:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 119
    const-class v0, Lcom/android/server/BatteryService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    .line 134
    const-string v0, "--checkin"

    const-string v1, "--unplugged"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService;->DUMPSYS_ARGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 202
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 146
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    .line 149
    new-instance v0, Landroid/hardware/health/V1_0/HealthInfo;

    invoke-direct {v0}, Landroid/hardware/health/V1_0/HealthInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mLastHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    .line 162
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/BatteryService;->mSequence:I

    .line 173
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 187
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 204
    iput-object p1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 205
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    .line 206
    new-instance v0, Lcom/android/server/BatteryService$Led;

    const-class v1, Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v1}, Lcom/android/server/BatteryService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/lights/LightsManager;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/BatteryService$Led;-><init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/lights/LightsManager;)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    .line 207
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 208
    const-class p1, Landroid/app/ActivityManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManagerInternal;

    iput-object p1, p0, Lcom/android/server/BatteryService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 210
    iget-object p1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e002c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    .line 212
    iget-object p1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e006e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 214
    iget p1, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    .line 216
    iget-object p1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e00af

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/BatteryService;->mShutdownBatteryTemperature:I

    .line 219
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    .line 220
    new-instance p1, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p1}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object p1, p0, Lcom/android/server/BatteryService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 223
    new-instance p1, Ljava/io/File;

    const-string v0, "/sys/devices/virtual/switch/invalid_charger/state"

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_a6

    .line 224
    new-instance p1, Lcom/android/server/BatteryService$1;

    invoke-direct {p1, p0}, Lcom/android/server/BatteryService$1;-><init>(Lcom/android/server/BatteryService;)V

    .line 235
    const-string v0, "DEVPATH=/devices/virtual/switch/invalid_charger"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 238
    :cond_a6
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/BatteryService;)Ljava/lang/Object;
    .registers 1

    .line 118
    iget-object p0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/BatteryService;)I
    .registers 1

    .line 118
    iget p0, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    return p0
.end method

.method static synthetic access$1000(Lcom/android/server/BatteryService;)Landroid/hardware/health/V1_0/HealthInfo;
    .registers 1

    .line 118
    iget-object p0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/server/BatteryService;I)I
    .registers 2

    .line 118
    iput p1, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    return p1
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .registers 1

    .line 118
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/BatteryService;)Lorg/lineageos/internal/notification/LineageBatteryLights;
    .registers 1

    .line 118
    iget-object p0, p0, Lcom/android/server/BatteryService;->mLineageBatteryLights:Lorg/lineageos/internal/notification/LineageBatteryLights;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/server/BatteryService;)I
    .registers 1

    .line 118
    iget p0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    return p0
.end method

.method static synthetic access$1400(Lcom/android/server/BatteryService;Landroid/hardware/health/V2_0/HealthInfo;)V
    .registers 2

    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->update(Landroid/hardware/health/V2_0/HealthInfo;)V

    return-void
.end method

.method static synthetic access$1500(Ljava/lang/String;)V
    .registers 1

    .line 118
    invoke-static {p0}, Lcom/android/server/BatteryService;->traceBegin(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600()V
    .registers 0

    .line 118
    invoke-static {}, Lcom/android/server/BatteryService;->traceEnd()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/BatteryService;Ljava/io/FileDescriptor;)V
    .registers 2

    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->dumpProto(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/BatteryService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 118
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/BatteryService;->dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$HealthServiceWrapper;
    .registers 1

    .line 118
    iget-object p0, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/BatteryService$HealthServiceWrapper;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/server/BatteryService;I)Z
    .registers 2

    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->isPoweredLocked(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2100(Lcom/android/server/BatteryService;)I
    .registers 1

    .line 118
    iget p0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    return p0
.end method

.method static synthetic access$2200(Lcom/android/server/BatteryService;)Z
    .registers 1

    .line 118
    iget-boolean p0, p0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/server/BatteryService;)V
    .registers 1

    .line 118
    invoke-direct {p0}, Lcom/android/server/BatteryService;->updateBatteryWarningLevelLocked()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/BatteryService;)V
    .registers 1

    .line 118
    invoke-direct {p0}, Lcom/android/server/BatteryService;->updateLedPulse()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/BatteryService;)Landroid/app/ActivityManagerInternal;
    .registers 1

    .line 118
    iget-object p0, p0, Lcom/android/server/BatteryService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/server/BatteryService;)Landroid/content/Context;
    .registers 1

    .line 118
    iget-object p0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private static copy(Landroid/hardware/health/V1_0/HealthInfo;Landroid/hardware/health/V1_0/HealthInfo;)V
    .registers 3

    .line 458
    iget-boolean v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    iput-boolean v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    .line 459
    iget-boolean v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    iput-boolean v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    .line 460
    iget-boolean v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    iput-boolean v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    .line 461
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    .line 462
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    .line 463
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    .line 464
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    .line 465
    iget-boolean v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    iput-boolean v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    .line 466
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    .line 467
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    .line 468
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    .line 469
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryCurrent:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCurrent:I

    .line 470
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryCycleCount:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCycleCount:I

    .line 471
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryFullCharge:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryFullCharge:I

    .line 472
    iget v0, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    iput v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    .line 473
    iget-object p1, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    iput-object p1, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    .line 474
    return-void
.end method

.method static dumpHelp(Ljava/io/PrintWriter;)V
    .registers 3

    .line 871
    const-string v0, "Battery service (battery) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 872
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 873
    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 874
    const-string v0, "  set [-f] [ac|usb|wireless|status|level|temp|present|invalid] <value>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 875
    const-string v0, "    Force a battery property value, freezing battery state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 876
    const-string v0, "    -f: force a battery change broadcast be sent, prints new sequence."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 877
    const-string v1, "  unplug [-f]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 878
    const-string v1, "    Force battery unplugged, freezing battery state."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 879
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 880
    const-string v1, "  reset [-f]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 881
    const-string v1, "    Unfreeze battery state, returning to current hardware values."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 882
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 883
    return-void
.end method

.method private dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 14

    .line 1019
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1020
    if-eqz p3, :cond_2b

    :try_start_5
    array-length v1, p3

    if-eqz v1, :cond_2b

    const-string v1, "-a"

    const/4 v2, 0x0

    aget-object v2, p3, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_2b

    .line 1040
    :cond_14
    new-instance v2, Lcom/android/server/BatteryService$Shell;

    invoke-direct {v2, p0}, Lcom/android/server/BatteryService$Shell;-><init>(Lcom/android/server/BatteryService;)V

    .line 1041
    iget-object v3, p0, Lcom/android/server/BatteryService;->mBinderService:Lcom/android/server/BatteryService$BinderService;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    new-instance v9, Landroid/os/ResultReceiver;

    const/4 p2, 0x0

    invoke-direct {v9, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    move-object v5, p1

    move-object v7, p3

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/BatteryService$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    goto/16 :goto_176

    .line 1021
    :cond_2b
    :goto_2b
    const-string p1, "Current Battery Service state:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1022
    iget-boolean p1, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-eqz p1, :cond_39

    .line 1023
    const-string p1, "  (UPDATES STOPPED -- use \'reset\' to restart)"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1025
    :cond_39
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  AC powered: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean p3, p3, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1026
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  USB powered: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean p3, p3, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1027
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  Wireless powered: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean p3, p3, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1028
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  Max charging current: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget p3, p3, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1029
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  Max charging voltage: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget p3, p3, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1030
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  Charge counter: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget p3, p3, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1031
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  status: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget p3, p3, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1032
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  health: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget p3, p3, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1033
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  present: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean p3, p3, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1034
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  level: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget p3, p3, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1035
    const-string p1, "  scale: 100"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1036
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  voltage: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget p3, p3, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1037
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  temperature: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget p3, p3, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1038
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  technology: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object p3, p3, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1043
    :goto_176
    monitor-exit v0

    .line 1044
    return-void

    .line 1043
    :catchall_178
    move-exception p1

    monitor-exit v0
    :try_end_17a
    .catchall {:try_start_5 .. :try_end_17a} :catchall_178

    throw p1
.end method

.method private dumpProto(Ljava/io/FileDescriptor;)V
    .registers 6

    .line 1047
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1049
    iget-object p1, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1050
    const-wide v1, 0x10800000001L

    :try_start_d
    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1051
    const/4 v1, 0x0

    .line 1052
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    if-eqz v2, :cond_1b

    .line 1053
    const/4 v1, 0x1

    goto :goto_2a

    .line 1054
    :cond_1b
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    if-eqz v2, :cond_23

    .line 1055
    const/4 v1, 0x2

    goto :goto_2a

    .line 1056
    :cond_23
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v2, :cond_2a

    .line 1057
    const/4 v1, 0x4

    .line 1059
    :cond_2a
    :goto_2a
    const-wide v2, 0x10e00000002L

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1060
    const-wide v1, 0x10500000003L

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1061
    const-wide v1, 0x10500000004L

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1062
    const-wide v1, 0x10500000005L

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1063
    const-wide v1, 0x10e00000006L

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1064
    const-wide v1, 0x10e00000007L

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1065
    const-wide v1, 0x10800000008L

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1066
    const-wide v1, 0x10500000009L

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1067
    const-wide v1, 0x1050000000aL

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1068
    const-wide v1, 0x1050000000bL

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1069
    const-wide v1, 0x1050000000cL

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1070
    const-wide v1, 0x1090000000dL

    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1071
    monitor-exit p1
    :try_end_b5
    .catchall {:try_start_d .. :try_end_b5} :catchall_b9

    .line 1072
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 1073
    return-void

    .line 1071
    :catchall_b9
    move-exception v0

    :try_start_ba
    monitor-exit p1
    :try_end_bb
    .catchall {:try_start_ba .. :try_end_bb} :catchall_b9

    throw v0
.end method

.method private getIconLocked(I)I
    .registers 5

    .line 840
    iget-object p1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget p1, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const v0, 0x10807f1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_b

    .line 841
    return v0

    .line 842
    :cond_b
    iget-object p1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget p1, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const/4 v1, 0x3

    const v2, 0x10807e3

    if-ne p1, v1, :cond_16

    .line 843
    return v2

    .line 844
    :cond_16
    iget-object p1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget p1, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const/4 v1, 0x4

    if-eq p1, v1, :cond_29

    iget-object p1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget p1, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const/4 v1, 0x5

    if-ne p1, v1, :cond_25

    goto :goto_29

    .line 853
    :cond_25
    const p1, 0x10807ff

    return p1

    .line 846
    :cond_29
    :goto_29
    const/4 p1, 0x7

    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->isPoweredLocked(I)Z

    move-result p1

    if-eqz p1, :cond_39

    iget-object p1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget p1, p1, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    const/16 v1, 0x64

    if-lt p1, v1, :cond_39

    .line 848
    return v0

    .line 850
    :cond_39
    return v2
.end method

.method private isPoweredLocked(I)Z
    .registers 4

    .line 346
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 347
    return v1

    .line 349
    :cond_8
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    if-eqz v0, :cond_13

    .line 350
    return v1

    .line 352
    :cond_13
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    if-eqz v0, :cond_1e

    .line 353
    return v1

    .line 355
    :cond_1e
    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_29

    iget-object p1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean p1, p1, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    if-eqz p1, :cond_29

    .line 356
    return v1

    .line 358
    :cond_29
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic lambda$D1kwd7L7yyqN5niz3KWkTepVmUk(Lcom/android/server/BatteryService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/BatteryService;->sendEnqueuedBatteryLevelChangedEvents()V

    return-void
.end method

.method static synthetic lambda$sendBatteryChangedIntentLocked$0(Landroid/content/Intent;)V
    .registers 2

    .line 726
    const/4 v0, -0x1

    invoke-static {p0, v0}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    return-void
.end method

.method private logBatteryStatsLocked()V
    .registers 10

    .line 775
    const-string v0, "failed to close dumpsys output stream"

    const-string v1, "failed to delete temporary dumpsys file: "

    const-string v2, "batterystats"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 776
    if-nez v2, :cond_d

    return-void

    .line 778
    :cond_d
    iget-object v3, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const-string v4, "dropbox"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/DropBoxManager;

    .line 779
    if-eqz v3, :cond_f6

    const-string v4, "BATTERY_DISCHARGE_INFO"

    invoke-virtual {v3, v4}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_23

    goto/16 :goto_f6

    .line 781
    :cond_23
    nop

    .line 782
    nop

    .line 785
    const/4 v5, 0x0

    :try_start_26
    new-instance v6, Ljava/io/File;

    const-string v7, "/data/system/batterystats.dump"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2d} :catch_92
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2d} :catch_6d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_6a

    .line 786
    :try_start_2d
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_32} :catch_68
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_32} :catch_66
    .catchall {:try_start_2d .. :try_end_32} :catchall_c8

    .line 787
    :try_start_32
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    sget-object v8, Lcom/android/server/BatteryService;->DUMPSYS_ARGS:[Ljava/lang/String;

    invoke-interface {v2, v5, v8}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 788
    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 791
    const/4 v2, 0x2

    invoke-virtual {v3, v4, v6, v2}, Landroid/os/DropBoxManager;->addFile(Ljava/lang/String;Ljava/io/File;I)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_42} :catch_63
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_42} :catch_60
    .catchall {:try_start_32 .. :try_end_42} :catchall_5c

    .line 798
    nop

    .line 800
    :try_start_43
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_47

    .line 803
    goto :goto_4d

    .line 801
    :catch_47
    move-exception v2

    .line 802
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    :goto_4d
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_c7

    .line 806
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_b6

    .line 798
    :catchall_5c
    move-exception v2

    move-object v5, v7

    goto/16 :goto_c9

    .line 794
    :catch_60
    move-exception v2

    move-object v5, v7

    goto :goto_6f

    .line 792
    :catch_63
    move-exception v2

    move-object v5, v7

    goto :goto_94

    .line 794
    :catch_66
    move-exception v2

    goto :goto_6f

    .line 792
    :catch_68
    move-exception v2

    goto :goto_94

    .line 798
    :catchall_6a
    move-exception v2

    move-object v6, v5

    goto :goto_c9

    .line 794
    :catch_6d
    move-exception v2

    move-object v6, v5

    .line 795
    :goto_6f
    :try_start_6f
    sget-object v3, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v4, "failed to write dumpsys file"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_76
    .catchall {:try_start_6f .. :try_end_76} :catchall_c8

    .line 798
    if-eqz v5, :cond_82

    .line 800
    :try_start_78
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_7c

    .line 803
    goto :goto_82

    .line 801
    :catch_7c
    move-exception v2

    .line 802
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    :cond_82
    :goto_82
    if-eqz v6, :cond_c7

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_c7

    .line 806
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_b6

    .line 792
    :catch_92
    move-exception v2

    move-object v6, v5

    .line 793
    :goto_94
    :try_start_94
    sget-object v3, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v4, "failed to dump battery service"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9b
    .catchall {:try_start_94 .. :try_end_9b} :catchall_c8

    .line 798
    if-eqz v5, :cond_a7

    .line 800
    :try_start_9d
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a0} :catch_a1

    .line 803
    goto :goto_a7

    .line 801
    :catch_a1
    move-exception v2

    .line 802
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    :cond_a7
    :goto_a7
    if-eqz v6, :cond_c7

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_c7

    .line 806
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_b6
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 806
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    :cond_c7
    return-void

    .line 798
    :catchall_c8
    move-exception v2

    :goto_c9
    if-eqz v5, :cond_d5

    .line 800
    :try_start_cb
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_ce} :catch_cf

    .line 803
    goto :goto_d5

    .line 801
    :catch_cf
    move-exception v3

    .line 802
    sget-object v3, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    :cond_d5
    :goto_d5
    if-eqz v6, :cond_f5

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_f5

    .line 806
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 806
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f5
    throw v2

    .line 779
    :cond_f6
    :goto_f6
    return-void
.end method

.method private logOutlierLocked(J)V
    .registers 8

    .line 813
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 814
    const-string v1, "battery_discharge_threshold"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 816
    const-string v2, "battery_discharge_duration_threshold"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 819
    if-eqz v1, :cond_4e

    if-eqz v0, :cond_4e

    .line 821
    :try_start_16
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 822
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 823
    cmp-long p1, p1, v2

    if-gtz p1, :cond_2e

    iget p1, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    iget-object p2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget p2, p2, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    sub-int/2addr p1, p2

    if-lt p1, v4, :cond_2e

    .line 826
    invoke-direct {p0}, Lcom/android/server/BatteryService;->logBatteryStatsLocked()V
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_2e} :catch_2f

    .line 835
    :cond_2e
    goto :goto_4e

    .line 832
    :catch_2f
    move-exception p1

    .line 833
    sget-object p1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid DischargeThresholds GService string: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " or "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    :cond_4e
    :goto_4e
    return-void
.end method

.method private processValuesFromShellLocked(Ljava/io/PrintWriter;I)V
    .registers 4

    .line 1012
    const/4 v0, 0x1

    and-int/2addr p2, v0

    if-eqz p2, :cond_5

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    invoke-direct {p0, v0}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    .line 1013
    if-eqz p2, :cond_10

    .line 1014
    iget p2, p0, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 1016
    :cond_10
    return-void
.end method

.method private processValuesLocked(Z)V
    .registers 18

    .line 477
    move-object/from16 v1, p0

    .line 478
    nop

    .line 480
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_15

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v4, v1, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    if-gt v0, v4, :cond_15

    move v0, v3

    goto :goto_16

    :cond_15
    move v0, v2

    :goto_16
    iput-boolean v0, v1, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    .line 483
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    const/4 v4, 0x4

    const/4 v5, 0x2

    if-eqz v0, :cond_23

    .line 484
    iput v3, v1, Lcom/android/server/BatteryService;->mPlugType:I

    goto :goto_37

    .line 485
    :cond_23
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    if-eqz v0, :cond_2c

    .line 486
    iput v5, v1, Lcom/android/server/BatteryService;->mPlugType:I

    goto :goto_37

    .line 487
    :cond_2c
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    if-eqz v0, :cond_35

    .line 488
    iput v4, v1, Lcom/android/server/BatteryService;->mPlugType:I

    goto :goto_37

    .line 490
    :cond_35
    iput v2, v1, Lcom/android/server/BatteryService;->mPlugType:I

    .line 502
    :goto_37
    :try_start_37
    iget-object v6, v1, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v7, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v8, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    iget v9, v1, Lcom/android/server/BatteryService;->mPlugType:I

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v10, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v11, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v12, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v13, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v14, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryFullCharge:I

    invoke-interface/range {v6 .. v14}, Lcom/android/internal/app/IBatteryStats;->setBatteryState(IIIIIIII)V
    :try_end_5a
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_5a} :catch_5b

    .line 508
    goto :goto_5c

    .line 506
    :catch_5b
    move-exception v0

    .line 510
    :goto_5c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->shutdownIfNoPowerLocked()V

    .line 511
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->shutdownIfOverTempLocked()V

    .line 513
    if-nez p1, :cond_b8

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    iget v6, v1, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-ne v0, v6, :cond_b8

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    iget v6, v1, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    if-ne v0, v6, :cond_b8

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    iget-boolean v6, v1, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    if-ne v0, v6, :cond_b8

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v6, v1, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    if-ne v0, v6, :cond_b8

    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    iget v6, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-ne v0, v6, :cond_b8

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    iget v6, v1, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    if-ne v0, v6, :cond_b8

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    iget v6, v1, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    if-ne v0, v6, :cond_b8

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    iget v6, v1, Lcom/android/server/BatteryService;->mLastMaxChargingCurrent:I

    if-ne v0, v6, :cond_b8

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    iget v6, v1, Lcom/android/server/BatteryService;->mLastMaxChargingVoltage:I

    if-ne v0, v6, :cond_b8

    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    iget v6, v1, Lcom/android/server/BatteryService;->mLastChargeCounter:I

    if-ne v0, v6, :cond_b8

    iget v0, v1, Lcom/android/server/BatteryService;->mInvalidCharger:I

    iget v6, v1, Lcom/android/server/BatteryService;->mLastInvalidCharger:I

    if-eq v0, v6, :cond_352

    .line 525
    :cond_b8
    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    iget v6, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    const/4 v7, 0x5

    const/4 v8, 0x3

    const-wide/16 v9, 0x0

    if-eq v0, v6, :cond_187

    .line 526
    const/16 v11, 0x58a

    const/16 v12, 0x58d

    const/16 v13, 0x589

    if-nez v6, :cond_133

    .line 528
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iput v0, v1, Lcom/android/server/BatteryService;->mChargeStartLevel:I

    .line 529
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    iput-wide v14, v1, Lcom/android/server/BatteryService;->mChargeStartTime:J

    .line 531
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, v13}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 532
    invoke-virtual {v0, v4}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 533
    iget v6, v1, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v12, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 534
    iget-object v6, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v6, v6, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    .line 535
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 534
    invoke-virtual {v0, v11, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 536
    iget-object v6, v1, Lcom/android/server/BatteryService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v6, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 540
    iget-wide v11, v1, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    cmp-long v0, v11, v9

    if-eqz v0, :cond_130

    iget v0, v1, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    iget-object v6, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v6, v6, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    if-eq v0, v6, :cond_130

    .line 541
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iget-wide v13, v1, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    sub-long/2addr v11, v13

    .line 542
    nop

    .line 543
    const/16 v0, 0xaaa

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v6, v2

    iget v13, v1, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    .line 544
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v6, v3

    iget-object v13, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v13, v13, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v6, v5

    .line 543
    invoke-static {v0, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 546
    iput-wide v9, v1, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    move v0, v3

    goto :goto_132

    .line 548
    :cond_130
    move v0, v2

    move-wide v11, v9

    :goto_132
    goto :goto_189

    :cond_133
    if-nez v0, :cond_187

    .line 550
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    iput-wide v14, v1, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    .line 551
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iput v0, v1, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    .line 553
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    iget-wide v4, v1, Lcom/android/server/BatteryService;->mChargeStartTime:J

    sub-long/2addr v14, v4

    .line 554
    cmp-long v0, v4, v9

    if-eqz v0, :cond_185

    cmp-long v0, v14, v9

    if-eqz v0, :cond_185

    .line 555
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, v13}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 556
    invoke-virtual {v0, v7}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 557
    iget v4, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v12, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 558
    const/16 v4, 0x58c

    .line 559
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 558
    invoke-virtual {v0, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 560
    iget v4, v1, Lcom/android/server/BatteryService;->mChargeStartLevel:I

    .line 561
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 560
    invoke-virtual {v0, v11, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 562
    const/16 v4, 0x58b

    iget-object v5, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v5, v5, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    .line 563
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 562
    invoke-virtual {v0, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 564
    iget-object v4, v1, Lcom/android/server/BatteryService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v4, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 566
    :cond_185
    iput-wide v9, v1, Lcom/android/server/BatteryService;->mChargeStartTime:J

    .line 569
    :cond_187
    move v0, v2

    move-wide v11, v9

    :goto_189
    iget-object v4, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v4, v4, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    iget v5, v1, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-ne v4, v5, :cond_1a7

    iget-object v4, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v4, v4, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    iget v5, v1, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    if-ne v4, v5, :cond_1a7

    iget-object v4, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v4, v4, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    iget-boolean v5, v1, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    if-ne v4, v5, :cond_1a7

    iget v4, v1, Lcom/android/server/BatteryService;->mPlugType:I

    iget v5, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eq v4, v5, :cond_1dc

    .line 573
    :cond_1a7
    const/16 v4, 0xaa3

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v7, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v7, v7, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    .line 574
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v2

    iget-object v7, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v7, v7, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v3

    iget-object v7, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v7, v7, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v13, 0x2

    aput-object v7, v5, v13

    iget v7, v1, Lcom/android/server/BatteryService;->mPlugType:I

    .line 575
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v8

    iget-object v7, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object v7, v7, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    const/4 v6, 0x4

    aput-object v7, v5, v6

    .line 573
    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 577
    :cond_1dc
    iget-object v4, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v4, v4, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v5, v1, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    if-eq v4, v5, :cond_20a

    .line 580
    const/16 v4, 0xaa2

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v6, v6, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    .line 581
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v6, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v6, v6, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    iget-object v6, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v6, v6, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    .line 580
    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 583
    :cond_20a
    iget-boolean v4, v1, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    if-eqz v4, :cond_21f

    iget-boolean v4, v1, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z

    if-nez v4, :cond_21f

    iget v4, v1, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v4, :cond_21f

    .line 587
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, v1, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    sub-long v11, v4, v6

    .line 588
    move v0, v3

    .line 591
    :cond_21f
    iget-boolean v4, v1, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    if-nez v4, :cond_238

    .line 593
    iget v4, v1, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v4, :cond_256

    iget-object v4, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v4, v4, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    if-eq v4, v3, :cond_256

    iget-object v4, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v4, v4, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v5, v1, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-gt v4, v5, :cond_256

    .line 597
    iput-boolean v3, v1, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    goto :goto_256

    .line 601
    :cond_238
    iget v4, v1, Lcom/android/server/BatteryService;->mPlugType:I

    if-eqz v4, :cond_23f

    .line 602
    iput-boolean v2, v1, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    goto :goto_256

    .line 603
    :cond_23f
    iget-object v4, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v4, v4, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v5, v1, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    if-lt v4, v5, :cond_24a

    .line 604
    iput-boolean v2, v1, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    goto :goto_256

    .line 605
    :cond_24a
    if-eqz p1, :cond_256

    iget-object v4, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v4, v4, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v5, v1, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-lt v4, v5, :cond_256

    .line 608
    iput-boolean v2, v1, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    .line 612
    :cond_256
    :goto_256
    iget v4, v1, Lcom/android/server/BatteryService;->mSequence:I

    add-int/2addr v4, v3

    iput v4, v1, Lcom/android/server/BatteryService;->mSequence:I

    .line 617
    iget v4, v1, Lcom/android/server/BatteryService;->mPlugType:I

    const-string/jumbo v5, "seq"

    const/high16 v6, 0x4000000

    if-eqz v4, :cond_282

    iget v4, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-nez v4, :cond_282

    .line 618
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 619
    invoke-virtual {v4, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 620
    iget v7, v1, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 621
    iget-object v7, v1, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/BatteryService$8;

    invoke-direct {v8, v1, v4}, Lcom/android/server/BatteryService$8;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 627
    goto :goto_2a3

    .line 628
    :cond_282
    iget v4, v1, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v4, :cond_2a3

    iget v4, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eqz v4, :cond_2a3

    .line 629
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 630
    invoke-virtual {v4, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 631
    iget v7, v1, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 632
    iget-object v7, v1, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/BatteryService$9;

    invoke-direct {v8, v1, v4}, Lcom/android/server/BatteryService$9;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 640
    :cond_2a3
    :goto_2a3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->shouldSendBatteryLowLocked()Z

    move-result v4

    if-eqz v4, :cond_2c5

    .line 641
    iput-boolean v3, v1, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 642
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.BATTERY_LOW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 643
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 644
    iget v3, v1, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 645
    iget-object v3, v1, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/BatteryService$10;

    invoke-direct {v4, v1, v2}, Lcom/android/server/BatteryService$10;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2ed

    .line 651
    :cond_2c5
    iget-boolean v3, v1, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    if-eqz v3, :cond_2ed

    iget-object v3, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v4, v1, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    if-lt v3, v4, :cond_2ed

    .line 653
    iput-boolean v2, v1, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 654
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.BATTERY_OKAY"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 655
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 656
    iget v3, v1, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 657
    iget-object v3, v1, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/BatteryService$11;

    invoke-direct {v4, v1, v2}, Lcom/android/server/BatteryService$11;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2ee

    .line 651
    :cond_2ed
    :goto_2ed
    nop

    .line 668
    :goto_2ee
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->sendBatteryChangedIntentLocked()V

    .line 669
    iget v2, v1, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    iget-object v3, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    if-ne v2, v3, :cond_2ff

    iget v2, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    iget v3, v1, Lcom/android/server/BatteryService;->mPlugType:I

    if-eq v2, v3, :cond_302

    .line 670
    :cond_2ff
    invoke-direct/range {p0 .. p0}, Lcom/android/server/BatteryService;->sendBatteryLevelChangedIntentLocked()V

    .line 675
    :cond_302
    iget-object v2, v1, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    invoke-virtual {v2}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 678
    if-eqz v0, :cond_310

    cmp-long v0, v11, v9

    if-eqz v0, :cond_310

    .line 679
    invoke-direct {v1, v11, v12}, Lcom/android/server/BatteryService;->logOutlierLocked(J)V

    .line 682
    :cond_310
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    .line 683
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    .line 684
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    iput-boolean v0, v1, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    .line 685
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    .line 686
    iget v0, v1, Lcom/android/server/BatteryService;->mPlugType:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 687
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    .line 688
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    .line 689
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastMaxChargingCurrent:I

    .line 690
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastMaxChargingVoltage:I

    .line 691
    iget-object v0, v1, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastChargeCounter:I

    .line 692
    iget-boolean v0, v1, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    iput-boolean v0, v1, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z

    .line 693
    iget v0, v1, Lcom/android/server/BatteryService;->mInvalidCharger:I

    iput v0, v1, Lcom/android/server/BatteryService;->mLastInvalidCharger:I

    .line 695
    :cond_352
    return-void
.end method

.method private registerHealthCallback()V
    .registers 9

    .line 284
    const-string v0, "HealthInitWrapper"

    invoke-static {v0}, Lcom/android/server/BatteryService;->traceBegin(Ljava/lang/String;)V

    .line 285
    new-instance v0, Lcom/android/server/BatteryService$HealthServiceWrapper;

    invoke-direct {v0}, Lcom/android/server/BatteryService$HealthServiceWrapper;-><init>()V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/BatteryService$HealthServiceWrapper;

    .line 286
    new-instance v0, Lcom/android/server/BatteryService$HealthHalCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/BatteryService$HealthHalCallback;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mHealthHalCallback:Lcom/android/server/BatteryService$HealthHalCallback;

    .line 289
    :try_start_14
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthServiceWrapper:Lcom/android/server/BatteryService$HealthServiceWrapper;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthHalCallback:Lcom/android/server/BatteryService$HealthHalCallback;

    new-instance v2, Lcom/android/server/BatteryService$4;

    invoke-direct {v2, p0}, Lcom/android/server/BatteryService$4;-><init>(Lcom/android/server/BatteryService;)V

    new-instance v3, Lcom/android/server/BatteryService$5;

    invoke-direct {v3, p0}, Lcom/android/server/BatteryService$5;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/BatteryService$HealthServiceWrapper;->init(Lcom/android/server/BatteryService$HealthServiceWrapper$Callback;Lcom/android/server/BatteryService$HealthServiceWrapper$IServiceManagerSupplier;Lcom/android/server/BatteryService$HealthServiceWrapper$IHealthSupplier;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_25} :catch_a7
    .catch Ljava/util/NoSuchElementException; {:try_start_14 .. :try_end_25} :catch_9e
    .catchall {:try_start_14 .. :try_end_25} :catchall_9c

    .line 299
    invoke-static {}, Lcom/android/server/BatteryService;->traceEnd()V

    .line 300
    nop

    .line 302
    const-string v0, "HealthInitWaitUpdate"

    invoke-static {v0}, Lcom/android/server/BatteryService;->traceBegin(Ljava/lang/String;)V

    .line 306
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 307
    iget-object v2, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 308
    :goto_35
    :try_start_35
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    if-nez v3, :cond_73

    .line 309
    sget-object v3, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "health: Waited "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms for callbacks. Waiting another "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " ms..."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catchall {:try_start_35 .. :try_end_64} :catchall_99

    .line 312
    :try_start_64
    iget-object v3, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_69
    .catch Ljava/lang/InterruptedException; {:try_start_64 .. :try_end_69} :catch_6a
    .catchall {:try_start_64 .. :try_end_69} :catchall_99

    .line 316
    :goto_69
    goto :goto_35

    .line 313
    :catch_6a
    move-exception v3

    .line 314
    :try_start_6b
    sget-object v3, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v4, "health: InterruptedException when waiting for update.  Continuing..."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    .line 318
    :cond_73
    monitor-exit v2
    :try_end_74
    .catchall {:try_start_6b .. :try_end_74} :catchall_99

    .line 320
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "health: Waited "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms and received the update."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-static {}, Lcom/android/server/BatteryService;->traceEnd()V

    .line 323
    return-void

    .line 318
    :catchall_99
    move-exception v0

    :try_start_9a
    monitor-exit v2
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_99

    throw v0

    .line 299
    :catchall_9c
    move-exception v0

    goto :goto_b4

    .line 295
    :catch_9e
    move-exception v0

    .line 296
    :try_start_9f
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v2, "health: cannot register callback. (no supported health HAL service)"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    throw v0

    .line 292
    :catch_a7
    move-exception v0

    .line 293
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v2, "health: cannot register callback. (RemoteException)"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_b4
    .catchall {:try_start_9f .. :try_end_b4} :catchall_9c

    .line 299
    :goto_b4
    invoke-static {}, Lcom/android/server/BatteryService;->traceEnd()V

    throw v0
.end method

.method private sendBatteryChangedIntentLocked()V
    .registers 5

    .line 699
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 700
    const/high16 v1, 0x60000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 703
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v1, v1, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    invoke-direct {p0, v1}, Lcom/android/server/BatteryService;->getIconLocked(I)I

    move-result v1

    .line 705
    iget v2, p0, Lcom/android/server/BatteryService;->mSequence:I

    const-string/jumbo v3, "seq"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 706
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const-string/jumbo v3, "status"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 707
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    const-string v3, "health"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 708
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    const-string/jumbo v3, "present"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 709
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v2, v2, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    const-string v3, "level"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 710
    iget-boolean v2, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    const-string v3, "battery_low"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 711
    const-string/jumbo v2, "scale"

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 712
    const-string v2, "icon-small"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 713
    iget v1, p0, Lcom/android/server/BatteryService;->mPlugType:I

    const-string/jumbo v2, "plugged"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 714
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v1, v1, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    const-string/jumbo v2, "voltage"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 715
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v1, v1, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    const-string/jumbo v2, "temperature"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 716
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object v1, v1, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    const-string/jumbo v2, "technology"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 717
    iget v1, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    const-string v2, "invalid_charger"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 718
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v1, v1, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    const-string v2, "max_charging_current"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 719
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v1, v1, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    const-string v2, "max_charging_voltage"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 720
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v1, v1, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    const-string v2, "charge_counter"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 726
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/-$$Lambda$BatteryService$2x73lvpB0jctMSVP4qb9sHAqRPw;

    invoke-direct {v2, v0}, Lcom/android/server/-$$Lambda$BatteryService$2x73lvpB0jctMSVP4qb9sHAqRPw;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 727
    return-void
.end method

.method private sendBatteryLevelChangedIntentLocked()V
    .registers 10

    .line 730
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 731
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 732
    iget v3, p0, Lcom/android/server/BatteryService;->mSequence:I

    const-string/jumbo v4, "seq"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 733
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const-string/jumbo v4, "status"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 734
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    const-string v4, "health"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 735
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    const-string/jumbo v4, "present"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 736
    iget-object v3, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v3, v3, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    const-string v4, "level"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 737
    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    const-string v4, "battery_low"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 738
    const/16 v3, 0x64

    const-string/jumbo v4, "scale"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 739
    iget v4, p0, Lcom/android/server/BatteryService;->mPlugType:I

    const-string/jumbo v5, "plugged"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 740
    iget-object v4, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v4, v4, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    const-string/jumbo v5, "voltage"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 741
    const-string v4, "android.os.extra.EVENT_TIMESTAMP"

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 743
    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    .line 744
    iget-object v5, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v5, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 746
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-le v0, v3, :cond_75

    .line 747
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 750
    :cond_75
    if-eqz v4, :cond_92

    .line 752
    iget-wide v3, p0, Lcom/android/server/BatteryService;->mLastBatteryLevelChangedSentMs:J

    sub-long v5, v1, v3

    const-wide/32 v7, 0xea60

    cmp-long v0, v5, v7

    if-lez v0, :cond_85

    .line 753
    const-wide/16 v0, 0x0

    goto :goto_88

    :cond_85
    add-long/2addr v3, v7

    sub-long v0, v3, v1

    .line 754
    :goto_88
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/-$$Lambda$BatteryService$D1kwd7L7yyqN5niz3KWkTepVmUk;

    invoke-direct {v3, p0}, Lcom/android/server/-$$Lambda$BatteryService$D1kwd7L7yyqN5niz3KWkTepVmUk;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 756
    :cond_92
    return-void
.end method

.method private sendEnqueuedBatteryLevelChangedEvents()V
    .registers 5

    .line 760
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 761
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 762
    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryLevelsEventQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    .line 763
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_31

    .line 764
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.BATTERY_LEVEL_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 765
    const/high16 v2, 0x1000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 766
    const-string v2, "android.os.extra.EVENTS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 768
    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.BATTERY_STATS"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 770
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/BatteryService;->mLastBatteryLevelChangedSentMs:J

    .line 771
    return-void

    .line 763
    :catchall_31
    move-exception v1

    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v1
.end method

.method private shouldSendBatteryLowLocked()Z
    .registers 6

    .line 362
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    .line 363
    :goto_9
    iget v3, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eqz v3, :cond_f

    move v3, v2

    goto :goto_10

    :cond_f
    move v3, v1

    .line 371
    :goto_10
    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    if-eq v0, v2, :cond_2f

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v4, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-gt v0, v4, :cond_2f

    if-nez v3, :cond_2e

    iget v0, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    if-gt v0, v4, :cond_2e

    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iget v3, p0, Lcom/android/server/BatteryService;->mLastLowBatteryWarningLevel:I

    if-le v0, v3, :cond_2f

    :cond_2e
    move v1, v2

    :cond_2f
    return v1
.end method

.method private shouldShutdownLocked()Z
    .registers 4

    .line 379
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    const/4 v1, 0x0

    if-lez v0, :cond_8

    .line 380
    return v1

    .line 384
    :cond_8
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-boolean v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    if-nez v0, :cond_f

    .line 385
    return v1

    .line 392
    :cond_f
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_17

    const/4 v1, 0x1

    :cond_17
    return v1
.end method

.method private shutdownIfNoPowerLocked()V
    .registers 3

    .line 398
    invoke-direct {p0}, Lcom/android/server/BatteryService;->shouldShutdownLocked()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 399
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$6;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$6;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 413
    :cond_10
    return-void
.end method

.method private shutdownIfOverTempLocked()V
    .registers 3

    .line 419
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    iget v1, p0, Lcom/android/server/BatteryService;->mShutdownBatteryTemperature:I

    if-le v0, v1, :cond_12

    .line 420
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/BatteryService$7;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$7;-><init>(Lcom/android/server/BatteryService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 434
    :cond_12
    return-void
.end method

.method private static traceBegin(Ljava/lang/String;)V
    .registers 3

    .line 1076
    const-wide/32 v0, 0x80000

    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1077
    return-void
.end method

.method private static traceEnd()V
    .registers 2

    .line 1080
    const-wide/32 v0, 0x80000

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1081
    return-void
.end method

.method private update(Landroid/hardware/health/V2_0/HealthInfo;)V
    .registers 6

    .line 437
    const-string v0, "HealthInfoUpdate"

    invoke-static {v0}, Lcom/android/server/BatteryService;->traceBegin(Ljava/lang/String;)V

    .line 439
    iget-object v0, p1, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    const-wide/32 v1, 0x20000

    const-string v3, "BatteryChargeCounter"

    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 441
    iget-object v0, p1, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCurrent:I

    const-string v3, "BatteryCurrent"

    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 444
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 445
    :try_start_1d
    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v1, :cond_2f

    .line 446
    iget-object p1, p1, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    iput-object p1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    .line 448
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    .line 449
    iget-object p1, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_36

    .line 451
    :cond_2f
    iget-object v1, p0, Lcom/android/server/BatteryService;->mLastHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object p1, p1, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v1, p1}, Lcom/android/server/BatteryService;->copy(Landroid/hardware/health/V1_0/HealthInfo;Landroid/hardware/health/V1_0/HealthInfo;)V

    .line 453
    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_1d .. :try_end_37} :catchall_3b

    .line 454
    invoke-static {}, Lcom/android/server/BatteryService;->traceEnd()V

    .line 455
    return-void

    .line 453
    :catchall_3b
    move-exception p1

    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw p1
.end method

.method private updateBatteryWarningLevelLocked()V
    .registers 4

    .line 326
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 327
    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e006e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 329
    iget v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    iput v2, p0, Lcom/android/server/BatteryService;->mLastLowBatteryWarningLevel:I

    .line 330
    const-string v2, "low_power_trigger_level"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 332
    iget v0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-nez v0, :cond_25

    .line 333
    iput v1, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 335
    :cond_25
    iget v0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    if-ge v0, v1, :cond_2d

    .line 336
    iput v1, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 338
    :cond_2d
    iget v0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e006d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    .line 340
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    .line 341
    return-void
.end method

.method private declared-synchronized updateLedPulse()V
    .registers 2

    monitor-enter p0

    .line 1084
    :try_start_1
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    invoke-virtual {v0}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 1085
    monitor-exit p0

    return-void

    .line 1083
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 7

    .line 253
    const/16 v0, 0x226

    if-ne p1, v0, :cond_27

    .line 255
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 256
    :try_start_7
    new-instance p1, Lcom/android/server/BatteryService$2;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v1}, Lcom/android/server/BatteryService$2;-><init>(Lcom/android/server/BatteryService;Landroid/os/Handler;)V

    .line 264
    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 265
    const-string v2, "low_power_trigger_level"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, p1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 268
    invoke-direct {p0}, Lcom/android/server/BatteryService;->updateBatteryWarningLevelLocked()V

    .line 269
    monitor-exit v0

    goto :goto_3c

    :catchall_24
    move-exception p1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_24

    throw p1

    .line 270
    :cond_27
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_3c

    .line 271
    new-instance p1, Lorg/lineageos/internal/notification/LineageBatteryLights;

    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/BatteryService$3;

    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$3;-><init>(Lcom/android/server/BatteryService;)V

    invoke-direct {p1, v0, v1}, Lorg/lineageos/internal/notification/LineageBatteryLights;-><init>(Landroid/content/Context;Lorg/lineageos/internal/notification/LineageBatteryLights$LedUpdater;)V

    iput-object p1, p0, Lcom/android/server/BatteryService;->mLineageBatteryLights:Lorg/lineageos/internal/notification/LineageBatteryLights;

    .line 279
    invoke-direct {p0}, Lcom/android/server/BatteryService;->updateLedPulse()V

    .line 281
    :cond_3c
    :goto_3c
    return-void
.end method

.method onShellCommand(Lcom/android/server/BatteryService$Shell;Ljava/lang/String;)I
    .registers 11

    .line 899
    if-nez p2, :cond_7

    .line 900
    invoke-virtual {p1, p2}, Lcom/android/server/BatteryService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 902
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/BatteryService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 903
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x32165859  # -4.90009824E8f

    const/4 v3, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v1, v2, :cond_39

    const v2, 0x1bc62

    if-eq v1, v2, :cond_2e

    const v2, 0x6761d4f

    if-eq v1, v2, :cond_23

    :cond_22
    goto :goto_44

    :cond_23
    const-string/jumbo v1, "reset"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    move v1, v3

    goto :goto_45

    :cond_2e
    const-string/jumbo v1, "set"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    move v1, v5

    goto :goto_45

    :cond_39
    const-string/jumbo v1, "unplug"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    move v1, v6

    goto :goto_45

    :goto_44
    move v1, v4

    :goto_45
    const/4 v2, 0x0

    const-string v7, "android.permission.DEVICE_POWER"

    if-eqz v1, :cond_1c0

    if-eq v1, v5, :cond_7d

    if-eq v1, v3, :cond_53

    .line 1006
    invoke-virtual {p1, p2}, Lcom/android/server/BatteryService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 991
    :cond_53
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->parseOptions(Lcom/android/server/BatteryService$Shell;)I

    move-result p1

    .line 992
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, v7, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 996
    :try_start_62
    iget-boolean p2, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-eqz p2, :cond_72

    .line 997
    iput-boolean v6, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 998
    iget-object p2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object v3, p0, Lcom/android/server/BatteryService;->mLastHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {p2, v3}, Lcom/android/server/BatteryService;->copy(Landroid/hardware/health/V1_0/HealthInfo;Landroid/hardware/health/V1_0/HealthInfo;)V

    .line 999
    invoke-direct {p0, v0, p1}, Lcom/android/server/BatteryService;->processValuesFromShellLocked(Ljava/io/PrintWriter;I)V
    :try_end_72
    .catchall {:try_start_62 .. :try_end_72} :catchall_78

    .line 1002
    :cond_72
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1003
    nop

    .line 1004
    goto/16 :goto_1ec

    .line 1002
    :catchall_78
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 923
    :cond_7d
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->parseOptions(Lcom/android/server/BatteryService$Shell;)I

    move-result p2

    .line 924
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v7, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    invoke-virtual {p1}, Lcom/android/server/BatteryService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 927
    if-nez v1, :cond_94

    .line 928
    const-string p1, "No property specified"

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 929
    return v4

    .line 932
    :cond_94
    invoke-virtual {p1}, Lcom/android/server/BatteryService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object p1

    .line 933
    if-nez p1, :cond_a0

    .line 934
    const-string p1, "No value specified"

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 935
    return v4

    .line 939
    :cond_a0
    :try_start_a0
    iget-boolean v2, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez v2, :cond_ab

    .line 940
    iget-object v2, p0, Lcom/android/server/BatteryService;->mLastHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object v7, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v2, v7}, Lcom/android/server/BatteryService;->copy(Landroid/hardware/health/V1_0/HealthInfo;Landroid/hardware/health/V1_0/HealthInfo;)V

    .line 942
    :cond_ab
    nop

    .line 943
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_1f2

    :cond_b3
    goto :goto_113

    :sswitch_b4
    const-string v2, "invalid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b3

    const/16 v3, 0x8

    goto :goto_114

    :sswitch_bf
    const-string v2, "counter"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b3

    const/4 v3, 0x6

    goto :goto_114

    :sswitch_c9
    const-string v2, "level"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b3

    const/4 v3, 0x5

    goto :goto_114

    :sswitch_d3
    const-string/jumbo v2, "temp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b3

    const/4 v3, 0x7

    goto :goto_114

    :sswitch_de
    const-string/jumbo v2, "usb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b3

    goto :goto_114

    :sswitch_e8
    const-string v2, "ac"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b3

    move v3, v5

    goto :goto_114

    :sswitch_f2
    const-string/jumbo v2, "present"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b3

    move v3, v6

    goto :goto_114

    :sswitch_fd
    const-string/jumbo v2, "status"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b3

    const/4 v3, 0x4

    goto :goto_114

    :sswitch_108
    const-string/jumbo v2, "wireless"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b3

    const/4 v3, 0x3

    goto :goto_114

    :goto_113
    move v3, v4

    :goto_114
    packed-switch v3, :pswitch_data_218

    .line 972
    new-instance v2, Ljava/lang/StringBuilder;

    goto/16 :goto_181

    .line 969
    :pswitch_11b  #0x8
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    .line 970
    goto/16 :goto_17f

    .line 966
    :pswitch_123  #0x7
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    .line 967
    goto :goto_17f

    .line 963
    :pswitch_12c  #0x6
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    .line 964
    goto :goto_17f

    .line 960
    :pswitch_135  #0x5
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    .line 961
    goto :goto_17f

    .line 957
    :pswitch_13e  #0x4
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    .line 958
    goto :goto_17f

    .line 954
    :pswitch_147  #0x3
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_151

    move v2, v5

    goto :goto_152

    :cond_151
    move v2, v6

    :goto_152
    iput-boolean v2, v1, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    .line 955
    goto :goto_17f

    .line 951
    :pswitch_155  #0x2
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_15f

    move v2, v5

    goto :goto_160

    :cond_15f
    move v2, v6

    :goto_160
    iput-boolean v2, v1, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    .line 952
    goto :goto_17f

    .line 948
    :pswitch_163  #0x1
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_16d

    move v2, v5

    goto :goto_16e

    :cond_16d
    move v2, v6

    :goto_16e
    iput-boolean v2, v1, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    .line 949
    goto :goto_17f

    .line 945
    :pswitch_171  #0x0
    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_17b

    move v2, v5

    goto :goto_17c

    :cond_17b
    move v2, v6

    :goto_17c
    iput-boolean v2, v1, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    .line 946
    nop

    .line 976
    :goto_17f
    move v1, v5

    goto :goto_194

    .line 972
    :goto_181
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown set option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 973
    move v1, v6

    .line 976
    :goto_194
    if-eqz v1, :cond_1a8

    .line 977
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_19a
    .catch Ljava/lang/NumberFormatException; {:try_start_a0 .. :try_end_19a} :catch_1aa

    .line 979
    :try_start_19a
    iput-boolean v5, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 980
    invoke-direct {p0, v0, p2}, Lcom/android/server/BatteryService;->processValuesFromShellLocked(Ljava/io/PrintWriter;I)V
    :try_end_19f
    .catchall {:try_start_19a .. :try_end_19f} :catchall_1a3

    .line 982
    :try_start_19f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 983
    goto :goto_1a8

    .line 982
    :catchall_1a3
    move-exception p2

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p2
    :try_end_1a8
    .catch Ljava/lang/NumberFormatException; {:try_start_19f .. :try_end_1a8} :catch_1aa

    .line 988
    :cond_1a8
    :goto_1a8
    nop

    .line 989
    goto :goto_1ec

    .line 985
    :catch_1aa
    move-exception p2

    .line 986
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad value: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 987
    return v4

    .line 905
    :cond_1c0
    invoke-virtual {p0, p1}, Lcom/android/server/BatteryService;->parseOptions(Lcom/android/server/BatteryService$Shell;)I

    move-result p1

    .line 906
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, v7, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    iget-boolean p2, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    if-nez p2, :cond_1d6

    .line 909
    iget-object p2, p0, Lcom/android/server/BatteryService;->mLastHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object v1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {p2, v1}, Lcom/android/server/BatteryService;->copy(Landroid/hardware/health/V1_0/HealthInfo;Landroid/hardware/health/V1_0/HealthInfo;)V

    .line 911
    :cond_1d6
    iget-object p2, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/V1_0/HealthInfo;

    iput-boolean v6, p2, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    .line 912
    iput-boolean v6, p2, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    .line 913
    iput-boolean v6, p2, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    .line 914
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 916
    :try_start_1e2
    iput-boolean v5, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    .line 917
    invoke-direct {p0, v0, p1}, Lcom/android/server/BatteryService;->processValuesFromShellLocked(Ljava/io/PrintWriter;I)V
    :try_end_1e7
    .catchall {:try_start_1e2 .. :try_end_1e7} :catchall_1ed

    .line 919
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 920
    nop

    .line 921
    nop

    .line 1008
    :goto_1ec
    return v6

    .line 919
    :catchall_1ed
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    :sswitch_data_1f2
    .sparse-switch
        -0x3b9b7862 -> :sswitch_108
        -0x3532300e -> :sswitch_fd
        -0x12f88745 -> :sswitch_f2
        0xc22 -> :sswitch_e8
        0x1c584 -> :sswitch_de
        0x3643d4 -> :sswitch_d3
        0x6219b84 -> :sswitch_c9
        0x391755fc -> :sswitch_bf
        0x74cff1f7 -> :sswitch_b4
    .end sparse-switch

    :pswitch_data_218
    .packed-switch 0x0
        :pswitch_171  #00000000
        :pswitch_163  #00000001
        :pswitch_155  #00000002
        :pswitch_147  #00000003
        :pswitch_13e  #00000004
        :pswitch_135  #00000005
        :pswitch_12c  #00000006
        :pswitch_123  #00000007
        :pswitch_11b  #00000008
    .end packed-switch
.end method

.method public onStart()V
    .registers 4

    .line 242
    invoke-direct {p0}, Lcom/android/server/BatteryService;->registerHealthCallback()V

    .line 244
    new-instance v0, Lcom/android/server/BatteryService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/BatteryService$BinderService;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mBinderService:Lcom/android/server/BatteryService$BinderService;

    .line 245
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBinderService:Lcom/android/server/BatteryService$BinderService;

    const-string v2, "battery"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/BatteryService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 246
    new-instance v0, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;

    invoke-direct {v0, p0, v1}, Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V

    iput-object v0, p0, Lcom/android/server/BatteryService;->mBatteryPropertiesRegistrar:Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;

    .line 247
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryPropertiesRegistrar:Lcom/android/server/BatteryService$BatteryPropertiesRegistrar;

    const-string v2, "batteryproperties"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/BatteryService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 248
    const-class v0, Landroid/os/BatteryManagerInternal;

    new-instance v2, Lcom/android/server/BatteryService$LocalService;

    invoke-direct {v2, p0, v1}, Lcom/android/server/BatteryService$LocalService;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/server/BatteryService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 249
    return-void
.end method

.method parseOptions(Lcom/android/server/BatteryService$Shell;)I
    .registers 5

    .line 889
    const/4 v0, 0x0

    .line 890
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/BatteryService$Shell;->getNextOption()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 891
    const-string v2, "-f"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 892
    or-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 895
    :cond_12
    return v0
.end method
