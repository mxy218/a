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

    .line 1460
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-direct {p0}, Landroid/hardware/display/IColorDisplayManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 1710
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {p1}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p3, "ColorDisplayService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 1711
    return-void

    .line 1714
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1716
    :try_start_13
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p1, p2}, Lcom/android/server/display/color/ColorDisplayService;->access$4000(Lcom/android/server/display/color/ColorDisplayService;Ljava/io/PrintWriter;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_1d

    .line 1718
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1719
    nop

    .line 1720
    return-void

    .line 1718
    :catchall_1d
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public getColorMode()I
    .registers 4

    .line 1477
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1479
    :try_start_4
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$1500(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 1481
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1479
    return v2

    .line 1481
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getNightDisplayAutoMode()I
    .registers 4

    .line 1618
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    const-string v2, "Permission required to get night display auto mode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1623
    :try_start_11
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$900(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result v2
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_1b

    .line 1625
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1623
    return v2

    .line 1625
    :catchall_1b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getNightDisplayAutoModeRaw()I
    .registers 4

    .line 1631
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1633
    :try_start_4
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$3600(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 1635
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1633
    return v2

    .line 1635
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getNightDisplayColorTemperature()I
    .registers 4

    .line 1595
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1597
    :try_start_4
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$800(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->getColorTemperature()I

    move-result v2
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 1599
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1597
    return v2

    .line 1599
    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getNightDisplayCustomEndTime()Landroid/hardware/display/Time;
    .registers 4

    .line 1677
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1679
    :try_start_4
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$1300(Lcom/android/server/display/color/ColorDisplayService;)Landroid/hardware/display/Time;

    move-result-object v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 1681
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1679
    return-object v2

    .line 1681
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getNightDisplayCustomStartTime()Landroid/hardware/display/Time;
    .registers 4

    .line 1654
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1656
    :try_start_4
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$1100(Lcom/android/server/display/color/ColorDisplayService;)Landroid/hardware/display/Time;

    move-result-object v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 1658
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1656
    return-object v2

    .line 1658
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getTransformCapabilities()I
    .registers 4

    .line 1545
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    const-string v2, "Permission required to query transform capabilities"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1548
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1550
    :try_start_11
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$3400(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result v2
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_1b

    .line 1552
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1550
    return v2

    .line 1552
    :catchall_1b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isDeviceColorManaged()Z
    .registers 4

    .line 1487
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1489
    :try_start_4
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$3200(Lcom/android/server/display/color/ColorDisplayService;)Z

    move-result v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 1491
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1489
    return v2

    .line 1491
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isDisplayWhiteBalanceEnabled()Z
    .registers 4

    .line 1700
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1702
    :try_start_4
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$2700(Lcom/android/server/display/color/ColorDisplayService;)Z

    move-result v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 1704
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1702
    return v2

    .line 1704
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isNightDisplayActivated()Z
    .registers 4

    .line 1572
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1574
    :try_start_4
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$800(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivated()Z

    move-result v2
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 1576
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1574
    return v2

    .line 1576
    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isSaturationActivated()Z
    .registers 4

    .line 1519
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    const-string v2, "Permission required to get display saturation level"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1524
    :try_start_11
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$2900(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/TintController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/color/TintController;->isActivatedStateNotSet()Z

    move-result v2

    if-nez v2, :cond_2b

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    .line 1525
    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$2900(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/TintController;

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

    .line 1527
    :goto_2c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1524
    return v2

    .line 1527
    :catchall_30
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setAppSaturationLevel(Ljava/lang/String;I)Z
    .registers 6

    .line 1533
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    const-string v2, "Permission required to set display saturation level"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1536
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1538
    :try_start_11
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2, p1, p2}, Lcom/android/server/display/color/ColorDisplayService;->access$3300(Lcom/android/server/display/color/ColorDisplayService;Ljava/lang/String;I)Z

    move-result p1
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_1b

    .line 1540
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1538
    return p1

    .line 1540
    :catchall_1b
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setColorMode(I)V
    .registers 5

    .line 1464
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    const-string v2, "Permission required to set display color mode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1467
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1469
    :try_start_11
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2, p1}, Lcom/android/server/display/color/ColorDisplayService;->access$3100(Lcom/android/server/display/color/ColorDisplayService;I)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_1b

    .line 1471
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1472
    nop

    .line 1473
    return-void

    .line 1471
    :catchall_1b
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setDisplayWhiteBalanceEnabled(Z)Z
    .registers 5

    .line 1687
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    const-string v2, "Permission required to set night display activated"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1690
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1692
    :try_start_11
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2, p1}, Lcom/android/server/display/color/ColorDisplayService;->access$3900(Lcom/android/server/display/color/ColorDisplayService;Z)Z

    move-result p1
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_1b

    .line 1694
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1692
    return p1

    .line 1694
    :catchall_1b
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setNightDisplayActivated(Z)Z
    .registers 5

    .line 1558
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    const-string v2, "Permission required to set night display activated"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1563
    :try_start_11
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$800(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setActivated(Ljava/lang/Boolean;)V
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_23

    .line 1564
    const/4 p1, 0x1

    .line 1566
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1564
    return p1

    .line 1566
    :catchall_23
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setNightDisplayAutoMode(I)Z
    .registers 5

    .line 1605
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    const-string v2, "Permission required to set night display auto mode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1608
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1610
    :try_start_11
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2, p1}, Lcom/android/server/display/color/ColorDisplayService;->access$3500(Lcom/android/server/display/color/ColorDisplayService;I)Z

    move-result p1
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_1b

    .line 1612
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1610
    return p1

    .line 1612
    :catchall_1b
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setNightDisplayColorTemperature(I)Z
    .registers 5

    .line 1582
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    const-string v2, "Permission required to set night display temperature"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1585
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1587
    :try_start_11
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/color/ColorDisplayService;->access$800(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setColorTemperature(I)Z

    move-result p1
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_1f

    .line 1589
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1587
    return p1

    .line 1589
    :catchall_1f
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setNightDisplayCustomEndTime(Landroid/hardware/display/Time;)Z
    .registers 5

    .line 1664
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    const-string v2, "Permission required to set night display custom end time"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1667
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1669
    :try_start_11
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2, p1}, Lcom/android/server/display/color/ColorDisplayService;->access$3800(Lcom/android/server/display/color/ColorDisplayService;Landroid/hardware/display/Time;)Z

    move-result p1
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_1b

    .line 1671
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1669
    return p1

    .line 1671
    :catchall_1b
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setNightDisplayCustomStartTime(Landroid/hardware/display/Time;)Z
    .registers 5

    .line 1641
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_DISPLAY_COLOR_TRANSFORMS"

    const-string v2, "Permission required to set night display custom start time"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1644
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1646
    :try_start_11
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v2, p1}, Lcom/android/server/display/color/ColorDisplayService;->access$3700(Lcom/android/server/display/color/ColorDisplayService;Landroid/hardware/display/Time;)Z

    move-result p1
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_1b

    .line 1648
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1646
    return p1

    .line 1648
    :catchall_1b
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setSaturationLevel(I)Z
    .registers 7

    .line 1497
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1498
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

    .line 1500
    :goto_13
    iget-object v3, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v3}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1501
    const-string v4, "android.permission.CONTROL_DISPLAY_SATURATION"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_22

    move v1, v2

    .line 1503
    :cond_22
    if-nez v0, :cond_2f

    if-eqz v1, :cond_27

    goto :goto_2f

    .line 1504
    :cond_27
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Permission required to set display saturation level"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1506
    :cond_2f
    :goto_2f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1508
    :try_start_33
    iget-object v3, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {v3}, Lcom/android/server/display/color/ColorDisplayService;->access$2400(Lcom/android/server/display/color/ColorDisplayService;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1509
    iput p1, v3, Landroid/os/Message;->arg1:I

    .line 1510
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$BinderService;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p1}, Lcom/android/server/display/color/ColorDisplayService;->access$2400(Lcom/android/server/display/color/ColorDisplayService;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_49
    .catchall {:try_start_33 .. :try_end_49} :catchall_4e

    .line 1512
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1513
    nop

    .line 1514
    return v2

    .line 1512
    :catchall_4e
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method
