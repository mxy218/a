.class Lcom/android/server/power/WirelessChargerDetector$1;
.super Ljava/lang/Object;
.source "WirelessChargerDetector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/WirelessChargerDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/WirelessChargerDetector;


# direct methods
.method constructor <init>(Lcom/android/server/power/WirelessChargerDetector;)V
    .registers 2

    .line 369
    iput-object p1, p0, Lcom/android/server/power/WirelessChargerDetector$1;->this$0:Lcom/android/server/power/WirelessChargerDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    .line 379
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 7

    .line 372
    iget-object v0, p0, Lcom/android/server/power/WirelessChargerDetector$1;->this$0:Lcom/android/server/power/WirelessChargerDetector;

    invoke-static {v0}, Lcom/android/server/power/WirelessChargerDetector;->access$000(Lcom/android/server/power/WirelessChargerDetector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 373
    :try_start_7
    iget-object v1, p0, Lcom/android/server/power/WirelessChargerDetector$1;->this$0:Lcom/android/server/power/WirelessChargerDetector;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x2

    aget p1, p1, v4

    invoke-static {v1, v2, v3, p1}, Lcom/android/server/power/WirelessChargerDetector;->access$100(Lcom/android/server/power/WirelessChargerDetector;FFF)V

    .line 374
    monitor-exit v0

    .line 375
    return-void

    .line 374
    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw p1
.end method
