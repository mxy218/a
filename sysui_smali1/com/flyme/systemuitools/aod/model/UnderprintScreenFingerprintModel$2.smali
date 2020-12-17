.class Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel$2;
.super Ljava/lang/Object;
.source "UnderprintScreenFingerprintModel.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;


# direct methods
.method constructor <init>(Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;)V
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel$2;->this$0:Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;

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

    .line 96
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel$2;->this$0:Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;

    invoke-static {v0}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->access$400(Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 97
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel$2;->this$0:Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;

    invoke-static {p0, v1}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->access$402(Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;Z)Z

    return-void

    .line 100
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Raise receive sensor value:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UnderprintScreenFingerprintModel"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, p1, v1

    const/high16 v2, 0x40c00000  # 6.0f

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_47

    aget p1, p1, v1

    const/high16 v0, 0x40000000  # 2.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_5c

    iget-object p1, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel$2;->this$0:Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;

    .line 102
    invoke-static {p1}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->access$100(Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;)Landroid/os/PowerManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    if-nez p1, :cond_5c

    .line 103
    :cond_47
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel$2;->this$0:Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;

    invoke-virtual {p1}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->sendDismissDelayBroadcastForMotion()V

    .line 104
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel$2;->this$0:Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->access$300(Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;)Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel$StateChangeCallback;

    move-result-object p1

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-interface {p1, v0}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel$StateChangeCallback;->stateChange(F)V

    .line 105
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel$2;->this$0:Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;

    invoke-virtual {p0}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->unRegisterRaiseSensor()V

    :cond_5c
    return-void
.end method
