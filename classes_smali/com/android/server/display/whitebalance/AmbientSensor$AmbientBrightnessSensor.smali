.class Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;
.super Lcom/android/server/display/whitebalance/AmbientSensor;
.source "AmbientSensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/whitebalance/AmbientSensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AmbientBrightnessSensor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor$Callbacks;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AmbientBrightnessSensor"


# instance fields
.field private mCallbacks:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor$Callbacks;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/hardware/SensorManager;I)V
    .registers 6
    .param p1, "handler"  # Landroid/os/Handler;
    .param p2, "sensorManager"  # Landroid/hardware/SensorManager;
    .param p3, "rate"  # I

    .line 250
    const-string v0, "AmbientBrightnessSensor"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/display/whitebalance/AmbientSensor;-><init>(Ljava/lang/String;Landroid/os/Handler;Landroid/hardware/SensorManager;I)V

    .line 251
    iget-object v0, p0, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;->mSensor:Landroid/hardware/Sensor;

    .line 252
    iget-object v0, p0, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_16

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;->mCallbacks:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor$Callbacks;

    .line 256
    return-void

    .line 253
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot find light sensor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "writer"  # Ljava/io/PrintWriter;

    .line 279
    invoke-super {p0, p1}, Lcom/android/server/display/whitebalance/AmbientSensor;->dump(Ljava/io/PrintWriter;)V

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mCallbacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;->mCallbacks:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor$Callbacks;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method public setCallbacks(Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor$Callbacks;)Z
    .registers 3
    .param p1, "callbacks"  # Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor$Callbacks;

    .line 267
    iget-object v0, p0, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;->mCallbacks:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor$Callbacks;

    if-ne v0, p1, :cond_6

    .line 268
    const/4 v0, 0x0

    return v0

    .line 270
    :cond_6
    iput-object p1, p0, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;->mCallbacks:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor$Callbacks;

    .line 271
    const/4 v0, 0x1

    return v0
.end method

.method protected update(F)V
    .registers 3
    .param p1, "value"  # F

    .line 289
    iget-object v0, p0, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;->mCallbacks:Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor$Callbacks;

    if-eqz v0, :cond_7

    .line 290
    invoke-interface {v0, p1}, Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor$Callbacks;->onAmbientBrightnessChanged(F)V

    .line 292
    :cond_7
    return-void
.end method
