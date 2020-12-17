.class Lcom/flyme/systemuitools/aod/presenter/SensorPolicy$4;
.super Ljava/lang/Object;
.source "SensorPolicy.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;


# direct methods
.method constructor <init>(Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;)V
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy$4;->this$0:Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 7

    .line 110
    monitor-enter p0

    .line 111
    :try_start_1
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    float-to-double v1, p1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_22

    .line 115
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy$4;->this$0:Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;

    .line 116
    invoke-static {v1}, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->access$700(Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;)Landroid/hardware/Sensor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    const/high16 v2, 0x40a00000  # 5.0f

    .line 115
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_22

    const/4 v0, 0x1

    :cond_22
    const-string v1, "SensorPolicy"

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "proximity onSensorChanged() -- distance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", active = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy$4;->this$0:Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;

    invoke-static {p1, v0}, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->access$800(Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;Z)V

    .line 122
    monitor-exit p0

    return-void

    :catchall_47
    move-exception p1

    monitor-exit p0
    :try_end_49
    .catchall {:try_start_1 .. :try_end_49} :catchall_47

    throw p1
.end method
