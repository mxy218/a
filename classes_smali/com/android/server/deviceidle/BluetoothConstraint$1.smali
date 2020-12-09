.class Lcom/android/server/deviceidle/BluetoothConstraint$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothConstraint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/deviceidle/BluetoothConstraint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/deviceidle/BluetoothConstraint;


# direct methods
.method constructor <init>(Lcom/android/server/deviceidle/BluetoothConstraint;)V
    .registers 2

    .line 123
    iput-object p1, p0, Lcom/android/server/deviceidle/BluetoothConstraint$1;->this$0:Lcom/android/server/deviceidle/BluetoothConstraint;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 126
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 127
    iget-object p1, p0, Lcom/android/server/deviceidle/BluetoothConstraint$1;->this$0:Lcom/android/server/deviceidle/BluetoothConstraint;

    invoke-static {p1}, Lcom/android/server/deviceidle/BluetoothConstraint;->access$000(Lcom/android/server/deviceidle/BluetoothConstraint;)Lcom/android/server/DeviceIdleController$LocalService;

    move-result-object p1

    const-string p2, "bluetooth"

    invoke-virtual {p1, p2}, Lcom/android/server/DeviceIdleController$LocalService;->exitIdle(Ljava/lang/String;)V

    goto :goto_1d

    .line 129
    :cond_18
    iget-object p1, p0, Lcom/android/server/deviceidle/BluetoothConstraint$1;->this$0:Lcom/android/server/deviceidle/BluetoothConstraint;

    invoke-static {p1}, Lcom/android/server/deviceidle/BluetoothConstraint;->access$100(Lcom/android/server/deviceidle/BluetoothConstraint;)V

    .line 131
    :goto_1d
    return-void
.end method
