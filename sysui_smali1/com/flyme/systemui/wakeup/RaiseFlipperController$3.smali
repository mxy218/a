.class Lcom/flyme/systemui/wakeup/RaiseFlipperController$3;
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

    .line 128
    iput-object p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController$3;->this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 6

    .line 131
    iget-object v0, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController$3;->this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    invoke-static {v0}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->access$600(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController$3;->this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    invoke-static {v1}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->access$500(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 132
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-int v0, v0

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Flip sensor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ",screen on "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController$3;->this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    invoke-static {p1}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->access$300(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)Landroid/os/PowerManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",mWakeupByRaise "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController$3;->this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    .line 134
    invoke-static {p1}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->access$400(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",mWakeupByFlip "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController$3;->this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    invoke-static {p1}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->access$700(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "RaiseFlipperController"

    .line 133
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    if-ne v0, p1, :cond_88

    .line 135
    iget-object v2, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController$3;->this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    invoke-static {v2}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->access$300(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)Landroid/os/PowerManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    if-nez v2, :cond_88

    const-string/jumbo v0, "wakeup display by flip sensor"

    .line 136
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController$3;->this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    invoke-static {v0}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->access$300(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-string/jumbo v3, "systemui flip_wakeup"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 138
    iget-object p0, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController$3;->this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    invoke-static {p0, p1}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->access$702(Lcom/flyme/systemui/wakeup/RaiseFlipperController;Z)Z

    goto :goto_c2

    :cond_88
    const/4 p1, 0x2

    if-ne v0, p1, :cond_c2

    .line 139
    iget-object p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController$3;->this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    invoke-static {p1}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->access$300(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)Landroid/os/PowerManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    if-eqz p1, :cond_c2

    iget-object p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController$3;->this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    invoke-static {p1}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->access$400(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)Z

    move-result p1

    if-nez p1, :cond_a7

    iget-object p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController$3;->this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    invoke-static {p1}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->access$700(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)Z

    move-result p1

    if-eqz p1, :cond_c2

    :cond_a7
    iget-object p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController$3;->this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    .line 140
    invoke-static {p1}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->access$800(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)Z

    move-result p1

    if-eqz p1, :cond_c2

    const-string/jumbo p1, "sleep display by flip sensor"

    .line 141
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object p0, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController$3;->this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    invoke-static {p0}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->access$300(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)Landroid/os/PowerManager;

    move-result-object p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager;->goToSleep(J)V

    :cond_c2
    :goto_c2
    return-void
.end method
