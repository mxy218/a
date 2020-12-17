.class Lcom/android/server/power/ThermalManagerService$1;
.super Landroid/os/IThermalService$Stub;
.source "ThermalManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ThermalManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ThermalManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/ThermalManagerService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/power/ThermalManagerService;

    .line 304
    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-direct {p0}, Landroid/os/IThermalService$Stub;-><init>()V

    return-void
.end method

.method private dumpItemsLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/Collection;)V
    .registers 7
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "*>;)V"
        }
    .end annotation

    .line 463
    .local p3, "items":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 466
    .end local v0  # "iterator":Ljava/util/Iterator;
    :cond_25
    return-void
.end method

.method private isCallerShell()Z
    .registers 3

    .line 502
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 503
    .local v0, "callingUid":I
    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_d

    if-nez v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v1, 0x1

    :goto_e
    return v1
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 470
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-virtual {v0}, Lcom/android/server/power/ThermalManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/server/power/ThermalManagerService;->access$800()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 471
    return-void

    .line 473
    :cond_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 475
    .local v0, "token":J
    :try_start_15
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v2}, Lcom/android/server/power/ThermalManagerService;->access$000(Lcom/android/server/power/ThermalManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_f0

    .line 476
    :try_start_1c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IsStatusOverride: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v4}, Lcom/android/server/power/ThermalManagerService;->access$900(Lcom/android/server/power/ThermalManagerService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 477
    const-string v3, "ThermalEventListeners:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 478
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v3}, Lcom/android/server/power/ThermalManagerService;->access$100(Lcom/android/server/power/ThermalManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    const-string v4, "\t"

    invoke-virtual {v3, p2, v4}, Landroid/os/RemoteCallbackList;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 479
    const-string v3, "ThermalStatusListeners:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 480
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v3}, Lcom/android/server/power/ThermalManagerService;->access$500(Lcom/android/server/power/ThermalManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    const-string v4, "\t"

    invoke-virtual {v3, p2, v4}, Landroid/os/RemoteCallbackList;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 481
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thermal Status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v4}, Lcom/android/server/power/ThermalManagerService;->access$700(Lcom/android/server/power/ThermalManagerService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 482
    const-string v3, "Cached temperatures:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 483
    const-string v3, "\t"

    iget-object v4, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v4}, Lcom/android/server/power/ThermalManagerService;->access$1000(Lcom/android/server/power/ThermalManagerService;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {p0, p2, v3, v4}, Lcom/android/server/power/ThermalManagerService$1;->dumpItemsLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/Collection;)V

    .line 484
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HAL Ready: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v4}, Lcom/android/server/power/ThermalManagerService;->access$300(Lcom/android/server/power/ThermalManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 485
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v3}, Lcom/android/server/power/ThermalManagerService;->access$300(Lcom/android/server/power/ThermalManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_e7

    .line 486
    const-string v3, "HAL connection:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 487
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v3}, Lcom/android/server/power/ThermalManagerService;->access$400(Lcom/android/server/power/ThermalManagerService;)Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    move-result-object v3

    const-string v4, "\t"

    invoke-virtual {v3, p2, v4}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 488
    const-string v3, "Current temperatures from HAL:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 489
    const-string v3, "\t"

    iget-object v4, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    .line 490
    invoke-static {v4}, Lcom/android/server/power/ThermalManagerService;->access$400(Lcom/android/server/power/ThermalManagerService;)Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->getCurrentTemperatures(ZI)Ljava/util/List;

    move-result-object v4

    .line 489
    invoke-direct {p0, p2, v3, v4}, Lcom/android/server/power/ThermalManagerService$1;->dumpItemsLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/Collection;)V

    .line 491
    const-string v3, "Current cooling devices from HAL:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 492
    const-string v3, "\t"

    iget-object v4, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    .line 493
    invoke-static {v4}, Lcom/android/server/power/ThermalManagerService;->access$400(Lcom/android/server/power/ThermalManagerService;)Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    move-result-object v4

    invoke-virtual {v4, v5, v5}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->getCurrentCoolingDevices(ZI)Ljava/util/List;

    move-result-object v4

    .line 492
    invoke-direct {p0, p2, v3, v4}, Lcom/android/server/power/ThermalManagerService$1;->dumpItemsLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/Collection;)V

    .line 495
    :cond_e7
    monitor-exit v2
    :try_end_e8
    .catchall {:try_start_1c .. :try_end_e8} :catchall_ed

    .line 497
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 498
    nop

    .line 499
    return-void

    .line 495
    :catchall_ed
    move-exception v3

    :try_start_ee
    monitor-exit v2
    :try_end_ef
    .catchall {:try_start_ee .. :try_end_ef} :catchall_ed

    .end local v0  # "token":J
    .end local p0  # "this":Lcom/android/server/power/ThermalManagerService$1;
    .end local p1  # "fd":Ljava/io/FileDescriptor;
    .end local p2  # "pw":Ljava/io/PrintWriter;
    .end local p3  # "args":[Ljava/lang/String;
    :try_start_ef
    throw v3
    :try_end_f0
    .catchall {:try_start_ef .. :try_end_f0} :catchall_f0

    .line 497
    .restart local v0  # "token":J
    .restart local p0  # "this":Lcom/android/server/power/ThermalManagerService$1;
    .restart local p1  # "fd":Ljava/io/FileDescriptor;
    .restart local p2  # "pw":Ljava/io/PrintWriter;
    .restart local p3  # "args":[Ljava/lang/String;
    :catchall_f0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getCurrentCoolingDevices()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/CoolingDevice;",
            ">;"
        }
    .end annotation

    .line 433
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-virtual {v0}, Lcom/android/server/power/ThermalManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 437
    .local v0, "token":J
    :try_start_10
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v2}, Lcom/android/server/power/ThermalManagerService;->access$300(Lcom/android/server/power/ThermalManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_25

    .line 438
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_34

    .line 442
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 438
    return-object v2

    .line 440
    :cond_25
    :try_start_25
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v2}, Lcom/android/server/power/ThermalManagerService;->access$400(Lcom/android/server/power/ThermalManagerService;)Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->getCurrentCoolingDevices(ZI)Ljava/util/List;

    move-result-object v2
    :try_end_30
    .catchall {:try_start_25 .. :try_end_30} :catchall_34

    .line 442
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 440
    return-object v2

    .line 442
    :catchall_34
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getCurrentCoolingDevicesWithType(I)Ljava/util/List;
    .registers 6
    .param p1, "type"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/os/CoolingDevice;",
            ">;"
        }
    .end annotation

    .line 448
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-virtual {v0}, Lcom/android/server/power/ThermalManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 452
    .local v0, "token":J
    :try_start_10
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v2}, Lcom/android/server/power/ThermalManagerService;->access$300(Lcom/android/server/power/ThermalManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_25

    .line 453
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_34

    .line 457
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 453
    return-object v2

    .line 455
    :cond_25
    :try_start_25
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v2}, Lcom/android/server/power/ThermalManagerService;->access$400(Lcom/android/server/power/ThermalManagerService;)Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->getCurrentCoolingDevices(ZI)Ljava/util/List;

    move-result-object v2
    :try_end_30
    .catchall {:try_start_25 .. :try_end_30} :catchall_34

    .line 457
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 455
    return-object v2

    .line 457
    :catchall_34
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getCurrentTemperatures()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/Temperature;",
            ">;"
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-virtual {v0}, Lcom/android/server/power/ThermalManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 364
    .local v0, "token":J
    :try_start_10
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v2}, Lcom/android/server/power/ThermalManagerService;->access$300(Lcom/android/server/power/ThermalManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_25

    .line 365
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_34

    .line 369
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 365
    return-object v2

    .line 367
    :cond_25
    :try_start_25
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v2}, Lcom/android/server/power/ThermalManagerService;->access$400(Lcom/android/server/power/ThermalManagerService;)Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->getCurrentTemperatures(ZI)Ljava/util/List;

    move-result-object v2
    :try_end_30
    .catchall {:try_start_25 .. :try_end_30} :catchall_34

    .line 369
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 367
    return-object v2

    .line 369
    :catchall_34
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getCurrentTemperaturesWithType(I)Ljava/util/List;
    .registers 6
    .param p1, "type"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/os/Temperature;",
            ">;"
        }
    .end annotation

    .line 375
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-virtual {v0}, Lcom/android/server/power/ThermalManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 379
    .local v0, "token":J
    :try_start_10
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v2}, Lcom/android/server/power/ThermalManagerService;->access$300(Lcom/android/server/power/ThermalManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_25

    .line 380
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_34

    .line 384
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 380
    return-object v2

    .line 382
    :cond_25
    :try_start_25
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v2}, Lcom/android/server/power/ThermalManagerService;->access$400(Lcom/android/server/power/ThermalManagerService;)Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->getCurrentTemperatures(ZI)Ljava/util/List;

    move-result-object v2
    :try_end_30
    .catchall {:try_start_25 .. :try_end_30} :catchall_34

    .line 384
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 382
    return-object v2

    .line 384
    :catchall_34
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getCurrentThermalStatus()I
    .registers 5

    .line 420
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v0}, Lcom/android/server/power/ThermalManagerService;->access$000(Lcom/android/server/power/ThermalManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 421
    :try_start_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_29

    .line 423
    .local v1, "token":J
    :try_start_b
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v3}, Lcom/android/server/power/ThermalManagerService;->access$700(Lcom/android/server/power/ThermalManagerService;)I

    move-result v3

    invoke-static {v3}, Landroid/os/Temperature;->isValidStatus(I)Z

    move-result v3

    if-eqz v3, :cond_1e

    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v3}, Lcom/android/server/power/ThermalManagerService;->access$700(Lcom/android/server/power/ThermalManagerService;)I

    move-result v3
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_24

    goto :goto_1f

    .line 424
    :cond_1e
    const/4 v3, 0x0

    .line 426
    :goto_1f
    :try_start_1f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    .line 423
    return v3

    .line 426
    :catchall_24
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/power/ThermalManagerService$1;
    throw v3

    .line 428
    .end local v1  # "token":J
    .restart local p0  # "this":Lcom/android/server/power/ThermalManagerService$1;
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_1f .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 17
    .param p1, "in"  # Ljava/io/FileDescriptor;
    .param p2, "out"  # Ljava/io/FileDescriptor;
    .param p3, "err"  # Ljava/io/FileDescriptor;
    .param p4, "args"  # [Ljava/lang/String;
    .param p5, "callback"  # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"  # Landroid/os/ResultReceiver;

    .line 510
    invoke-direct {p0}, Lcom/android/server/power/ThermalManagerService$1;->isCallerShell()Z

    move-result v0

    if-nez v0, :cond_10

    .line 511
    invoke-static {}, Lcom/android/server/power/ThermalManagerService;->access$800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Only shell is allowed to call thermalservice shell commands"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    return-void

    .line 514
    :cond_10
    new-instance v2, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;

    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-direct {v2, v1}, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;-><init>(Lcom/android/server/power/ThermalManagerService;)V

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 516
    return-void
.end method

.method public registerThermalEventListener(Landroid/os/IThermalEventListener;)Z
    .registers 7
    .param p1, "listener"  # Landroid/os/IThermalEventListener;

    .line 307
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-virtual {v0}, Lcom/android/server/power/ThermalManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v0}, Lcom/android/server/power/ThermalManagerService;->access$000(Lcom/android/server/power/ThermalManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 310
    :try_start_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_39

    .line 312
    .local v2, "token":J
    :try_start_17
    iget-object v4, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v4}, Lcom/android/server/power/ThermalManagerService;->access$100(Lcom/android/server/power/ThermalManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4, p1, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    move-result v4
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_34

    if-nez v4, :cond_29

    .line 313
    const/4 v1, 0x0

    .line 319
    :try_start_24
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_39

    .line 313
    return v1

    .line 316
    :cond_29
    :try_start_29
    iget-object v4, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v4, p1, v1}, Lcom/android/server/power/ThermalManagerService;->access$200(Lcom/android/server/power/ThermalManagerService;Landroid/os/IThermalEventListener;Ljava/lang/Integer;)V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_34

    .line 317
    const/4 v1, 0x1

    .line 319
    :try_start_2f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    .line 317
    return v1

    .line 319
    :catchall_34
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/power/ThermalManagerService$1;
    .end local p1  # "listener":Landroid/os/IThermalEventListener;
    throw v1

    .line 321
    .end local v2  # "token":J
    .restart local p0  # "this":Lcom/android/server/power/ThermalManagerService$1;
    .restart local p1  # "listener":Landroid/os/IThermalEventListener;
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_2f .. :try_end_3b} :catchall_39

    throw v1
.end method

.method public registerThermalEventListenerWithType(Landroid/os/IThermalEventListener;I)Z
    .registers 8
    .param p1, "listener"  # Landroid/os/IThermalEventListener;
    .param p2, "type"  # I

    .line 327
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-virtual {v0}, Lcom/android/server/power/ThermalManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v0}, Lcom/android/server/power/ThermalManagerService;->access$000(Lcom/android/server/power/ThermalManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 330
    :try_start_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_43

    .line 332
    .local v1, "token":J
    :try_start_17
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v3}, Lcom/android/server/power/ThermalManagerService;->access$100(Lcom/android/server/power/ThermalManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, p1, v4}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    move-result v3
    :try_end_26
    .catchall {:try_start_17 .. :try_end_26} :catchall_3e

    if-nez v3, :cond_2e

    .line 333
    const/4 v3, 0x0

    .line 339
    :try_start_29
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_43

    .line 333
    return v3

    .line 336
    :cond_2e
    :try_start_2e
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v3, p1, v4}, Lcom/android/server/power/ThermalManagerService;->access$200(Lcom/android/server/power/ThermalManagerService;Landroid/os/IThermalEventListener;Ljava/lang/Integer;)V
    :try_end_38
    .catchall {:try_start_2e .. :try_end_38} :catchall_3e

    .line 337
    const/4 v3, 0x1

    .line 339
    :try_start_39
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    .line 337
    return v3

    .line 339
    :catchall_3e
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/power/ThermalManagerService$1;
    .end local p1  # "listener":Landroid/os/IThermalEventListener;
    .end local p2  # "type":I
    throw v3

    .line 341
    .end local v1  # "token":J
    .restart local p0  # "this":Lcom/android/server/power/ThermalManagerService$1;
    .restart local p1  # "listener":Landroid/os/IThermalEventListener;
    .restart local p2  # "type":I
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_39 .. :try_end_45} :catchall_43

    throw v1
.end method

.method public registerThermalStatusListener(Landroid/os/IThermalStatusListener;)Z
    .registers 6
    .param p1, "listener"  # Landroid/os/IThermalStatusListener;

    .line 390
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v0}, Lcom/android/server/power/ThermalManagerService;->access$000(Lcom/android/server/power/ThermalManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 392
    :try_start_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_2d

    .line 394
    .local v1, "token":J
    :try_start_b
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v3}, Lcom/android/server/power/ThermalManagerService;->access$500(Lcom/android/server/power/ThermalManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v3
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_28

    if-nez v3, :cond_1d

    .line 395
    const/4 v3, 0x0

    .line 401
    :try_start_18
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_2d

    .line 395
    return v3

    .line 398
    :cond_1d
    :try_start_1d
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v3, p1}, Lcom/android/server/power/ThermalManagerService;->access$600(Lcom/android/server/power/ThermalManagerService;Landroid/os/IThermalStatusListener;)V
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_28

    .line 399
    const/4 v3, 0x1

    .line 401
    :try_start_23
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    .line 399
    return v3

    .line 401
    :catchall_28
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/power/ThermalManagerService$1;
    .end local p1  # "listener":Landroid/os/IThermalStatusListener;
    throw v3

    .line 403
    .end local v1  # "token":J
    .restart local p0  # "this":Lcom/android/server/power/ThermalManagerService$1;
    .restart local p1  # "listener":Landroid/os/IThermalStatusListener;
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_23 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public unregisterThermalEventListener(Landroid/os/IThermalEventListener;)Z
    .registers 6
    .param p1, "listener"  # Landroid/os/IThermalEventListener;

    .line 346
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-virtual {v0}, Lcom/android/server/power/ThermalManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v0}, Lcom/android/server/power/ThermalManagerService;->access$000(Lcom/android/server/power/ThermalManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 349
    :try_start_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_2b

    .line 351
    .local v1, "token":J
    :try_start_17
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v3}, Lcom/android/server/power/ThermalManagerService;->access$100(Lcom/android/server/power/ThermalManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v3
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_26

    .line 353
    :try_start_21
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    .line 351
    return v3

    .line 353
    :catchall_26
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/power/ThermalManagerService$1;
    .end local p1  # "listener":Landroid/os/IThermalEventListener;
    throw v3

    .line 355
    .end local v1  # "token":J
    .restart local p0  # "this":Lcom/android/server/power/ThermalManagerService$1;
    .restart local p1  # "listener":Landroid/os/IThermalEventListener;
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_21 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public unregisterThermalStatusListener(Landroid/os/IThermalStatusListener;)Z
    .registers 6
    .param p1, "listener"  # Landroid/os/IThermalStatusListener;

    .line 408
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v0}, Lcom/android/server/power/ThermalManagerService;->access$000(Lcom/android/server/power/ThermalManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 409
    :try_start_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_1f

    .line 411
    .local v1, "token":J
    :try_start_b
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v3}, Lcom/android/server/power/ThermalManagerService;->access$500(Lcom/android/server/power/ThermalManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v3
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_1a

    .line 413
    :try_start_15
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    .line 411
    return v3

    .line 413
    :catchall_1a
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/power/ThermalManagerService$1;
    .end local p1  # "listener":Landroid/os/IThermalStatusListener;
    throw v3

    .line 415
    .end local v1  # "token":J
    .restart local p0  # "this":Lcom/android/server/power/ThermalManagerService$1;
    .restart local p1  # "listener":Landroid/os/IThermalStatusListener;
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_1f

    throw v1
.end method
