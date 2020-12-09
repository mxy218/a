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

    .line 1937
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$8;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    .line 1951
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 6

    .line 1940
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$8;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$1500(Lcom/android/server/display/DisplayPowerController;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1941
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1942
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget p1, p1, v2

    .line 1943
    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_21

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$8;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v3}, Lcom/android/server/display/DisplayPowerController;->access$1600(Lcom/android/server/display/DisplayPowerController;)F

    move-result v3

    cmpg-float p1, p1, v3

    if-gez p1, :cond_21

    const/4 v2, 0x1

    .line 1944
    :cond_21
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$8;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p1, v0, v1, v2}, Lcom/android/server/display/DisplayPowerController;->access$1700(Lcom/android/server/display/DisplayPowerController;JZ)V

    .line 1946
    :cond_26
    return-void
.end method
