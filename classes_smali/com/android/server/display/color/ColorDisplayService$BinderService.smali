.class final Lcom/android/server/display/color/ColorDisplayService$BinderService;
.super Landroid/hardware/display/IColorDisplayManager$Stub;
.source "ColorDisplayService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/color/ColorDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/color/ColorDisplayService;


# direct methods
.method constructor <init>(Lcom/android/server/display/color/ColorDisplayService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/display/color/ColorDisplayService;

    .line 1349
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-direct {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 1599
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ColorDisplayService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1600
    return-void

    .line 1603
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1605
    .local v0, "token":J
    :try_start_13
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2, p2}, Lcom/android/server/display/color/ColorDisplayService;->access$4100(Lcom/android/server/display/color/ColorDisplayService;Ljava/io/PrintWriter;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_1d

    .line 1607
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1608
    nop

    .line 1609
    return-void

    .line 1607
    :catchall_1d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getColorMode()I
    .registers 4

    .line 1366
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1368
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$1500(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 1370
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1368
    return v2

    .line 1370
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getNightDisplayAutoMode()I
    .registers 4

    .line 1507
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    const-string v2, "Permission required to get night display auto mode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1512
    .local v0, "token":J
    :try_start_11
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$900(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result v2
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_1b

    .line 1514
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1512
    return v2

    .line 1514
    :catchall_1b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getNightDisplayAutoModeRaw()I
    .registers 4

    .line 1520
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1522
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$3700(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 1524
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1522
    return v2

    .line 1524
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getNightDisplayColorTemperature()I
    .registers 4

    .line 1484
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1486
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$800(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->getColorTemperature()I

    move-result v2
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 1488
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1486
    return v2

    .line 1488
    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getNightDisplayCustomEndTime()Landroid/hardware/display/Time;
    .registers 4

    .line 1566
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1568
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$1300(Lcom/android/server/display/color/ColorDisplayService;)Landroid/hardware/display/Time;

    move-result-object v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 1570
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1568
    return-object v2

    .line 1570
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getNightDisplayCustomStartTime()Landroid/hardware/display/Time;
    .registers 4

    .line 1543
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1545
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$1100(Lcom/android/server/display/color/ColorDisplayService;)Landroid/hardware/display/Time;

    move-result-object v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 1547
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1545
    return-object v2

    .line 1547
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getTransformCapabilities()I
    .registers 4

    .line 1434
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    const-string v2, "Permission required to query transform capabilities"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1439
    .local v0, "token":J
    :try_start_11
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$3500(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result v2
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_1b

    .line 1441
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1439
    return v2

    .line 1441
    :catchall_1b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isDeviceColorManaged()Z
    .registers 4

    .line 1376
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1378
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$3300(Lcom/android/server/display/color/ColorDisplayService;)Z

    move-result v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 1380
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1378
    return v2

    .line 1380
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isDisplayWhiteBalanceEnabled()Z
    .registers 4

    .line 1589
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1591
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$2700(Lcom/android/server/display/color/ColorDisplayService;)Z

    move-result v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 1593
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1591
    return v2

    .line 1593
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isNightDisplayActivated()Z
    .registers 4

    .line 1461
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1463
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$800(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivated()Z

    move-result v2
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 1465
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1463
    return v2

    .line 1465
    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isSaturationActivated()Z
    .registers 4

    .line 1408
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    const-string v2, "Permission required to get display saturation level"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1413
    .local v0, "token":J
    :try_start_11
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$3000(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/TintController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/color/TintController;->isActivatedStateNotSet()Z

    move-result v2

    if-nez v2, :cond_2b

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 1414
    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$3000(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/TintController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/color/TintController;->isActivated()Z

    move-result v2
    :try_end_27
    .catchall {:try_start_11 .. :try_end_27} :catchall_30

    if-eqz v2, :cond_2b

    const/4 v2, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v2, 0x0

    .line 1416
    :goto_2c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1413
    return v2

    .line 1416
    :catchall_30
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setAppSaturationLevel(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "level"  # I

    .line 1422
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    const-string v2, "Permission required to set display saturation level"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1427
    .local v0, "token":J
    :try_start_11
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2, p1, p2}, Lcom/android/server/display/color/ColorDisplayService;->access$3400(Lcom/android/server/display/color/ColorDisplayService;Ljava/lang/String;I)Z

    move-result v2
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_1b

    .line 1429
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1427
    return v2

    .line 1429
    :catchall_1b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setColorMode(I)V
    .registers 5
    .param p1, "colorMode"  # I

    .line 1353
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    const-string v2, "Permission required to set display color mode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1358
    .local v0, "token":J
    :try_start_11
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2, p1}, Lcom/android/server/display/color/ColorDisplayService;->access$3200(Lcom/android/server/display/color/ColorDisplayService;I)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_1b

    .line 1360
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1361
    nop

    .line 1362
    return-void

    .line 1360
    :catchall_1b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setDisplayWhiteBalanceEnabled(Z)Z
    .registers 5
    .param p1, "enabled"  # Z

    .line 1576
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    const-string v2, "Permission required to set night display activated"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1579
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1581
    .local v0, "token":J
    :try_start_11
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2, p1}, Lcom/android/server/display/color/ColorDisplayService;->access$4000(Lcom/android/server/display/color/ColorDisplayService;Z)Z

    move-result v2
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_1b

    .line 1583
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1581
    return v2

    .line 1583
    :catchall_1b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setNightDisplayActivated(Z)Z
    .registers 6
    .param p1, "activated"  # Z

    .line 1447
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    const-string v2, "Permission required to set night display activated"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1452
    .local v0, "token":J
    :try_start_11
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$800(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setActivated(Ljava/lang/Boolean;)V
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_23

    .line 1453
    const/4 v2, 0x1

    .line 1455
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1453
    return v2

    .line 1455
    :catchall_23
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setNightDisplayAutoMode(I)Z
    .registers 5
    .param p1, "autoMode"  # I

    .line 1494
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    const-string v2, "Permission required to set night display auto mode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1497
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1499
    .local v0, "token":J
    :try_start_11
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2, p1}, Lcom/android/server/display/color/ColorDisplayService;->access$3600(Lcom/android/server/display/color/ColorDisplayService;I)Z

    move-result v2
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_1b

    .line 1501
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1499
    return v2

    .line 1501
    :catchall_1b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setNightDisplayColorTemperature(I)Z
    .registers 5
    .param p1, "temperature"  # I

    .line 1471
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    const-string v2, "Permission required to set night display temperature"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1476
    .local v0, "token":J
    :try_start_11
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$800(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setColorTemperature(I)Z

    move-result v2
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_1f

    .line 1478
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1476
    return v2

    .line 1478
    :catchall_1f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setNightDisplayCustomEndTime(Landroid/hardware/display/Time;)Z
    .registers 5
    .param p1, "endTime"  # Landroid/hardware/display/Time;

    .line 1553
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    const-string v2, "Permission required to set night display custom end time"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1558
    .local v0, "token":J
    :try_start_11
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2, p1}, Lcom/android/server/display/color/ColorDisplayService;->access$3900(Lcom/android/server/display/color/ColorDisplayService;Landroid/hardware/display/Time;)Z

    move-result v2
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_1b

    .line 1560
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1558
    return v2

    .line 1560
    :catchall_1b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setNightDisplayCustomStartTime(Landroid/hardware/display/Time;)Z
    .registers 5
    .param p1, "startTime"  # Landroid/hardware/display/Time;

    .line 1530
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    const-string v2, "Permission required to set night display custom start time"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1535
    .local v0, "token":J
    :try_start_11
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2, p1}, Lcom/android/server/display/color/ColorDisplayService;->access$3800(Lcom/android/server/display/color/ColorDisplayService;Landroid/hardware/display/Time;)Z

    move-result v2
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_1b

    .line 1537
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1535
    return v2

    .line 1537
    :catchall_1b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setSaturationLevel(I)Z
    .registers 9
    .param p1, "level"  # I

    .line 1386
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1387
    const-string v1, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_12

    move v0, v2

    goto :goto_13

    :cond_12
    move v0, v1

    .line 1389
    .local v0, "hasTransformsPermission":Z
    :goto_13
    iget-object v3, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v3}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1390
    const-string v4, "android.permission.CONTROL_DISPLAY_SATURATION"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_22

    move v1, v2

    .line 1392
    .local v1, "hasLegacyPermission":Z
    :cond_22
    if-nez v0, :cond_2f

    if-eqz v1, :cond_27

    goto :goto_2f

    .line 1393
    :cond_27
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Permission required to set display saturation level"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1395
    :cond_2f
    :goto_2f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1397
    .local v3, "token":J
    :try_start_33
    iget-object v5, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v5}, Lcom/android/server/display/color/ColorDisplayService;->access$2400(Lcom/android/server/display/color/ColorDisplayService;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 1398
    .local v5, "message":Landroid/os/Message;
    iput p1, v5, Landroid/os/Message;->arg1:I

    .line 1399
    iget-object v6, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v6}, Lcom/android/server/display/color/ColorDisplayService;->access$2400(Lcom/android/server/display/color/ColorDisplayService;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_49
    .catchall {:try_start_33 .. :try_end_49} :catchall_4f

    .line 1401
    nop

    .end local v5  # "message":Landroid/os/Message;
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1402
    nop

    .line 1403
    return v2

    .line 1401
    :catchall_4f
    move-exception v2

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
