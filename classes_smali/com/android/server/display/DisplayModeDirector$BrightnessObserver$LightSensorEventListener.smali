.class final Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LightSensorEventListener"
.end annotation


# static fields
.field private static final INJECT_EVENTS_INTERVAL_MS:I = 0xfa


# instance fields
.field private mInjectSensorEventRunnable:Ljava/lang/Runnable;

.field private mLastSensorData:F

.field final synthetic this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;


# direct methods
.method private constructor <init>(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)V
    .registers 2

    .line 1078
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1142
    new-instance p1, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;

    invoke-direct {p1, p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener$1;-><init>(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;)V

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mInjectSensorEventRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;Lcom/android/server/display/DisplayModeDirector$1;)V
    .registers 3

    .line 1078
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;-><init>(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;J)V
    .registers 3

    .line 1078
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->processSensorData(J)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;)F
    .registers 1

    .line 1078
    iget p0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    return p0
.end method

.method static synthetic access$1700(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;FF)Z
    .registers 3

    .line 1078
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->isDifferentZone(FF)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1800(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;)Ljava/lang/Runnable;
    .registers 1

    .line 1078
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mInjectSensorEventRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private isDifferentZone(FF)Z
    .registers 7

    .line 1128
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->access$1400(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)[I

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_29

    .line 1129
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->access$1400(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)[I

    move-result-object v2

    aget v2, v2, v1

    int-to-float v2, v2

    .line 1133
    cmpg-float v3, p1, v2

    if-gtz v3, :cond_1c

    cmpl-float v3, p2, v2

    if-gtz v3, :cond_24

    :cond_1c
    cmpl-float v3, p1, v2

    if-lez v3, :cond_26

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_26

    .line 1135
    :cond_24
    const/4 p1, 0x1

    return p1

    .line 1128
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1139
    :cond_29
    return v0
.end method

.method private processSensorData(J)V
    .registers 5

    .line 1120
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->access$1200(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)Lcom/android/server/display/whitebalance/AmbientFilter;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/display/whitebalance/AmbientFilter;->getEstimate(J)F

    move-result p1

    invoke-static {v0, p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->access$1102(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;F)F

    .line 1122
    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    iget-object p1, p1, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/DisplayModeDirector;->access$300(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1123
    :try_start_16
    iget-object p2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {p2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->access$1300(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)V

    .line 1124
    monitor-exit p1

    .line 1125
    return-void

    .line 1124
    :catchall_1d
    move-exception p2

    monitor-exit p1
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_1d

    throw p2
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    .line 1113
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 6

    .line 1084
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    .line 1089
    iget p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->access$1100(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)F

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->isDifferentZone(FF)Z

    move-result p1

    .line 1090
    if-eqz p1, :cond_2a

    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->access$1100(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2a

    .line 1093
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->access$1200(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)Lcom/android/server/display/whitebalance/AmbientFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/whitebalance/AmbientFilter;->clear()V

    .line 1096
    :cond_2a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1097
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->access$1200(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)Lcom/android/server/display/whitebalance/AmbientFilter;

    move-result-object v2

    iget v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/server/display/whitebalance/AmbientFilter;->addValue(JF)Z

    .line 1099
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    iget-object v2, v2, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v2}, Lcom/android/server/display/DisplayModeDirector;->access$1000(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mInjectSensorEventRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1100
    invoke-direct {p0, v0, v1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->processSensorData(J)V

    .line 1102
    if-eqz p1, :cond_66

    iget p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mLastSensorData:F

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->access$1100(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)F

    move-result v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_66

    .line 1106
    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    iget-object p1, p1, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/DisplayModeDirector;->access$1000(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mInjectSensorEventRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1108
    :cond_66
    return-void
.end method

.method public removeCallbacks()V
    .registers 3

    .line 1116
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->this$1:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    iget-object v0, v0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$1000(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->mInjectSensorEventRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1117
    return-void
.end method
