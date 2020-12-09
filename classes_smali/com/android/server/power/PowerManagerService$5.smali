.class Lcom/android/server/power/PowerManagerService$5;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/PowerManagerService;->runPostProximityCheck(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/Runnable;)V
    .registers 3

    .line 5344
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    iput-object p2, p0, Lcom/android/server/power/PowerManagerService$5;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    .line 5366
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 5

    .line 5347
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$7400(Lcom/android/server/power/PowerManagerService;)V

    .line 5348
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$7500(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->hasMessages(I)Z

    move-result v0

    const-string v2, "PowerManagerService"

    if-nez v0, :cond_1a

    .line 5349
    const-string p1, "Proximity sensor took too long, wake event already triggered!"

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5351
    return-void

    .line 5353
    :cond_1a
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$7500(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeMessages(I)V

    .line 5354
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    .line 5355
    const/high16 v0, 0x40a00000  # 5.0f

    cmpl-float v0, p1, v0

    if-gez v0, :cond_43

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$5;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 5356
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$7600(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/Sensor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_3d

    goto :goto_43

    .line 5359
    :cond_3d
    const-string p1, "Not waking up. Proximity sensor is blocked."

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    .line 5357
    :cond_43
    :goto_43
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$5;->val$r:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 5361
    :goto_48
    return-void
.end method
