.class Lcom/android/server/BluetoothManagerService$3;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/server/BluetoothManagerService;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/BluetoothManagerService;
    .param p2, "x0"  # Landroid/os/Handler;

    .line 314
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 7
    .param p1, "unused"  # Z

    .line 317
    monitor-enter p0

    .line 320
    :try_start_1
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 321
    const-string v0, "BluetoothManagerService"

    const-string/jumbo v1, "isProductInternational true"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 322
    :cond_10
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$600(Lcom/android/server/BluetoothManagerService;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$700(Lcom/android/server/BluetoothManagerService;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 323
    const-string v0, "BluetoothManagerService"

    const-string/jumbo v1, "return for Last UserActionOn In AirPlane, don\'t turn off bt"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    monitor-exit p0

    return-void

    .line 327
    :cond_2a
    :goto_2a
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$800(Lcom/android/server/BluetoothManagerService;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_47

    .line 328
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$600(Lcom/android/server/BluetoothManagerService;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 329
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0, v1}, Lcom/android/server/BluetoothManagerService;->access$900(Lcom/android/server/BluetoothManagerService;I)V

    goto :goto_47

    .line 331
    :cond_41
    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/server/BluetoothManagerService;->access$900(Lcom/android/server/BluetoothManagerService;I)V
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_17a

    .line 335
    :cond_47
    :goto_47
    const/16 v0, 0xa

    .line 337
    .local v0, "st":I
    :try_start_49
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 338
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v2

    if-eqz v2, :cond_69

    .line 339
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v2

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v2
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_68} :catch_155
    .catchall {:try_start_49 .. :try_end_68} :catchall_153

    move v0, v2

    .line 345
    :cond_69
    :try_start_69
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 346
    nop

    .line 348
    const-string v2, "BluetoothManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Airplane Mode change - current state:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", isAirplaneModeOn()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 350
    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->access$600(Lcom/android/server/BluetoothManagerService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 348
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$600(Lcom/android/server/BluetoothManagerService;)Z

    move-result v2

    const/16 v3, 0xc

    if-eqz v2, :cond_12a

    .line 354
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$1200(Lcom/android/server/BluetoothManagerService;)V
    :try_end_ae
    .catchall {:try_start_69 .. :try_end_ae} :catchall_17a

    .line 357
    const/16 v2, 0xf

    if-ne v0, v2, :cond_118

    .line 359
    :try_start_b2
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 360
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v2

    if-eqz v2, :cond_e5

    .line 361
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 363
    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$400(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 361
    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4}, Lcom/android/server/BluetoothManagerService;->access$1300(Lcom/android/server/BluetoothManagerService;ILjava/lang/String;Z)V

    .line 364
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$1100(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v1

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->onBrEdrDown()V

    .line 365
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v1, v4}, Lcom/android/server/BluetoothManagerService;->access$1402(Lcom/android/server/BluetoothManagerService;Z)Z
    :try_end_e5
    .catch Landroid/os/RemoteException; {:try_start_b2 .. :try_end_e5} :catch_f2
    .catchall {:try_start_b2 .. :try_end_e5} :catchall_f0

    .line 370
    :cond_e5
    :try_start_e5
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1
    :try_end_ef
    .catchall {:try_start_e5 .. :try_end_ef} :catchall_17a

    goto :goto_105

    :catchall_f0
    move-exception v1

    goto :goto_10a

    .line 367
    :catch_f2
    move-exception v1

    .line 368
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_f3
    const-string v2, "BluetoothManagerService"

    const-string v3, "Unable to call onBrEdrDown"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_fa
    .catchall {:try_start_f3 .. :try_end_fa} :catchall_f0

    .line 370
    nop

    .end local v1  # "e":Landroid/os/RemoteException;
    :try_start_fb
    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    :goto_105
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 371
    nop

    .line 370
    goto :goto_151

    :goto_10a
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .end local p0  # "this":Lcom/android/server/BluetoothManagerService$3;
    .end local p1  # "unused":Z
    throw v1

    .line 372
    .restart local p0  # "this":Lcom/android/server/BluetoothManagerService$3;
    .restart local p1  # "unused":Z
    :cond_118
    if-ne v0, v3, :cond_151

    .line 373
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 374
    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$400(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 373
    invoke-static {v2, v1, v3}, Lcom/android/server/BluetoothManagerService;->access$500(Lcom/android/server/BluetoothManagerService;ILjava/lang/String;)V

    goto :goto_151

    .line 376
    :cond_12a
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$1500(Lcom/android/server/BluetoothManagerService;)Z

    move-result v2

    if-eqz v2, :cond_151

    .line 377
    if-eq v0, v3, :cond_151

    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$800(Lcom/android/server/BluetoothManagerService;)Z

    move-result v2

    if-eqz v2, :cond_151

    .line 378
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    iget-object v3, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v3}, Lcom/android/server/BluetoothManagerService;->access$1600(Lcom/android/server/BluetoothManagerService;)Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    .line 380
    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->access$400(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 378
    invoke-static {v2, v3, v1, v4}, Lcom/android/server/BluetoothManagerService;->access$1700(Lcom/android/server/BluetoothManagerService;ZILjava/lang/String;)V

    .line 383
    .end local v0  # "st":I
    :cond_151
    :goto_151
    monitor-exit p0
    :try_end_152
    .catchall {:try_start_fb .. :try_end_152} :catchall_17a

    .line 384
    return-void

    .line 345
    .restart local v0  # "st":I
    :catchall_153
    move-exception v1

    goto :goto_16c

    .line 341
    :catch_155
    move-exception v1

    .line 342
    .restart local v1  # "e":Landroid/os/RemoteException;
    :try_start_156
    const-string v2, "BluetoothManagerService"

    const-string v3, "Unable to call getState"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15d
    .catchall {:try_start_156 .. :try_end_15d} :catchall_153

    .line 345
    :try_start_15d
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    monitor-exit p0

    .line 343
    return-void

    .line 345
    .end local v1  # "e":Landroid/os/RemoteException;
    :goto_16c
    iget-object v2, p0, Lcom/android/server/BluetoothManagerService$3;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v2}, Lcom/android/server/BluetoothManagerService;->access$1000(Lcom/android/server/BluetoothManagerService;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .end local p0  # "this":Lcom/android/server/BluetoothManagerService$3;
    .end local p1  # "unused":Z
    throw v1

    .line 383
    .end local v0  # "st":I
    .restart local p0  # "this":Lcom/android/server/BluetoothManagerService$3;
    .restart local p1  # "unused":Z
    :catchall_17a
    move-exception v0

    monitor-exit p0
    :try_end_17c
    .catchall {:try_start_15d .. :try_end_17c} :catchall_17a

    throw v0
.end method
