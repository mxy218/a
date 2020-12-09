.class Lcom/android/server/BluetoothManagerService$BluetoothHandler;
.super Landroid/os/Handler;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothHandler"
.end annotation


# instance fields
.field mGetNameAddressOnly:Z

.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothManagerService;Landroid/os/Looper;)V
    .registers 3

    .line 1613
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 1614
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1611
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->mGetNameAddressOnly:Z

    .line 1615
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 18

    .line 1619
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const/16 v4, 0x2a

    const/16 v5, 0xa

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v8, "BluetoothManagerService"

    if-eq v0, v7, :cond_837

    const/4 v9, 0x6

    const/4 v10, 0x2

    const/16 v11, 0xb

    const/16 v12, 0xc

    const/16 v13, 0xd

    if-eq v0, v10, :cond_799

    const/16 v14, 0x14

    if-eq v0, v14, :cond_78a

    const/16 v14, 0x15

    if-eq v0, v14, :cond_77b

    const/16 v14, 0x1e

    if-eq v0, v14, :cond_76c

    const/16 v14, 0x1f

    if-eq v0, v14, :cond_75d

    const/16 v14, 0x3c

    if-eq v0, v14, :cond_698

    const/16 v15, 0xc8

    const/16 v3, 0x64

    if-eq v0, v15, :cond_5cd

    const/16 v15, 0x1f4

    if-eq v0, v15, :cond_575

    if-eq v0, v3, :cond_54f

    const/16 v15, 0x65

    if-eq v0, v15, :cond_529

    const/4 v15, 0x0

    const/16 v3, 0x12c

    if-eq v0, v3, :cond_361

    const/16 v3, 0x12d

    if-eq v0, v3, :cond_329

    const/16 v3, 0x190

    if-eq v0, v3, :cond_30a

    const/16 v3, 0x191

    if-eq v0, v3, :cond_2f6

    packed-switch v0, :pswitch_data_922

    goto/16 :goto_912

    .line 1965
    :pswitch_54  #0x2a
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$4308(Lcom/android/server/BluetoothManagerService;)I

    .line 1966
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MESSAGE_RESTART_BLUETOOTH_SERVICE: retry count="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 1967
    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$4300(Lcom/android/server/BluetoothManagerService;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1966
    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$4300(Lcom/android/server/BluetoothManagerService;)I

    move-result v0

    if-ge v0, v9, :cond_99

    .line 1972
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v7}, Lcom/android/server/BluetoothManagerService;->access$1702(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 1973
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v2, 0x4

    .line 1974
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$400(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1973
    invoke-static {v0, v2, v3, v7}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;ILjava/lang/String;Z)V

    .line 1975
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2200(Lcom/android/server/BluetoothManagerService;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$2300(Lcom/android/server/BluetoothManagerService;Z)V

    goto/16 :goto_912

    .line 1977
    :cond_99
    const-string v0, "Reach maximum retry to restart Bluetooth!"

    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    goto/16 :goto_912

    .line 1913
    :pswitch_a0  #0x29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MESSAGE_BLUETOOTH_SERVICE_DISCONNECTED("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    :try_start_bb
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1916
    iget v0, v2, Landroid/os/Message;->arg1:I

    if-ne v0, v7, :cond_16c

    .line 1918
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0
    :try_end_d2
    .catchall {:try_start_bb .. :try_end_d2} :catchall_17e

    if-nez v0, :cond_e3

    .line 1930
    :goto_d4
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto/16 :goto_912

    .line 1921
    :cond_e3
    :try_start_e3
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v15}, Lcom/android/server/BluetoothManagerService;->access$1102(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;
    :try_end_e8
    .catchall {:try_start_e3 .. :try_end_e8} :catchall_17e

    .line 1930
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1931
    nop

    .line 1934
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$4400(Lcom/android/server/BluetoothManagerService;)V

    .line 1935
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v2, 0x7

    .line 1936
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$400(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1935
    invoke-static {v0, v2, v3, v6}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;ILjava/lang/String;Z)V

    .line 1937
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1700(Lcom/android/server/BluetoothManagerService;)Z

    move-result v0

    if-eqz v0, :cond_130

    .line 1938
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v6}, Lcom/android/server/BluetoothManagerService;->access$1702(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 1940
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 1941
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1942
    iget-object v2, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$2500(Lcom/android/server/BluetoothManagerService;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1945
    :cond_130
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$4500(Lcom/android/server/BluetoothManagerService;)V

    .line 1949
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$4000(Lcom/android/server/BluetoothManagerService;)I

    move-result v0

    if-eq v0, v11, :cond_145

    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$4000(Lcom/android/server/BluetoothManagerService;)I

    move-result v0

    if-ne v0, v12, :cond_14f

    .line 1951
    :cond_145
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v12, v13}, Lcom/android/server/BluetoothManagerService;->access$4100(Lcom/android/server/BluetoothManagerService;II)V

    .line 1953
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v13}, Lcom/android/server/BluetoothManagerService;->access$4002(Lcom/android/server/BluetoothManagerService;I)I

    .line 1955
    :cond_14f
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$4000(Lcom/android/server/BluetoothManagerService;)I

    move-result v0

    if-ne v0, v13, :cond_15c

    .line 1956
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v13, v5}, Lcom/android/server/BluetoothManagerService;->access$4100(Lcom/android/server/BluetoothManagerService;II)V

    .line 1960
    :cond_15c
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 1961
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v5}, Lcom/android/server/BluetoothManagerService;->access$4002(Lcom/android/server/BluetoothManagerService;I)I

    .line 1962
    goto/16 :goto_912

    .line 1922
    :cond_16c
    :try_start_16c
    iget v0, v2, Landroid/os/Message;->arg1:I

    if-ne v0, v10, :cond_177

    .line 1923
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v15}, Lcom/android/server/BluetoothManagerService;->access$3402(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;

    goto/16 :goto_d4

    .line 1926
    :cond_177
    const-string v0, "Unknown argument for service disconnect!"

    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17c
    .catchall {:try_start_16c .. :try_end_17c} :catchall_17e

    goto/16 :goto_d4

    .line 1930
    :catchall_17e
    move-exception v0

    iget-object v1, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0

    .line 1799
    :pswitch_18d  #0x28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MESSAGE_BLUETOOTH_SERVICE_CONNECTED: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    .line 1804
    :try_start_1a7
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1805
    iget v2, v2, Landroid/os/Message;->arg1:I

    if-ne v2, v10, :cond_1d9

    .line 1806
    iget-object v2, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 1807
    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/IBluetoothGatt$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothGatt;

    move-result-object v0

    .line 1806
    invoke-static {v2, v0}, Lcom/android/server/BluetoothManagerService;->access$3402(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;

    .line 1808
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$3500(Lcom/android/server/BluetoothManagerService;)V
    :try_end_1ca
    .catchall {:try_start_1a7 .. :try_end_1ca} :catchall_2e7

    .line 1851
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto/16 :goto_912

    .line 1813
    :cond_1d9
    :try_start_1d9
    iget-object v2, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 1815
    iget-object v2, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2, v6}, Lcom/android/server/BluetoothManagerService;->access$1902(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 1816
    iget-object v2, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2, v0}, Lcom/android/server/BluetoothManagerService;->access$3602(Lcom/android/server/BluetoothManagerService;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 1817
    iget-object v2, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/BluetoothManagerService;->access$1102(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;

    .line 1819
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$3700(Lcom/android/server/BluetoothManagerService;)Z

    move-result v0

    if-nez v0, :cond_22a

    .line 1820
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    const/16 v2, 0xc8

    invoke-virtual {v0, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1821
    iget-object v2, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1822
    iget-boolean v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->mGetNameAddressOnly:Z
    :try_end_21a
    .catchall {:try_start_1d9 .. :try_end_21a} :catchall_2e7

    if-eqz v0, :cond_22a

    .line 1851
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1823
    return-void

    .line 1829
    :cond_22a
    :try_start_22a
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$3800(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetoothCallback;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/bluetooth/IBluetooth;->registerCallback(Landroid/bluetooth/IBluetoothCallback;)V
    :try_end_239
    .catch Landroid/os/RemoteException; {:try_start_22a .. :try_end_239} :catch_23a
    .catchall {:try_start_22a .. :try_end_239} :catchall_2e7

    .line 1832
    goto :goto_240

    .line 1830
    :catch_23a
    move-exception v0

    .line 1831
    :try_start_23b
    const-string v2, "Unable to register BluetoothCallback"

    invoke-static {v8, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1834
    :goto_240
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$3900(Lcom/android/server/BluetoothManagerService;)V
    :try_end_245
    .catchall {:try_start_23b .. :try_end_245} :catchall_2e7

    .line 1838
    :try_start_245
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2200(Lcom/android/server/BluetoothManagerService;)Z

    move-result v0

    if-nez v0, :cond_25f

    .line 1839
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->enable()Z

    move-result v0

    if-nez v0, :cond_270

    .line 1840
    const-string v0, "IBluetooth.enable() returned false"

    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_270

    .line 1843
    :cond_25f
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->enableNoAutoConnect()Z

    move-result v0

    if-nez v0, :cond_270

    .line 1844
    const-string v0, "IBluetooth.enableNoAutoConnect() returned false"

    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_270
    .catch Landroid/os/RemoteException; {:try_start_245 .. :try_end_270} :catch_271
    .catchall {:try_start_245 .. :try_end_270} :catchall_2e7

    .line 1849
    :cond_270
    :goto_270
    goto :goto_277

    .line 1847
    :catch_271
    move-exception v0

    .line 1848
    :try_start_272
    const-string v2, "Unable to call enable()"

    invoke-static {v8, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_277
    .catchall {:try_start_272 .. :try_end_277} :catchall_2e7

    .line 1851
    :goto_277
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1852
    nop

    .line 1854
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1700(Lcom/android/server/BluetoothManagerService;)Z

    move-result v0

    if-nez v0, :cond_912

    .line 1855
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    new-instance v2, Ljava/util/HashSet;

    new-array v3, v7, [Ljava/lang/Integer;

    .line 1856
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 1855
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v2}, Lcom/android/server/BluetoothManagerService;->access$2400(Lcom/android/server/BluetoothManagerService;Ljava/util/Set;)Z

    .line 1857
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2600(Lcom/android/server/BluetoothManagerService;)V

    .line 1858
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    new-instance v1, Ljava/util/HashSet;

    new-array v2, v9, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    .line 1859
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    .line 1860
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    const/4 v3, 0x3

    const/16 v4, 0xe

    .line 1861
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    .line 1862
    const/16 v4, 0xf

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0x10

    .line 1863
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1858
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$2400(Lcom/android/server/BluetoothManagerService;Ljava/util/Set;)Z

    goto/16 :goto_912

    .line 1851
    :catchall_2e7
    move-exception v0

    iget-object v1, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0

    .line 1789
    :cond_2f6
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    .line 1790
    const/16 v3, 0x191

    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1791
    if-nez v0, :cond_305

    .line 1792
    goto/16 :goto_912

    .line 1794
    :cond_305
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->access$1300(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;)Z

    .line 1795
    goto/16 :goto_912

    .line 1779
    :cond_30a
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$3200(Lcom/android/server/BluetoothManagerService;)Ljava/util/Map;

    move-result-object v0

    iget v1, v2, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;

    .line 1780
    if-nez v0, :cond_320

    .line 1781
    goto/16 :goto_912

    .line 1783
    :cond_320
    iget-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/IBluetoothProfileServiceConnection;

    .line 1785
    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;->access$3300(Lcom/android/server/BluetoothManagerService$ProfileServiceConnections;Landroid/bluetooth/IBluetoothProfileServiceConnection;)V

    .line 1786
    goto/16 :goto_912

    .line 2093
    :cond_329
    const-string v0, "MESSAGE_USER_UNLOCKED"

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2095
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    const/16 v2, 0x12c

    invoke-virtual {v0, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 2097
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1700(Lcom/android/server/BluetoothManagerService;)Z

    move-result v0

    if-eqz v0, :cond_912

    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1900(Lcom/android/server/BluetoothManagerService;)Z

    move-result v0

    if-nez v0, :cond_912

    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    if-nez v0, :cond_912

    .line 2102
    const-string v0, "Enabled but not bound; retrying after unlock"

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2104
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2200(Lcom/android/server/BluetoothManagerService;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$2300(Lcom/android/server/BluetoothManagerService;Z)V

    goto/16 :goto_912

    .line 1998
    :cond_361
    const-string v0, "MESSAGE_USER_SWITCHED"

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    const/16 v3, 0x12c

    invoke-virtual {v0, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 2003
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    if-eqz v0, :cond_4e2

    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v0}, Lcom/android/server/BluetoothManagerService;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4e2

    .line 2005
    :try_start_381
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 2006
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    if-eqz v0, :cond_3af

    .line 2007
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$3800(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetoothCallback;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/bluetooth/IBluetooth;->unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V
    :try_end_3a5
    .catch Landroid/os/RemoteException; {:try_start_381 .. :try_end_3a5} :catch_3a9
    .catchall {:try_start_381 .. :try_end_3a5} :catchall_3a6

    goto :goto_3af

    .line 2012
    :catchall_3a6
    move-exception v0

    goto/16 :goto_4d4

    .line 2009
    :catch_3a9
    move-exception v0

    .line 2010
    :try_start_3aa
    const-string v2, "Unable to unregister"

    invoke-static {v8, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3af
    .catchall {:try_start_3aa .. :try_end_3af} :catchall_3a6

    .line 2012
    :cond_3af
    :goto_3af
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 2013
    nop

    .line 2015
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$4000(Lcom/android/server/BluetoothManagerService;)I

    move-result v0

    if-ne v0, v13, :cond_3d3

    .line 2017
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$4000(Lcom/android/server/BluetoothManagerService;)I

    move-result v2

    invoke-static {v0, v2, v5}, Lcom/android/server/BluetoothManagerService;->access$4100(Lcom/android/server/BluetoothManagerService;II)V

    .line 2018
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v5}, Lcom/android/server/BluetoothManagerService;->access$4002(Lcom/android/server/BluetoothManagerService;I)I

    .line 2020
    :cond_3d3
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$4000(Lcom/android/server/BluetoothManagerService;)I

    move-result v0

    if-ne v0, v5, :cond_3e9

    .line 2021
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$4000(Lcom/android/server/BluetoothManagerService;)I

    move-result v2

    invoke-static {v0, v2, v11}, Lcom/android/server/BluetoothManagerService;->access$4100(Lcom/android/server/BluetoothManagerService;II)V

    .line 2022
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v11}, Lcom/android/server/BluetoothManagerService;->access$4002(Lcom/android/server/BluetoothManagerService;I)I

    .line 2025
    :cond_3e9
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    new-instance v2, Ljava/util/HashSet;

    new-array v3, v7, [Ljava/lang/Integer;

    .line 2026
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 2025
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v2}, Lcom/android/server/BluetoothManagerService;->access$2400(Lcom/android/server/BluetoothManagerService;Ljava/util/Set;)Z

    .line 2028
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$4000(Lcom/android/server/BluetoothManagerService;)I

    move-result v0

    if-ne v0, v11, :cond_410

    .line 2029
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$4000(Lcom/android/server/BluetoothManagerService;)I

    move-result v2

    invoke-static {v0, v2, v12}, Lcom/android/server/BluetoothManagerService;->access$4100(Lcom/android/server/BluetoothManagerService;II)V

    .line 2032
    :cond_410
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$4700(Lcom/android/server/BluetoothManagerService;)V

    .line 2034
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    const/16 v2, 0x8

    .line 2035
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$400(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2034
    invoke-static {v0, v2, v3, v6}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;ILjava/lang/String;Z)V

    .line 2036
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2600(Lcom/android/server/BluetoothManagerService;)V

    .line 2038
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v12, v13}, Lcom/android/server/BluetoothManagerService;->access$4100(Lcom/android/server/BluetoothManagerService;II)V

    .line 2041
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    new-instance v2, Ljava/util/HashSet;

    new-array v3, v7, [Ljava/lang/Integer;

    .line 2043
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 2042
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v2}, Lcom/android/server/BluetoothManagerService;->access$2400(Lcom/android/server/BluetoothManagerService;Ljava/util/Set;)Z

    move-result v0

    .line 2045
    xor-int/2addr v0, v7

    iget-object v2, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2, v13, v5}, Lcom/android/server/BluetoothManagerService;->access$4100(Lcom/android/server/BluetoothManagerService;II)V

    .line 2047
    iget-object v2, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$4500(Lcom/android/server/BluetoothManagerService;)V

    .line 2050
    :try_start_450
    iget-object v2, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 2051
    iget-object v2, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v2

    if-eqz v2, :cond_479

    .line 2052
    iget-object v2, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2, v15}, Lcom/android/server/BluetoothManagerService;->access$1102(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;

    .line 2054
    iget-object v2, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$400(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$2000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2056
    :cond_479
    iget-object v2, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2, v15}, Lcom/android/server/BluetoothManagerService;->access$3402(Lcom/android/server/BluetoothManagerService;Landroid/bluetooth/IBluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;
    :try_end_47e
    .catchall {:try_start_450 .. :try_end_47e} :catchall_4c5

    .line 2058
    iget-object v2, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 2059
    nop

    .line 2066
    if-eqz v0, :cond_494

    .line 2067
    const-wide/16 v2, 0xbb8

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_499

    .line 2069
    :cond_494
    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 2072
    :goto_499
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 2073
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v5}, Lcom/android/server/BluetoothManagerService;->access$4002(Lcom/android/server/BluetoothManagerService;I)I

    .line 2075
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    const/16 v2, 0x8

    .line 2076
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$400(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2075
    invoke-static {v0, v2, v3, v7}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;ILjava/lang/String;Z)V

    .line 2078
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v7}, Lcom/android/server/BluetoothManagerService;->access$1702(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 2079
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2200(Lcom/android/server/BluetoothManagerService;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$2300(Lcom/android/server/BluetoothManagerService;Z)V

    goto :goto_4f3

    .line 2058
    :catchall_4c5
    move-exception v0

    iget-object v1, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0

    .line 2012
    :goto_4d4
    iget-object v1, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0

    .line 2080
    :cond_4e2
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1900(Lcom/android/server/BluetoothManagerService;)Z

    move-result v0

    if-nez v0, :cond_4f5

    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    if-eqz v0, :cond_4f3

    goto :goto_4f5

    :cond_4f3
    :goto_4f3
    goto/16 :goto_912

    .line 2081
    :cond_4f5
    :goto_4f5
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    const/16 v3, 0x12c

    invoke-virtual {v0, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2082
    iget v2, v2, Landroid/os/Message;->arg2:I

    add-int/2addr v2, v7

    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 2084
    iget-object v1, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2086
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retry MESSAGE_USER_SWITCHED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    goto/16 :goto_912

    .line 1989
    :cond_529
    const-string v0, "MESSAGE_TIMEOUT_UNBIND"

    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1991
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v6}, Lcom/android/server/BluetoothManagerService;->access$4602(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 1992
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1993
    goto/16 :goto_912

    .line 1982
    :cond_54f
    const-string v0, "MESSAGE_TIMEOUT_BIND"

    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1983
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1984
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v6}, Lcom/android/server/BluetoothManagerService;->access$1902(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 1985
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1986
    goto/16 :goto_912

    .line 1734
    :cond_575
    iget v0, v2, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_5a1

    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1700(Lcom/android/server/BluetoothManagerService;)Z

    move-result v0

    if-eqz v0, :cond_5a1

    .line 1736
    const-string v0, "Restore Bluetooth state to disabled"

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v6}, Lcom/android/server/BluetoothManagerService;->access$2100(Lcom/android/server/BluetoothManagerService;I)V

    .line 1739
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v6}, Lcom/android/server/BluetoothManagerService;->access$2702(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 1740
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    const/16 v1, 0x9

    .line 1742
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$400(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1740
    invoke-static {v0, v1, v2}, Lcom/android/server/BluetoothManagerService;->access$500(Lcom/android/server/BluetoothManagerService;ILjava/lang/String;)V

    goto/16 :goto_912

    .line 1743
    :cond_5a1
    iget v0, v2, Landroid/os/Message;->arg1:I

    if-ne v0, v7, :cond_912

    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1700(Lcom/android/server/BluetoothManagerService;)Z

    move-result v0

    if-nez v0, :cond_912

    .line 1745
    const-string v0, "Restore Bluetooth state to enabled"

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v6}, Lcom/android/server/BluetoothManagerService;->access$2802(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 1748
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v7}, Lcom/android/server/BluetoothManagerService;->access$2702(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 1750
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    const/16 v1, 0x9

    .line 1752
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$400(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1750
    invoke-static {v0, v6, v1, v2}, Lcom/android/server/BluetoothManagerService;->access$2900(Lcom/android/server/BluetoothManagerService;ZILjava/lang/String;)V

    goto/16 :goto_912

    .line 1622
    :cond_5cd
    const-string v0, "MESSAGE_GET_NAME_AND_ADDRESS"

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    :try_start_5d2
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1626
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    if-nez v0, :cond_63c

    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1900(Lcom/android/server/BluetoothManagerService;)Z

    move-result v0

    if-nez v0, :cond_63c

    .line 1628
    const-string v0, "Binding to service to get name and address"

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    iput-boolean v7, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->mGetNameAddressOnly:Z

    .line 1631
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1632
    iget-object v2, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v2

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1633
    new-instance v0, Landroid/content/Intent;

    const-class v2, Landroid/bluetooth/IBluetooth;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1634
    iget-object v2, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$2000(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothServiceConnection;

    move-result-object v3

    const/16 v4, 0x41

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/android/server/BluetoothManagerService;->doBind(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_636

    .line 1637
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    goto :goto_678

    .line 1639
    :cond_636
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v7}, Lcom/android/server/BluetoothManagerService;->access$1902(Lcom/android/server/BluetoothManagerService;Z)Z

    goto :goto_678

    .line 1641
    :cond_63c
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0
    :try_end_642
    .catchall {:try_start_5d2 .. :try_end_642} :catchall_689

    if-eqz v0, :cond_678

    .line 1643
    :try_start_644
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    iget-object v2, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v2

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v3

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/android/server/BluetoothManagerService;->access$600(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_65d
    .catch Landroid/os/RemoteException; {:try_start_644 .. :try_end_65d} :catch_65e
    .catchall {:try_start_644 .. :try_end_65d} :catchall_689

    .line 1646
    goto :goto_664

    .line 1644
    :catch_65e
    move-exception v0

    .line 1645
    :try_start_65f
    const-string v2, "Unable to grab names"

    invoke-static {v8, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1647
    :goto_664
    iget-boolean v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->mGetNameAddressOnly:Z

    if-eqz v0, :cond_675

    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1700(Lcom/android/server/BluetoothManagerService;)Z

    move-result v0

    if-nez v0, :cond_675

    .line 1648
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v0}, Lcom/android/server/BluetoothManagerService;->unbindAndFinish()V

    .line 1650
    :cond_675
    iput-boolean v6, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->mGetNameAddressOnly:Z
    :try_end_677
    .catchall {:try_start_65f .. :try_end_677} :catchall_689

    goto :goto_679

    .line 1641
    :cond_678
    :goto_678
    nop

    .line 1653
    :goto_679
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1654
    nop

    .line 1655
    goto/16 :goto_912

    .line 1653
    :catchall_689
    move-exception v0

    iget-object v1, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0

    .line 1868
    :cond_698
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 1869
    iget v2, v2, Landroid/os/Message;->arg2:I

    .line 1871
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MESSAGE_BLUETOOTH_STATE_CHANGE: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1872
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " > "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1873
    invoke-static {v2}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1871
    invoke-static {v8, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3, v2}, Lcom/android/server/BluetoothManagerService;->access$4002(Lcom/android/server/BluetoothManagerService;I)I

    .line 1877
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3, v0, v2}, Lcom/android/server/BluetoothManagerService;->access$4100(Lcom/android/server/BluetoothManagerService;II)V

    .line 1880
    const/16 v3, 0xe

    if-ne v0, v3, :cond_6e5

    if-ne v2, v5, :cond_6e5

    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 1881
    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v3

    if-eqz v3, :cond_6e5

    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1700(Lcom/android/server/BluetoothManagerService;)Z

    move-result v3

    if-eqz v3, :cond_6e5

    .line 1882
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3, v6}, Lcom/android/server/BluetoothManagerService;->access$4200(Lcom/android/server/BluetoothManagerService;Z)V

    .line 1884
    :cond_6e5
    if-ne v0, v11, :cond_700

    const/16 v3, 0xf

    if-ne v2, v3, :cond_700

    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 1885
    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v3

    if-eqz v3, :cond_700

    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1700(Lcom/android/server/BluetoothManagerService;)Z

    move-result v3

    if-eqz v3, :cond_700

    .line 1886
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3, v7}, Lcom/android/server/BluetoothManagerService;->access$4200(Lcom/android/server/BluetoothManagerService;Z)V

    .line 1891
    :cond_700
    const/16 v3, 0x10

    if-ne v0, v3, :cond_743

    if-ne v2, v5, :cond_743

    .line 1893
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1700(Lcom/android/server/BluetoothManagerService;)Z

    move-result v0

    if-eqz v0, :cond_743

    .line 1894
    const-string v0, "Entering STATE_OFF but mEnabled is true; restarting."

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    new-instance v3, Ljava/util/HashSet;

    new-array v7, v7, [Ljava/lang/Integer;

    .line 1896
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v6

    .line 1895
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v3}, Lcom/android/server/BluetoothManagerService;->access$2400(Lcom/android/server/BluetoothManagerService;Ljava/util/Set;)Z

    .line 1897
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 1898
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1899
    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->access$2500(Lcom/android/server/BluetoothManagerService;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1902
    :cond_743
    if-eq v2, v12, :cond_749

    const/16 v3, 0xf

    if-ne v2, v3, :cond_912

    .line 1905
    :cond_749
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$4300(Lcom/android/server/BluetoothManagerService;)I

    move-result v0

    if-eqz v0, :cond_912

    .line 1906
    const-string v0, "bluetooth is recovered from error"

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v6}, Lcom/android/server/BluetoothManagerService;->access$4302(Lcom/android/server/BluetoothManagerService;I)I

    goto/16 :goto_912

    .line 1773
    :cond_75d
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 1775
    iget-object v1, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$3100(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1776
    goto/16 :goto_912

    .line 1767
    :cond_76c
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 1769
    iget-object v1, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$3100(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1770
    goto/16 :goto_912

    .line 1762
    :cond_77b
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/IBluetoothManagerCallback;

    .line 1763
    iget-object v1, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$3000(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1764
    goto/16 :goto_912

    .line 1757
    :cond_78a
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/IBluetoothManagerCallback;

    .line 1758
    iget-object v1, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$3000(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1759
    goto/16 :goto_912

    .line 1713
    :cond_799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MESSAGE_DISABLE: mBluetooth = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 1716
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1700(Lcom/android/server/BluetoothManagerService;)Z

    move-result v0

    if-eqz v0, :cond_82b

    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    if-eqz v0, :cond_82b

    .line 1717
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    new-instance v2, Ljava/util/HashSet;

    new-array v3, v7, [Ljava/lang/Integer;

    .line 1718
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 1717
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v2}, Lcom/android/server/BluetoothManagerService;->access$2400(Lcom/android/server/BluetoothManagerService;Ljava/util/Set;)Z

    .line 1719
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v6}, Lcom/android/server/BluetoothManagerService;->access$1702(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 1720
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2600(Lcom/android/server/BluetoothManagerService;)V

    .line 1721
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    new-instance v1, Ljava/util/HashSet;

    new-array v2, v9, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    .line 1722
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    .line 1723
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    const/4 v3, 0x3

    const/16 v4, 0xe

    .line 1724
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    .line 1725
    const/16 v4, 0xf

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0x10

    .line 1726
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1721
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$2400(Lcom/android/server/BluetoothManagerService;Ljava/util/Set;)Z

    goto/16 :goto_912

    .line 1728
    :cond_82b
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v6}, Lcom/android/server/BluetoothManagerService;->access$1702(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 1729
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2600(Lcom/android/server/BluetoothManagerService;)V

    .line 1731
    goto/16 :goto_912

    .line 1659
    :cond_837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MESSAGE_ENABLE("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): mBluetooth = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->removeMessages(I)V

    .line 1662
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v7}, Lcom/android/server/BluetoothManagerService;->access$1702(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 1666
    :try_start_869
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1667
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    if-eqz v0, :cond_8b5

    .line 1668
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v0

    .line 1669
    const/16 v3, 0xf

    if-ne v0, v3, :cond_8b5

    .line 1670
    const-string v0, "BT Enable in BLE_ON State, going to ON"

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->onLeServiceUp()V

    .line 1672
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v7}, Lcom/android/server/BluetoothManagerService;->access$2100(Lcom/android/server/BluetoothManagerService;I)V
    :try_end_89f
    .catch Landroid/os/RemoteException; {:try_start_869 .. :try_end_89f} :catch_8af
    .catchall {:try_start_869 .. :try_end_89f} :catchall_8ad

    .line 1679
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_912

    :catchall_8ad
    move-exception v0

    goto :goto_913

    .line 1676
    :catch_8af
    move-exception v0

    .line 1677
    :try_start_8b0
    const-string v3, ""

    invoke-static {v8, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8b5
    .catchall {:try_start_8b0 .. :try_end_8b5} :catchall_8ad

    .line 1679
    :cond_8b5
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1680
    nop

    .line 1682
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    iget v2, v2, Landroid/os/Message;->arg1:I

    if-ne v2, v7, :cond_8cb

    move v2, v7

    goto :goto_8cc

    :cond_8cb
    move v2, v6

    :goto_8cc
    invoke-static {v0, v2}, Lcom/android/server/BluetoothManagerService;->access$2202(Lcom/android/server/BluetoothManagerService;Z)Z

    .line 1683
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    if-nez v0, :cond_8e1

    .line 1684
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$2200(Lcom/android/server/BluetoothManagerService;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$2300(Lcom/android/server/BluetoothManagerService;Z)V

    goto :goto_912

    .line 1703
    :cond_8e1
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    new-instance v2, Ljava/util/HashSet;

    new-array v3, v7, [Ljava/lang/Integer;

    .line 1704
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v6

    .line 1703
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v2}, Lcom/android/server/BluetoothManagerService;->access$2400(Lcom/android/server/BluetoothManagerService;Ljava/util/Set;)Z

    .line 1705
    iget-object v0, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 1706
    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1707
    iget-object v2, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$200(Lcom/android/server/BluetoothManagerService;)Lcom/android/server/BluetoothManagerService$BluetoothHandler;

    move-result-object v2

    iget-object v1, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$2500(Lcom/android/server/BluetoothManagerService;)I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1709
    nop

    .line 2108
    :cond_912
    :goto_912
    return-void

    .line 1679
    :goto_913
    iget-object v1, v1, Lcom/android/server/BluetoothManagerService$BluetoothHandler;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0

    nop

    :pswitch_data_922
    .packed-switch 0x28
        :pswitch_18d  #00000028
        :pswitch_a0  #00000029
        :pswitch_54  #0000002a
    .end packed-switch
.end method
