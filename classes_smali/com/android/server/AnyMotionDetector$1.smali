.class Lcom/android/server/AnyMotionDetector$1;
.super Ljava/lang/Object;
.source "AnyMotionDetector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AnyMotionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AnyMotionDetector;


# direct methods
.method constructor <init>(Lcom/android/server/AnyMotionDetector;)V
    .registers 2

    .line 295
    iput-object p1, p0, Lcom/android/server/AnyMotionDetector$1;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    .line 318
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 11

    .line 298
    nop

    .line 299
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector$1;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-static {v0}, Lcom/android/server/AnyMotionDetector;->access$000(Lcom/android/server/AnyMotionDetector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 300
    :try_start_8
    new-instance v7, Lcom/android/server/AnyMotionDetector$Vector3;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v8, 0x0

    aget v4, v1, v8

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x1

    aget v5, v1, v5

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x2

    aget v6, p1, v1

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/AnyMotionDetector$Vector3;-><init>(JFFF)V

    .line 302
    iget-object p1, p0, Lcom/android/server/AnyMotionDetector$1;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-static {p1}, Lcom/android/server/AnyMotionDetector;->access$100(Lcom/android/server/AnyMotionDetector;)Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->accumulate(Lcom/android/server/AnyMotionDetector$Vector3;)V

    .line 305
    iget-object p1, p0, Lcom/android/server/AnyMotionDetector$1;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-static {p1}, Lcom/android/server/AnyMotionDetector;->access$100(Lcom/android/server/AnyMotionDetector;)Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->getSampleCount()I

    move-result p1

    iget-object v1, p0, Lcom/android/server/AnyMotionDetector$1;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-static {v1}, Lcom/android/server/AnyMotionDetector;->access$200(Lcom/android/server/AnyMotionDetector;)I

    move-result v1

    const/4 v2, -0x1

    if-lt p1, v1, :cond_44

    .line 306
    iget-object p1, p0, Lcom/android/server/AnyMotionDetector$1;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-static {p1}, Lcom/android/server/AnyMotionDetector;->access$300(Lcom/android/server/AnyMotionDetector;)I

    move-result p1

    goto :goto_45

    .line 305
    :cond_44
    move p1, v2

    .line 308
    :goto_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_8 .. :try_end_46} :catchall_66

    .line 309
    if-eq p1, v2, :cond_65

    .line 310
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector$1;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-static {v0}, Lcom/android/server/AnyMotionDetector;->access$500(Lcom/android/server/AnyMotionDetector;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/AnyMotionDetector$1;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-static {v1}, Lcom/android/server/AnyMotionDetector;->access$400(Lcom/android/server/AnyMotionDetector;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 311
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector$1;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-static {v0, v8}, Lcom/android/server/AnyMotionDetector;->access$602(Lcom/android/server/AnyMotionDetector;Z)Z

    .line 312
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector$1;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-static {v0}, Lcom/android/server/AnyMotionDetector;->access$700(Lcom/android/server/AnyMotionDetector;)Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;->onAnyMotionResult(I)V

    .line 314
    :cond_65
    return-void

    .line 308
    :catchall_66
    move-exception p1

    :try_start_67
    monitor-exit v0
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_66

    throw p1
.end method
