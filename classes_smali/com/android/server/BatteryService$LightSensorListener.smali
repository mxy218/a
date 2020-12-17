.class Lcom/android/server/BatteryService$LightSensorListener;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LightSensorListener"
.end annotation


# instance fields
.field private lux:F

.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method private constructor <init>(Lcom/android/server/BatteryService;)V
    .registers 2

    .line 2205
    iput-object p1, p0, Lcom/android/server/BatteryService$LightSensorListener;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/BatteryService;
    .param p2, "x1"  # Lcom/android/server/BatteryService$1;

    .line 2205
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService$LightSensorListener;-><init>(Lcom/android/server/BatteryService;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"  # Landroid/hardware/Sensor;
    .param p2, "accuracy"  # I

    .line 2210
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 10
    .param p1, "event"  # Landroid/hardware/SensorEvent;

    .line 2213
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6b

    .line 2215
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2216
    .local v0, "currentElapsedTime":J
    iget-object v2, p0, Lcom/android/server/BatteryService$LightSensorListener;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->access$3300(Lcom/android/server/BatteryService;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_6a

    .line 2217
    iget-object v2, p0, Lcom/android/server/BatteryService$LightSensorListener;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2, v0, v1}, Lcom/android/server/BatteryService;->access$3302(Lcom/android/server/BatteryService;J)J

    .line 2221
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    iput v2, p0, Lcom/android/server/BatteryService$LightSensorListener;->lux:F

    .line 2222
    iget v2, p0, Lcom/android/server/BatteryService$LightSensorListener;->lux:F

    const/high16 v4, 0x41a00000  # 20.0f

    cmpg-float v2, v2, v4

    if-gez v2, :cond_4d

    .line 2223
    iget-object v2, p0, Lcom/android/server/BatteryService$LightSensorListener;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->access$3400(Lcom/android/server/BatteryService;)J

    move-result-wide v2

    sub-long v2, v0, v2

    iget-object v4, p0, Lcom/android/server/BatteryService$LightSensorListener;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v4}, Lcom/android/server/BatteryService;->access$3500(Lcom/android/server/BatteryService;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_47

    .line 2224
    iget-object v2, p0, Lcom/android/server/BatteryService$LightSensorListener;->this$0:Lcom/android/server/BatteryService;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/BatteryService;->access$3600(Lcom/android/server/BatteryService;I)V

    .line 2226
    :cond_47
    iget-object v2, p0, Lcom/android/server/BatteryService$LightSensorListener;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2, v0, v1}, Lcom/android/server/BatteryService;->access$3702(Lcom/android/server/BatteryService;J)J

    goto :goto_6b

    .line 2228
    :cond_4d
    iget-object v2, p0, Lcom/android/server/BatteryService$LightSensorListener;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->access$3700(Lcom/android/server/BatteryService;)J

    move-result-wide v4

    sub-long v4, v0, v4

    iget-object v2, p0, Lcom/android/server/BatteryService$LightSensorListener;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->access$3500(Lcom/android/server/BatteryService;)J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-ltz v2, :cond_64

    .line 2229
    iget-object v2, p0, Lcom/android/server/BatteryService$LightSensorListener;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2, v3}, Lcom/android/server/BatteryService;->access$3600(Lcom/android/server/BatteryService;I)V

    .line 2231
    :cond_64
    iget-object v2, p0, Lcom/android/server/BatteryService$LightSensorListener;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2, v0, v1}, Lcom/android/server/BatteryService;->access$3402(Lcom/android/server/BatteryService;J)J

    goto :goto_6b

    .line 2219
    :cond_6a
    return-void

    .line 2234
    .end local v0  # "currentElapsedTime":J
    :cond_6b
    :goto_6b
    return-void
.end method
