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
    .param p1, "this$0"  # Lcom/android/server/DeviceIdleController;
    .param p2, "looper"  # Landroid/os/Looper;

    .line 1312
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 1313
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1314
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .param p1, "msg"  # Landroid/os/Message;

    .line 1318
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const-string/jumbo v2, "unknown"

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_200

    goto/16 :goto_1ff

    .line 1443
    :pswitch_d  #0xc
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->updatePreIdleFactor()V

    .line 1444
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->maybeDoImmediateMaintenance()V

    goto/16 :goto_1ff

    .line 1440
    :pswitch_19  #0xb
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->updatePreIdleFactor()V

    .line 1441
    goto/16 :goto_1ff

    .line 1431
    :pswitch_20  #0xa
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/deviceidle/IDeviceIdleConstraint;

    .line 1432
    .local v0, "constraint":Lcom/android/server/deviceidle/IDeviceIdleConstraint;
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v3, :cond_29

    goto :goto_2a

    :cond_29
    move v3, v4

    :goto_2a
    move v1, v3

    .line 1433
    .local v1, "monitoring":Z
    if-eqz v1, :cond_31

    .line 1434
    invoke-interface {v0}, Lcom/android/server/deviceidle/IDeviceIdleConstraint;->startMonitoring()V

    goto :goto_34

    .line 1436
    :cond_31
    invoke-interface {v0}, Lcom/android/server/deviceidle/IDeviceIdleConstraint;->stopMonitoring()V

    .line 1438
    .end local v0  # "constraint":Lcom/android/server/deviceidle/IDeviceIdleConstraint;
    .end local v1  # "monitoring":Z
    :goto_34
    goto/16 :goto_1ff

    .line 1426
    :pswitch_36  #0x9
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1427
    .local v0, "appId":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-ne v1, v3, :cond_3d

    goto :goto_3e

    :cond_3d
    move v3, v4

    :goto_3e
    move v1, v3

    .line 1428
    .local v1, "added":Z
    iget-object v2, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->access$1200(Lcom/android/server/DeviceIdleController;)Lcom/android/server/net/NetworkPolicyManagerInternal;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerInternal;->onTempPowerSaveWhitelistChange(IZ)V

    .line 1429
    .end local v0  # "appId":I
    .end local v1  # "added":Z
    goto/16 :goto_1ff

    .line 1423
    :pswitch_4a  #0x8
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->decActiveIdleOps()V

    .line 1424
    goto/16 :goto_1ff

    .line 1407
    :pswitch_51  #0x7
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v3, :cond_56

    goto :goto_57

    :cond_56
    move v3, v4

    :goto_57
    move v0, v3

    .line 1408
    .local v0, "active":Z
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->access$1100(Lcom/android/server/DeviceIdleController;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 1410
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_63
    if-ge v2, v1, :cond_84

    .line 1412
    :try_start_65
    iget-object v3, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v3}, Lcom/android/server/DeviceIdleController;->access$1100(Lcom/android/server/DeviceIdleController;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/os/IMaintenanceActivityListener;

    .line 1413
    invoke-interface {v3, v0}, Landroid/os/IMaintenanceActivityListener;->onMaintenanceActivityChanged(Z)V
    :try_end_74
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_74} :catch_80
    .catchall {:try_start_65 .. :try_end_74} :catchall_75

    .line 1415
    goto :goto_81

    .line 1418
    .end local v2  # "i":I
    :catchall_75
    move-exception v2

    iget-object v3, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v3}, Lcom/android/server/DeviceIdleController;->access$1100(Lcom/android/server/DeviceIdleController;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v2

    .line 1414
    .restart local v2  # "i":I
    :catch_80
    move-exception v3

    .line 1410
    :goto_81
    add-int/lit8 v2, v2, 0x1

    goto :goto_63

    .line 1418
    .end local v2  # "i":I
    :cond_84
    iget-object v2, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->access$1100(Lcom/android/server/DeviceIdleController;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1419
    nop

    .line 1420
    .end local v0  # "active":Z
    .end local v1  # "size":I
    goto/16 :goto_1ff

    .line 1402
    :pswitch_90  #0x6
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1403
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1, v0}, Lcom/android/server/DeviceIdleController;->checkTempAppWhitelistTimeout(I)V

    .line 1404
    .end local v0  # "appId":I
    goto/16 :goto_1ff

    .line 1380
    :pswitch_99  #0x5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1381
    .local v0, "activeReason":Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1383
    .local v1, "activeUid":I
    if-eqz v0, :cond_a2

    move-object v2, v0

    .line 1382
    :cond_a2
    invoke-static {v2}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffStart(Ljava/lang/String;)V

    .line 1384
    iget-object v2, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->access$400(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    move-result v2

    .line 1385
    .local v2, "deepChanged":Z
    iget-object v3, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v3}, Lcom/android/server/DeviceIdleController;->access$400(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    move-result v3

    .line 1387
    .local v3, "lightChanged":Z
    :try_start_b9
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->access$500(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/net/INetworkPolicyManager;->setDeviceIdleMode(Z)V

    .line 1388
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->access$600(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v5

    invoke-interface {v5, v4, v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteDeviceIdleMode(ILjava/lang/String;I)V
    :try_end_cb
    .catch Landroid/os/RemoteException; {:try_start_b9 .. :try_end_cb} :catch_cc

    .line 1391
    goto :goto_cd

    .line 1390
    :catch_cc
    move-exception v4

    .line 1392
    :goto_cd
    if-eqz v2, :cond_e0

    .line 1393
    iget-object v4, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v4}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->access$700(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1395
    :cond_e0
    if-eqz v3, :cond_f3

    .line 1396
    iget-object v4, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v4}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->access$800(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1398
    :cond_f3
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffComplete()V

    .line 1399
    .end local v0  # "activeReason":Ljava/lang/String;
    .end local v1  # "activeUid":I
    .end local v2  # "deepChanged":Z
    .end local v3  # "lightChanged":Z
    goto/16 :goto_1ff

    .line 1354
    :pswitch_f8  #0x4
    invoke-static {v2}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffStart(Ljava/lang/String;)V

    .line 1355
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$400(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    move-result v0

    .line 1356
    .local v0, "deepChanged":Z
    iget-object v2, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->access$400(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    move-result v2

    .line 1358
    .local v2, "lightChanged":Z
    :try_start_10f
    iget-object v3, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v3}, Lcom/android/server/DeviceIdleController;->access$500(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/net/INetworkPolicyManager;->setDeviceIdleMode(Z)V

    .line 1359
    iget-object v3, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v3}, Lcom/android/server/DeviceIdleController;->access$600(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v3

    .line 1360
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    .line 1359
    invoke-interface {v3, v4, v1, v5}, Lcom/android/internal/app/IBatteryStats;->noteDeviceIdleMode(ILjava/lang/String;I)V
    :try_end_125
    .catch Landroid/os/RemoteException; {:try_start_10f .. :try_end_125} :catch_126

    .line 1362
    goto :goto_127

    .line 1361
    :catch_126
    move-exception v1

    .line 1363
    :goto_127
    if-eqz v0, :cond_14a

    .line 1364
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->incActiveIdleOps()V

    .line 1365
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->access$700(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 1366
    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->access$1000(Lcom/android/server/DeviceIdleController;)Landroid/content/BroadcastReceiver;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 1365
    invoke-virtual/range {v3 .. v11}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1368
    :cond_14a
    if-eqz v2, :cond_16d

    .line 1369
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->incActiveIdleOps()V

    .line 1370
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->access$800(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    .line 1371
    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->access$1000(Lcom/android/server/DeviceIdleController;)Landroid/content/BroadcastReceiver;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 1370
    invoke-virtual/range {v3 .. v11}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1375
    :cond_16d
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->decActiveIdleOps()V

    .line 1376
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffComplete()V

    .line 1377
    .end local v0  # "deepChanged":Z
    .end local v2  # "lightChanged":Z
    goto/16 :goto_1ff

    .line 1326
    :pswitch_177  #0x2, 0x3
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnStart()V

    .line 1329
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_194

    .line 1330
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$400(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    move-result v0

    .line 1331
    .restart local v0  # "deepChanged":Z
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->access$400(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    move-result v4

    .local v4, "lightChanged":Z
    goto :goto_1a8

    .line 1333
    .end local v0  # "deepChanged":Z
    .end local v4  # "lightChanged":Z
    :cond_194
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$400(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/PowerManagerInternal;->setDeviceIdleMode(Z)Z

    move-result v0

    .line 1334
    .restart local v0  # "deepChanged":Z
    iget-object v4, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v4}, Lcom/android/server/DeviceIdleController;->access$400(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManagerInternal;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/PowerManagerInternal;->setLightDeviceIdleMode(Z)Z

    move-result v4

    .line 1337
    .restart local v4  # "lightChanged":Z
    :goto_1a8
    :try_start_1a8
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->access$500(Lcom/android/server/DeviceIdleController;)Landroid/net/INetworkPolicyManager;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/net/INetworkPolicyManager;->setDeviceIdleMode(Z)V

    .line 1338
    iget-object v5, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v5}, Lcom/android/server/DeviceIdleController;->access$600(Lcom/android/server/DeviceIdleController;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v6, v2, :cond_1bc

    .line 1339
    goto :goto_1bd

    .line 1340
    :cond_1bc
    move v2, v3

    :goto_1bd
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    .line 1338
    invoke-interface {v5, v2, v1, v3}, Lcom/android/internal/app/IBatteryStats;->noteDeviceIdleMode(ILjava/lang/String;I)V
    :try_end_1c4
    .catch Landroid/os/RemoteException; {:try_start_1a8 .. :try_end_1c4} :catch_1c5

    .line 1342
    goto :goto_1c6

    .line 1341
    :catch_1c5
    move-exception v1

    .line 1343
    :goto_1c6
    if-eqz v0, :cond_1d9

    .line 1344
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->access$700(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1346
    :cond_1d9
    if-eqz v4, :cond_1ec

    .line 1347
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->access$800(Lcom/android/server/DeviceIdleController;)Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1349
    :cond_1ec
    invoke-static {}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnComplete()V

    .line 1350
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->access$900(Lcom/android/server/DeviceIdleController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1351
    .end local v0  # "deepChanged":Z
    .end local v4  # "lightChanged":Z
    goto :goto_1ff

    .line 1321
    :pswitch_1f9  #0x1
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MyHandler;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->handleWriteConfigFile()V

    .line 1322
    nop

    .line 1447
    :goto_1ff
    return-void

    :pswitch_data_200
    .packed-switch 0x1
        :pswitch_1f9  #00000001
        :pswitch_177  #00000002
        :pswitch_177  #00000003
        :pswitch_f8  #00000004
        :pswitch_99  #00000005
        :pswitch_90  #00000006
        :pswitch_51  #00000007
        :pswitch_4a  #00000008
        :pswitch_36  #00000009
        :pswitch_20  #0000000a
        :pswitch_19  #0000000b
        :pswitch_d  #0000000c
    .end packed-switch
.end method
