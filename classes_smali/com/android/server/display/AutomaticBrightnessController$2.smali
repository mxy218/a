.class Lcom/android/server/display/AutomaticBrightnessController$2;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/display/AutomaticBrightnessController;

    .line 1160
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"  # Landroid/hardware/Sensor;
    .param p2, "accuracy"  # I

    .line 1185
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 11
    .param p1, "event"  # Landroid/hardware/SensorEvent;

    .line 1163
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$1100(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v0

    if-eqz v0, :cond_90

    .line 1164
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1165
    .local v0, "time":J
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 1167
    .local v2, "lux":F
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->access$1200()Z

    move-result v4

    const-string v5, "AutomaticBrightnessController"

    const/4 v6, 0x4

    if-eqz v4, :cond_61

    .line 1168
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$1300(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    move-result-object v4

    const-wide/16 v7, 0x7d0

    sub-long v7, v0, v7

    invoke-virtual {v4, v7, v8}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->prune(J)V

    .line 1169
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$1300(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    move-result-object v4

    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v7, v7, v6

    invoke-virtual {v4, v0, v1, v7}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->push(JF)V

    .line 1170
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$1400(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 1171
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onSensorChanged value[0] = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v7, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", value[4] = "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v6

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    :cond_61
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->access$1200()Z

    move-result v4

    if-eqz v4, :cond_6e

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v6

    goto :goto_70

    :cond_6e
    const/high16 v4, -0x40800000  # -1.0f

    :goto_70
    invoke-static {v3, v0, v1, v2, v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$1500(Lcom/android/server/display/AutomaticBrightnessController;JFF)V

    .line 1176
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->access$1400(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v3

    if-eqz v3, :cond_90

    .line 1177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSensorChanged lux = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    .end local v0  # "time":J
    .end local v2  # "lux":F
    :cond_90
    return-void
.end method
