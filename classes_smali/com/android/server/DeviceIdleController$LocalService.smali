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
    .param p1, "this$0"  # Lcom/android/server/DeviceIdleController;

    .line 1644
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZLjava/lang/String;)V
    .registers 16
    .param p1, "callingUid"  # I
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "duration"  # J
    .param p5, "userId"  # I
    .param p6, "sync"  # Z
    .param p7, "reason"  # Ljava/lang/String;

    .line 1667
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppInternal(ILjava/lang/String;JIZLjava/lang/String;)V

    .line 1669
    return-void
.end method

.method public addPowerSaveTempWhitelistAppDirect(IJZLjava/lang/String;)V
    .registers 13
    .param p1, "uid"  # I
    .param p2, "duration"  # J
    .param p4, "sync"  # Z
    .param p5, "reason"  # Ljava/lang/String;

    .line 1674
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    const/4 v1, 0x0

    move v2, p1

    move-wide v3, p2

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/DeviceIdleController;->addPowerSaveTempWhitelistAppDirectInternal(IIJZLjava/lang/String;)V

    .line 1675
    return-void
.end method

.method public exitIdle(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"  # Ljava/lang/String;

    .line 1661
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, p1}, Lcom/android/server/DeviceIdleController;->exitIdleInternal(Ljava/lang/String;)V

    .line 1662
    return-void
.end method

.method public getNotificationWhitelistDuration()J
    .registers 3

    .line 1679
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$100(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Constants;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/server/DeviceIdleController$Constants;->NOTIFICATION_WHITELIST_DURATION:J

    return-wide v0
.end method

.method public getPowerSaveTempWhitelistAppIds()[I
    .registers 2

    .line 1707
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getAppIdTempWhitelistInternal()[I

    move-result-object v0

    return-object v0
.end method

.method public getPowerSaveWhitelistUserAppIds()[I
    .registers 2

    .line 1703
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->getPowerSaveWhitelistUserAppIds()[I

    move-result-object v0

    return-object v0
.end method

.method public isAppOnWhitelist(I)Z
    .registers 3
    .param p1, "appid"  # I

    .line 1693
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, p1}, Lcom/android/server/DeviceIdleController;->isAppOnWhitelistInternal(I)Z

    move-result v0

    return v0
.end method

.method public onConstraintStateChanged(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V
    .registers 5
    .param p1, "constraint"  # Lcom/android/server/deviceidle/IDeviceIdleConstraint;
    .param p2, "active"  # Z

    .line 1646
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v0

    .line 1647
    :try_start_3
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1, p1, p2}, Lcom/android/server/DeviceIdleController;->access$1300(Lcom/android/server/DeviceIdleController;Lcom/android/server/deviceidle/IDeviceIdleConstraint;Z)V

    .line 1648
    monitor-exit v0

    .line 1649
    return-void

    .line 1648
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public registerDeviceIdleConstraint(Lcom/android/server/deviceidle/IDeviceIdleConstraint;Ljava/lang/String;I)V
    .registers 5
    .param p1, "constraint"  # Lcom/android/server/deviceidle/IDeviceIdleConstraint;
    .param p2, "name"  # Ljava/lang/String;
    .param p3, "minState"  # I

    .line 1653
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/DeviceIdleController;->access$1400(Lcom/android/server/DeviceIdleController;Lcom/android/server/deviceidle/IDeviceIdleConstraint;Ljava/lang/String;I)V

    .line 1654
    return-void
.end method

.method public setAlarmsActive(Z)V
    .registers 3
    .param p1, "active"  # Z

    .line 1688
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, p1}, Lcom/android/server/DeviceIdleController;->setAlarmsActive(Z)V

    .line 1689
    return-void
.end method

.method public setJobsActive(Z)V
    .registers 3
    .param p1, "active"  # Z

    .line 1683
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, p1}, Lcom/android/server/DeviceIdleController;->setJobsActive(Z)V

    .line 1684
    return-void
.end method

.method public unregisterDeviceIdleConstraint(Lcom/android/server/deviceidle/IDeviceIdleConstraint;)V
    .registers 3
    .param p1, "constraint"  # Lcom/android/server/deviceidle/IDeviceIdleConstraint;

    .line 1657
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$LocalService;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0, p1}, Lcom/android/server/DeviceIdleController;->access$1500(Lcom/android/server/DeviceIdleController;Lcom/android/server/deviceidle/IDeviceIdleConstraint;)V

    .line 1658
    return-void
.end method
