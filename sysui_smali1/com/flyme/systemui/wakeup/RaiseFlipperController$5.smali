.class Lcom/flyme/systemui/wakeup/RaiseFlipperController$5;
.super Ljava/lang/Object;
.source "RaiseFlipperController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/wakeup/RaiseFlipperController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)V
    .registers 2

    .line 198
    iput-object p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController$5;->this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 4

    .line 201
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_15

    .line 202
    iget-object v1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController$5;->this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    invoke-static {v1}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->access$1000(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)F

    move-result v1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_15

    const/4 v0, 0x1

    .line 203
    :cond_15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "psensor: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_24

    const-string v1, "positive"

    goto :goto_26

    :cond_24
    const-string v1, "negative"

    :goto_26
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "RaiseFlipperController"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_43

    .line 205
    iget-object p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController$5;->this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    invoke-static {p1}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->access$600(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x3eb

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 207
    :cond_43
    iget-object p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController$5;->this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    invoke-static {p1}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->access$600(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x3e9

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 208
    iget-object p0, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController$5;->this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    invoke-static {p0}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->access$600(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x3ea

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
