.class public Lcom/android/systemui/doze/DozeSensors;
.super Ljava/lang/Object;
.source "DozeSensors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/doze/DozeSensors$Callback;,
        Lcom/android/systemui/doze/DozeSensors$PluginSensor;,
        Lcom/android/systemui/doze/DozeSensors$TriggerSensor;,
        Lcom/android/systemui/doze/DozeSensors$ProxSensor;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mCallback:Lcom/android/systemui/doze/DozeSensors$Callback;

.field private final mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

.field private final mContext:Landroid/content/Context;

.field private mDebounceFrom:J

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private final mHandler:Landroid/os/Handler;

.field private mListening:Z

.field private mPaused:Z

.field private final mPickupSensor:Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

.field private final mProxCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mProxSensor:Lcom/android/systemui/doze/DozeSensors$ProxSensor;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field protected mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mSettingRegistered:Z

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private final mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 59
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/doze/DozeSensors;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/AlarmManager;Landroid/hardware/SensorManager;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeSensors$Callback;Ljava/util/function/Consumer;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)V
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/AlarmManager;",
            "Landroid/hardware/SensorManager;",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            "Landroid/hardware/display/AmbientDisplayConfiguration;",
            "Lcom/android/systemui/util/wakelock/WakeLock;",
            "Lcom/android/systemui/doze/DozeSensors$Callback;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;",
            ")V"
        }
    .end annotation

    move-object/from16 v11, p0

    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, v11, Lcom/android/systemui/doze/DozeSensors;->mHandler:Landroid/os/Handler;

    .line 242
    new-instance v0, Lcom/android/systemui/doze/DozeSensors$1;

    iget-object v1, v11, Lcom/android/systemui/doze/DozeSensors;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v11, v1}, Lcom/android/systemui/doze/DozeSensors$1;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/os/Handler;)V

    iput-object v0, v11, Lcom/android/systemui/doze/DozeSensors;->mSettingsObserver:Landroid/database/ContentObserver;

    move-object/from16 v0, p1

    .line 86
    iput-object v0, v11, Lcom/android/systemui/doze/DozeSensors;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    .line 87
    iput-object v0, v11, Lcom/android/systemui/doze/DozeSensors;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v0, p3

    .line 88
    iput-object v0, v11, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Landroid/hardware/SensorManager;

    move-object/from16 v12, p4

    .line 89
    iput-object v12, v11, Lcom/android/systemui/doze/DozeSensors;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-object/from16 v13, p5

    .line 90
    iput-object v13, v11, Lcom/android/systemui/doze/DozeSensors;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    move-object/from16 v0, p6

    .line 91
    iput-object v0, v11, Lcom/android/systemui/doze/DozeSensors;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    move-object/from16 v0, p8

    .line 92
    iput-object v0, v11, Lcom/android/systemui/doze/DozeSensors;->mProxCallback:Ljava/util/function/Consumer;

    .line 93
    iget-object v0, v11, Lcom/android/systemui/doze/DozeSensors;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, v11, Lcom/android/systemui/doze/DozeSensors;->mResolver:Landroid/content/ContentResolver;

    .line 95
    iget-object v0, v11, Lcom/android/systemui/doze/DozeSensors;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v14

    const/4 v0, 0x7

    new-array v15, v0, [Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 96
    new-instance v8, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    iget-object v0, v11, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x11

    .line 98
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 100
    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseOnSigMotion()Z

    move-result v4

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZIZZ)V

    const/16 v16, 0x0

    aput-object v8, v15, v16

    new-instance v10, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    iget-object v0, v11, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x19

    .line 104
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 107
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/display/AmbientDisplayConfiguration;->dozePickupSensorAvailable()Z

    move-result v5

    const-string v3, "doze_pulse_on_pick_up"

    const/4 v4, 0x1

    const/4 v6, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v17, 0x0

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v12, v10

    move-object/from16 v10, v17

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZZIZZZLcom/android/systemui/doze/DozeSensors$1;)V

    iput-object v12, v11, Lcom/android/systemui/doze/DozeSensors;->mPickupSensor:Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    const/4 v9, 0x1

    aput-object v12, v15, v9

    new-instance v8, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 112
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/display/AmbientDisplayConfiguration;->doubleTapSensorType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/android/systemui/doze/DozeSensors;->findSensorWithType(Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object v2

    .line 116
    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/statusbar/phone/DozeParameters;->doubleTapReportsTouchCoordinates()Z

    move-result v6

    const-string v3, "doze_pulse_on_double_tap"

    const/4 v5, 0x4

    const/4 v7, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZIZZ)V

    const/4 v10, 0x2

    aput-object v8, v15, v10

    new-instance v8, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 119
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/display/AmbientDisplayConfiguration;->tapSensorType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/android/systemui/doze/DozeSensors;->findSensorWithType(Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object v2

    const-string v3, "doze_tap_gesture"

    const/16 v5, 0x9

    const/4 v6, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZIZZ)V

    const/4 v0, 0x3

    aput-object v8, v15, v0

    new-instance v12, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 126
    invoke-virtual/range {p5 .. p5}, Landroid/hardware/display/AmbientDisplayConfiguration;->longPressSensorType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/android/systemui/doze/DozeSensors;->findSensorWithType(Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object v2

    const-string v3, "doze_pulse_on_long_press"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x5

    const/4 v8, 0x1

    move-object v0, v12

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZZIZZ)V

    const/4 v0, 0x4

    aput-object v12, v15, v0

    new-instance v8, Lcom/android/systemui/doze/DozeSensors$PluginSensor;

    new-instance v2, Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;

    invoke-direct {v2, v10}, Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;-><init>(I)V

    iget-object v0, v11, Lcom/android/systemui/doze/DozeSensors;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 136
    invoke-virtual {v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->wakeScreenGestureAvailable()Z

    move-result v0

    if-eqz v0, :cond_dc

    if-eqz v14, :cond_dc

    move v4, v9

    goto :goto_de

    :cond_dc
    move/from16 v4, v16

    :goto_de
    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v3, "doze_wake_screen_gesture"

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/doze/DozeSensors$PluginSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;Ljava/lang/String;ZIZZ)V

    const/4 v0, 0x5

    aput-object v8, v15, v0

    const/4 v10, 0x6

    new-instance v12, Lcom/android/systemui/doze/DozeSensors$PluginSensor;

    new-instance v2, Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;

    invoke-direct {v2, v9}, Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;-><init>(I)V

    iget-object v0, v11, Lcom/android/systemui/doze/DozeSensors;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 143
    invoke-virtual {v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->wakeScreenGestureAvailable()Z

    move-result v4

    const/16 v5, 0x8

    iget-object v0, v11, Lcom/android/systemui/doze/DozeSensors;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 146
    invoke-virtual {v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->getWakeLockScreenDebounce()J

    move-result-wide v8

    const-string v3, "doze_wake_screen_gesture"

    move-object v0, v12

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/doze/DozeSensors$PluginSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;Ljava/lang/String;ZIZZJ)V

    aput-object v12, v15, v10

    iput-object v15, v11, Lcom/android/systemui/doze/DozeSensors;->mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 149
    new-instance v0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;

    move-object/from16 v1, p9

    invoke-direct {v0, v11, v1}, Lcom/android/systemui/doze/DozeSensors$ProxSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)V

    iput-object v0, v11, Lcom/android/systemui/doze/DozeSensors;->mProxSensor:Lcom/android/systemui/doze/DozeSensors$ProxSensor;

    move-object/from16 v0, p7

    .line 150
    iput-object v0, v11, Lcom/android/systemui/doze/DozeSensors;->mCallback:Lcom/android/systemui/doze/DozeSensors$Callback;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/util/wakelock/WakeLock;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/doze/DozeSensors;)Landroid/database/ContentObserver;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mSettingsObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/doze/DozeSensors$Callback;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mCallback:Lcom/android/systemui/doze/DozeSensors$Callback;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/doze/DozeSensors;)J
    .registers 3

    .line 57
    iget-wide v0, p0, Lcom/android/systemui/doze/DozeSensors;->mDebounceFrom:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/systemui/doze/DozeSensors;)Landroid/app/AlarmManager;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mAlarmManager:Landroid/app/AlarmManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/doze/DozeSensors;)Landroid/os/Handler;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/doze/DozeSensors;)Landroid/hardware/SensorManager;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Landroid/hardware/SensorManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/doze/DozeSensors;)Landroid/content/Context;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600()Z
    .registers 1

    .line 57
    sget-boolean v0, Lcom/android/systemui/doze/DozeSensors;->DEBUG:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/doze/DozeSensors;)Ljava/util/function/Consumer;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mProxCallback:Ljava/util/function/Consumer;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/doze/DozeSensors;)Landroid/hardware/display/AmbientDisplayConfiguration;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/doze/DozeSensors;)Landroid/content/ContentResolver;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static findSensorWithType(Landroid/hardware/SensorManager;Ljava/lang/String;)Landroid/hardware/Sensor;
    .registers 5

    .line 166
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    const/4 v0, -0x1

    .line 169
    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p0

    .line 170
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    .line 171
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    return-object v0

    :cond_28
    return-object v1
.end method

.method private findSensorWithType(Ljava/lang/String;)Landroid/hardware/Sensor;
    .registers 2

    .line 162
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-static {p0, p1}, Lcom/android/systemui/doze/DozeSensors;->findSensorWithType(Landroid/hardware/SensorManager;Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 7

    .line 269
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_17

    aget-object v3, v0, v2

    const-string v4, "  Sensor: "

    .line 270
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_17
    const-string v0, "  ProxSensor: "

    .line 272
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mProxSensor:Lcom/android/systemui/doze/DozeSensors$ProxSensor;

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public isProximityCurrentlyFar()Ljava/lang/Boolean;
    .registers 1

    .line 279
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mProxSensor:Lcom/android/systemui/doze/DozeSensors$ProxSensor;

    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCurrentlyFar:Ljava/lang/Boolean;

    return-object p0
.end method

.method public onUserSwitched()V
    .registers 4

    .line 233
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_e

    aget-object v2, p0, v1

    .line 234
    invoke-virtual {v2}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->updateListening()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method

.method public requestTemporaryDisable()V
    .registers 3

    .line 158
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/doze/DozeSensors;->mDebounceFrom:J

    return-void
.end method

.method public setDisableSensorsInterferingWithProximity(Z)V
    .registers 2

    .line 255
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mPickupSensor:Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->setDisabled(Z)V

    return-void
.end method

.method public setListening(Z)V
    .registers 3

    .line 182
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors;->mListening:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 185
    :cond_5
    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeSensors;->mListening:Z

    .line 186
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeSensors;->updateListening()V

    return-void
.end method

.method public setPaused(Z)V
    .registers 3

    .line 194
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors;->mPaused:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 197
    :cond_5
    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeSensors;->mPaused:Z

    .line 198
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeSensors;->updateListening()V

    return-void
.end method

.method public setProxListening(Z)V
    .registers 2

    .line 239
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mProxSensor:Lcom/android/systemui/doze/DozeSensors$ProxSensor;

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->setRequested(Z)V

    return-void
.end method

.method public setTouchscreenSensorsListening(Z)V
    .registers 6

    .line 225
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors;->mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_14

    aget-object v2, p0, v1

    .line 226
    invoke-static {v2}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->access$100(Lcom/android/systemui/doze/DozeSensors$TriggerSensor;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 227
    invoke-virtual {v2, p1}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->setListening(Z)V

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_14
    return-void
.end method

.method public updateListening()V
    .registers 8

    .line 206
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_6
    if-ge v3, v1, :cond_17

    aget-object v5, v0, v3

    .line 207
    iget-boolean v6, p0, Lcom/android/systemui/doze/DozeSensors;->mListening:Z

    invoke-virtual {v5, v6}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->setListening(Z)V

    .line 208
    iget-boolean v5, p0, Lcom/android/systemui/doze/DozeSensors;->mListening:Z

    if-eqz v5, :cond_14

    const/4 v4, 0x1

    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_17
    if-nez v4, :cond_21

    .line 214
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_34

    .line 215
    :cond_21
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors;->mSettingRegistered:Z

    if-nez v0, :cond_34

    .line 216
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    array-length v1, v0

    :goto_28
    if-ge v2, v1, :cond_34

    aget-object v3, v0, v2

    .line 217
    iget-object v5, p0, Lcom/android/systemui/doze/DozeSensors;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v5}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->registerSettingsObserver(Landroid/database/ContentObserver;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 220
    :cond_34
    :goto_34
    iput-boolean v4, p0, Lcom/android/systemui/doze/DozeSensors;->mSettingRegistered:Z

    return-void
.end method
