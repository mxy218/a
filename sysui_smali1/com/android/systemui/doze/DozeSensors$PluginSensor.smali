.class Lcom/android/systemui/doze/DozeSensors$PluginSensor;
.super Lcom/android/systemui/doze/DozeSensors$TriggerSensor;
.source "DozeSensors.java"

# interfaces
.implements Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEventListener;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeSensors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PluginSensor"
.end annotation


# instance fields
.field private mDebounce:J

.field final mPluginSensor:Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;

.field final synthetic this$0:Lcom/android/systemui/doze/DozeSensors;


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/DozeSensors;Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;Ljava/lang/String;ZIZZ)V
    .registers 18

    const-wide/16 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    .line 533
    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/doze/DozeSensors$PluginSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;Ljava/lang/String;ZIZZJ)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/doze/DozeSensors;Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;Ljava/lang/String;ZIZZJ)V
    .registers 19

    move-object v8, p0

    move-object v1, p1

    .line 539
    iput-object v1, v8, Lcom/android/systemui/doze/DozeSensors$PluginSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 540
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;-><init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;ZIZZ)V

    move-object v0, p2

    .line 542
    iput-object v0, v8, Lcom/android/systemui/doze/DozeSensors$PluginSensor;->mPluginSensor:Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;

    move-wide/from16 v0, p8

    .line 543
    iput-wide v0, v8, Lcom/android/systemui/doze/DozeSensors$PluginSensor;->mDebounce:J

    return-void
.end method

.method private triggerEventToString(Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEvent;)Ljava/lang/String;
    .registers 5

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 574
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "PluginTriggerEvent["

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 575
    invoke-virtual {p1}, Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEvent;->getSensor()Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 576
    invoke-virtual {p1}, Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEvent;->getVendorType()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 577
    invoke-virtual {p1}, Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEvent;->getValues()[F

    move-result-object v1

    if-eqz v1, :cond_3b

    const/4 v1, 0x0

    .line 578
    :goto_25
    invoke-virtual {p1}, Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEvent;->getValues()[F

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_3b

    .line 579
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEvent;->getValues()[F

    move-result-object v2

    aget v2, v2, v1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_3b
    const/16 p1, 0x5d

    .line 582
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public synthetic lambda$onSensorChanged$0$DozeSensors$PluginSensor(Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEvent;)V
    .registers 8

    .line 589
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 590
    iget-object v2, p0, Lcom/android/systemui/doze/DozeSensors$PluginSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v2}, Lcom/android/systemui/doze/DozeSensors;->access$1300(Lcom/android/systemui/doze/DozeSensors;)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/systemui/doze/DozeSensors$PluginSensor;->mDebounce:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    const-string v1, "DozeSensors"

    if-gez v0, :cond_2c

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSensorEvent dropped: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeSensors$PluginSensor;->triggerEventToString(Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEvent;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 594
    :cond_2c
    invoke-static {}, Lcom/android/systemui/doze/DozeSensors;->access$600()Z

    move-result v0

    if-eqz v0, :cond_4a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSensorEvent: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeSensors$PluginSensor;->triggerEventToString(Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEvent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_4a
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$PluginSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$1200(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/doze/DozeSensors$Callback;

    move-result-object v0

    iget p0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mPulseReason:I

    invoke-virtual {p1}, Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEvent;->getValues()[F

    move-result-object p1

    const/high16 v1, -0x40800000  # -1.0f

    invoke-interface {v0, p0, v1, v1, p1}, Lcom/android/systemui/doze/DozeSensors$Callback;->onSensorPulse(IFF[F)V

    return-void
.end method

.method public onSensorChanged(Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEvent;)V
    .registers 5

    .line 587
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$PluginSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$500(Lcom/android/systemui/doze/DozeSensors;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mPulseReason:I

    invoke-static {v0, v1}, Lcom/android/systemui/doze/DozeLog;->traceSensor(Landroid/content/Context;I)V

    .line 588
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$PluginSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$300(Lcom/android/systemui/doze/DozeSensors;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors$PluginSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeSensors;->access$1000(Lcom/android/systemui/doze/DozeSensors;)Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/doze/-$$Lambda$DozeSensors$PluginSensor$EFDqlQhDL6RwEmmtbTd8M88V_8Y;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/doze/-$$Lambda$DozeSensors$PluginSensor$EFDqlQhDL6RwEmmtbTd8M88V_8Y;-><init>(Lcom/android/systemui/doze/DozeSensors$PluginSensor;Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEvent;)V

    invoke-interface {v1, v2}, Lcom/android/systemui/util/wakelock/WakeLock;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{mRegistered="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRequested="

    .line 565
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDisabled="

    .line 566
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mConfigured="

    .line 567
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mConfigured:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIgnoresSetting="

    .line 568
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mIgnoresSetting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSensor="

    .line 569
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors$PluginSensor;->mPluginSensor:Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateListening()V
    .registers 4

    .line 548
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mConfigured:Z

    if-nez v0, :cond_5

    return-void

    .line 549
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$PluginSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->access$400(Lcom/android/systemui/doze/DozeSensors;)Landroid/hardware/SensorManager;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/AsyncSensorManager;

    .line 550
    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRequested:Z

    const-string v2, "DozeSensors"

    if-eqz v1, :cond_39

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mDisabled:Z

    if-nez v1, :cond_39

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->enabledBySetting()Z

    move-result v1

    if-nez v1, :cond_21

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mIgnoresSetting:Z

    if-eqz v1, :cond_39

    :cond_21
    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRegistered:Z

    if-nez v1, :cond_39

    .line 552
    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors$PluginSensor;->mPluginSensor:Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/util/AsyncSensorManager;->registerPluginListener(Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEventListener;)Z

    const/4 v0, 0x1

    .line 553
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRegistered:Z

    .line 554
    invoke-static {}, Lcom/android/systemui/doze/DozeSensors;->access$600()Z

    move-result p0

    if-eqz p0, :cond_51

    const-string p0, "registerPluginListener"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 555
    :cond_39
    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRegistered:Z

    if-eqz v1, :cond_51

    .line 556
    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors$PluginSensor;->mPluginSensor:Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/util/AsyncSensorManager;->unregisterPluginListener(Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEventListener;)V

    const/4 v0, 0x0

    .line 557
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mRegistered:Z

    .line 558
    invoke-static {}, Lcom/android/systemui/doze/DozeSensors;->access$600()Z

    move-result p0

    if-eqz p0, :cond_51

    const-string/jumbo p0, "unregisterPluginListener"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    :goto_51
    return-void
.end method
