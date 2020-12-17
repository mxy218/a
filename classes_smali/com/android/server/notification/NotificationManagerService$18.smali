.class Lcom/android/server/notification/NotificationManagerService$18;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 9420
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$18;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"  # Landroid/hardware/Sensor;
    .param p2, "accuracy"  # I

    .line 9440
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 8
    .param p1, "event"  # Landroid/hardware/SensorEvent;

    .line 9422
    monitor-enter p0

    .line 9423
    :try_start_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 9427
    .local v0, "distance":F
    float-to-double v2, v0

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_23

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$18;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 9428
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$10500(Lcom/android/server/notification/NotificationManagerService;)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v2

    const/high16 v3, 0x40a00000  # 5.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_23

    const/4 v1, 0x1

    goto :goto_24

    :cond_23
    nop

    .line 9430
    .local v1, "active":Z
    :goto_24
    const-string v2, "NotiWakeupScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSensorChanged() -- distance = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", active = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9433
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$18;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2, v1}, Lcom/android/server/notification/NotificationManagerService;->access$10600(Lcom/android/server/notification/NotificationManagerService;Z)V

    .line 9435
    .end local v0  # "distance":F
    .end local v1  # "active":Z
    monitor-exit p0

    .line 9436
    return-void

    .line 9435
    :catchall_4a
    move-exception v0

    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_1 .. :try_end_4c} :catchall_4a

    throw v0
.end method
