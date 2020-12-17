.class public Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;
.super Ljava/lang/Object;
.source "SensorPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemuitools/aod/presenter/SensorPolicy$Callback;
    }
.end annotation


# instance fields
.field private final BRIGHTENING_LIGHT_THRESHOLD_LOWLUX:F

.field private final DARKENING_LIGHT_THRESHOLD_HEIGHTLUX:F

.field private final MSG_START_OBSERVE_LIGHT_SENSOR_EVENT:I

.field private final MSG_START_OBSERVE_PROXIMITY_SENSOR_EVENT:I

.field private final MSG_STOP_OBSERVE_LIGHT_SENSOR_EVENT:I

.field private final MSG_STOP_OBSERVE_PROXIMITY_SENSOR_EVENT:I

.field private final MSG_UPDATE_AMBIENT_LUX:I

.field private final SENSOR_DISABLE_TIMEOUT_NONE:I

.field private final TAG:Ljava/lang/String;

.field private final TYPICAL_PROXIMITY_THRESHOLD:F

.field private mCallback:Lcom/flyme/systemuitools/aod/presenter/SensorPolicy$Callback;

.field private mContext:Landroid/content/Context;

.field private mDarkenLight:Z

.field mDisableLightRunnable:Ljava/lang/Runnable;

.field mDisableProximityRunnable:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field mLightListener:Landroid/hardware/SensorEventListener;

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorEnabled:Z

.field private mLightWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mProximityClose:Z

.field mProximityListener:Landroid/hardware/SensorEventListener;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorEnabled:Z

.field private mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SensorPolicy"

    .line 19
    iput-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->TAG:Ljava/lang/String;

    const/high16 v0, 0x40a00000  # 5.0f

    .line 23
    iput v0, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->TYPICAL_PROXIMITY_THRESHOLD:F

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mProximitySensorEnabled:Z

    .line 26
    iput-boolean v0, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mProximityClose:Z

    .line 28
    iput-boolean v0, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mLightSensorEnabled:Z

    const/4 v1, -0x1

    .line 31
    iput v1, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->SENSOR_DISABLE_TIMEOUT_NONE:I

    const/high16 v1, 0x40c00000  # 6.0f

    .line 35
    iput v1, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->BRIGHTENING_LIGHT_THRESHOLD_LOWLUX:F

    const/high16 v1, 0x40000000  # 2.0f

    .line 36
    iput v1, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->DARKENING_LIGHT_THRESHOLD_HEIGHTLUX:F

    .line 38
    iput v0, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->MSG_START_OBSERVE_PROXIMITY_SENSOR_EVENT:I

    const/4 v1, 0x1

    .line 39
    iput v1, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->MSG_STOP_OBSERVE_PROXIMITY_SENSOR_EVENT:I

    const/4 v2, 0x2

    .line 40
    iput v2, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->MSG_START_OBSERVE_LIGHT_SENSOR_EVENT:I

    const/4 v2, 0x3

    .line 41
    iput v2, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->MSG_STOP_OBSERVE_LIGHT_SENSOR_EVENT:I

    const/4 v2, 0x4

    .line 42
    iput v2, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->MSG_UPDATE_AMBIENT_LUX:I

    .line 44
    iput-boolean v0, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mDarkenLight:Z

    .line 63
    new-instance v2, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy$1;

    invoke-direct {v2, p0}, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy$1;-><init>(Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;)V

    iput-object v2, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mHandler:Landroid/os/Handler;

    .line 88
    new-instance v2, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy$2;

    invoke-direct {v2, p0}, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy$2;-><init>(Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;)V

    iput-object v2, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mDisableProximityRunnable:Ljava/lang/Runnable;

    .line 98
    new-instance v2, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy$3;

    invoke-direct {v2, p0}, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy$3;-><init>(Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;)V

    iput-object v2, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mDisableLightRunnable:Ljava/lang/Runnable;

    .line 108
    new-instance v2, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy$4;

    invoke-direct {v2, p0}, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy$4;-><init>(Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;)V

    iput-object v2, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mProximityListener:Landroid/hardware/SensorEventListener;

    .line 130
    new-instance v2, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy$5;

    invoke-direct {v2, p0}, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy$5;-><init>(Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;)V

    iput-object v2, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mLightListener:Landroid/hardware/SensorEventListener;

    .line 48
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mContext:Landroid/content/Context;

    const-string v2, "power"

    .line 50
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    const-string v3, "PhoneWindowManager.mProximityWakeLock"

    .line 51
    invoke-virtual {v2, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 53
    iget-object v3, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    const-string v3, "PhoneWindowManager.mLightWakeLock"

    .line 54
    invoke-virtual {v2, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mLightWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 56
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mLightWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 57
    new-instance v0, Landroid/hardware/SystemSensorManager;

    iget-object v1, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mSensorManager:Landroid/hardware/SensorManager;

    .line 58
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v0, 0x8

    .line 59
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mProximitySensor:Landroid/hardware/Sensor;

    .line 60
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mLightSensor:Landroid/hardware/Sensor;

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;I)V
    .registers 2

    .line 17
    invoke-direct {p0, p1}, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->enableLightLockLocked(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;)V
    .registers 1

    .line 17
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->disableLightLockLocked()V

    return-void
.end method

.method static synthetic access$200(Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;I)V
    .registers 2

    .line 17
    invoke-direct {p0, p1}, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->enableProximityLockLocked(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;)V
    .registers 1

    .line 17
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->disableProximityLockLocked()V

    return-void
.end method

.method static synthetic access$400(Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;FJ)V
    .registers 4

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->updateAmbientLux(FJ)V

    return-void
.end method

.method static synthetic access$500(Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;)Z
    .registers 1

    .line 17
    iget-boolean p0, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mProximitySensorEnabled:Z

    return p0
.end method

.method static synthetic access$600(Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;)Z
    .registers 1

    .line 17
    iget-boolean p0, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mLightSensorEnabled:Z

    return p0
.end method

.method static synthetic access$700(Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;)Landroid/hardware/Sensor;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mProximitySensor:Landroid/hardware/Sensor;

    return-object p0
.end method

.method static synthetic access$800(Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;Z)V
    .registers 2

    .line 17
    invoke-direct {p0, p1}, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->proximityChangedLocked(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;F)V
    .registers 2

    .line 17
    invoke-direct {p0, p1}, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->handleLightSensorEvent(F)V

    return-void
.end method

.method private disableLightLockLocked()V
    .registers 6

    .line 292
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mDisableLightRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableLightLockLocked, mLightSensorEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mLightSensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SensorPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-boolean v0, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mLightSensorEnabled:Z

    if-eqz v0, :cond_44

    .line 298
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 300
    :try_start_27
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mLightListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v4}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const-string v0, "mSensorManager.unregisterListener(mLightListener)"

    .line 301
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_27 .. :try_end_33} :catchall_3f

    .line 303
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x0

    .line 309
    iput-boolean v0, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mLightSensorEnabled:Z

    const-string p0, "mLightWakeLock.release()"

    .line 311
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    :catchall_3f
    move-exception p0

    .line 303
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_44
    const-string p0, "disableLightLockLocked() failed... Light Sensor already disabled"

    .line 314
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_49
    return-void
.end method

.method private disableProximityLockLocked()V
    .registers 6

    .line 205
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mDisableProximityRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableProximityLockLocked, mProximitySensorEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mProximitySensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SensorPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-boolean v0, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_44

    .line 211
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 213
    :try_start_27
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mProximityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v4}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const-string v0, "mSensorManager.unregisterListener(mProximityListener)"

    .line 214
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_27 .. :try_end_33} :catchall_3f

    .line 217
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x0

    .line 223
    iput-boolean v0, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mProximitySensorEnabled:Z

    const-string p0, "mProximityWakeLock.release()"

    .line 225
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    :catchall_3f
    move-exception p0

    .line 217
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_44
    const-string p0, "disableProximityLockLocked() failed... Proximity Sensor already disabled"

    .line 228
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_49
    return-void
.end method

.method private enableLightLockLocked(I)V
    .registers 8

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableLightLockLocked, mLightSensorEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mLightSensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SensorPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-boolean v0, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mLightSensorEnabled:Z

    if-nez v0, :cond_41

    const/4 v0, 0x1

    .line 269
    iput-boolean v0, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mLightSensorEnabled:Z

    .line 273
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 275
    :try_start_23
    iget-object v2, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mLightListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mLightSensor:Landroid/hardware/Sensor;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_3c

    .line 278
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-lez p1, :cond_46

    .line 282
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mDisableLightRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_46

    :catchall_3c
    move-exception p0

    .line 278
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_41
    const-string p0, "enableLightLockLocked() failed...Light Sensor already enabled"

    .line 286
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    :goto_46
    return-void
.end method

.method private enableProximityLockLocked(I)V
    .registers 8

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableProximityLockLocked, mProximitySensorEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mProximitySensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SensorPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-boolean v0, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mProximitySensorEnabled:Z

    if-nez v0, :cond_41

    const/4 v0, 0x1

    .line 182
    iput-boolean v0, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mProximitySensorEnabled:Z

    .line 186
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 188
    :try_start_23
    iget-object v2, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mProximityListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_2d
    .catchall {:try_start_23 .. :try_end_2d} :catchall_3c

    .line 191
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-lez p1, :cond_46

    .line 195
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mDisableProximityRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_46

    :catchall_3c
    move-exception p0

    .line 191
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_41
    const-string p0, "enableProximityLockLocked() failed...Proximity Sensor already enabled"

    .line 199
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    :goto_46
    return-void
.end method

.method private handleLightSensorEvent(F)V
    .registers 5

    .line 320
    iget-boolean v0, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mLightSensorEnabled:Z

    const-string v1, "SensorPolicy"

    if-nez v0, :cond_c

    const-string p0, "Ignoring light change after sensor is disabled"

    .line 321
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 324
    :cond_c
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 325
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mHandler:Landroid/os/Handler;

    .line 326
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 325
    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 327
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleLightSensorEvent, "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private proximityChangedLocked(Z)V
    .registers 5

    .line 234
    iget-boolean v0, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mProximitySensorEnabled:Z

    const-string v1, "SensorPolicy"

    if-nez v0, :cond_18

    const-string p1, "Ignoring proximity change after sensor is disabled"

    .line 235
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 236
    iput-boolean p1, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mProximityClose:Z

    .line 237
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mCallback:Lcom/flyme/systemuitools/aod/presenter/SensorPolicy$Callback;

    if-eqz p1, :cond_17

    .line 238
    iget-boolean p0, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mProximityClose:Z

    invoke-interface {p1, p0}, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy$Callback;->onProximityChanged(Z)V

    :cond_17
    return-void

    .line 243
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "proximityChangedLocked, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_34

    const-string v0, "active!!! mHandler.removeCallbacks(mWakeUpScreenRunnable)()"

    .line 245
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    :cond_34
    const-string v0, "no active! go on wakup!"

    .line 249
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :goto_39
    iput-boolean p1, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mProximityClose:Z

    .line 252
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mCallback:Lcom/flyme/systemuitools/aod/presenter/SensorPolicy$Callback;

    if-eqz p0, :cond_42

    .line 253
    invoke-interface {p0, p1}, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy$Callback;->onProximityChanged(Z)V

    :cond_42
    return-void
.end method

.method private updateAmbientLux(FJ)V
    .registers 4

    .line 331
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "updateAmbientLux light = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "SensorPolicy"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-boolean p2, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mDarkenLight:Z

    if-eqz p2, :cond_25

    const/high16 p2, 0x40c00000  # 6.0f

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_25

    const/4 p2, 0x0

    .line 333
    iput-boolean p2, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mDarkenLight:Z

    goto :goto_32

    .line 334
    :cond_25
    iget-boolean p2, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mDarkenLight:Z

    if-nez p2, :cond_32

    const/high16 p2, 0x40000000  # 2.0f

    cmpg-float p2, p1, p2

    if-gtz p2, :cond_32

    const/4 p2, 0x1

    .line 336
    iput-boolean p2, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mDarkenLight:Z

    .line 338
    :cond_32
    :goto_32
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mCallback:Lcom/flyme/systemuitools/aod/presenter/SensorPolicy$Callback;

    if-eqz p0, :cond_39

    .line 339
    invoke-interface {p0, p1}, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy$Callback;->onLightChanged(F)V

    :cond_39
    return-void
.end method


# virtual methods
.method public isDarkenLight()Z
    .registers 1

    .line 345
    iget-boolean p0, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mDarkenLight:Z

    return p0
.end method

.method public isProximitySensorClose()Z
    .registers 1

    .line 258
    iget-boolean p0, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mProximityClose:Z

    return p0
.end method

.method public setLightSensorEnabled(Z)V
    .registers 3

    const/4 v0, -0x1

    .line 146
    invoke-virtual {p0, p1, v0}, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->setLightSensorEnabled(ZI)V

    return-void
.end method

.method public setLightSensorEnabled(ZI)V
    .registers 5

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eqz p1, :cond_19

    .line 151
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 152
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 153
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mHandler:Landroid/os/Handler;

    const/4 p1, -0x1

    invoke-virtual {p0, v1, p2, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_28

    .line 156
    :cond_19
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 157
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 158
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_28
    return-void
.end method

.method public setProximitySensorEnabled(Z)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_14

    .line 164
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 165
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 166
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_23

    .line 168
    :cond_14
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 169
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 170
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_23
    return-void
.end method

.method public setSensorCallback(Lcom/flyme/systemuitools/aod/presenter/SensorPolicy$Callback;)V
    .registers 2

    .line 349
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->mCallback:Lcom/flyme/systemuitools/aod/presenter/SensorPolicy$Callback;

    return-void
.end method
