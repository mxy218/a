.class Lcom/flyme/systemui/wakeup/RaiseFlipperController$4;
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

    .line 152
    iput-object p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController$4;->this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 9

    .line 155
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-int v0, v0

    .line 156
    iget-object v2, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController$4;->this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    invoke-static {v2}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->access$300(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)Landroid/os/PowerManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    .line 157
    iget-object v3, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController$4;->this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    invoke-static {v3}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->access$300(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)Landroid/os/PowerManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenDim()Z

    move-result v3

    .line 158
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Raise sensor "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ",screen on "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController$4;->this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    .line 159
    invoke-static {p1}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->access$300(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)Landroid/os/PowerManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",mWakeupByRaise "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController$4;->this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    invoke-static {p1}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->access$400(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)Z

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",mWakeupByFlip "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController$4;->this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    .line 160
    invoke-static {p1}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->access$700(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)Z

    move-result p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "RaiseFlipperController"

    .line 158
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController$4;->this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    invoke-static {p1}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->access$600(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)Landroid/os/Handler;

    move-result-object p1

    iget-object v5, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController$4;->this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    invoke-static {v5}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->access$500(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x2

    if-ne v0, v6, :cond_86

    .line 163
    iget-object v6, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController$4;->this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    invoke-static {v6}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->access$900(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)I

    move-result v6

    if-eq v6, v5, :cond_86

    iget-object v6, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController$4;->this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    .line 164
    invoke-static {v6}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->access$900(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)I

    move-result v6

    if-ne v6, p1, :cond_88

    :cond_86
    if-ne v0, v5, :cond_b6

    :cond_88
    if-nez v2, :cond_9a

    .line 167
    iget-object p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController$4;->this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    invoke-static {p1}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->access$600(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)Landroid/os/Handler;

    move-result-object p1

    const/16 v1, 0x3e9

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_106

    :cond_9a
    if-eqz v3, :cond_106

    const-string/jumbo p1, "wakeup display by raise sensor in dim"

    .line 170
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController$4;->this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    invoke-static {p1}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->access$300(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)Landroid/os/PowerManager;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 172
    iget-object p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController$4;->this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->access$402(Lcom/flyme/systemui/wakeup/RaiseFlipperController;Z)Z

    goto :goto_106

    :cond_b6
    if-eqz v2, :cond_106

    .line 175
    iget-object v1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController$4;->this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    invoke-static {v1}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->access$800(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)Z

    move-result v1

    if-eqz v1, :cond_106

    const/4 v1, 0x4

    if-eq v0, v1, :cond_e3

    const/4 v1, 0x5

    if-ne v0, v1, :cond_c7

    goto :goto_e3

    :cond_c7
    if-ne v0, p1, :cond_106

    .line 182
    iget-object p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController$4;->this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    invoke-static {p1}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->access$400(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)Z

    move-result p1

    if-eqz p1, :cond_106

    .line 183
    iget-object p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController$4;->this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    invoke-static {p1}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->access$600(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)Landroid/os/Handler;

    move-result-object p1

    iget-object v1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController$4;->this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    invoke-static {v1}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->access$500(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_106

    :cond_e3
    :goto_e3
    const-string/jumbo p1, "sleep display by rasie up sensor"

    .line 177
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController$4;->this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    invoke-static {p1}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->access$400(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)Z

    move-result p1

    if-nez p1, :cond_f9

    iget-object p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController$4;->this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    invoke-static {p1}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->access$700(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)Z

    move-result p1

    if-eqz p1, :cond_106

    .line 179
    :cond_f9
    iget-object p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController$4;->this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    invoke-static {p1}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->access$300(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)Landroid/os/PowerManager;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 189
    :cond_106
    :goto_106
    iget-object p0, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController$4;->this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    invoke-static {p0, v0}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->access$902(Lcom/flyme/systemui/wakeup/RaiseFlipperController;I)I

    return-void
.end method
