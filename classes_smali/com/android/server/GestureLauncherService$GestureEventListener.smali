.class final Lcom/android/server/GestureLauncherService$GestureEventListener;
.super Ljava/lang/Object;
.source "GestureLauncherService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GestureLauncherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GestureEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/GestureLauncherService;


# direct methods
.method private constructor <init>(Lcom/android/server/GestureLauncherService;)V
    .registers 2

    .line 546
    iput-object p1, p0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/GestureLauncherService;Lcom/android/server/GestureLauncherService$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/GestureLauncherService;
    .param p2, "x1"  # Lcom/android/server/GestureLauncherService$1;

    .line 546
    invoke-direct {p0, p1}, Lcom/android/server/GestureLauncherService$GestureEventListener;-><init>(Lcom/android/server/GestureLauncherService;)V

    return-void
.end method

.method private trackCameraLaunchEvent(Landroid/hardware/SensorEvent;)V
    .registers 28
    .param p1, "event"  # Landroid/hardware/SensorEvent;

    .line 574
    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 575
    .local v1, "now":J
    iget-object v3, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v3}, Lcom/android/server/GestureLauncherService;->access$1100(Lcom/android/server/GestureLauncherService;)J

    move-result-wide v3

    sub-long v3, v1, v3

    .line 581
    .local v3, "totalDuration":J
    move-object/from16 v5, p1

    iget-object v6, v5, Landroid/hardware/SensorEvent;->values:[F

    .line 583
    .local v6, "values":[F
    long-to-double v7, v3

    const/4 v9, 0x0

    aget v9, v6, v9

    float-to-double v9, v9

    mul-double/2addr v7, v9

    double-to-long v7, v7

    .line 584
    .local v7, "sensor1OnTime":J
    long-to-double v9, v3

    const/4 v11, 0x1

    aget v11, v6, v11

    float-to-double v11, v11

    mul-double/2addr v9, v11

    double-to-long v9, v9

    .line 585
    .local v9, "sensor2OnTime":J
    const/4 v11, 0x2

    aget v11, v6, v11

    float-to-int v11, v11

    .line 588
    .local v11, "extra":I
    iget-object v12, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v12}, Lcom/android/server/GestureLauncherService;->access$1200(Lcom/android/server/GestureLauncherService;)J

    move-result-wide v12

    sub-long v12, v1, v12

    .line 589
    .local v12, "gestureOnTimeDiff":J
    iget-object v14, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v14}, Lcom/android/server/GestureLauncherService;->access$1300(Lcom/android/server/GestureLauncherService;)J

    move-result-wide v14

    sub-long v21, v7, v14

    .line 590
    .local v21, "sensor1OnTimeDiff":J
    iget-object v14, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v14}, Lcom/android/server/GestureLauncherService;->access$1400(Lcom/android/server/GestureLauncherService;)J

    move-result-wide v14

    sub-long v23, v9, v14

    .line 591
    .local v23, "sensor2OnTimeDiff":J
    iget-object v14, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v14}, Lcom/android/server/GestureLauncherService;->access$1500(Lcom/android/server/GestureLauncherService;)I

    move-result v14

    sub-int v25, v11, v14

    .line 595
    .local v25, "extraDiff":I
    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-ltz v16, :cond_72

    cmp-long v16, v21, v14

    if-ltz v16, :cond_72

    cmp-long v14, v23, v14

    if-gez v14, :cond_53

    goto :goto_72

    .line 606
    :cond_53
    move-wide v14, v12

    move-wide/from16 v16, v21

    move-wide/from16 v18, v23

    move/from16 v20, v25

    invoke-static/range {v14 .. v20}, Lcom/android/server/EventLogTags;->writeCameraGestureTriggered(JJJI)V

    .line 612
    iget-object v14, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v14, v1, v2}, Lcom/android/server/GestureLauncherService;->access$1202(Lcom/android/server/GestureLauncherService;J)J

    .line 613
    iget-object v14, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v14, v7, v8}, Lcom/android/server/GestureLauncherService;->access$1302(Lcom/android/server/GestureLauncherService;J)J

    .line 614
    iget-object v14, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v14, v9, v10}, Lcom/android/server/GestureLauncherService;->access$1402(Lcom/android/server/GestureLauncherService;J)J

    .line 615
    iget-object v14, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v14, v11}, Lcom/android/server/GestureLauncherService;->access$1502(Lcom/android/server/GestureLauncherService;I)I

    .line 616
    return-void

    .line 597
    :cond_72
    :goto_72
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"  # Landroid/hardware/Sensor;
    .param p2, "accuracy"  # I

    .line 571
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 5
    .param p1, "event"  # Landroid/hardware/SensorEvent;

    .line 549
    iget-object v0, p0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->access$800(Lcom/android/server/GestureLauncherService;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 551
    return-void

    .line 553
    :cond_9
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v1, p0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v1}, Lcom/android/server/GestureLauncherService;->access$900(Lcom/android/server/GestureLauncherService;)Landroid/hardware/Sensor;

    move-result-object v1

    if-ne v0, v1, :cond_2c

    .line 559
    iget-object v0, p0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/GestureLauncherService;->handleCameraGesture(ZI)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 561
    iget-object v0, p0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->access$1000(Lcom/android/server/GestureLauncherService;)Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 562
    invoke-direct {p0, p1}, Lcom/android/server/GestureLauncherService$GestureEventListener;->trackCameraLaunchEvent(Landroid/hardware/SensorEvent;)V

    .line 564
    :cond_2b
    return-void

    .line 566
    :cond_2c
    return-void
.end method
