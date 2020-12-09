.class Lcom/android/server/connectivity/Tethering$3;
.super Ljava/lang/Object;
.source "Tethering.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/Tethering;->setBluetoothTethering(ZLandroid/os/ResultReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;

.field final synthetic val$adapter:Landroid/bluetooth/BluetoothAdapter;

.field final synthetic val$enable:Z

.field final synthetic val$receiver:Landroid/os/ResultReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering;ZLandroid/os/ResultReceiver;Landroid/bluetooth/BluetoothAdapter;)V
    .registers 5

    .line 468
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$3;->this$0:Lcom/android/server/connectivity/Tethering;

    iput-boolean p2, p0, Lcom/android/server/connectivity/Tethering$3;->val$enable:Z

    iput-object p3, p0, Lcom/android/server/connectivity/Tethering$3;->val$receiver:Landroid/os/ResultReceiver;

    iput-object p4, p0, Lcom/android/server/connectivity/Tethering$3;->val$adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 6

    .line 482
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 484
    :try_start_4
    move-object p1, p2

    check-cast p1, Landroid/bluetooth/BluetoothPan;

    iget-boolean v2, p0, Lcom/android/server/connectivity/Tethering$3;->val$enable:Z

    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_2c

    .line 486
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 487
    nop

    .line 490
    move-object p1, p2

    check-cast p1, Landroid/bluetooth/BluetoothPan;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result p1

    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering$3;->val$enable:Z

    const/4 v1, 0x5

    if-ne p1, v0, :cond_1e

    .line 491
    const/4 p1, 0x0

    goto :goto_1f

    .line 492
    :cond_1e
    move p1, v1

    .line 493
    :goto_1f
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$3;->this$0:Lcom/android/server/connectivity/Tethering;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$3;->val$receiver:Landroid/os/ResultReceiver;

    invoke-static {v0, v2, p1}, Lcom/android/server/connectivity/Tethering;->access$700(Lcom/android/server/connectivity/Tethering;Landroid/os/ResultReceiver;I)V

    .line 494
    iget-object p1, p0, Lcom/android/server/connectivity/Tethering$3;->val$adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1, v1, p2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 495
    return-void

    .line 486
    :catchall_2c
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public onServiceDisconnected(I)V
    .registers 2

    .line 470
    return-void
.end method
