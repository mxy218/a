.class public Lcom/android/server/GestureLauncherService;
.super Lcom/android/server/SystemService;
.source "GestureLauncherService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;,
        Lcom/android/server/GestureLauncherService$GestureEventListener;
    }
.end annotation


# static fields
.field static final CAMERA_POWER_DOUBLE_TAP_MAX_TIME_MS:J = 0x12cL
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final DBG_CAMERA_LIFT:Z = false

.field static final POWER_SHORT_TAP_SEQUENCE_MAX_INTERVAL_MS:J = 0x1f4L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "GestureLauncherService"


# instance fields
.field private mCameraDoubleTapPowerEnabled:Z

.field private mCameraGestureLastEventTime:J

.field private mCameraGestureOnTimeMs:J

.field private mCameraGestureSensor1LastOnTimeMs:J

.field private mCameraGestureSensor2LastOnTimeMs:J

.field private mCameraLaunchLastEventExtra:I

.field private mCameraLaunchRegistered:Z

.field private mCameraLaunchSensor:Landroid/hardware/Sensor;

.field private mCameraLiftRegistered:Z

.field private final mCameraLiftTriggerListener:Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

.field private mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

.field private mContext:Landroid/content/Context;

.field private final mGestureListener:Lcom/android/server/GestureLauncherService$GestureEventListener;

.field private mLastPowerDown:J

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mPowerButtonConsecutiveTaps:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mSettingObserver:Landroid/database/ContentObserver;

.field private mUserId:I

.field private final mUserReceiver:Landroid/content/BroadcastReceiver;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 134
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/GestureLauncherService;-><init>(Landroid/content/Context;Lcom/android/internal/logging/MetricsLogger;)V

    .line 135
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/logging/MetricsLogger;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 79
    new-instance v0, Lcom/android/server/GestureLauncherService$GestureEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/GestureLauncherService$GestureEventListener;-><init>(Lcom/android/server/GestureLauncherService;Lcom/android/server/GestureLauncherService$1;)V

    iput-object v0, p0, Lcom/android/server/GestureLauncherService;->mGestureListener:Lcom/android/server/GestureLauncherService$GestureEventListener;

    .line 80
    new-instance v0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

    invoke-direct {v0, p0, v1}, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;-><init>(Lcom/android/server/GestureLauncherService;Lcom/android/server/GestureLauncherService$1;)V

    iput-object v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerListener:Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

    .line 98
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    .line 101
    iput-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    .line 108
    iput-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor1LastOnTimeMs:J

    .line 118
    iput-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor2LastOnTimeMs:J

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchLastEventExtra:I

    .line 439
    new-instance v0, Lcom/android/server/GestureLauncherService$1;

    invoke-direct {v0, p0}, Lcom/android/server/GestureLauncherService$1;-><init>(Lcom/android/server/GestureLauncherService;)V

    iput-object v0, p0, Lcom/android/server/GestureLauncherService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 452
    new-instance v0, Lcom/android/server/GestureLauncherService$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/GestureLauncherService$2;-><init>(Lcom/android/server/GestureLauncherService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    .line 140
    iput-object p1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 141
    iput-object p2, p0, Lcom/android/server/GestureLauncherService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 142
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/GestureLauncherService;)J
    .registers 3

    .line 59
    iget-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/android/server/GestureLauncherService;)J
    .registers 3

    .line 59
    iget-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/android/server/GestureLauncherService;J)J
    .registers 3

    .line 59
    iput-wide p1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/android/server/GestureLauncherService;)J
    .registers 3

    .line 59
    iget-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor1LastOnTimeMs:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/android/server/GestureLauncherService;J)J
    .registers 3

    .line 59
    iput-wide p1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor1LastOnTimeMs:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/android/server/GestureLauncherService;)J
    .registers 3

    .line 59
    iget-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor2LastOnTimeMs:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/android/server/GestureLauncherService;J)J
    .registers 3

    .line 59
    iput-wide p1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor2LastOnTimeMs:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/android/server/GestureLauncherService;)I
    .registers 1

    .line 59
    iget p0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchLastEventExtra:I

    return p0
.end method

.method static synthetic access$1402(Lcom/android/server/GestureLauncherService;I)I
    .registers 2

    .line 59
    iput p1, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchLastEventExtra:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/GestureLauncherService;)Z
    .registers 1

    .line 59
    iget-boolean p0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    return p0
.end method

.method static synthetic access$1502(Lcom/android/server/GestureLauncherService;Z)Z
    .registers 2

    .line 59
    iput-boolean p1, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/GestureLauncherService;)Landroid/hardware/Sensor;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/server/GestureLauncherService;)Lcom/android/server/wm/WindowManagerInternal;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/android/server/GestureLauncherService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/server/GestureLauncherService;)Landroid/os/PowerManager;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/android/server/GestureLauncherService;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/server/GestureLauncherService;)Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerListener:Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/GestureLauncherService;)I
    .registers 1

    .line 59
    iget p0, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    return p0
.end method

.method static synthetic access$202(Lcom/android/server/GestureLauncherService;I)I
    .registers 2

    .line 59
    iput p1, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/GestureLauncherService;)Landroid/database/ContentObserver;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/GestureLauncherService;)Landroid/content/Context;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/server/GestureLauncherService;)V
    .registers 1

    .line 59
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->registerContentObservers()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/GestureLauncherService;)V
    .registers 1

    .line 59
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->updateCameraRegistered()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/GestureLauncherService;)Z
    .registers 1

    .line 59
    iget-boolean p0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    return p0
.end method

.method static synthetic access$800(Lcom/android/server/GestureLauncherService;)Landroid/hardware/Sensor;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/server/GestureLauncherService;)Lcom/android/internal/logging/MetricsLogger;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/android/server/GestureLauncherService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object p0
.end method

.method public static isCameraDoubleTapPowerEnabled(Landroid/content/res/Resources;)Z
    .registers 2

    .line 340
    const v0, 0x111003a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static isCameraDoubleTapPowerSettingEnabled(Landroid/content/Context;I)Z
    .registers 4

    .line 317
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->isCameraDoubleTapPowerEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 318
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "camera_double_tap_power_gesture_disabled"

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    :cond_19
    nop

    .line 317
    :goto_1a
    return v1
.end method

.method public static isCameraLaunchEnabled(Landroid/content/res/Resources;)Z
    .registers 4

    .line 333
    const v0, 0x10e0027

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq p0, v2, :cond_e

    move p0, v0

    goto :goto_f

    :cond_e
    move p0, v1

    .line 335
    :goto_f
    if-eqz p0, :cond_1a

    .line 336
    const-string p0, "gesture.disable_camera_launch"

    invoke-static {p0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_1a

    goto :goto_1b

    :cond_1a
    move v0, v1

    .line 335
    :goto_1b
    return v0
.end method

.method public static isCameraLaunchSettingEnabled(Landroid/content/Context;I)Z
    .registers 4

    .line 311
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->isCameraLaunchEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 312
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "camera_gesture_disabled"

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    :cond_19
    nop

    .line 311
    :goto_1a
    return v1
.end method

.method public static isCameraLiftTriggerEnabled(Landroid/content/res/Resources;)Z
    .registers 2

    .line 345
    const v0, 0x10e0028

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    .line 347
    :goto_d
    return p0
.end method

.method public static isCameraLiftTriggerSettingEnabled(Landroid/content/Context;I)Z
    .registers 4

    .line 323
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->isCameraLiftTriggerEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_18

    .line 324
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "camera_lift_trigger_enabled"

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_18

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    .line 323
    :goto_19
    return v1
.end method

.method public static isGestureLauncherEnabled(Landroid/content/res/Resources;)Z
    .registers 2

    .line 354
    invoke-static {p0}, Lcom/android/server/GestureLauncherService;->isCameraLaunchEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {p0}, Lcom/android/server/GestureLauncherService;->isCameraDoubleTapPowerEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 355
    invoke-static {p0}, Lcom/android/server/GestureLauncherService;->isCameraLiftTriggerEnabled(Landroid/content/res/Resources;)Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    .line 354
    :goto_16
    return p0
.end method

.method private registerCameraLaunchGesture(Landroid/content/res/Resources;)V
    .registers 6

    .line 224
    iget-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    if-eqz v0, :cond_5

    .line 225
    return-void

    .line 227
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    .line 228
    iget-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    iput-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    .line 229
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 231
    const v1, 0x10e0027

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 233
    const/4 v2, -0x1

    if-eq v1, v2, :cond_67

    .line 234
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    .line 235
    const v3, 0x1040147

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 237
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    .line 244
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_67

    .line 245
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 246
    iget-object p1, p0, Lcom/android/server/GestureLauncherService;->mGestureListener:Lcom/android/server/GestureLauncherService$GestureEventListener;

    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    goto :goto_67

    .line 249
    :cond_4e
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    iget-object p1, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    .line 251
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    .line 249
    const-string p1, "Wrong configuration. Sensor type and sensor string type don\'t match: %s in resources, %s in the sensor."

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 252
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_67
    :goto_67
    return-void
.end method

.method private registerCameraLiftTrigger(Landroid/content/res/Resources;)V
    .registers 6

    .line 275
    iget-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    if-eqz v0, :cond_5

    .line 276
    return-void

    .line 278
    :cond_5
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 280
    const v1, 0x10e0028

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 282
    const/4 v2, -0x1

    if-eq v1, v2, :cond_5d

    .line 283
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    .line 284
    const v3, 0x1040148

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 286
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    .line 293
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_5d

    .line 294
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 295
    iget-object p1, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerListener:Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, p1, v1}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    goto :goto_5d

    .line 298
    :cond_44
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    iget-object p1, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    .line 300
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    .line 298
    const-string p1, "Wrong configuration. Sensor type and sensor string type don\'t match: %s in resources, %s in the sensor."

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 301
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_5d
    :goto_5d
    return-void
.end method

.method private registerContentObservers()V
    .registers 6

    .line 171
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 172
    const-string v1, "camera_gesture_disabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    .line 171
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 174
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 175
    const-string v1, "camera_double_tap_power_gesture_disabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    .line 174
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 177
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 178
    const-string v1, "camera_lift_trigger_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    .line 177
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 180
    return-void
.end method

.method private unregisterCameraLaunchGesture()V
    .registers 4

    .line 206
    iget-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    if-eqz v0, :cond_23

    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    .line 208
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    .line 209
    iput-wide v1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    .line 210
    iput-wide v1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor1LastOnTimeMs:J

    .line 211
    iput-wide v1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor2LastOnTimeMs:J

    .line 212
    iput v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchLastEventExtra:I

    .line 214
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 216
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mGestureListener:Lcom/android/server/GestureLauncherService$GestureEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 218
    :cond_23
    return-void
.end method

.method private unregisterCameraLiftTrigger()V
    .registers 4

    .line 262
    iget-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    if-eqz v0, :cond_19

    .line 263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    .line 265
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 267
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerListener:Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    .line 269
    :cond_19
    return-void
.end method

.method private updateCameraRegistered()V
    .registers 4

    .line 183
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/server/GestureLauncherService;->isCameraLaunchSettingEnabled(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 185
    invoke-direct {p0, v0}, Lcom/android/server/GestureLauncherService;->registerCameraLaunchGesture(Landroid/content/res/Resources;)V

    goto :goto_17

    .line 187
    :cond_14
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->unregisterCameraLaunchGesture()V

    .line 190
    :goto_17
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/server/GestureLauncherService;->isCameraLiftTriggerSettingEnabled(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 191
    invoke-direct {p0, v0}, Lcom/android/server/GestureLauncherService;->registerCameraLiftTrigger(Landroid/content/res/Resources;)V

    goto :goto_28

    .line 193
    :cond_25
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->unregisterCameraLiftTrigger()V

    .line 195
    :goto_28
    return-void
.end method


# virtual methods
.method handleCameraGesture(ZI)Z
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 408
    const-wide/16 v0, 0x40

    const-string v2, "GestureLauncher:handleCameraGesture"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 410
    :try_start_7
    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "user_setup_complete"

    const/4 v4, -0x2

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_3c

    const/4 v3, 0x1

    if-eqz v2, :cond_1b

    move v2, v3

    goto :goto_1c

    :cond_1b
    move v2, v5

    .line 412
    :goto_1c
    if-nez v2, :cond_23

    .line 418
    nop

    .line 435
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 418
    return v5

    .line 426
    :cond_23
    if-eqz p1, :cond_2c

    .line 428
    :try_start_25
    iget-object p1, p0, Lcom/android/server/GestureLauncherService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v4, 0x1f4

    invoke-virtual {p1, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 430
    :cond_2c
    const-class p1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 432
    invoke-interface {p1, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onCameraLaunchGestureDetected(I)V
    :try_end_37
    .catchall {:try_start_25 .. :try_end_37} :catchall_3c

    .line 433
    nop

    .line 435
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 433
    return v3

    .line 435
    :catchall_3c
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method public interceptPowerKeyDown(Landroid/view/KeyEvent;ZLandroid/util/MutableBoolean;)Z
    .registers 11

    .line 360
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 364
    return v1

    .line 366
    :cond_8
    nop

    .line 367
    nop

    .line 369
    monitor-enter p0

    .line 370
    :try_start_b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/GestureLauncherService;->mLastPowerDown:J

    sub-long/2addr v2, v4

    .line 371
    iget-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraDoubleTapPowerEnabled:Z

    const/4 v4, 0x1

    if-eqz v0, :cond_27

    const-wide/16 v5, 0x12c

    cmp-long v0, v2, v5

    if-gez v0, :cond_27

    .line 373
    nop

    .line 374
    nop

    .line 375
    iget v0, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    move v0, p2

    move p2, v4

    goto :goto_37

    .line 376
    :cond_27
    const-wide/16 v5, 0x1f4

    cmp-long p2, v2, v5

    if-gez p2, :cond_33

    .line 377
    iget p2, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    add-int/2addr p2, v4

    iput p2, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    goto :goto_35

    .line 379
    :cond_33
    iput v4, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    .line 381
    :goto_35
    move p2, v1

    move v0, p2

    :goto_37
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/GestureLauncherService;->mLastPowerDown:J

    .line 382
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_b .. :try_end_3e} :catchall_85

    .line 387
    if-eqz p2, :cond_6a

    .line 388
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Power button double tap gesture detected, launching camera. Interval="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "ms"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GestureLauncherService"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-virtual {p0, v1, v4}, Lcom/android/server/GestureLauncherService;->handleCameraGesture(ZI)Z

    move-result p2

    .line 392
    if-eqz p2, :cond_6a

    .line 393
    iget-object p1, p0, Lcom/android/server/GestureLauncherService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v5, 0xff

    long-to-int v6, v2

    invoke-virtual {p1, v5, v6}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    .line 397
    :cond_6a
    iget-object p1, p0, Lcom/android/server/GestureLauncherService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget v5, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    const-string/jumbo v6, "power_consecutive_short_tap_count"

    invoke-virtual {p1, v6, v5}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 398
    iget-object p1, p0, Lcom/android/server/GestureLauncherService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    long-to-int v2, v2

    const-string/jumbo v3, "power_double_tap_interval"

    invoke-virtual {p1, v3, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 399
    iput-boolean p2, p3, Landroid/util/MutableBoolean;->value:Z

    .line 400
    if-eqz v0, :cond_84

    if-eqz p2, :cond_84

    move v1, v4

    :cond_84
    return v1

    .line 382
    :catchall_85
    move-exception p1

    :try_start_86
    monitor-exit p0
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    throw p1
.end method

.method public onBootPhase(I)V
    .registers 5

    .line 149
    const/16 v0, 0x258

    if-ne p1, v0, :cond_50

    .line 150
    iget-object p1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 151
    invoke-static {p1}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 153
    return-void

    .line 156
    :cond_11
    const-class p1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowManagerInternal;

    iput-object p1, p0, Lcom/android/server/GestureLauncherService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 157
    iget-object p1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/server/GestureLauncherService;->mPowerManager:Landroid/os/PowerManager;

    .line 159
    iget-object p1, p0, Lcom/android/server/GestureLauncherService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v0, 0x1

    const-string v1, "GestureLauncherService"

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/GestureLauncherService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 161
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->updateCameraRegistered()V

    .line 162
    invoke-virtual {p0}, Lcom/android/server/GestureLauncherService;->updateCameraDoubleTapPowerEnabled()V

    .line 164
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    iput p1, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    .line 165
    iget-object p1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 166
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->registerContentObservers()V

    .line 168
    :cond_50
    return-void
.end method

.method public onStart()V
    .registers 2

    .line 145
    const-class v0, Lcom/android/server/GestureLauncherService;

    invoke-static {v0, p0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 146
    return-void
.end method

.method updateCameraDoubleTapPowerEnabled()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/server/GestureLauncherService;->isCameraDoubleTapPowerSettingEnabled(Landroid/content/Context;I)Z

    move-result v0

    .line 200
    monitor-enter p0

    .line 201
    :try_start_9
    iput-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraDoubleTapPowerEnabled:Z

    .line 202
    monitor-exit p0

    .line 203
    return-void

    .line 202
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_d

    throw v0
.end method
