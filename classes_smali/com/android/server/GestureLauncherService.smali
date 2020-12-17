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

.field private mDisablePowerKey:Z

.field private mDisablePowerKeyRunnable:Ljava/lang/Runnable;

.field private mDoubleTapRunnable:Ljava/lang/Runnable;

.field private final mGestureListener:Lcom/android/server/GestureLauncherService$GestureEventListener;

.field private mHandler:Landroid/os/Handler;

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
    .param p1, "context"  # Landroid/content/Context;

    .line 135
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/GestureLauncherService;-><init>(Landroid/content/Context;Lcom/android/internal/logging/MetricsLogger;)V

    .line 136
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/logging/MetricsLogger;)V
    .registers 7
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "metricsLogger"  # Lcom/android/internal/logging/MetricsLogger;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 140
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 80
    new-instance v0, Lcom/android/server/GestureLauncherService$GestureEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/GestureLauncherService$GestureEventListener;-><init>(Lcom/android/server/GestureLauncherService;Lcom/android/server/GestureLauncherService$1;)V

    iput-object v0, p0, Lcom/android/server/GestureLauncherService;->mGestureListener:Lcom/android/server/GestureLauncherService$GestureEventListener;

    .line 81
    new-instance v0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

    invoke-direct {v0, p0, v1}, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;-><init>(Lcom/android/server/GestureLauncherService;Lcom/android/server/GestureLauncherService$1;)V

    iput-object v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerListener:Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

    .line 99
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    .line 102
    iput-wide v2, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    .line 109
    iput-wide v2, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor1LastOnTimeMs:J

    .line 119
    iput-wide v2, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor2LastOnTimeMs:J

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchLastEventExtra:I

    .line 524
    new-instance v2, Lcom/android/server/GestureLauncherService$3;

    invoke-direct {v2, p0}, Lcom/android/server/GestureLauncherService$3;-><init>(Lcom/android/server/GestureLauncherService;)V

    iput-object v2, p0, Lcom/android/server/GestureLauncherService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 537
    new-instance v2, Lcom/android/server/GestureLauncherService$4;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/server/GestureLauncherService$4;-><init>(Lcom/android/server/GestureLauncherService;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    .line 667
    iput-object v1, p0, Lcom/android/server/GestureLauncherService;->mDoubleTapRunnable:Ljava/lang/Runnable;

    .line 668
    iput-object v1, p0, Lcom/android/server/GestureLauncherService;->mDisablePowerKeyRunnable:Ljava/lang/Runnable;

    .line 669
    iput-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mDisablePowerKey:Z

    .line 671
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/GestureLauncherService;->mHandler:Landroid/os/Handler;

    .line 141
    iput-object p1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 142
    iput-object p2, p0, Lcom/android/server/GestureLauncherService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 143
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/GestureLauncherService;)Lcom/android/internal/logging/MetricsLogger;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/GestureLauncherService;

    .line 60
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/GestureLauncherService;)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/GestureLauncherService;

    .line 60
    iget-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/android/server/GestureLauncherService;)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/GestureLauncherService;

    .line 60
    iget-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/android/server/GestureLauncherService;J)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/GestureLauncherService;
    .param p1, "x1"  # J

    .line 60
    iput-wide p1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/android/server/GestureLauncherService;)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/GestureLauncherService;

    .line 60
    iget-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor1LastOnTimeMs:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/android/server/GestureLauncherService;J)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/GestureLauncherService;
    .param p1, "x1"  # J

    .line 60
    iput-wide p1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor1LastOnTimeMs:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/android/server/GestureLauncherService;)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/GestureLauncherService;

    .line 60
    iget-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor2LastOnTimeMs:J

    return-wide v0
.end method

.method static synthetic access$1402(Lcom/android/server/GestureLauncherService;J)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/GestureLauncherService;
    .param p1, "x1"  # J

    .line 60
    iput-wide p1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor2LastOnTimeMs:J

    return-wide p1
.end method

.method static synthetic access$1500(Lcom/android/server/GestureLauncherService;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/GestureLauncherService;

    .line 60
    iget v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchLastEventExtra:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/GestureLauncherService;I)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/GestureLauncherService;
    .param p1, "x1"  # I

    .line 60
    iput p1, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchLastEventExtra:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/GestureLauncherService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/GestureLauncherService;

    .line 60
    iget-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/GestureLauncherService;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/GestureLauncherService;
    .param p1, "x1"  # Z

    .line 60
    iput-boolean p1, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/GestureLauncherService;)Landroid/hardware/Sensor;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/GestureLauncherService;

    .line 60
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/GestureLauncherService;)Lcom/android/server/wm/WindowManagerInternal;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/GestureLauncherService;

    .line 60
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/GestureLauncherService;)Landroid/os/PowerManager;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/GestureLauncherService;

    .line 60
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/GestureLauncherService;)Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/GestureLauncherService;

    .line 60
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerListener:Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/GestureLauncherService;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/GestureLauncherService;
    .param p1, "x1"  # Z

    .line 60
    iput-boolean p1, p0, Lcom/android/server/GestureLauncherService;->mDisablePowerKey:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/GestureLauncherService;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/GestureLauncherService;

    .line 60
    iget v0, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/GestureLauncherService;I)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/GestureLauncherService;
    .param p1, "x1"  # I

    .line 60
    iput p1, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/GestureLauncherService;)Landroid/database/ContentObserver;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/GestureLauncherService;

    .line 60
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/GestureLauncherService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/GestureLauncherService;

    .line 60
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/GestureLauncherService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/GestureLauncherService;

    .line 60
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->registerContentObservers()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/GestureLauncherService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/GestureLauncherService;

    .line 60
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->updateCameraRegistered()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/GestureLauncherService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/GestureLauncherService;

    .line 60
    iget-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/GestureLauncherService;)Landroid/hardware/Sensor;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/GestureLauncherService;

    .line 60
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method public static isCameraDoubleTapPowerEnabled(Landroid/content/res/Resources;)Z
    .registers 2
    .param p0, "resources"  # Landroid/content/res/Resources;

    .line 346
    const v0, 0x1110038

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isCameraDoubleTapPowerSettingEnabled(Landroid/content/Context;I)Z
    .registers 7
    .param p0, "context"  # Landroid/content/Context;
    .param p1, "userId"  # I

    .line 321
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->isCameraDoubleTapPowerEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_34

    .line 322
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "camera_double_tap_power_gesture_disabled"

    invoke-static {v0, v3, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_34

    .line 324
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x3

    const-string/jumbo v4, "power_double_click"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_32

    .line 325
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "FIRST_DOUBLE_POWER"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_34

    :cond_32
    move v1, v2

    goto :goto_35

    :cond_34
    nop

    .line 321
    :goto_35
    return v1
.end method

.method public static isCameraLaunchEnabled(Landroid/content/res/Resources;)Z
    .registers 5
    .param p0, "resources"  # Landroid/content/res/Resources;

    .line 339
    const v0, 0x10e0027

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v2

    .line 341
    .local v0, "configSet":Z
    :goto_f
    if-eqz v0, :cond_1a

    .line 342
    const-string v3, "gesture.disable_camera_launch"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1a

    goto :goto_1b

    :cond_1a
    move v1, v2

    .line 341
    :goto_1b
    return v1
.end method

.method public static isCameraLaunchSettingEnabled(Landroid/content/Context;I)Z
    .registers 5
    .param p0, "context"  # Landroid/content/Context;
    .param p1, "userId"  # I

    .line 315
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->isCameraLaunchEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 316
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "camera_gesture_disabled"

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_19

    const/4 v1, 0x1

    goto :goto_1a

    :cond_19
    nop

    .line 315
    :goto_1a
    return v1
.end method

.method public static isCameraLiftTriggerEnabled(Landroid/content/res/Resources;)Z
    .registers 3
    .param p0, "resources"  # Landroid/content/res/Resources;

    .line 351
    const v0, 0x10e0028

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 353
    .local v0, "configSet":Z
    :goto_d
    return v0
.end method

.method public static isCameraLiftTriggerSettingEnabled(Landroid/content/Context;I)Z
    .registers 5
    .param p0, "context"  # Landroid/content/Context;
    .param p1, "userId"  # I

    .line 329
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->isCameraLiftTriggerEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_18

    .line 330
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "camera_lift_trigger_enabled"

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    .line 329
    :goto_19
    return v1
.end method

.method public static isFiveTapPowerEnabled(Landroid/content/res/Resources;)Z
    .registers 2
    .param p0, "resources"  # Landroid/content/res/Resources;

    .line 663
    const v0, 0xa050008

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isGestureLauncherEnabled(Landroid/content/res/Resources;)Z
    .registers 2
    .param p0, "resources"  # Landroid/content/res/Resources;

    .line 360
    invoke-static {p0}, Lcom/android/server/GestureLauncherService;->isCameraLaunchEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {p0}, Lcom/android/server/GestureLauncherService;->isCameraDoubleTapPowerEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 361
    invoke-static {p0}, Lcom/android/server/GestureLauncherService;->isCameraLiftTriggerEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 363
    invoke-static {p0}, Lcom/android/server/GestureLauncherService;->isFiveTapPowerEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    .line 360
    :goto_1c
    return v0
.end method

.method private registerCameraLaunchGesture(Landroid/content/res/Resources;)V
    .registers 8
    .param p1, "resources"  # Landroid/content/res/Resources;

    .line 228
    iget-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    if-eqz v0, :cond_5

    .line 229
    return-void

    .line 231
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    .line 232
    iget-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    iput-wide v0, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    .line 233
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 235
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    const v1, 0x10e0027

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 237
    .local v1, "cameraLaunchGestureId":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_67

    .line 238
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    .line 239
    const v3, 0x1040142

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, "sensorName":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    .line 248
    iget-object v5, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    if-eqz v5, :cond_67

    .line 249
    invoke-virtual {v5}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 250
    iget-object v4, p0, Lcom/android/server/GestureLauncherService;->mGestureListener:Lcom/android/server/GestureLauncherService$GestureEventListener;

    iget-object v5, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v4, v5, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    goto :goto_67

    .line 253
    :cond_4e
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v2

    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchSensor:Landroid/hardware/Sensor;

    .line 255
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v4

    .line 253
    const-string v2, "Wrong configuration. Sensor type and sensor string type don\'t match: %s in resources, %s in the sensor."

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, "message":Ljava/lang/String;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 263
    .end local v2  # "message":Ljava/lang/String;
    .end local v3  # "sensorName":Ljava/lang/String;
    :cond_67
    :goto_67
    return-void
.end method

.method private registerCameraLiftTrigger(Landroid/content/res/Resources;)V
    .registers 8
    .param p1, "resources"  # Landroid/content/res/Resources;

    .line 279
    iget-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    if-eqz v0, :cond_5

    .line 280
    return-void

    .line 282
    :cond_5
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 284
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    const v1, 0x10e0028

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 286
    .local v1, "cameraLiftTriggerId":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_5d

    .line 287
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    .line 288
    const v3, 0x1040143

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 290
    .local v3, "sensorName":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    .line 297
    iget-object v5, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    if-eqz v5, :cond_5d

    .line 298
    invoke-virtual {v5}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 299
    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerListener:Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

    iget-object v4, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v2, v4}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    goto :goto_5d

    .line 302
    :cond_44
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v2

    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    .line 304
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v4

    .line 302
    const-string v2, "Wrong configuration. Sensor type and sensor string type don\'t match: %s in resources, %s in the sensor."

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, "message":Ljava/lang/String;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 312
    .end local v2  # "message":Ljava/lang/String;
    .end local v3  # "sensorName":Ljava/lang/String;
    :cond_5d
    :goto_5d
    return-void
.end method

.method private registerContentObservers()V
    .registers 6

    .line 172
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 173
    const-string v1, "camera_gesture_disabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    .line 172
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 175
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 176
    const-string v1, "camera_double_tap_power_gesture_disabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    .line 175
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 178
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 179
    const-string v1, "camera_lift_trigger_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    .line 178
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 181
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 182
    const-string/jumbo v1, "power_double_click"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mSettingObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    .line 181
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 184
    return-void
.end method

.method private unregisterCameraLaunchGesture()V
    .registers 4

    .line 210
    iget-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    if-eqz v0, :cond_23

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchRegistered:Z

    .line 212
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureOnTimeMs:J

    .line 213
    iput-wide v1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureLastEventTime:J

    .line 214
    iput-wide v1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor1LastOnTimeMs:J

    .line 215
    iput-wide v1, p0, Lcom/android/server/GestureLauncherService;->mCameraGestureSensor2LastOnTimeMs:J

    .line 216
    iput v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLaunchLastEventExtra:I

    .line 218
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 220
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mGestureListener:Lcom/android/server/GestureLauncherService$GestureEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 222
    .end local v0  # "sensorManager":Landroid/hardware/SensorManager;
    :cond_23
    return-void
.end method

.method private unregisterCameraLiftTrigger()V
    .registers 4

    .line 266
    iget-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    if-eqz v0, :cond_19

    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftRegistered:Z

    .line 269
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 271
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerListener:Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mCameraLiftTriggerSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    .line 273
    .end local v0  # "sensorManager":Landroid/hardware/SensorManager;
    :cond_19
    return-void
.end method

.method private updateCameraRegistered()V
    .registers 4

    .line 187
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 188
    .local v0, "resources":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/server/GestureLauncherService;->isCameraLaunchSettingEnabled(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 189
    invoke-direct {p0, v0}, Lcom/android/server/GestureLauncherService;->registerCameraLaunchGesture(Landroid/content/res/Resources;)V

    goto :goto_17

    .line 191
    :cond_14
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->unregisterCameraLaunchGesture()V

    .line 194
    :goto_17
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/server/GestureLauncherService;->isCameraLiftTriggerSettingEnabled(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 195
    invoke-direct {p0, v0}, Lcom/android/server/GestureLauncherService;->registerCameraLiftTrigger(Landroid/content/res/Resources;)V

    goto :goto_28

    .line 197
    :cond_25
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->unregisterCameraLiftTrigger()V

    .line 199
    :goto_28
    return-void
.end method


# virtual methods
.method handleCameraGesture(ZI)Z
    .registers 13
    .param p1, "useWakelock"  # Z
    .param p2, "source"  # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 450
    const-wide/16 v0, 0x40

    const-string v2, "GestureLauncher:handleCameraGesture"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 452
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
    .catchall {:try_start_7 .. :try_end_16} :catchall_7a

    const/4 v3, 0x1

    if-eqz v2, :cond_1b

    move v2, v3

    goto :goto_1c

    :cond_1b
    move v2, v5

    .line 454
    .local v2, "userSetupComplete":Z
    :goto_1c
    if-nez v2, :cond_23

    .line 460
    nop

    .line 520
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 460
    return v5

    .line 469
    :cond_23
    :try_start_23
    iget-object v4, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    .line 470
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "flyme_version_setting_up"

    .line 469
    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4
    :try_end_2f
    .catchall {:try_start_23 .. :try_end_2f} :catchall_7a

    if-ne v4, v3, :cond_36

    .line 473
    nop

    .line 520
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 473
    return v5

    .line 477
    :cond_36
    if-eqz p1, :cond_3f

    .line 479
    :try_start_38
    iget-object v4, p0, Lcom/android/server/GestureLauncherService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v5, 0x1f4

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 487
    :cond_3f
    const-wide/16 v4, 0x0

    .line 489
    .local v4, "delayTime":J
    if-ne p2, v3, :cond_46

    .line 490
    const-wide/16 v4, 0x12c

    goto :goto_67

    .line 491
    :cond_46
    const/4 v6, 0x3

    if-ne p2, v6, :cond_67

    .line 492
    iput-boolean v3, p0, Lcom/android/server/GestureLauncherService;->mDisablePowerKey:Z

    .line 493
    iget-object v6, p0, Lcom/android/server/GestureLauncherService;->mDisablePowerKeyRunnable:Ljava/lang/Runnable;

    if-eqz v6, :cond_57

    .line 494
    iget-object v6, p0, Lcom/android/server/GestureLauncherService;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/GestureLauncherService;->mDisablePowerKeyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_5e

    .line 496
    :cond_57
    new-instance v6, Lcom/android/server/GestureLauncherService$1;

    invoke-direct {v6, p0}, Lcom/android/server/GestureLauncherService$1;-><init>(Lcom/android/server/GestureLauncherService;)V

    iput-object v6, p0, Lcom/android/server/GestureLauncherService;->mDisablePowerKeyRunnable:Ljava/lang/Runnable;

    .line 503
    :goto_5e
    iget-object v6, p0, Lcom/android/server/GestureLauncherService;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/GestureLauncherService;->mDisablePowerKeyRunnable:Ljava/lang/Runnable;

    const-wide/16 v8, 0x2710

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 506
    :cond_67
    :goto_67
    new-instance v6, Lcom/android/server/GestureLauncherService$2;

    invoke-direct {v6, p0, p2}, Lcom/android/server/GestureLauncherService$2;-><init>(Lcom/android/server/GestureLauncherService;I)V

    iput-object v6, p0, Lcom/android/server/GestureLauncherService;->mDoubleTapRunnable:Ljava/lang/Runnable;

    .line 516
    iget-object v6, p0, Lcom/android/server/GestureLauncherService;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/GestureLauncherService;->mDoubleTapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_75
    .catchall {:try_start_38 .. :try_end_75} :catchall_7a

    .line 518
    nop

    .line 520
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 518
    return v3

    .line 520
    .end local v2  # "userSetupComplete":Z
    .end local v4  # "delayTime":J
    :catchall_7a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method public interceptPowerKeyDown(Landroid/view/KeyEvent;ZLandroid/util/MutableBoolean;)Z
    .registers 15
    .param p1, "event"  # Landroid/view/KeyEvent;
    .param p2, "interactive"  # Z
    .param p3, "outLaunched"  # Landroid/util/MutableBoolean;

    .line 369
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 373
    return v1

    .line 377
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mDisablePowerKey:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_15

    .line 378
    const-string v0, "GestureLauncherService"

    const-string v1, "Power key disable by sos"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    return v2

    .line 382
    :cond_15
    const/4 v0, 0x0

    .line 383
    .local v0, "launched":Z
    const/4 v3, 0x0

    .line 385
    .local v3, "intercept":Z
    monitor-enter p0

    .line 387
    :try_start_18
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/GestureLauncherService;->mLastPowerDown:J

    sub-long/2addr v4, v6

    .line 388
    .local v4, "powerTapInterval":J
    const-wide/16 v6, 0x12c

    cmp-long v8, v4, v6

    const/4 v9, 0x3

    if-gez v8, :cond_3a

    iget v8, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    const/4 v10, 0x4

    if-lt v8, v10, :cond_3a

    .line 390
    const-string v6, "GestureLauncherService"

    const-string v7, "five tap intercept.."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/4 v0, 0x1

    .line 392
    move v3, p2

    .line 393
    iget v6, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    add-int/2addr v6, v2

    iput v6, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    goto :goto_88

    .line 394
    :cond_3a
    iget-boolean v8, p0, Lcom/android/server/GestureLauncherService;->mCameraDoubleTapPowerEnabled:Z

    if-eqz v8, :cond_4e

    cmp-long v6, v4, v6

    if-gez v6, :cond_4e

    iget v6, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    if-gt v6, v2, :cond_4e

    .line 400
    const/4 v0, 0x1

    .line 401
    move v3, p2

    .line 402
    iget v6, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    add-int/2addr v6, v2

    iput v6, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    goto :goto_88

    .line 403
    :cond_4e
    const-wide/16 v6, 0x1f4

    cmp-long v6, v4, v6

    if-gez v6, :cond_86

    .line 404
    iget v6, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    add-int/2addr v6, v2

    iput v6, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    .line 405
    const-string v6, "GestureLauncherService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mPowerButtonConsecutiveTaps++, :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget v6, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    if-ne v6, v9, :cond_88

    .line 407
    const-string v6, "GestureLauncherService"

    const-string/jumbo v7, "removeCallbacks mDoubleTapRunnable"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v6, p0, Lcom/android/server/GestureLauncherService;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/GestureLauncherService;->mDoubleTapRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_88

    .line 411
    :cond_86
    iput v2, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    .line 413
    :cond_88
    :goto_88
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/GestureLauncherService;->mLastPowerDown:J

    .line 414
    monitor-exit p0
    :try_end_8f
    .catchall {:try_start_18 .. :try_end_8f} :catchall_f0

    .line 419
    if-eqz v0, :cond_d5

    .line 420
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Power button double tap gesture detected, launching camera. Interval="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ms, mPowerButtonConsecutiveTaps:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "GestureLauncherService"

    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget v6, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    const/4 v7, 0x2

    const/16 v8, 0xff

    if-ne v6, v7, :cond_c6

    .line 423
    invoke-virtual {p0, v1, v2}, Lcom/android/server/GestureLauncherService;->handleCameraGesture(ZI)Z

    move-result v0

    .line 425
    if-eqz v0, :cond_d5

    .line 426
    iget-object v6, p0, Lcom/android/server/GestureLauncherService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    long-to-int v7, v4

    invoke-virtual {v6, v8, v7}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    goto :goto_d5

    .line 429
    :cond_c6
    const/4 v7, 0x5

    if-lt v6, v7, :cond_d5

    .line 430
    invoke-virtual {p0, v1, v9}, Lcom/android/server/GestureLauncherService;->handleCameraGesture(ZI)Z

    move-result v0

    .line 432
    if-eqz v0, :cond_d5

    .line 433
    iget-object v6, p0, Lcom/android/server/GestureLauncherService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    long-to-int v7, v4

    invoke-virtual {v6, v8, v7}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    .line 439
    :cond_d5
    :goto_d5
    iget-object v6, p0, Lcom/android/server/GestureLauncherService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget v7, p0, Lcom/android/server/GestureLauncherService;->mPowerButtonConsecutiveTaps:I

    const-string/jumbo v8, "power_consecutive_short_tap_count"

    invoke-virtual {v6, v8, v7}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 440
    iget-object v6, p0, Lcom/android/server/GestureLauncherService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    long-to-int v7, v4

    const-string/jumbo v8, "power_double_tap_interval"

    invoke-virtual {v6, v8, v7}, Lcom/android/internal/logging/MetricsLogger;->histogram(Ljava/lang/String;I)V

    .line 441
    iput-boolean v0, p3, Landroid/util/MutableBoolean;->value:Z

    .line 442
    if-eqz v3, :cond_ef

    if-eqz v0, :cond_ef

    move v1, v2

    :cond_ef
    return v1

    .line 414
    .end local v4  # "powerTapInterval":J
    :catchall_f0
    move-exception v1

    :try_start_f1
    monitor-exit p0
    :try_end_f2
    .catchall {:try_start_f1 .. :try_end_f2} :catchall_f0

    throw v1
.end method

.method public onBootPhase(I)V
    .registers 7
    .param p1, "phase"  # I

    .line 150
    const/16 v0, 0x258

    if-ne p1, v0, :cond_50

    .line 151
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 152
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 154
    return-void

    .line 157
    :cond_11
    const-class v1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v1, p0, Lcom/android/server/GestureLauncherService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 158
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/GestureLauncherService;->mPowerManager:Landroid/os/PowerManager;

    .line 160
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "GestureLauncherService"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/GestureLauncherService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 162
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->updateCameraRegistered()V

    .line 163
    invoke-virtual {p0}, Lcom/android/server/GestureLauncherService;->updateCameraDoubleTapPowerEnabled()V

    .line 165
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    iput v1, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    .line 166
    iget-object v1, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/GestureLauncherService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.USER_SWITCHED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 167
    invoke-direct {p0}, Lcom/android/server/GestureLauncherService;->registerContentObservers()V

    .line 169
    .end local v0  # "resources":Landroid/content/res/Resources;
    :cond_50
    return-void
.end method

.method public onStart()V
    .registers 2

    .line 146
    const-class v0, Lcom/android/server/GestureLauncherService;

    invoke-static {v0, p0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 147
    return-void
.end method

.method updateCameraDoubleTapPowerEnabled()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/android/server/GestureLauncherService;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/GestureLauncherService;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/server/GestureLauncherService;->isCameraDoubleTapPowerSettingEnabled(Landroid/content/Context;I)Z

    move-result v0

    .line 204
    .local v0, "enabled":Z
    monitor-enter p0

    .line 205
    :try_start_9
    iput-boolean v0, p0, Lcom/android/server/GestureLauncherService;->mCameraDoubleTapPowerEnabled:Z

    .line 206
    monitor-exit p0

    .line 207
    return-void

    .line 206
    :catchall_d
    move-exception v1

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_d

    throw v1
.end method
