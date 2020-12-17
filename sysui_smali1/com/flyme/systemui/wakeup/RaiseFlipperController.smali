.class public final Lcom/flyme/systemui/wakeup/RaiseFlipperController;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "RaiseFlipperController.java"


# static fields
.field private static sInstance:Lcom/flyme/systemui/wakeup/RaiseFlipperController;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFlipSensor:Landroid/hardware/Sensor;

.field private final mFlipSensorListener:Landroid/hardware/SensorEventListener;

.field private mGoingToSleep:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mKeyguardShowing:Z

.field private mLastRaiseAction:I

.field private mLsProximityThreshold:F

.field private mObserver:Landroid/database/ContentObserver;

.field private mPM:Landroid/os/IPowerManager;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPsensor:Landroid/hardware/Sensor;

.field private final mPsensorListener:Landroid/hardware/SensorEventListener;

.field private mRaiseSensor:Landroid/hardware/Sensor;

.field private final mRaiseSensorListener:Landroid/hardware/SensorEventListener;

.field private mRaiseWakeupOn:Z

.field private mResolver:Landroid/content/ContentResolver;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mWakeupByFlip:Z

.field private mWakeupByRaise:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 72
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mLastRaiseAction:I

    .line 98
    new-instance v1, Lcom/flyme/systemui/wakeup/RaiseFlipperController$1;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/wakeup/RaiseFlipperController$1;-><init>(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)V

    iput-object v1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mHandler:Landroid/os/Handler;

    .line 120
    new-instance v1, Lcom/flyme/systemui/wakeup/RaiseFlipperController$2;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/wakeup/RaiseFlipperController$2;-><init>(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)V

    iput-object v1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mGoingToSleep:Ljava/lang/Runnable;

    .line 128
    new-instance v1, Lcom/flyme/systemui/wakeup/RaiseFlipperController$3;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/wakeup/RaiseFlipperController$3;-><init>(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)V

    iput-object v1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mFlipSensorListener:Landroid/hardware/SensorEventListener;

    .line 152
    new-instance v1, Lcom/flyme/systemui/wakeup/RaiseFlipperController$4;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/wakeup/RaiseFlipperController$4;-><init>(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)V

    iput-object v1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mRaiseSensorListener:Landroid/hardware/SensorEventListener;

    .line 198
    new-instance v1, Lcom/flyme/systemui/wakeup/RaiseFlipperController$5;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/wakeup/RaiseFlipperController$5;-><init>(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)V

    iput-object v1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mPsensorListener:Landroid/hardware/SensorEventListener;

    .line 227
    new-instance v1, Lcom/flyme/systemui/wakeup/RaiseFlipperController$6;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/flyme/systemui/wakeup/RaiseFlipperController$6;-><init>(Lcom/flyme/systemui/wakeup/RaiseFlipperController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mObserver:Landroid/database/ContentObserver;

    .line 73
    iput-object p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mContext:Landroid/content/Context;

    .line 74
    iget-object p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mResolver:Landroid/content/ContentResolver;

    .line 75
    iget-object p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 76
    iget-object p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mPowerManager:Landroid/os/PowerManager;

    .line 77
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object p1

    iput-object p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mPM:Landroid/os/IPowerManager;

    .line 79
    iget-object p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    const v2, 0x10002

    invoke-virtual {p1, v2, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mFlipSensor:Landroid/hardware/Sensor;

    .line 80
    iget-object p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mSensorManager:Landroid/hardware/SensorManager;

    const v2, 0x10003

    invoke-virtual {p1, v2, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mRaiseSensor:Landroid/hardware/Sensor;

    .line 81
    iget-object p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mPsensor:Landroid/hardware/Sensor;

    .line 83
    iget-object p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mPsensor:Landroid/hardware/Sensor;

    const/high16 v2, 0x40a00000  # 5.0f

    if-nez p1, :cond_8b

    .line 84
    iput v2, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mLsProximityThreshold:F

    goto :goto_95

    .line 86
    :cond_8b
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result p1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mLsProximityThreshold:F

    .line 89
    :goto_95
    iget-object p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v2, -0x2

    const-string v3, "raisewakeup_switch"

    invoke-static {p1, v3, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-ne p1, v1, :cond_a5

    goto :goto_a6

    :cond_a5
    move v1, v0

    :goto_a6
    iput-boolean v1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mRaiseWakeupOn:Z

    .line 91
    iget-object p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 93
    iget-boolean p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mRaiseWakeupOn:Z

    invoke-direct {p0, p1}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->updateRaiseAndFlipSensor(Z)V

    .line 95
    iget-object p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)Landroid/hardware/SensorEventListener;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mPsensorListener:Landroid/hardware/SensorEventListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)Landroid/hardware/Sensor;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mPsensor:Landroid/hardware/Sensor;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)F
    .registers 1

    .line 27
    iget p0, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mLsProximityThreshold:F

    return p0
.end method

.method static synthetic access$1100(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)Z
    .registers 1

    .line 27
    iget-boolean p0, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mRaiseWakeupOn:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/flyme/systemui/wakeup/RaiseFlipperController;Z)Z
    .registers 2

    .line 27
    iput-boolean p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mRaiseWakeupOn:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)Landroid/content/Context;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/flyme/systemui/wakeup/RaiseFlipperController;Z)V
    .registers 2

    .line 27
    invoke-direct {p0, p1}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->updateRaiseAndFlipSensor(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)Landroid/hardware/SensorManager;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mSensorManager:Landroid/hardware/SensorManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)Landroid/os/PowerManager;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)Z
    .registers 1

    .line 27
    iget-boolean p0, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mWakeupByRaise:Z

    return p0
.end method

.method static synthetic access$402(Lcom/flyme/systemui/wakeup/RaiseFlipperController;Z)Z
    .registers 2

    .line 27
    iput-boolean p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mWakeupByRaise:Z

    return p1
.end method

.method static synthetic access$500(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)Ljava/lang/Runnable;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mGoingToSleep:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$600(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)Landroid/os/Handler;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)Z
    .registers 1

    .line 27
    iget-boolean p0, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mWakeupByFlip:Z

    return p0
.end method

.method static synthetic access$702(Lcom/flyme/systemui/wakeup/RaiseFlipperController;Z)Z
    .registers 2

    .line 27
    iput-boolean p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mWakeupByFlip:Z

    return p1
.end method

.method static synthetic access$800(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)Z
    .registers 1

    .line 27
    iget-boolean p0, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mKeyguardShowing:Z

    return p0
.end method

.method static synthetic access$900(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)I
    .registers 1

    .line 27
    iget p0, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mLastRaiseAction:I

    return p0
.end method

.method static synthetic access$902(Lcom/flyme/systemui/wakeup/RaiseFlipperController;I)I
    .registers 2

    .line 27
    iput p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mLastRaiseAction:I

    return p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/flyme/systemui/wakeup/RaiseFlipperController;
    .registers 2

    .line 62
    sget-object v0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->sInstance:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    if-nez v0, :cond_b

    .line 63
    new-instance v0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->sInstance:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    .line 65
    :cond_b
    sget-object p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->sInstance:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    return-object p0
.end method

.method public static init(Landroid/content/Context;)Lcom/flyme/systemui/wakeup/RaiseFlipperController;
    .registers 1

    .line 69
    invoke-static {p0}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    move-result-object p0

    return-object p0
.end method

.method private updateRaiseAndFlipSensor(Z)V
    .registers 5

    if-eqz p1, :cond_16

    .line 219
    iget-object p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mFlipSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mFlipSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x3

    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 220
    iget-object p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mRaiseSensorListener:Landroid/hardware/SensorEventListener;

    iget-object p0, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mRaiseSensor:Landroid/hardware/Sensor;

    invoke-virtual {p1, v0, p0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_24

    .line 222
    :cond_16
    iget-object p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mFlipSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 223
    iget-object p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mRaiseSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :goto_24
    return-void
.end method


# virtual methods
.method public clearWakeupState()V
    .registers 3

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearWakeupState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RaiseFlipperController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 239
    iput-boolean v0, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mWakeupByRaise:Z

    .line 240
    iput-boolean v0, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mWakeupByFlip:Z

    return-void
.end method

.method public onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V
    .registers 2

    .line 245
    invoke-virtual {p0}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->clearWakeupState()V

    return-void
.end method

.method public onFingerprintAuthenticated(II)V
    .registers 3

    .line 250
    invoke-virtual {p0}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->clearWakeupState()V

    return-void
.end method

.method public showKeyguard(Z)V
    .registers 2

    .line 254
    iput-boolean p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->mKeyguardShowing:Z

    return-void
.end method
