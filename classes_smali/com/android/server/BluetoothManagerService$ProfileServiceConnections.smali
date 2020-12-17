.class final Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
.super Ljava/lang/Object;
.source "BluetoothManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProfileServiceConnections"
.end annotation


# instance fields
.field mClassName:Landroid/content/ComponentName;

.field mIntent:Landroid/content/Intent;

.field mInvokingProxyCallbacks:Z

.field final mProxies:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/bluetooth/IBluetoothProfileServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field mService:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothManagerService;Landroid/content/Intent;)V
    .registers 3
    .param p2, "intent"  # Landroid/content/Intent;

    .line 1491
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1484
    new-instance p1, Landroid/os/RemoteCallbackList;

    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    .line 1489
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mInvokingProxyCallbacks:Z

    .line 1492
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mService:Landroid/os/IBinder;

    .line 1493
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mClassName:Landroid/content/ComponentName;

    .line 1494
    iput-object p2, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mIntent:Landroid/content/Intent;

    .line 1495
    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    .line 1482
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->bindService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;Landroid/bluetooth/IBluetoothProfileServiceConnection;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    .param p1, "x1"  # Landroid/bluetooth/IBluetoothProfileServiceConnection;

    .line 1482
    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->removeProxy(Landroid/bluetooth/IBluetoothProfileServiceConnection;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    .line 1482
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->isEmpty()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    .line 1482
    invoke-direct {p0}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->removeAllProxies()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;Landroid/bluetooth/IBluetoothProfileServiceConnection;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;
    .param p1, "x1"  # Landroid/bluetooth/IBluetoothProfileServiceConnection;

    .line 1482
    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->addProxy(Landroid/bluetooth/IBluetoothProfileServiceConnection;)V

    return-void
.end method

.method private addProxy(Landroid/bluetooth/IBluetoothProfileServiceConnection;)V
    .registers 5
    .param p1, "proxy"  # Landroid/bluetooth/IBluetoothProfileServiceConnection;

    .line 1530
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1531
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mService:Landroid/os/IBinder;

    const-string v1, "BluetoothManagerService"

    if-eqz v0, :cond_18

    .line 1533
    :try_start_b
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mClassName:Landroid/content/ComponentName;

    invoke-interface {p1, v2, v0}, Landroid/bluetooth/IBluetoothProfileServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_11

    goto :goto_17

    .line 1534
    :catch_11
    move-exception v0

    .line 1535
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Unable to connect to proxy"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1536
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_17
    goto :goto_64

    .line 1538
    :cond_18
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v0}, Lcom/android/server/BluetoothManagerService;->isBluetoothAvailableForBinding()Z

    move-result v0

    if-nez v0, :cond_41

    .line 1539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addProxy: Trying to bind to profile: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mClassName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", while Bluetooth is disabled"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1542
    return-void

    .line 1545
    :cond_41
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    const/16 v1, 0x191

    invoke-virtual {v0, v1, p0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64

    .line 1546
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1547
    .local v0, "msg":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1548
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1551
    .end local v0  # "msg":Landroid/os/Message;
    :cond_64
    :goto_64
    return-void
.end method

.method private bindService()Z
    .registers 7

    .line 1498
    const-string v0, "BluetoothManagerService"

    const/16 v1, 0xa

    .line 1500
    .local v1, "state":I
    const/4 v2, 0x0

    :try_start_5
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1501
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v3

    if-eqz v3, :cond_25

    .line 1502
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v3

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v3
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_24} :catch_8c
    .catchall {:try_start_5 .. :try_end_24} :catchall_8a

    move v1, v3

    .line 1508
    :cond_25
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1509
    nop

    .line 1511
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1400(Lcom/android/server/BluetoothManagerService;)Z

    move-result v3

    if-eqz v3, :cond_84

    const/16 v3, 0xc

    if-eq v1, v3, :cond_40

    goto :goto_84

    .line 1518
    :cond_40
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mIntent:Landroid/content/Intent;

    if-eqz v3, :cond_6d

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mService:Landroid/os/IBinder;

    if-nez v4, :cond_6d

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    sget-object v5, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, p0, v2, v5}, Lcom/android/server/BluetoothManagerService;->doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 1520
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    const/16 v2, 0x191

    invoke-virtual {v0, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1521
    .local v0, "msg":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1522
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v2

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1523
    const/4 v2, 0x1

    return v2

    .line 1525
    .end local v0  # "msg":Landroid/os/Message;
    :cond_6d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to bind with intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    return v2

    .line 1513
    :cond_84
    :goto_84
    const-string v3, "Unable to bindService while Bluetooth is disabled"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    return v2

    .line 1508
    :catchall_8a
    move-exception v0

    goto :goto_a1

    .line 1504
    :catch_8c
    move-exception v3

    .line 1505
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_8d
    const-string v4, "Unable to call getState"

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_92
    .catchall {:try_start_8d .. :try_end_92} :catchall_8a

    .line 1506
    nop

    .line 1508
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1506
    return v2

    .line 1508
    .end local v3  # "e":Landroid/os/RemoteException;
    :goto_a1
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method private isEmpty()Z
    .registers 2

    .line 1576
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private removeAllProxies()V
    .registers 2

    .line 1571
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mClassName:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 1572
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 1573
    return-void
.end method

.method private removeProxy(Landroid/bluetooth/IBluetoothProfileServiceConnection;)V
    .registers 5
    .param p1, "proxy"  # Landroid/bluetooth/IBluetoothProfileServiceConnection;

    .line 1554
    const-string v0, "BluetoothManagerService"

    if-eqz p1, :cond_34

    .line 1555
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1557
    :try_start_c
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mClassName:Landroid/content/ComponentName;

    invoke-interface {p1, v1}, Landroid/bluetooth/IBluetoothProfileServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_12

    .line 1560
    goto :goto_18

    .line 1558
    :catch_12
    move-exception v1

    .line 1559
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Unable to disconnect proxy"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1563
    .end local v1  # "e":Landroid/os/RemoteException;
    :cond_18
    :goto_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removing the proxy, count is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    .line 1564
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1563
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    .line 1566
    :cond_34
    const-string v1, "Trying to remove a null proxy"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    :goto_39
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    .line 1647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Profile service for profile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mClassName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " died."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mClassName:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 1651
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v0}, Lcom/android/server/BluetoothManagerService;->isBluetoothAvailableForBinding()Z

    move-result v0

    if-nez v0, :cond_46

    .line 1652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied: Trying to bind to profile: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mClassName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", while Bluetooth is disabled"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    return-void

    .line 1657
    :cond_46
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    const/16 v1, 0x191

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1658
    .local v0, "msg":Landroid/os/Message;
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1659
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1660
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 9
    .param p1, "className"  # Landroid/content/ComponentName;
    .param p2, "service"  # Landroid/os/IBinder;

    .line 1582
    const-string v0, "BluetoothManagerService"

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v1

    const/16 v2, 0x191

    invoke-virtual {v1, v2, p0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1583
    iput-object p2, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mService:Landroid/os/IBinder;

    .line 1584
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mClassName:Landroid/content/ComponentName;

    .line 1586
    const/4 v1, 0x0

    :try_start_12
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mService:Landroid/os/IBinder;

    invoke-interface {v2, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_17} :catch_18

    .line 1589
    goto :goto_1e

    .line 1587
    :catch_18
    move-exception v2

    .line 1588
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Unable to linkToDeath"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1591
    .end local v2  # "e":Landroid/os/RemoteException;
    :goto_1e
    iget-boolean v2, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mInvokingProxyCallbacks:Z

    if-eqz v2, :cond_28

    .line 1592
    const-string v1, "Proxy callbacks already in progress."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    return-void

    .line 1595
    :cond_28
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mInvokingProxyCallbacks:Z

    .line 1597
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1599
    .local v2, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_32
    if-ge v3, v2, :cond_53

    .line 1601
    :try_start_34
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/IBluetoothProfileServiceConnection;

    invoke-interface {v4, p1, p2}, Landroid/bluetooth/IBluetoothProfileServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_3f} :catch_42
    .catchall {:try_start_34 .. :try_end_3f} :catchall_40

    .line 1604
    goto :goto_48

    .line 1607
    .end local v3  # "i":I
    :catchall_40
    move-exception v0

    goto :goto_4b

    .line 1602
    .restart local v3  # "i":I
    :catch_42
    move-exception v4

    .line 1603
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_43
    const-string v5, "Unable to connect to proxy"

    invoke-static {v0, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_48
    .catchall {:try_start_43 .. :try_end_48} :catchall_40

    .line 1599
    .end local v4  # "e":Landroid/os/RemoteException;
    :goto_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 1607
    .end local v3  # "i":I
    :goto_4b
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1608
    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mInvokingProxyCallbacks:Z

    throw v0

    .line 1607
    :cond_53
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1608
    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mInvokingProxyCallbacks:Z

    .line 1609
    nop

    .line 1610
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 8
    .param p1, "className"  # Landroid/content/ComponentName;

    .line 1614
    const-string v0, "BluetoothManagerService"

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mService:Landroid/os/IBinder;

    if-nez v1, :cond_7

    return-void

    .line 1616
    :cond_7
    const/4 v2, 0x0

    :try_start_8
    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_b
    .catch Ljava/util/NoSuchElementException; {:try_start_8 .. :try_end_b} :catch_c

    .line 1619
    goto :goto_12

    .line 1617
    :catch_c
    move-exception v1

    .line 1618
    .local v1, "e":Ljava/util/NoSuchElementException;
    const-string v3, "Unable to unlinkToDeath"

    invoke-static {v0, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1620
    .end local v1  # "e":Ljava/util/NoSuchElementException;
    :goto_12
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mService:Landroid/os/IBinder;

    .line 1621
    iput-object v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mClassName:Landroid/content/ComponentName;

    .line 1623
    iget-boolean v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mInvokingProxyCallbacks:Z

    if-eqz v1, :cond_21

    .line 1624
    const-string v1, "Proxy callbacks already in progress."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    return-void

    .line 1627
    :cond_21
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mInvokingProxyCallbacks:Z

    .line 1629
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 1631
    .local v1, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2b
    if-ge v3, v1, :cond_4c

    .line 1633
    :try_start_2d
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/IBluetoothProfileServiceConnection;

    invoke-interface {v4, p1}, Landroid/bluetooth/IBluetoothProfileServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_38} :catch_3b
    .catchall {:try_start_2d .. :try_end_38} :catchall_39

    .line 1636
    goto :goto_41

    .line 1639
    .end local v3  # "i":I
    :catchall_39
    move-exception v0

    goto :goto_44

    .line 1634
    .restart local v3  # "i":I
    :catch_3b
    move-exception v4

    .line 1635
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_3c
    const-string v5, "Unable to disconnect from proxy"

    invoke-static {v0, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_41
    .catchall {:try_start_3c .. :try_end_41} :catchall_39

    .line 1631
    .end local v4  # "e":Landroid/os/RemoteException;
    :goto_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 1639
    .end local v3  # "i":I
    :goto_44
    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1640
    iput-boolean v2, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mInvokingProxyCallbacks:Z

    throw v0

    .line 1639
    :cond_4c
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mProxies:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1640
    iput-boolean v2, p0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->mInvokingProxyCallbacks:Z

    .line 1641
    nop

    .line 1642
    return-void
.end method
