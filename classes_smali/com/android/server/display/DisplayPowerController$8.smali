.class Lcom/android/server/display/DisplayPowerController$8;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/display/DisplayPowerController;

    .line 2135
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$8;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"  # Landroid/hardware/Sensor;
    .param p2, "accuracy"  # I

    .line 2149
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 7
    .param p1, "event"  # Landroid/hardware/SensorEvent;

    .line 2138
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$8;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$2000(Lcom/android/server/display/DisplayPowerController;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2139
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2140
    .local v0, "time":J
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 2141
    .local v2, "distance":F
    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_21

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController$8;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v4}, Lcom/android/server/display/DisplayPowerController;->access$2100(Lcom/android/server/display/DisplayPowerController;)F

    move-result v4

    cmpg-float v4, v2, v4

    if-gez v4, :cond_21

    const/4 v3, 0x1

    .line 2142
    .local v3, "positive":Z
    :cond_21
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController$8;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v4, v0, v1, v3}, Lcom/android/server/display/DisplayPowerController;->access$2200(Lcom/android/server/display/DisplayPowerController;JZ)V

    .line 2144
    .end local v0  # "time":J
    .end local v2  # "distance":F
    .end local v3  # "positive":Z
    :cond_26
    return-void
.end method
