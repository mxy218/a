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

    .line 308
    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-direct {p0}, Landroid/os/IThermalService$Stub;-><init>()V

    return-void
.end method

.method private dumpItemsLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "*>;)V"
        }
    .end annotation

    .line 467
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 470
    :cond_25
    return-void
.end method

.method private isCallerShell()Z
    .registers 3

    .line 506
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 507
    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_d

    if-nez v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    .line 474
    iget-object p1, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-virtual {p1}, Lcom/android/server/power/ThermalManagerService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/android/server/power/ThermalManagerService;->access$800()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 475
    return-void

    .line 477
    :cond_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 479
    :try_start_15
    iget-object p1, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {p1}, Lcom/android/server/power/ThermalManagerService;->access$000(Lcom/android/server/power/ThermalManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_f0

    .line 480
    :try_start_1c
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IsStatusOverride: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v2}, Lcom/android/server/power/ThermalManagerService;->access$900(Lcom/android/server/power/ThermalManagerService;)Z

    move-result v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 481
    const-string p3, "ThermalEventListeners:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 482
    iget-object p3, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {p3}, Lcom/android/server/power/ThermalManagerService;->access$100(Lcom/android/server/power/ThermalManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object p3

    const-string v2, "\t"

    invoke-virtual {p3, p2, v2}, Landroid/os/RemoteCallbackList;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 483
    const-string p3, "ThermalStatusListeners:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 484
    iget-object p3, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {p3}, Lcom/android/server/power/ThermalManagerService;->access$500(Lcom/android/server/power/ThermalManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object p3

    const-string v2, "\t"

    invoke-virtual {p3, p2, v2}, Landroid/os/RemoteCallbackList;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 485
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thermal Status: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v2}, Lcom/android/server/power/ThermalManagerService;->access$700(Lcom/android/server/power/ThermalManagerService;)I

    move-result v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 486
    const-string p3, "Cached temperatures:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 487
    const-string p3, "\t"

    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v2}, Lcom/android/server/power/ThermalManagerService;->access$1000(Lcom/android/server/power/ThermalManagerService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {p0, p2, p3, v2}, Lcom/android/server/power/ThermalManagerService$1;->dumpItemsLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/Collection;)V

    .line 488
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HAL Ready: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v2}, Lcom/android/server/power/ThermalManagerService;->access$300(Lcom/android/server/power/ThermalManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 489
    iget-object p3, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {p3}, Lcom/android/server/power/ThermalManagerService;->access$300(Lcom/android/server/power/ThermalManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p3

    if-eqz p3, :cond_e7

    .line 490
    const-string p3, "HAL connection:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 491
    iget-object p3, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {p3}, Lcom/android/server/power/ThermalManagerService;->access$400(Lcom/android/server/power/ThermalManagerService;)Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    move-result-object p3

    const-string v2, "\t"

    invoke-virtual {p3, p2, v2}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 492
    const-string p3, "Current temperatures from HAL:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 493
    const-string p3, "\t"

    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    .line 494
    invoke-static {v2}, Lcom/android/server/power/ThermalManagerService;->access$400(Lcom/android/server/power/ThermalManagerService;)Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->getCurrentTemperatures(ZI)Ljava/util/List;

    move-result-object v2

    .line 493
    invoke-direct {p0, p2, p3, v2}, Lcom/android/server/power/ThermalManagerService$1;->dumpItemsLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/Collection;)V

    .line 495
    const-string p3, "Current cooling devices from HAL:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 496
    const-string p3, "\t"

    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    .line 497
    invoke-static {v2}, Lcom/android/server/power/ThermalManagerService;->access$400(Lcom/android/server/power/ThermalManagerService;)Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->getCurrentCoolingDevices(ZI)Ljava/util/List;

    move-result-object v2

    .line 496
    invoke-direct {p0, p2, p3, v2}, Lcom/android/server/power/ThermalManagerService$1;->dumpItemsLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/Collection;)V

    .line 499
    :cond_e7
    monitor-exit p1
    :try_end_e8
    .catchall {:try_start_1c .. :try_end_e8} :catchall_ed

    .line 501
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 502
    nop

    .line 503
    return-void

    .line 499
    :catchall_ed
    move-exception p2

    :try_start_ee
    monitor-exit p1
    :try_end_ef
    .catchall {:try_start_ee .. :try_end_ef} :catchall_ed

    :try_start_ef
    throw p2
    :try_end_f0
    .catchall {:try_start_ef .. :try_end_f0} :catchall_f0

    .line 501
    :catchall_f0
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
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

    .line 437
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-virtual {v0}, Lcom/android/server/power/ThermalManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 441
    :try_start_10
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v2}, Lcom/android/server/power/ThermalManagerService;->access$300(Lcom/android/server/power/ThermalManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_25

    .line 442
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_34

    .line 446
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 442
    return-object v2

    .line 444
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

    .line 446
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 444
    return-object v2

    .line 446
    :catchall_34
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getCurrentCoolingDevicesWithType(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/os/CoolingDevice;",
            ">;"
        }
    .end annotation

    .line 452
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-virtual {v0}, Lcom/android/server/power/ThermalManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 456
    :try_start_10
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v2}, Lcom/android/server/power/ThermalManagerService;->access$300(Lcom/android/server/power/ThermalManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_25

    .line 457
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_34

    .line 461
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 457
    return-object p1

    .line 459
    :cond_25
    :try_start_25
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v2}, Lcom/android/server/power/ThermalManagerService;->access$400(Lcom/android/server/power/ThermalManagerService;)Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->getCurrentCoolingDevices(ZI)Ljava/util/List;

    move-result-object p1
    :try_end_30
    .catchall {:try_start_25 .. :try_end_30} :catchall_34

    .line 461
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 459
    return-object p1

    .line 461
    :catchall_34
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
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

    .line 364
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-virtual {v0}, Lcom/android/server/power/ThermalManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 368
    :try_start_10
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v2}, Lcom/android/server/power/ThermalManagerService;->access$300(Lcom/android/server/power/ThermalManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_25

    .line 369
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_34

    .line 373
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 369
    return-object v2

    .line 371
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

    .line 373
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 371
    return-object v2

    .line 373
    :catchall_34
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getCurrentTemperaturesWithType(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/os/Temperature;",
            ">;"
        }
    .end annotation

    .line 379
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-virtual {v0}, Lcom/android/server/power/ThermalManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 383
    :try_start_10
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v2}, Lcom/android/server/power/ThermalManagerService;->access$300(Lcom/android/server/power/ThermalManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_25

    .line 384
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_34

    .line 388
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 384
    return-object p1

    .line 386
    :cond_25
    :try_start_25
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v2}, Lcom/android/server/power/ThermalManagerService;->access$400(Lcom/android/server/power/ThermalManagerService;)Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->getCurrentTemperatures(ZI)Ljava/util/List;

    move-result-object p1
    :try_end_30
    .catchall {:try_start_25 .. :try_end_30} :catchall_34

    .line 388
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 386
    return-object p1

    .line 388
    :catchall_34
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public getCurrentThermalStatus()I
    .registers 5

    .line 424
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v0}, Lcom/android/server/power/ThermalManagerService;->access$000(Lcom/android/server/power/ThermalManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 425
    :try_start_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_29

    .line 427
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

    .line 428
    :cond_1e
    const/4 v3, 0x0

    .line 430
    :goto_1f
    :try_start_1f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    .line 427
    return v3

    .line 430
    :catchall_24
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 432
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_1f .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 514
    invoke-direct {p0}, Lcom/android/server/power/ThermalManagerService$1;->isCallerShell()Z

    move-result v0

    if-nez v0, :cond_10

    .line 515
    invoke-static {}, Lcom/android/server/power/ThermalManagerService;->access$800()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Only shell is allowed to call thermalservice shell commands"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    return-void

    .line 518
    :cond_10
    new-instance v0, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;

    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;-><init>(Lcom/android/server/power/ThermalManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 520
    return-void
.end method

.method public registerThermalEventListener(Landroid/os/IThermalEventListener;)Z
    .registers 7

    .line 311
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-virtual {v0}, Lcom/android/server/power/ThermalManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v0}, Lcom/android/server/power/ThermalManagerService;->access$000(Lcom/android/server/power/ThermalManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 314
    :try_start_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_39

    .line 316
    :try_start_17
    iget-object v4, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v4}, Lcom/android/server/power/ThermalManagerService;->access$100(Lcom/android/server/power/ThermalManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4, p1, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    move-result v4
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_34

    if-nez v4, :cond_29

    .line 317
    const/4 p1, 0x0

    .line 323
    :try_start_24
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_39

    .line 317
    return p1

    .line 320
    :cond_29
    :try_start_29
    iget-object v4, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v4, p1, v1}, Lcom/android/server/power/ThermalManagerService;->access$200(Lcom/android/server/power/ThermalManagerService;Landroid/os/IThermalEventListener;Ljava/lang/Integer;)V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_34

    .line 321
    const/4 p1, 0x1

    .line 323
    :try_start_2f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    .line 321
    return p1

    .line 323
    :catchall_34
    move-exception p1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 325
    :catchall_39
    move-exception p1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_2f .. :try_end_3b} :catchall_39

    throw p1
.end method

.method public registerThermalEventListenerWithType(Landroid/os/IThermalEventListener;I)Z
    .registers 8

    .line 331
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-virtual {v0}, Lcom/android/server/power/ThermalManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v0}, Lcom/android/server/power/ThermalManagerService;->access$000(Lcom/android/server/power/ThermalManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 334
    :try_start_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_43

    .line 336
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

    .line 337
    const/4 p1, 0x0

    .line 343
    :try_start_29
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_43

    .line 337
    return p1

    .line 340
    :cond_2e
    :try_start_2e
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-static {v3, p1, v4}, Lcom/android/server/power/ThermalManagerService;->access$200(Lcom/android/server/power/ThermalManagerService;Landroid/os/IThermalEventListener;Ljava/lang/Integer;)V
    :try_end_38
    .catchall {:try_start_2e .. :try_end_38} :catchall_3e

    .line 341
    const/4 p1, 0x1

    .line 343
    :try_start_39
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    .line 341
    return p1

    .line 343
    :catchall_3e
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 345
    :catchall_43
    move-exception p1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_39 .. :try_end_45} :catchall_43

    throw p1
.end method

.method public registerThermalStatusListener(Landroid/os/IThermalStatusListener;)Z
    .registers 6

    .line 394
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v0}, Lcom/android/server/power/ThermalManagerService;->access$000(Lcom/android/server/power/ThermalManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 396
    :try_start_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_2d

    .line 398
    :try_start_b
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v3}, Lcom/android/server/power/ThermalManagerService;->access$500(Lcom/android/server/power/ThermalManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v3
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_28

    if-nez v3, :cond_1d

    .line 399
    const/4 p1, 0x0

    .line 405
    :try_start_18
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_2d

    .line 399
    return p1

    .line 402
    :cond_1d
    :try_start_1d
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v3, p1}, Lcom/android/server/power/ThermalManagerService;->access$600(Lcom/android/server/power/ThermalManagerService;Landroid/os/IThermalStatusListener;)V
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_28

    .line 403
    const/4 p1, 0x1

    .line 405
    :try_start_23
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    .line 403
    return p1

    .line 405
    :catchall_28
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 407
    :catchall_2d
    move-exception p1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_23 .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method public unregisterThermalEventListener(Landroid/os/IThermalEventListener;)Z
    .registers 6

    .line 350
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-virtual {v0}, Lcom/android/server/power/ThermalManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v0}, Lcom/android/server/power/ThermalManagerService;->access$000(Lcom/android/server/power/ThermalManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 353
    :try_start_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_2b

    .line 355
    :try_start_17
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v3}, Lcom/android/server/power/ThermalManagerService;->access$100(Lcom/android/server/power/ThermalManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result p1
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_26

    .line 357
    :try_start_21
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    .line 355
    return p1

    .line 357
    :catchall_26
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 359
    :catchall_2b
    move-exception p1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_21 .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method public unregisterThermalStatusListener(Landroid/os/IThermalStatusListener;)Z
    .registers 6

    .line 412
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v0}, Lcom/android/server/power/ThermalManagerService;->access$000(Lcom/android/server/power/ThermalManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 413
    :try_start_7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_1f

    .line 415
    :try_start_b
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$1;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v3}, Lcom/android/server/power/ThermalManagerService;->access$500(Lcom/android/server/power/ThermalManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result p1
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_1a

    .line 417
    :try_start_15
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    .line 415
    return p1

    .line 417
    :catchall_1a
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 419
    :catchall_1f
    move-exception p1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_1f

    throw p1
.end method
