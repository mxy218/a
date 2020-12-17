.class final Lcom/android/server/BatteryService$HealthHalCallback;
.super Landroid/hardware/health/V2_0/IHealthInfoCallback$Stub;
.source "BatteryService.java"

# interfaces
.implements Lcom/android/server/BatteryService$HealthServiceWrapper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HealthHalCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method private constructor <init>(Lcom/android/server/BatteryService;)V
    .registers 2

    .line 1448
    iput-object p1, p0, Lcom/android/server/BatteryService$HealthHalCallback;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/hardware/health/V2_0/IHealthInfoCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/BatteryService;
    .param p2, "x1"  # Lcom/android/server/BatteryService$1;

    .line 1448
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService$HealthHalCallback;-><init>(Lcom/android/server/BatteryService;)V

    return-void
.end method


# virtual methods
.method public healthInfoChanged(Landroid/hardware/health/V2_0/HealthInfo;)V
    .registers 3
    .param p1, "props"  # Landroid/hardware/health/V2_0/HealthInfo;

    .line 1451
    iget-object v0, p0, Lcom/android/server/BatteryService$HealthHalCallback;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0, p1}, Lcom/android/server/BatteryService;->access$1300(Lcom/android/server/BatteryService;Landroid/hardware/health/V2_0/HealthInfo;)V

    .line 1452
    return-void
.end method

.method public onRegistration(Landroid/hardware/health/V2_0/IHealth;Landroid/hardware/health/V2_0/IHealth;Ljava/lang/String;)V
    .registers 8
    .param p1, "oldService"  # Landroid/hardware/health/V2_0/IHealth;
    .param p2, "newService"  # Landroid/hardware/health/V2_0/IHealth;
    .param p3, "instance"  # Ljava/lang/String;

    .line 1456
    if-nez p2, :cond_3

    return-void

    .line 1458
    :cond_3
    const-string v0, "HealthUnregisterCallback"

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$1400(Ljava/lang/String;)V

    .line 1460
    if-eqz p1, :cond_52

    .line 1461
    :try_start_a
    invoke-interface {p1, p0}, Landroid/hardware/health/V2_0/IHealth;->unregisterCallback(Landroid/hardware/health/V2_0/IHealthInfoCallback;)I

    move-result v0

    .line 1462
    .local v0, "r":I
    if-eqz v0, :cond_52

    .line 1463
    invoke-static {}, Lcom/android/server/BatteryService;->access$900()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "health: cannot unregister previous callback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1464
    invoke-static {v0}, Landroid/hardware/health/V2_0/Result;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1463
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_2c} :catch_2f
    .catchall {:try_start_a .. :try_end_2c} :catchall_2d

    goto :goto_52

    .line 1471
    .end local v0  # "r":I
    :catchall_2d
    move-exception v0

    goto :goto_4e

    .line 1467
    :catch_2f
    move-exception v0

    .line 1468
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_30
    invoke-static {}, Lcom/android/server/BatteryService;->access$900()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "health: cannot unregister previous callback (transaction error): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1469
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1468
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_30 .. :try_end_4c} :catchall_2d

    .line 1471
    nop

    .end local v0  # "ex":Landroid/os/RemoteException;
    goto :goto_53

    :goto_4e
    invoke-static {}, Lcom/android/server/BatteryService;->access$1500()V

    throw v0

    :cond_52
    :goto_52
    nop

    :goto_53
    invoke-static {}, Lcom/android/server/BatteryService;->access$1500()V

    .line 1472
    nop

    .line 1474
    const-string v0, "HealthRegisterCallback"

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$1400(Ljava/lang/String;)V

    .line 1476
    :try_start_5c
    invoke-interface {p2, p0}, Landroid/hardware/health/V2_0/IHealth;->registerCallback(Landroid/hardware/health/V2_0/IHealthInfoCallback;)I

    move-result v0

    .line 1477
    .local v0, "r":I
    if-eqz v0, :cond_82

    .line 1478
    invoke-static {}, Lcom/android/server/BatteryService;->access$900()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "health: cannot register callback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/hardware/health/V2_0/Result;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_7e} :catch_8c
    .catchall {:try_start_5c .. :try_end_7e} :catchall_8a

    .line 1488
    invoke-static {}, Lcom/android/server/BatteryService;->access$1500()V

    .line 1479
    return-void

    .line 1483
    :cond_82
    :try_start_82
    invoke-interface {p2}, Landroid/hardware/health/V2_0/IHealth;->update()I
    :try_end_85
    .catch Landroid/os/RemoteException; {:try_start_82 .. :try_end_85} :catch_8c
    .catchall {:try_start_82 .. :try_end_85} :catchall_8a

    .line 1488
    nop

    .end local v0  # "r":I
    :goto_86
    invoke-static {}, Lcom/android/server/BatteryService;->access$1500()V

    .line 1489
    goto :goto_ab

    .line 1488
    :catchall_8a
    move-exception v0

    goto :goto_ac

    .line 1484
    :catch_8c
    move-exception v0

    .line 1485
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_8d
    invoke-static {}, Lcom/android/server/BatteryService;->access$900()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "health: cannot register callback (transaction error): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1486
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1485
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a9
    .catchall {:try_start_8d .. :try_end_a9} :catchall_8a

    .line 1488
    nop

    .end local v0  # "ex":Landroid/os/RemoteException;
    goto :goto_86

    .line 1490
    :goto_ab
    return-void

    .line 1488
    :goto_ac
    invoke-static {}, Lcom/android/server/BatteryService;->access$1500()V

    throw v0
.end method
