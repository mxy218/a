.class Lcom/android/server/BluetoothManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothManagerService;)V
    .registers 2

    .line 368
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 371
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 372
    const-string v0, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "BluetoothManagerService"

    if-eqz v0, :cond_32

    .line 373
    const-string p1, "android.bluetooth.adapter.extra.LOCAL_NAME"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 375
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bluetooth Adapter name changed to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    if-eqz p1, :cond_30

    .line 378
    iget-object p2, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {p2, p1, v1}, Lcom/android/server/BluetoothManagerService;->access$600(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    :cond_30
    goto/16 :goto_d3

    :cond_32
    const-string v0, "android.bluetooth.adapter.action.BLUETOOTH_ADDRESS_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 381
    const-string p1, "android.bluetooth.adapter.extra.BLUETOOTH_ADDRESS"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 382
    if-eqz p1, :cond_5d

    .line 384
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bluetooth Adapter address changed to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object p2, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {p2, v1, p1}, Lcom/android/server/BluetoothManagerService;->access$600(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d2

    .line 389
    :cond_5d
    const-string p1, "No Bluetooth Adapter address parameter found"

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d2

    .line 392
    :cond_63
    const-string v0, "android.os.action.SETTING_RESTORED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d2

    .line 393
    const-string/jumbo p1, "setting_name"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 394
    const-string v0, "bluetooth_on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d3

    .line 396
    nop

    .line 397
    const-string/jumbo p1, "previous_value"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 398
    const-string/jumbo v0, "new_value"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTION_SETTING_RESTORED with BLUETOOTH_ON, prevValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", newValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    if-eqz p2, :cond_d3

    if-eqz p1, :cond_d3

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d3

    .line 407
    iget-object p1, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {p1}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object p1

    const/16 v0, 0x1f4

    .line 408
    const-string v1, "0"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_c2

    move p2, v1

    goto :goto_c3

    .line 409
    :cond_c2
    const/4 p2, 0x1

    :goto_c3
    nop

    .line 407
    invoke-virtual {p1, v0, p2, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 410
    iget-object p2, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {p2}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_d3

    .line 392
    :cond_d2
    :goto_d2
    nop

    .line 414
    :cond_d3
    :goto_d3
    return-void
.end method
