.class final Lcom/android/server/usage/UsageStatsService$LocalService;
.super Landroid/app/usage/UsageStatsManagerInternal;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method private constructor <init>(Lcom/android/server/usage/UsageStatsService;)V
    .registers 2

    .line 1619
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-direct {p0}, Landroid/app/usage/UsageStatsManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$1;)V
    .registers 3

    .line 1619
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService$LocalService;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    return-void
.end method


# virtual methods
.method public addAppIdleStateChangeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V
    .registers 3

    .line 1737
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0, p1}, Lcom/android/server/usage/AppStandbyController;->addListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V

    .line 1738
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService$LocalService;->isAppIdleParoleOn()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;->onParoleStateChanged(Z)V

    .line 1739
    return-void
.end method

.method public applyRestoredPayload(ILjava/lang/String;[B)V
    .registers 8

    .line 1763
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->access$1100(Lcom/android/server/usage/UsageStatsService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1764
    if-nez p1, :cond_18

    .line 1765
    :try_start_9
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 1766
    invoke-static {v2}, Lcom/android/server/usage/UsageStatsService;->access$1300(Lcom/android/server/usage/UsageStatsService;)J

    move-result-wide v2

    invoke-static {v1, p1, v2, v3}, Lcom/android/server/usage/UsageStatsService;->access$1400(Lcom/android/server/usage/UsageStatsService;IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object p1

    .line 1767
    invoke-virtual {p1, p2, p3}, Lcom/android/server/usage/UserUsageStatsService;->applyRestoredPayload(Ljava/lang/String;[B)V

    .line 1769
    :cond_18
    monitor-exit v0

    .line 1770
    return-void

    .line 1769
    :catchall_1a
    move-exception p1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method public getAppStandbyBucket(Ljava/lang/String;IJ)I
    .registers 12

    .line 1709
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->getAppStandbyBucket(Ljava/lang/String;IJZ)I

    move-result p1

    return p1
.end method

.method public getAppUsageLimit(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;
    .registers 4

    .line 1822
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/AppTimeLimitController;->getAppUsageLimit(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;

    move-result-object p1

    return-object p1
.end method

.method public getBackupPayload(ILjava/lang/String;)[B
    .registers 7

    .line 1750
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->access$1100(Lcom/android/server/usage/UsageStatsService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1751
    if-nez p1, :cond_1b

    .line 1752
    :try_start_9
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 1753
    invoke-static {v2}, Lcom/android/server/usage/UsageStatsService;->access$1300(Lcom/android/server/usage/UsageStatsService;)J

    move-result-wide v2

    invoke-static {v1, p1, v2, v3}, Lcom/android/server/usage/UsageStatsService;->access$1400(Lcom/android/server/usage/UsageStatsService;IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object p1

    .line 1754
    invoke-virtual {p1, p2}, Lcom/android/server/usage/UserUsageStatsService;->getBackupPayload(Ljava/lang/String;)[B

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 1756
    :cond_1b
    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    .line 1758
    :catchall_1e
    move-exception p1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_1e

    throw p1
.end method

.method public getIdleUidsForUser(I)[I
    .registers 3

    .line 1714
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0, p1}, Lcom/android/server/usage/AppStandbyController;->getIdleUidsForUser(I)[I

    move-result-object p1

    return-object p1
.end method

.method public getTimeSinceLastJobRun(Ljava/lang/String;I)J
    .registers 4

    .line 1787
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/AppStandbyController;->getTimeSinceLastJobRun(Ljava/lang/String;I)J

    move-result-wide p1

    return-wide p1
.end method

.method public isAppIdle(Ljava/lang/String;II)Z
    .registers 11

    .line 1702
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    .line 1703
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 1702
    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result p1

    return p1
.end method

.method public isAppIdleParoleOn()Z
    .registers 2

    .line 1719
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController;->isParoledOrCharging()Z

    move-result v0

    return v0
.end method

.method public onActiveAdminAdded(Ljava/lang/String;I)V
    .registers 4

    .line 1797
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/AppStandbyController;->addActiveDeviceAdmin(Ljava/lang/String;I)V

    .line 1798
    return-void
.end method

.method public onAdminDataAvailable()V
    .registers 2

    .line 1807
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController;->onAdminDataAvailable()V

    .line 1808
    return-void
.end method

.method public prepareForPossibleShutdown()V
    .registers 2

    .line 1732
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->prepareForPossibleShutdown()V

    .line 1733
    return-void
.end method

.method public prepareShutdown()V
    .registers 2

    .line 1727
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->shutdown()V

    .line 1728
    return-void
.end method

.method public queryUsageStatsForUser(IIJJZ)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJZ)",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    .line 1776
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/UsageStatsService;->queryUsageStats(IIJJZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public removeAppIdleStateChangeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V
    .registers 3

    .line 1744
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0, p1}, Lcom/android/server/usage/AppStandbyController;->removeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V

    .line 1745
    return-void
.end method

.method public reportAppJobState(Ljava/lang/String;IIJ)V
    .registers 6

    .line 1793
    return-void
.end method

.method public reportConfigurationChange(Landroid/content/res/Configuration;I)V
    .registers 7

    .line 1657
    if-nez p1, :cond_a

    .line 1658
    const-string p1, "UsageStatsService"

    const-string p2, "Configuration event reported with a null config"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    return-void

    .line 1662
    :cond_a
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    const/4 v1, 0x5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 1663
    const-string v1, "android"

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 1664
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 1665
    iget-object p1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p1, p1, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1666
    return-void
.end method

.method public reportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 1697
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/usage/AppStandbyController;->postReportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1698
    return-void
.end method

.method public reportEvent(Landroid/content/ComponentName;IIILandroid/content/ComponentName;)V
    .registers 9

    .line 1624
    if-nez p1, :cond_a

    .line 1625
    const-string p1, "UsageStatsService"

    const-string p2, "Event reported without a component name"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    return-void

    .line 1629
    :cond_a
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {v0, p3, v1, v2}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 1630
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p3

    iput-object p3, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 1631
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    .line 1632
    iput p4, v0, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    .line 1633
    if-nez p5, :cond_29

    .line 1634
    const/4 p1, 0x0

    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 1635
    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    goto :goto_35

    .line 1637
    :cond_29
    invoke-virtual {p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 1638
    invoke-virtual {p5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    .line 1640
    :goto_35
    iget-object p1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p1, p1, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1641
    return-void
.end method

.method public reportEvent(Ljava/lang/String;II)V
    .registers 7

    .line 1645
    if-nez p1, :cond_19

    .line 1646
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Event reported without a package name, eventType:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UsageStatsService"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    return-void

    .line 1650
    :cond_19
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {v0, p3, v1, v2}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 1651
    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 1652
    iget-object p1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p1, p1, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1653
    return-void
.end method

.method public reportExemptedSyncStart(Ljava/lang/String;I)V
    .registers 4

    .line 1817
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/AppStandbyController;->postReportExemptedSyncStart(Ljava/lang/String;I)V

    .line 1818
    return-void
.end method

.method public reportInterruptiveNotification(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8

    .line 1671
    if-eqz p1, :cond_29

    if-nez p2, :cond_5

    goto :goto_29

    .line 1676
    :cond_5
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    const/16 v1, 0xc

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 1677
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 1678
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    .line 1679
    iget-object p1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p1, p1, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p3, p2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1680
    return-void

    .line 1672
    :cond_29
    :goto_29
    const-string p1, "UsageStatsService"

    const-string p2, "Event reported without a package name or a channel ID"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    return-void
.end method

.method public reportShortcutUsage(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8

    .line 1684
    if-eqz p1, :cond_29

    if-nez p2, :cond_5

    goto :goto_29

    .line 1689
    :cond_5
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    const/16 v1, 0x8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 1690
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 1691
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    .line 1692
    iget-object p1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p1, p1, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p3, p2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1693
    return-void

    .line 1685
    :cond_29
    :goto_29
    const-string p1, "UsageStatsService"

    const-string p2, "Event reported without a package name or a shortcut ID"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    return-void
.end method

.method public reportSyncScheduled(Ljava/lang/String;IZ)V
    .registers 5

    .line 1812
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/usage/AppStandbyController;->postReportSyncScheduled(Ljava/lang/String;IZ)V

    .line 1813
    return-void
.end method

.method public setActiveAdminApps(Ljava/util/Set;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1802
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/AppStandbyController;->setActiveAdminApps(Ljava/util/Set;I)V

    .line 1803
    return-void
.end method

.method public setLastJobRunTime(Ljava/lang/String;IJ)V
    .registers 6

    .line 1782
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/usage/AppStandbyController;->setLastJobRunTime(Ljava/lang/String;IJ)V

    .line 1783
    return-void
.end method
