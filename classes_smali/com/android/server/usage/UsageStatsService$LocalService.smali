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

    .line 1902
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-direct {p0}, Landroid/app/usage/UsageStatsManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/usage/UsageStatsService;
    .param p2, "x1"  # Lcom/android/server/usage/UsageStatsService$1;

    .line 1902
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService$LocalService;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    return-void
.end method


# virtual methods
.method public addAppIdleStateChangeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V
    .registers 3
    .param p1, "listener"  # Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;

    .line 2020
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0, p1}, Lcom/android/server/usage/AppStandbyController;->addListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V

    .line 2021
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService$LocalService;->isAppIdleParoleOn()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;->onParoleStateChanged(Z)V

    .line 2022
    return-void
.end method

.method public addAppStatusChangeInternalListener(Landroid/app/usage/UsageStatsManagerInternal$AppStatusChangeInternalListener;)V
    .registers 3
    .param p1, "listener"  # Landroid/app/usage/UsageStatsManagerInternal$AppStatusChangeInternalListener;

    .line 2111
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, p1}, Lcom/android/server/usage/UsageStatsService;->addAppStatusInternalListener(Landroid/app/usage/UsageStatsManagerInternal$AppStatusChangeInternalListener;)V

    .line 2112
    return-void
.end method

.method public applyRestoredPayload(ILjava/lang/String;[B)V
    .registers 8
    .param p1, "user"  # I
    .param p2, "key"  # Ljava/lang/String;
    .param p3, "payload"  # [B

    .line 2046
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->access$1700(Lcom/android/server/usage/UsageStatsService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2047
    if-nez p1, :cond_18

    .line 2048
    :try_start_9
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 2049
    invoke-static {v2}, Lcom/android/server/usage/UsageStatsService;->access$1900(Lcom/android/server/usage/UsageStatsService;)J

    move-result-wide v2

    invoke-static {v1, p1, v2, v3}, Lcom/android/server/usage/UsageStatsService;->access$2000(Lcom/android/server/usage/UsageStatsService;IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v1

    .line 2050
    .local v1, "userStats":Lcom/android/server/usage/UserUsageStatsService;
    invoke-virtual {v1, p2, p3}, Lcom/android/server/usage/UserUsageStatsService;->applyRestoredPayload(Ljava/lang/String;[B)V

    .line 2052
    .end local v1  # "userStats":Lcom/android/server/usage/UserUsageStatsService;
    :cond_18
    monitor-exit v0

    .line 2053
    return-void

    .line 2052
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public getAppStandbyBucket(Ljava/lang/String;IJ)I
    .registers 12
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .param p3, "nowElapsed"  # J

    .line 1992
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->getAppStandbyBucket(Ljava/lang/String;IJZ)I

    move-result v0

    return v0
.end method

.method public getAppUsageLimit(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "user"  # Landroid/os/UserHandle;

    .line 2105
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/AppTimeLimitController;->getAppUsageLimit(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;

    move-result-object v0

    return-object v0
.end method

.method public getBackupPayload(ILjava/lang/String;)[B
    .registers 7
    .param p1, "user"  # I
    .param p2, "key"  # Ljava/lang/String;

    .line 2033
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->access$1700(Lcom/android/server/usage/UsageStatsService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2034
    if-nez p1, :cond_1b

    .line 2035
    :try_start_9
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 2036
    invoke-static {v2}, Lcom/android/server/usage/UsageStatsService;->access$1900(Lcom/android/server/usage/UsageStatsService;)J

    move-result-wide v2

    invoke-static {v1, p1, v2, v3}, Lcom/android/server/usage/UsageStatsService;->access$2000(Lcom/android/server/usage/UsageStatsService;IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v1

    .line 2037
    .local v1, "userStats":Lcom/android/server/usage/UserUsageStatsService;
    invoke-virtual {v1, p2}, Lcom/android/server/usage/UserUsageStatsService;->getBackupPayload(Ljava/lang/String;)[B

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 2039
    .end local v1  # "userStats":Lcom/android/server/usage/UserUsageStatsService;
    :cond_1b
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 2041
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public getIdleUidsForUser(I)[I
    .registers 3
    .param p1, "userId"  # I

    .line 1997
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0, p1}, Lcom/android/server/usage/AppStandbyController;->getIdleUidsForUser(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getTimeSinceLastJobRun(Ljava/lang/String;I)J
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 2070
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/AppStandbyController;->getTimeSinceLastJobRun(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public isAppForground(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"  # Ljava/lang/String;

    .line 2122
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v0, p1}, Lcom/android/server/usage/UsageStatsService;->access$2100(Lcom/android/server/usage/UsageStatsService;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isAppIdle(Ljava/lang/String;II)Z
    .registers 11
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "uidForAppId"  # I
    .param p3, "userId"  # I

    .line 1985
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    .line 1986
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 1985
    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->isAppIdleFiltered(Ljava/lang/String;IIJ)Z

    move-result v0

    return v0
.end method

.method public isAppIdleParoleOn()Z
    .registers 2

    .line 2002
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController;->isParoledOrCharging()Z

    move-result v0

    return v0
.end method

.method public onActiveAdminAdded(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 2080
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/AppStandbyController;->addActiveDeviceAdmin(Ljava/lang/String;I)V

    .line 2081
    return-void
.end method

.method public onAdminDataAvailable()V
    .registers 2

    .line 2090
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController;->onAdminDataAvailable()V

    .line 2091
    return-void
.end method

.method public prepareForPossibleShutdown()V
    .registers 2

    .line 2015
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->prepareForPossibleShutdown()V

    .line 2016
    return-void
.end method

.method public prepareShutdown()V
    .registers 2

    .line 2010
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->shutdown()V

    .line 2011
    return-void
.end method

.method public queryUsageStatsForUser(IIJJZ)Ljava/util/List;
    .registers 16
    .param p1, "userId"  # I
    .param p2, "intervalType"  # I
    .param p3, "beginTime"  # J
    .param p5, "endTime"  # J
    .param p7, "obfuscateInstantApps"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJZ)",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    .line 2059
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/UsageStatsService;->queryUsageStats(IIJJZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeAppIdleStateChangeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V
    .registers 3
    .param p1, "listener"  # Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;

    .line 2027
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0, p1}, Lcom/android/server/usage/AppStandbyController;->removeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V

    .line 2028
    return-void
.end method

.method public removeAppStatusChangeInternalListener(Landroid/app/usage/UsageStatsManagerInternal$AppStatusChangeInternalListener;)V
    .registers 3
    .param p1, "listener"  # Landroid/app/usage/UsageStatsManagerInternal$AppStatusChangeInternalListener;

    .line 2117
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, p1}, Lcom/android/server/usage/UsageStatsService;->removeAppStatusInternalListener(Landroid/app/usage/UsageStatsManagerInternal$AppStatusChangeInternalListener;)V

    .line 2118
    return-void
.end method

.method public reportAppJobState(Ljava/lang/String;IIJ)V
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .param p3, "numDeferredJobs"  # I
    .param p4, "timeSinceLastJobRun"  # J

    .line 2076
    return-void
.end method

.method public reportConfigurationChange(Landroid/content/res/Configuration;I)V
    .registers 7
    .param p1, "config"  # Landroid/content/res/Configuration;
    .param p2, "userId"  # I

    .line 1940
    if-nez p1, :cond_a

    .line 1941
    const-string v0, "UsageStatsService"

    const-string v1, "Configuration event reported with a null config"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    return-void

    .line 1945
    :cond_a
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    const/4 v1, 0x5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 1946
    .local v0, "event":Landroid/app/usage/UsageEvents$Event;
    const-string v1, "android"

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 1947
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 1948
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1949
    return-void
.end method

.method public reportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "userId"  # I

    .line 1980
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/usage/AppStandbyController;->postReportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1981
    return-void
.end method

.method public reportEvent(Landroid/content/ComponentName;IIILandroid/content/ComponentName;)V
    .registers 9
    .param p1, "component"  # Landroid/content/ComponentName;
    .param p2, "userId"  # I
    .param p3, "eventType"  # I
    .param p4, "instanceId"  # I
    .param p5, "taskRoot"  # Landroid/content/ComponentName;

    .line 1907
    if-nez p1, :cond_a

    .line 1908
    const-string v0, "UsageStatsService"

    const-string v1, "Event reported without a component name"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    return-void

    .line 1912
    :cond_a
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {v0, p3, v1, v2}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 1913
    .local v0, "event":Landroid/app/usage/UsageEvents$Event;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 1914
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    .line 1915
    iput p4, v0, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    .line 1916
    if-nez p5, :cond_29

    .line 1917
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 1918
    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    goto :goto_35

    .line 1920
    :cond_29
    invoke-virtual {p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    .line 1921
    invoke-virtual {p5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    .line 1923
    :goto_35
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1924
    return-void
.end method

.method public reportEvent(Ljava/lang/String;II)V
    .registers 7
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .param p3, "eventType"  # I

    .line 1928
    if-nez p1, :cond_19

    .line 1929
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event reported without a package name, eventType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsageStatsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1930
    return-void

    .line 1933
    :cond_19
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {v0, p3, v1, v2}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 1934
    .local v0, "event":Landroid/app/usage/UsageEvents$Event;
    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 1935
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1936
    return-void
.end method

.method public reportExemptedSyncStart(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 2100
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/AppStandbyController;->postReportExemptedSyncStart(Ljava/lang/String;I)V

    .line 2101
    return-void
.end method

.method public reportInterruptiveNotification(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "channelId"  # Ljava/lang/String;
    .param p3, "userId"  # I

    .line 1954
    if-eqz p1, :cond_29

    if-nez p2, :cond_5

    goto :goto_29

    .line 1959
    :cond_5
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    const/16 v1, 0xc

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 1960
    .local v0, "event":Landroid/app/usage/UsageEvents$Event;
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 1961
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    .line 1962
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p3, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1963
    return-void

    .line 1955
    .end local v0  # "event":Landroid/app/usage/UsageEvents$Event;
    :cond_29
    :goto_29
    const-string v0, "UsageStatsService"

    const-string v1, "Event reported without a package name or a channel ID"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    return-void
.end method

.method public reportShortcutUsage(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "shortcutId"  # Ljava/lang/String;
    .param p3, "userId"  # I

    .line 1967
    if-eqz p1, :cond_29

    if-nez p2, :cond_5

    goto :goto_29

    .line 1972
    :cond_5
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    const/16 v1, 0x8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 1973
    .local v0, "event":Landroid/app/usage/UsageEvents$Event;
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 1974
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    .line 1975
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p3, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1976
    return-void

    .line 1968
    .end local v0  # "event":Landroid/app/usage/UsageEvents$Event;
    :cond_29
    :goto_29
    const-string v0, "UsageStatsService"

    const-string v1, "Event reported without a package name or a shortcut ID"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    return-void
.end method

.method public reportSyncScheduled(Ljava/lang/String;IZ)V
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .param p3, "exempted"  # Z

    .line 2095
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/usage/AppStandbyController;->postReportSyncScheduled(Ljava/lang/String;IZ)V

    .line 2096
    return-void
.end method

.method public setActiveAdminApps(Ljava/util/Set;I)V
    .registers 4
    .param p2, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 2085
    .local p1, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/AppStandbyController;->setActiveAdminApps(Ljava/util/Set;I)V

    .line 2086
    return-void
.end method

.method public setLastJobRunTime(Ljava/lang/String;IJ)V
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .param p3, "elapsedRealtime"  # J

    .line 2065
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$LocalService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/usage/AppStandbyController;->setLastJobRunTime(Ljava/lang/String;IJ)V

    .line 2066
    return-void
.end method
