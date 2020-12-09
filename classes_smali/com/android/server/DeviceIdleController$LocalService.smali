.class public Lcom/android/server/DeviceIdleController$LocalService;
.super Ljava/lang/Object;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method public constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .registers 2

    .line 1761
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZLjava/lang/String;)V
    .registers 16

    .line 1784
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppInternal(ILjava/lang/String;JIZLjava/lang/String;)V

    .line 1786
    return-void
.end method

.method public addPowerSaveTempWhitelistAppDirect(IJZLjava/lang/String;)V
    .registers 13

    .line 1791
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    const/4 v1, 0x0

    move v2, p1

    move-wide v3, p2

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppDirectInternal(IIJZLjava/lang/String;)V

    .line 1792
    return-void
.end method

.method public exitIdle(Ljava/lang/String;)V
    .registers 3

    .line 1778
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, p1}, Lcom/android/server/DeviceIdleController;->exitIdleInternal(Ljava/lang/String;)V

    .line 1779
    return-void
.end method

.method public getNotificationWhitelistDuration()J
    .registers 3

    .line 1796
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$100(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Constants;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->NOTIFICATION_WHITELIST_DURATION:J

    return-wide v0
.end method

.method public getPowerSaveTempWhitelistAppIds()[I
    .registers 2

    .line 1824
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getAppIdTempWhitelistInternal()[I

    move-result-object v0

    return-object v0
.end method

.method public getPowerSaveWhitelistUserAppIds()[I
    .registers 2

    .line 1820
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getPowerSaveWhitelistUserAppIds()[I

    move-result-object v0

    return-object v0
.end method

.method public isAppOnWhitelist(I)Z
    .registers 3

    .line 1810
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, p1}, Lcom/android/server/DeviceIdleController;->isAppOnWhitelistInternal(I)Z

    move-result p1

    return p1
.end method

.method public onConstraintStateChanged(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V
    .registers 5

    .line 1763
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v0

    .line 1764
    :try_start_3
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1, p1, p2}, Lcom/android/server/DeviceIdleController;->access$1600(Lcom/android/server/DeviceIdleController;Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V

    .line 1765
    monitor-exit v0

    .line 1766
    return-void

    .line 1765
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public registerDeviceIdleConstraint(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Ljava/lang/String;I)V
    .registers 5

    .line 1770
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/DeviceIdleController;->access$1700(Lcom/android/server/DeviceIdleController;Lcom/android/server/deviceidle/IDeviceIdleConstraint;Ljava/lang/String;I)V

    .line 1771
    return-void
.end method

.method public registerStationaryListener(Lcom/android/server/DeviceIdleController$StationaryListener;)V
    .registers 3

    .line 1833
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, p1}, Lcom/android/server/DeviceIdleController;->registerStationaryListener(Lcom/android/server/DeviceIdleController$StationaryListener;)V

    .line 1834
    return-void
.end method

.method public setAlarmsActive(Z)V
    .registers 3

    .line 1805
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, p1}, Lcom/android/server/DeviceIdleController;->setAlarmsActive(Z)V

    .line 1806
    return-void
.end method

.method public setJobsActive(Z)V
    .registers 3

    .line 1800
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, p1}, Lcom/android/server/DeviceIdleController;->setJobsActive(Z)V

    .line 1801
    return-void
.end method

.method public unregisterDeviceIdleConstraint(Lcom/android/server/deviceidle/IDeviceIdleConstraint;)V
    .registers 3

    .line 1774
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0, p1}, Lcom/android/server/DeviceIdleController;->access$1800(Lcom/android/server/DeviceIdleController;Lcom/android/server/deviceidle/IDeviceIdleConstraint;)V

    .line 1775
    return-void
.end method

.method public unregisterStationaryListener(Lcom/android/server/DeviceIdleController$StationaryListener;)V
    .registers 3

    .line 1842
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0, p1}, Lcom/android/server/DeviceIdleController;->access$1900(Lcom/android/server/DeviceIdleController;Lcom/android/server/DeviceIdleController$StationaryListener;)V

    .line 1843
    return-void
.end method
