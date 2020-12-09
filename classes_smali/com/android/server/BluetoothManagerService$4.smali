.class Lcom/android/server/BluetoothManagerService$4;
.super Landroid/database/ContentObserver;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BluetoothManagerService;->registerForBleScanModeChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothManagerService;Landroid/os/Handler;)V
    .registers 3

    .line 755
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$4;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5

    .line 758
    iget-object p1, p0, Lcom/android/server/BluetoothManagerService$4;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {p1}, Lcom/android/server/BluetoothManagerService;->isBleScanAlwaysAvailable()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 760
    return-void

    .line 763
    :cond_9
    iget-object p1, p0, Lcom/android/server/BluetoothManagerService$4;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {p1}, Lcom/android/server/BluetoothManagerService;->access$800(Lcom/android/server/BluetoothManagerService;)V

    .line 764
    iget-object p1, p0, Lcom/android/server/BluetoothManagerService$4;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {p1}, Lcom/android/server/BluetoothManagerService;->access$900(Lcom/android/server/BluetoothManagerService;)V

    .line 766
    :try_start_13
    iget-object p1, p0, Lcom/android/server/BluetoothManagerService$4;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {p1}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 767
    iget-object p1, p0, Lcom/android/server/BluetoothManagerService$4;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {p1}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object p1

    if-eqz p1, :cond_4d

    .line 768
    iget-object p1, p0, Lcom/android/server/BluetoothManagerService$4;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$4;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 769
    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$400(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 768
    invoke-static {p1, v0, v1, v2}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;ILjava/lang/String;Z)V

    .line 770
    iget-object p1, p0, Lcom/android/server/BluetoothManagerService$4;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {p1}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object p1

    invoke-interface {p1}, Landroid/bluetooth/IBluetooth;->onBrEdrDown()V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_42} :catch_45
    .catchall {:try_start_13 .. :try_end_42} :catchall_43

    goto :goto_4d

    .line 775
    :catchall_43
    move-exception p1

    goto :goto_5c

    .line 772
    :catch_45
    move-exception p1

    .line 773
    :try_start_46
    const-string v0, "BluetoothManagerService"

    const-string v1, "error when disabling bluetooth"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_43

    .line 775
    :cond_4d
    :goto_4d
    iget-object p1, p0, Lcom/android/server/BluetoothManagerService$4;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {p1}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 776
    nop

    .line 777
    return-void

    .line 775
    :goto_5c
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$4;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p1
.end method
