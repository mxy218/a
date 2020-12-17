.class Lcom/flyme/systemuitools/aod/presenter/SensorPolicy$5;
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

    .line 130
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy$5;->this$0:Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 5

    .line 132
    monitor-enter p0

    .line 133
    :try_start_1
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    const-string v0, "SensorPolicy"

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "light onSensorChanged() -- light = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy$5;->this$0:Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;

    invoke-static {v0, p1}, Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;->access$900(Lcom/flyme/systemuitools/aod/presenter/SensorPolicy;F)V

    .line 137
    monitor-exit p0

    return-void

    :catchall_23
    move-exception p1

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_23

    throw p1
.end method
