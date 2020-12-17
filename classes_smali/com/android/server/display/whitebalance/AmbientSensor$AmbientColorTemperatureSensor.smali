.class Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;
.super Lcom/android/server/display/whitebalance/AmbientSensor;
.source "AmbientSensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/whitebalance/AmbientSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AmbientColorTemperatureSensor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor$Callbacks;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AmbientColorTemperatureSensor"


# instance fields
.field private mCallbacks:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor$Callbacks;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/hardware/SensorManager;Ljava/lang/String;I)V
    .registers 9
    .param p1, "handler"  # Landroid/os/Handler;
    .param p2, "sensorManager"  # Landroid/hardware/SensorManager;
    .param p3, "name"  # Ljava/lang/String;
    .param p4, "rate"  # I

    .line 329
    const-string v0, "AmbientColorTemperatureSensor"

    invoke-direct {p0, v0, p1, p2, p4}, Lcom/android/server/display/whitebalance/AmbientSensor;-><init>(Ljava/lang/String;Landroid/os/Handler;Landroid/hardware/SensorManager;I)V

    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;->mSensor:Landroid/hardware/Sensor;

    .line 331
    iget-object v1, p0, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 332
    .local v2, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 333
    iput-object v2, p0, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;->mSensor:Landroid/hardware/Sensor;

    .line 334
    goto :goto_2d

    .line 336
    .end local v2  # "sensor":Landroid/hardware/Sensor;
    :cond_2c
    goto :goto_13

    .line 337
    :cond_2d
    :goto_2d
    iget-object v1, p0, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;->mSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_34

    .line 340
    iput-object v0, p0, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;->mCallbacks:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor$Callbacks;

    .line 341
    return-void

    .line 338
    :cond_34
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot find sensor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "writer"  # Ljava/io/PrintWriter;

    .line 364
    invoke-super {p0, p1}, Lcom/android/server/display/whitebalance/AmbientSensor;->dump(Ljava/io/PrintWriter;)V

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mCallbacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;->mCallbacks:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor$Callbacks;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 366
    return-void
.end method

.method public setCallbacks(Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor$Callbacks;)Z
    .registers 3
    .param p1, "callbacks"  # Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor$Callbacks;

    .line 352
    iget-object v0, p0, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;->mCallbacks:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor$Callbacks;

    if-ne v0, p1, :cond_6

    .line 353
    const/4 v0, 0x0

    return v0

    .line 355
    :cond_6
    iput-object p1, p0, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;->mCallbacks:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor$Callbacks;

    .line 356
    const/4 v0, 0x1

    return v0
.end method

.method protected update(F)V
    .registers 3
    .param p1, "value"  # F

    .line 374
    iget-object v0, p0, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;->mCallbacks:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor$Callbacks;

    if-eqz v0, :cond_7

    .line 375
    invoke-interface {v0, p1}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor$Callbacks;->onAmbientColorTemperatureChanged(F)V

    .line 377
    :cond_7
    return-void
.end method
