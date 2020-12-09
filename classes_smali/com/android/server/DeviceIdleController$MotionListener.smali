.class final Lcom/android/server/DeviceIdleController$MotionListener;
.super Landroid/hardware/TriggerEventListener;
.source "DeviceIdleController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MotionListener"
.end annotation


# instance fields
.field activatedTimeElapsed:J

.field active:Z

.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .registers 2

    .line 742
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Landroid/hardware/TriggerEventListener;-><init>()V

    .line 745
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    return-void
.end method


# virtual methods
.method public isActive()Z
    .registers 2

    .line 754
    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    .line 775
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 4

    .line 767
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter p1

    .line 768
    :try_start_3
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$300(Lcom/android/server/DeviceIdleController;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->access$200(Lcom/android/server/DeviceIdleController;)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 769
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    .line 770
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->motionLocked()V

    .line 771
    monitor-exit p1

    .line 772
    return-void

    .line 771
    :catchall_1c
    move-exception v0

    monitor-exit p1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public onTrigger(Landroid/hardware/TriggerEvent;)V
    .registers 3

    .line 759
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter p1

    .line 760
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    .line 761
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->motionLocked()V

    .line 762
    monitor-exit p1

    .line 763
    return-void

    .line 762
    :catchall_d
    move-exception v0

    monitor-exit p1
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public registerLocked()Z
    .registers 5

    .line 779
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$200(Lcom/android/server/DeviceIdleController;)Landroid/hardware/Sensor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_22

    .line 780
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$300(Lcom/android/server/DeviceIdleController;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    iget-object v1, v1, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->access$200(Lcom/android/server/DeviceIdleController;)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result v0

    goto :goto_37

    .line 782
    :cond_22
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$300(Lcom/android/server/DeviceIdleController;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    iget-object v1, v1, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    .line 783
    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->access$200(Lcom/android/server/DeviceIdleController;)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x3

    .line 782
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    .line 785
    :goto_37
    if-eqz v0, :cond_49

    .line 786
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    .line 787
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->access$400(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Injector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController$Injector;->getElapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/DeviceIdleController$MotionListener;->activatedTimeElapsed:J

    goto :goto_65

    .line 789
    :cond_49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to register for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->access$200(Lcom/android/server/DeviceIdleController;)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceIdleController"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    :goto_65
    return v0
.end method

.method public unregisterLocked()V
    .registers 4

    .line 795
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$200(Lcom/android/server/DeviceIdleController;)Landroid/hardware/Sensor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_21

    .line 796
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$300(Lcom/android/server/DeviceIdleController;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    iget-object v1, v1, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    iget-object v2, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->access$200(Lcom/android/server/DeviceIdleController;)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    goto :goto_2e

    .line 798
    :cond_21
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$300(Lcom/android/server/DeviceIdleController;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    iget-object v1, v1, Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 800
    :goto_2e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    .line 801
    return-void
.end method
