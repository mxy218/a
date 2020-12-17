.class Lcom/android/systemui/doze/DozeSensors$ProxSensor;
.super Ljava/lang/Object;
.source "DozeSensors.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeSensors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxSensor"
.end annotation


# instance fields
.field final mCooldownTimer:Lcom/android/systemui/util/AlarmTimeout;

.field mCurrentlyFar:Ljava/lang/Boolean;

.field mLastNear:J

.field final mPolicy:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

.field mRegistered:Z

.field mRequested:Z

.field final mSensor:Landroid/hardware/Sensor;

.field final mUsingBrightnessSensor:Z

.field final synthetic this$0:Lcom/android/systemui/doze/DozeSensors;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/DozeSensors;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)V
    .registers 7

    .line 293
    iput-object p1, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iput-object p2, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mPolicy:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    .line 295
    new-instance p2, Lcom/android/systemui/util/AlarmTimeout;

    invoke-static {p1}, Lcom/android/systemui/doze/DozeSensors;->access$200(Lcom/android/systemui/doze/DozeSensors;)Landroid/app/AlarmManager;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/doze/-$$Lambda$DozeSensors$ProxSensor$1rrJyrK-R8bANwbetqs61eKIcvs;

    invoke-direct {v1, p0}, Lcom/android/systemui/doze/-$$Lambda$DozeSensors$ProxSensor$1rrJyrK-R8bANwbetqs61eKIcvs;-><init>(Lcom/android/systemui/doze/DozeSensors$ProxSensor;)V

    .line 296
    invoke-static {p1}, Lcom/android/systemui/doze/DozeSensors;->access$300(Lcom/android/systemui/doze/DozeSensors;)Landroid/os/Handler;

    move-result-object v2

    const-string v3, "prox_cooldown"

    invoke-direct {p2, v0, v1, v3, v2}, Lcom/android/systemui/util/AlarmTimeout;-><init>(Landroid/app/AlarmManager;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCooldownTimer:Lcom/android/systemui/util/AlarmTimeout;

    .line 300
    invoke-static {p1}, Lcom/android/systemui/doze/DozeSensors;->access$400(Lcom/android/systemui/doze/DozeSensors;)Landroid/hardware/SensorManager;

    move-result-object p2

    .line 301
    invoke-static {p1}, Lcom/android/systemui/doze/DozeSensors;->access$500(Lcom/android/systemui/doze/DozeSensors;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->doze_brightness_sensor_type:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 300
    invoke-static {p2, v0}, Lcom/android/systemui/doze/DozeSensors;->findSensorWithType(Landroid/hardware/SensorManager;Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object p2

    if-eqz p2, :cond_33

    const/4 v0, 0x1

    goto :goto_34

    :cond_33
    const/4 v0, 0x0

    .line 302
    :goto_34
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mUsingBrightnessSensor:Z

    if-nez p2, :cond_42

    .line 304
    invoke-static {p1}, Lcom/android/systemui/doze/DozeSensors;->access$400(Lcom/android/systemui/doze/DozeSensors;)Landroid/hardware/SensorManager;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p2

    .line 306
    :cond_42
    iput-object p2, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mSensor:Landroid/hardware/Sensor;

    return-void
.end method

.method public static synthetic lambda$1rrJyrK-R8bANwbetqs61eKIcvs(Lcom/android/systemui/doze/DozeSensors$ProxSensor;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->updateRegistered()V

    return-void
.end method

.method private setRegistered(Z)V
    .registers 5

    .line 328
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mRegistered:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_1d

    .line 332
    iget-object p1, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {p1}, Lcom/android/systemui/doze/DozeSensors;->access$400(Lcom/android/systemui/doze/DozeSensors;)Landroid/hardware/SensorManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mSensor:Landroid/hardware/Sensor;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    .line 333
    invoke-static {v2}, Lcom/android/systemui/doze/DozeSensors;->access$300(Lcom/android/systemui/doze/DozeSensors;)Landroid/os/Handler;

    move-result-object v2

    .line 332
    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mRegistered:Z

    goto :goto_2c

    .line 335
    :cond_1d
    iget-object p1, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {p1}, Lcom/android/systemui/doze/DozeSensors;->access$400(Lcom/android/systemui/doze/DozeSensors;)Landroid/hardware/SensorManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 p1, 0x0

    .line 336
    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mRegistered:Z

    const/4 p1, 0x0

    .line 337
    iput-object p1, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCurrentlyFar:Ljava/lang/Boolean;

    :goto_2c
    return-void
.end method

.method private updateRegistered()V
    .registers 2

    .line 324
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mRequested:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCooldownTimer:Lcom/android/systemui/util/AlarmTimeout;

    invoke-virtual {v0}, Lcom/android/systemui/util/AlarmTimeout;->isScheduled()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-direct {p0, v0}, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->setRegistered(Z)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$setRequested$0$DozeSensors$ProxSensor()V
    .registers 2

    .line 313
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCurrentlyFar:Ljava/lang/Boolean;

    if-eqz v0, :cond_f

    .line 314
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$700(Lcom/android/systemui/doze/DozeSensors;)Ljava/util/function/Consumer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCurrentlyFar:Ljava/lang/Boolean;

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_f
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 8

    .line 343
    invoke-static {}, Lcom/android/systemui/doze/DozeSensors;->access$600()Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSensorChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DozeSensors"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_1c
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mUsingBrightnessSensor:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_33

    .line 348
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v2

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2c

    move v2, v1

    :cond_2c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCurrentlyFar:Ljava/lang/Boolean;

    goto :goto_48

    .line 350
    :cond_33
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    iget-object p1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result p1

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_42

    move v2, v1

    :cond_42
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCurrentlyFar:Ljava/lang/Boolean;

    .line 352
    :goto_48
    iget-object p1, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {p1}, Lcom/android/systemui/doze/DozeSensors;->access$700(Lcom/android/systemui/doze/DozeSensors;)Ljava/util/function/Consumer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCurrentlyFar:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 354
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 355
    iget-object p1, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCurrentlyFar:Ljava/lang/Boolean;

    if-nez p1, :cond_5c

    goto :goto_82

    .line 357
    :cond_5c
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_65

    .line 358
    iput-wide v2, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mLastNear:J

    goto :goto_82

    .line 359
    :cond_65
    iget-object p1, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCurrentlyFar:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_82

    iget-wide v4, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mLastNear:J

    sub-long/2addr v2, v4

    iget-object p1, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mPolicy:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    iget-wide v4, p1, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->proxCooldownTriggerMs:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_82

    .line 363
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCooldownTimer:Lcom/android/systemui/util/AlarmTimeout;

    iget-wide v2, p1, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->proxCooldownPeriodMs:J

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/systemui/util/AlarmTimeout;->schedule(JI)Z

    .line 365
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->updateRegistered()V

    :cond_82
    :goto_82
    return-void
.end method

.method setRequested(Z)V
    .registers 3

    .line 310
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mRequested:Z

    if-ne v0, p1, :cond_13

    .line 312
    iget-object p1, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {p1}, Lcom/android/systemui/doze/DozeSensors;->access$300(Lcom/android/systemui/doze/DozeSensors;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/doze/-$$Lambda$DozeSensors$ProxSensor$ocSoA7n0sI8mkM1nacSopw2_2Oc;

    invoke-direct {v0, p0}, Lcom/android/systemui/doze/-$$Lambda$DozeSensors$ProxSensor$ocSoA7n0sI8mkM1nacSopw2_2Oc;-><init>(Lcom/android/systemui/doze/DozeSensors$ProxSensor;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 319
    :cond_13
    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mRequested:Z

    .line 320
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->updateRegistered()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 375
    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mRegistered:Z

    .line 376
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mRequested:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCooldownTimer:Lcom/android/systemui/util/AlarmTimeout;

    invoke-virtual {v1}, Lcom/android/systemui/util/AlarmTimeout;->isScheduled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCurrentlyFar:Ljava/lang/Boolean;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mSensor:Landroid/hardware/Sensor;

    const/4 v1, 0x4

    aput-object p0, v0, v1

    const-string/jumbo p0, "{registered=%s, requested=%s, coolingDown=%s, currentlyFar=%s, sensor=%s}"

    .line 375
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
