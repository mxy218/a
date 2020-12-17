.class Lcom/android/server/display/AutomaticBrightnessController$6;
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

    .line 1619
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"  # Landroid/hardware/Sensor;
    .param p2, "accuracy"  # I

    .line 1633
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 7
    .param p1, "event"  # Landroid/hardware/SensorEvent;

    .line 1622
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$2000(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1623
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1624
    .local v0, "time":J
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 1625
    .local v2, "distance":F
    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_21

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$2100(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v4

    cmpg-float v4, v2, v4

    if-gez v4, :cond_21

    const/4 v3, 0x1

    .line 1626
    .local v3, "positive":Z
    :cond_21
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v4, v0, v1, v3}, Lcom/android/server/display/AutomaticBrightnessController;->access$2200(Lcom/android/server/display/AutomaticBrightnessController;JZ)V

    .line 1628
    .end local v0  # "time":J
    .end local v2  # "distance":F
    .end local v3  # "positive":Z
    :cond_26
    return-void
.end method
