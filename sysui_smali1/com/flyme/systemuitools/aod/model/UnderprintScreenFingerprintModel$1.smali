.class Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel$1;
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

    .line 71
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel$1;->this$0:Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;

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

    .line 74
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel$1;->this$0:Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;

    invoke-static {v0}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->access$000(Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 75
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel$1;->this$0:Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;

    invoke-static {p0, v1}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->access$002(Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;Z)Z

    return-void

    .line 78
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "values:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "   isInteractive:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel$1;->this$0:Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;

    invoke-static {v2}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->access$100(Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;)Landroid/os/PowerManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UnderprintScreenFingerprintModel"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel$1;->this$0:Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v1

    invoke-static {v0, v2}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->access$202(Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;F)F

    .line 80
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    const/high16 v2, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_66

    iget-object v0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel$1;->this$0:Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;

    invoke-static {v0}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->access$100(Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_66

    .line 81
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel$1;->this$0:Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;

    invoke-virtual {p1}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->sendDismissDelayBroadcastForMotion()V

    .line 82
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel$1;->this$0:Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;

    invoke-virtual {p0}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->executeShowFp()V

    goto :goto_84

    .line 83
    :cond_66
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_84

    iget-object p1, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel$1;->this$0:Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;

    invoke-static {p1}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->access$100(Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;)Landroid/os/PowerManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    if-nez p1, :cond_84

    .line 84
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel$1;->this$0:Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;

    invoke-static {p0}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->access$300(Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;)Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel$StateChangeCallback;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel$StateChangeCallback;->stateChange(F)V

    :cond_84
    :goto_84
    return-void
.end method
