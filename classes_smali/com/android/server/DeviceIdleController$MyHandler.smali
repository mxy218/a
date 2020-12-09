.class final Lcom/android/server/DeviceIdleController$MyHandler;
.super Landroid/os/Handler;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceIdleController;Landroid/os/Looper;)V
    .registers 3

    .line 1405
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 1406
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1407
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12

    .line 1411
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_244

    goto/16 :goto_242

    .line 1540
    :pswitch_a  #0xd
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/DeviceIdleController$StationaryListener;

    .line 1543
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v0

    .line 1544
    :try_start_11
    iget-object v2, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->access$1400(Lcom/android/server/DeviceIdleController;)Z

    move-result v2

    .line 1545
    if-nez p1, :cond_32

    .line 1547
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->access$1500(Lcom/android/server/DeviceIdleController;)Landroid/util/ArraySet;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 1548
    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->access$1500(Lcom/android/server/DeviceIdleController;)Landroid/util/ArraySet;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    new-array v4, v4, [Lcom/android/server/DeviceIdleController$StationaryListener;

    .line 1547
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/DeviceIdleController$StationaryListener;

    goto :goto_33

    .line 1550
    :cond_32
    nop

    .line 1552
    :goto_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_11 .. :try_end_34} :catchall_48

    .line 1553
    if-eqz v1, :cond_41

    .line 1554
    array-length v0, v1

    :goto_37
    if-ge v3, v0, :cond_41

    aget-object v4, v1, v3

    .line 1555
    invoke-interface {v4, v2}, Lcom/android/server/DeviceIdleController$StationaryListener;->onDeviceStationaryChanged(Z)V

    .line 1554
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .line 1558
    :cond_41
    if-eqz p1, :cond_242

    .line 1559
    invoke-interface {p1, v2}, Lcom/android/server/DeviceIdleController$StationaryListener;->onDeviceStationaryChanged(Z)V

    goto/16 :goto_242

    .line 1552
    :catchall_48
    move-exception p1

    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw p1

    .line 1536
    :pswitch_4b  #0xc
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p1}, Lcom/android/server/DeviceIdleController;->updatePreIdleFactor()V

    .line 1537
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p1}, Lcom/android/server/DeviceIdleController;->maybeDoImmediateMaintenance()V

    .line 1538
    goto/16 :goto_242

    .line 1533
    :pswitch_57  #0xb
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p1}, Lcom/android/server/DeviceIdleController;->updatePreIdleFactor()V

    .line 1534
    goto/16 :goto_242

    .line 1524
    :pswitch_5e  #0xa
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/deviceidle/IDeviceIdleConstraint;

    .line 1525
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_67

    goto :goto_68

    :cond_67
    move v2, v3

    .line 1526
    :goto_68
    if-eqz v2, :cond_6e

    .line 1527
    invoke-interface {v0}, Lcom/android/server/deviceidle/IDeviceIdleConstraint;->startMonitoring()V

    goto :goto_71

    .line 1529
    :cond_6e
    invoke-interface {v0}, Lcom/android/server/deviceidle/IDeviceIdleConstraint;->stopMonitoring()V

    .line 1531
    :goto_71
    goto/16 :goto_242

    .line 1519
    :pswitch_73  #0x9
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1520
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v2, :cond_7a

    goto :goto_7b

    :cond_7a
    move v2, v3

    .line 1521
    :goto_7b
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {p1}, Lcom/android/server/DeviceIdleController;->access$1300(Lcom/android/server/DeviceIdleController;)Lcom/android/server/net/NetworkPolicyManagerInternal;

    move-result-object p1

    invoke-virtual {p1, v0, v2}, Lcom/android/server/net/NetworkPolicyManagerInternal;->onTempPowerSaveWhitelistChange(IZ)V

    .line 1522
    goto/16 :goto_242

    .line 1516
    :pswitch_86  #0x8
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p1}, Lcom/android/server/DeviceIdleController;->decActiveIdleOps()V

    .line 1517
    goto/16 :goto_242

    .line 1500
    :pswitch_8d  #0x7
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_92

    goto :goto_93

    :cond_92
    move v2, v3

    .line 1501
    :goto_93
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {p1}, Lcom/android/server/DeviceIdleController;->access$1200(Lcom/android/server/DeviceIdleController;)Landroid/os/RemoteCallbackList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p1

    .line 1503
    nop

    :goto_9e
    if-ge v3, p1, :cond_bf

    .line 1505
    :try_start_a0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1200(Lcom/android/server/DeviceIdleController;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/os/IMaintenanceActivityListener;

    .line 1506
    invoke-interface {v0, v2}, Landroid/os/IMaintenanceActivityListener;->onMaintenanceActivityChanged(Z)V
    :try_end_af
    .catch Landroid/os/RemoteException; {:try_start_a0 .. :try_end_af} :catch_bb
    .catchall {:try_start_a0 .. :try_end_af} :catchall_b0

    .line 1508
    goto :goto_bc

    .line 1511
    :catchall_b0
    move-exception p1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1200(Lcom/android/server/DeviceIdleController;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw p1

    .line 1507
    :catch_bb
    move-exception v0

    .line 1503
    :goto_bc
    add-int/lit8 v3, v3, 0x1

    goto :goto_9e

    .line 1511
    :cond_bf
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {p1}, Lcom/android/server/DeviceIdleController;->access$1200(Lcom/android/server/DeviceIdleController;)Landroid/os/RemoteCallbackList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1512
    nop

    .line 1513
    goto/16 :goto_242

    .line 1495
    :pswitch_cb  #0x6
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1496
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, p1}, Lcom/android/server/DeviceIdleController;->checkTempAppWhitelistTimeout(I)V

    .line 1497
    goto/16 :goto_242

    .line 1473
    :pswitch_d4  #0x5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1474
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1476
    if-eqz v0, :cond_de

    move-object v1, v0

    goto :goto_e1

    :cond_de
    const-string/jumbo v1, "unknown"

    .line 1475
    :goto_e1
    invoke-static {v1}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffStart(Ljava/lang/String;)V

    .line 1477
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->access$500(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    move-result v1

    .line 1478
    iget-object v2, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->access$500(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    move-result v2

    .line 1480
    :try_start_f8
    iget-object v4, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->access$600(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/net/INetworkPolicyManager;->setDeviceIdleMode(Z)V

    .line 1481
    iget-object v4, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->access$700(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v4

    invoke-interface {v4, v3, v0, p1}, Lcom/android/internal/app/IBatteryStats;->noteDeviceIdleMode(ILjava/lang/String;I)V
    :try_end_10a
    .catch Landroid/os/RemoteException; {:try_start_f8 .. :try_end_10a} :catch_10b

    .line 1484
    goto :goto_10c

    .line 1483
    :catch_10b
    move-exception p1

    .line 1485
    :goto_10c
    if-eqz v1, :cond_11f

    .line 1486
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p1}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$800(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1488
    :cond_11f
    if-eqz v2, :cond_132

    .line 1489
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p1}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$900(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1491
    :cond_132
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffComplete()V

    .line 1492
    goto/16 :goto_242

    .line 1447
    :pswitch_137  #0x4
    const-string/jumbo p1, "unknown"

    invoke-static {p1}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffStart(Ljava/lang/String;)V

    .line 1448
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {p1}, Lcom/android/server/DeviceIdleController;->access$500(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    move-result p1

    .line 1449
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$500(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    move-result v0

    .line 1451
    :try_start_151
    iget-object v2, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->access$600(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/net/INetworkPolicyManager;->setDeviceIdleMode(Z)V

    .line 1452
    iget-object v2, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->access$700(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    .line 1453
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    .line 1452
    invoke-interface {v2, v3, v1, v4}, Lcom/android/internal/app/IBatteryStats;->noteDeviceIdleMode(ILjava/lang/String;I)V
    :try_end_167
    .catch Landroid/os/RemoteException; {:try_start_151 .. :try_end_167} :catch_168

    .line 1455
    goto :goto_169

    .line 1454
    :catch_168
    move-exception v1

    .line 1456
    :goto_169
    if-eqz p1, :cond_18c

    .line 1457
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p1}, Lcom/android/server/DeviceIdleController;->incActiveIdleOps()V

    .line 1458
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p1}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {p1}, Lcom/android/server/DeviceIdleController;->access$800(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    iget-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 1459
    invoke-static {p1}, Lcom/android/server/DeviceIdleController;->access$1100(Lcom/android/server/DeviceIdleController;)Landroid/content/BroadcastReceiver;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1458
    invoke-virtual/range {v1 .. v9}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1461
    :cond_18c
    if-eqz v0, :cond_1af

    .line 1462
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p1}, Lcom/android/server/DeviceIdleController;->incActiveIdleOps()V

    .line 1463
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p1}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {p1}, Lcom/android/server/DeviceIdleController;->access$900(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    iget-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 1464
    invoke-static {p1}, Lcom/android/server/DeviceIdleController;->access$1100(Lcom/android/server/DeviceIdleController;)Landroid/content/BroadcastReceiver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1463
    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1468
    :cond_1af
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p1}, Lcom/android/server/DeviceIdleController;->decActiveIdleOps()V

    .line 1469
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffComplete()V

    .line 1470
    goto/16 :goto_242

    .line 1419
    :pswitch_1b9  #0x2, 0x3
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnStart()V

    .line 1422
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1d6

    .line 1423
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$500(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    move-result v0

    .line 1424
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->access$500(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    move-result v3

    goto :goto_1ea

    .line 1426
    :cond_1d6
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$500(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    move-result v0

    .line 1427
    iget-object v3, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v3}, Lcom/android/server/DeviceIdleController;->access$500(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    move-result v3

    .line 1430
    :goto_1ea
    :try_start_1ea
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->access$600(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;

    move-result-object v5

    invoke-interface {v5, v2}, Landroid/net/INetworkPolicyManager;->setDeviceIdleMode(Z)V

    .line 1431
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->access$700(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v5

    iget p1, p1, Landroid/os/Message;->what:I

    if-ne p1, v4, :cond_1ff

    .line 1432
    move v2, v4

    goto :goto_200

    .line 1433
    :cond_1ff
    nop

    :goto_200
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p1

    .line 1431
    invoke-interface {v5, v2, v1, p1}, Lcom/android/internal/app/IBatteryStats;->noteDeviceIdleMode(ILjava/lang/String;I)V
    :try_end_207
    .catch Landroid/os/RemoteException; {:try_start_1ea .. :try_end_207} :catch_208

    .line 1435
    goto :goto_209

    .line 1434
    :catch_208
    move-exception p1

    .line 1436
    :goto_209
    if-eqz v0, :cond_21c

    .line 1437
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p1}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$800(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1439
    :cond_21c
    if-eqz v3, :cond_22f

    .line 1440
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p1}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$900(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1442
    :cond_22f
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnComplete()V

    .line 1443
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {p1}, Lcom/android/server/DeviceIdleController;->access$1000(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1444
    goto :goto_242

    .line 1414
    :pswitch_23c  #0x1
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p1}, Lcom/android/server/DeviceIdleController;->handleWriteConfigFile()V

    .line 1415
    nop

    .line 1564
    :cond_242
    :goto_242
    return-void

    nop

    :pswitch_data_244
    .packed-switch 0x1
        :pswitch_23c  #00000001
        :pswitch_1b9  #00000002
        :pswitch_1b9  #00000003
        :pswitch_137  #00000004
        :pswitch_d4  #00000005
        :pswitch_cb  #00000006
        :pswitch_8d  #00000007
        :pswitch_86  #00000008
        :pswitch_73  #00000009
        :pswitch_5e  #0000000a
        :pswitch_57  #0000000b
        :pswitch_4b  #0000000c
        :pswitch_a  #0000000d
    .end packed-switch
.end method
