.class Lcom/android/server/DeviceIdleController$5;
.super Landroid/content/BroadcastReceiver;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .registers 2

    .line 665
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$5;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 670
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 p2, 0x8

    if-eqz p1, :cond_1e

    .line 671
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$5;->this$0:Lcom/android/server/DeviceIdleController;

    iget-object p1, p1, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$5;->this$0:Lcom/android/server/DeviceIdleController;

    .line 672
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$100(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Constants;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->MIN_DEEP_MAINTENANCE_TIME:J

    .line 671
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2d

    .line 674
    :cond_1e
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$5;->this$0:Lcom/android/server/DeviceIdleController;

    iget-object p1, p1, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$5;->this$0:Lcom/android/server/DeviceIdleController;

    .line 675
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$100(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Constants;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->MIN_LIGHT_MAINTENANCE_TIME:J

    .line 674
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 677
    :goto_2d
    return-void
.end method
