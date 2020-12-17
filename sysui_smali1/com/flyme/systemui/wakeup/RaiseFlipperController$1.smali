.class Lcom/flyme/systemui/wakeup/RaiseFlipperController$1;
.super Landroid/os/Handler;
.source "RaiseFlipperController.java"


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

    .line 98
    iput-object p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController$1;->this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 101
    iget p1, p1, Landroid/os/Message;->what:I

    const-string v0, "RaiseFlipperController"

    packed-switch p1, :pswitch_data_56

    const-string p0, "Unknow message to handle"

    .line 114
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55

    :pswitch_d  #0x3eb
    const-string/jumbo p1, "wakeup display by raise sensor"

    .line 109
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController$1;->this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    invoke-static {p1}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->access$300(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)Landroid/os/PowerManager;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-string/jumbo v2, "systemui raise_wakeup"

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 111
    iget-object p0, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController$1;->this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->access$402(Lcom/flyme/systemui/wakeup/RaiseFlipperController;Z)Z

    goto :goto_55

    .line 106
    :pswitch_2a  #0x3ea
    iget-object p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController$1;->this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    invoke-static {p1}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->access$200(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)Landroid/hardware/SensorManager;

    move-result-object p1

    iget-object p0, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController$1;->this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    invoke-static {p0}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->access$000(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)Landroid/hardware/SensorEventListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_55

    .line 103
    :pswitch_3a  #0x3e9
    iget-object p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController$1;->this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    invoke-static {p1}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->access$200(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)Landroid/hardware/SensorManager;

    move-result-object p1

    iget-object v0, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController$1;->this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    invoke-static {v0}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->access$000(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)Landroid/hardware/SensorEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController$1;->this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    invoke-static {v1}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->access$100(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)Landroid/hardware/Sensor;

    move-result-object v1

    iget-object p0, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController$1;->this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    invoke-static {p0}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->access$200(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)Landroid/hardware/SensorManager;

    const/4 p0, 0x3

    invoke-virtual {p1, v0, v1, p0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :goto_55
    return-void

    :pswitch_data_56
    .packed-switch 0x3e9
        :pswitch_3a  #000003e9
        :pswitch_2a  #000003ea
        :pswitch_d  #000003eb
    .end packed-switch
.end method
