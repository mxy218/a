.class final Lcom/android/server/usage/UsageStatsService$BinderService;
.super Landroid/app/usage/IUsageStatsManager$Stub;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method private constructor <init>(Lcom/android/server/usage/UsageStatsService;)V
    .registers 2

    .line 1184
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-direct {p0}, Landroid/app/usage/IUsageStatsManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/usage/UsageStatsService;
    .param p2, "x1"  # Lcom/android/server/usage/UsageStatsService$1;

    .line 1184
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService$BinderService;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    return-void
.end method

.method private checkCallerIsSameApp(Ljava/lang/String;)V
    .registers 7
    .param p1, "pkg"  # Ljava/lang/String;

    .line 1240
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1241
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1243
    .local v1, "callingUserId":I
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v2, v2, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_14

    .line 1248
    return-void

    .line 1245
    :cond_14
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " cannot query eventsfor package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private checkCallerIsSystemOrSameApp(Ljava/lang/String;)V
    .registers 3
    .param p1, "pkg"  # Ljava/lang/String;

    .line 1233
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService$BinderService;->isCallingUidSystem()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1234
    return-void

    .line 1236
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService$BinderService;->checkCallerIsSameApp(Ljava/lang/String;)V

    .line 1237
    return-void
.end method

.method private hasObserverPermission()Z
    .registers 6

    .line 1203
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1204
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService;->access$1400(Lcom/android/server/usage/UsageStatsService;)Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object v1

    .line 1205
    .local v1, "dpmInternal":Landroid/app/admin/DevicePolicyManagerInternal;
    const/4 v2, 0x1

    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_2a

    if-eqz v1, :cond_19

    const/4 v3, -0x1

    .line 1207
    invoke-virtual {v1, v0, v3}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    move-result v3

    if-eqz v3, :cond_19

    goto :goto_2a

    .line 1212
    :cond_19
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v3}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.OBSERVE_APP_USAGE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_28

    goto :goto_29

    :cond_28
    const/4 v2, 0x0

    :goto_29
    return v2

    .line 1210
    :cond_2a
    :goto_2a
    return v2
.end method

.method private hasPermission(Ljava/lang/String;)Z
    .registers 8
    .param p1, "callingPackage"  # Ljava/lang/String;

    .line 1187
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1188
    .local v0, "callingUid":I
    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_a

    .line 1189
    return v1

    .line 1191
    :cond_a
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v2, v2, Lcom/android/server/usage/UsageStatsService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0x2b

    invoke-virtual {v2, v3, v0, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v2

    .line 1193
    .local v2, "mode":I
    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ne v2, v3, :cond_29

    .line 1196
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v3}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {v3, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_27

    goto :goto_28

    :cond_27
    move v1, v4

    :goto_28
    return v1

    .line 1199
    :cond_29
    if-nez v2, :cond_2c

    goto :goto_2d

    :cond_2c
    move v1, v4

    :goto_2d
    return v1
.end method

.method private varargs hasPermissions(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 9
    .param p1, "callingPackage"  # Ljava/lang/String;
    .param p2, "permissions"  # [Ljava/lang/String;

    .line 1217
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1218
    .local v0, "callingUid":I
    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_a

    .line 1220
    return v1

    .line 1223
    :cond_a
    const/4 v2, 0x1

    .line 1224
    .local v2, "hasPermissions":Z
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v3}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1225
    .local v3, "context":Landroid/content/Context;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_12
    array-length v5, p2

    if-ge v4, v5, :cond_26

    .line 1226
    if-eqz v2, :cond_21

    aget-object v5, p2, v4

    invoke-virtual {v3, v5}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_21

    move v5, v1

    goto :goto_22

    :cond_21
    const/4 v5, 0x0

    :goto_22
    move v2, v5

    .line 1225
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 1229
    .end local v4  # "i":I
    :cond_26
    return v2
.end method

.method private isCallingUidSystem()Z
    .registers 3

    .line 1251
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 1252
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method


# virtual methods
.method public addAppStatusListener(Landroid/app/usage/IFlymeAppStatusListener;)V
    .registers 3
    .param p1, "appStatusListener"  # Landroid/app/usage/IFlymeAppStatusListener;

    .line 1640
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, p1}, Lcom/android/server/usage/UsageStatsService;->addAppStatusListener(Landroid/app/usage/IFlymeAppStatusListener;)V

    .line 1641
    return-void
.end method

.method public clearAppStatusListeners()V
    .registers 2

    .line 1650
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->clearAppStatusListeners()V

    .line 1651
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 1617
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "UsageStatsService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 1618
    :cond_f
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, p3, p2}, Lcom/android/server/usage/UsageStatsService;->dump([Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1619
    return-void
.end method

.method public forceUsageSourceSettingRead()V
    .registers 2

    .line 1861
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->access$1800(Lcom/android/server/usage/UsageStatsService;)V

    .line 1862
    return-void
.end method

.method public getAppStandbyBucket(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 15
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "callingPackage"  # Ljava/lang/String;
    .param p3, "userId"  # I

    .line 1451
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 1453
    .local v8, "callingUid":I
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1454
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "getAppStandbyBucket"

    const/4 v7, 0x0

    .line 1453
    move v2, v8

    move v3, p3

    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_17} :catch_73

    move p3, v0

    .line 1458
    nop

    .line 1459
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    .line 1461
    .local v0, "packageUid":I
    if-eq v0, v8, :cond_33

    .line 1462
    invoke-direct {p0, p2}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    goto :goto_33

    .line 1463
    :cond_2b
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Don\'t have permission to query app standby bucket"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1467
    :cond_33
    :goto_33
    if-ltz v0, :cond_57

    .line 1471
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v1, v8, p3}, Lcom/android/server/usage/UsageStatsService;->access$1500(Lcom/android/server/usage/UsageStatsService;II)Z

    move-result v7

    .line 1473
    .local v7, "obfuscateInstantApps":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 1475
    .local v9, "token":J
    :try_start_3f
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    .line 1476
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1475
    move-object v2, p1

    move v3, p3

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->getAppStandbyBucket(Ljava/lang/String;IJZ)I

    move-result v1
    :try_end_4e
    .catchall {:try_start_3f .. :try_end_4e} :catchall_52

    .line 1478
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1475
    return v1

    .line 1478
    :catchall_52
    move-exception v1

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 1468
    .end local v7  # "obfuscateInstantApps":Z
    .end local v9  # "token":J
    :cond_57
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot get standby bucket for non existent package ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1456
    .end local v0  # "packageUid":I
    :catch_73
    move-exception v0

    .line 1457
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getAppStandbyBuckets(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 12
    .param p1, "callingPackageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/usage/AppStandbyInfo;",
            ">;"
        }
    .end annotation

    .line 1529
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 1531
    .local v8, "callingUid":I
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1532
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "getAppStandbyBucket"

    const/4 v7, 0x0

    .line 1531
    move v2, v8

    move v3, p2

    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_17} :catch_48

    move p2, v0

    .line 1536
    nop

    .line 1537
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1541
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1543
    .local v0, "token":J
    :try_start_23
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v2, v2, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    .line 1544
    invoke-virtual {v2, p2}, Lcom/android/server/usage/AppStandbyController;->getAppStandbyBuckets(I)Ljava/util/List;

    move-result-object v2

    .line 1545
    .local v2, "standbyBucketList":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/AppStandbyInfo;>;"
    if-nez v2, :cond_32

    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    goto :goto_37

    .line 1546
    :cond_32
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_37
    .catchall {:try_start_23 .. :try_end_37} :catchall_3b

    .line 1548
    :goto_37
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1545
    return-object v3

    .line 1548
    .end local v2  # "standbyBucketList":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/AppStandbyInfo;>;"
    :catchall_3b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1538
    .end local v0  # "token":J
    :cond_40
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Don\'t have permission to query app standby bucket"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1534
    :catch_48
    move-exception v0

    .line 1535
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getUsageSource()I
    .registers 3

    .line 1851
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasObserverPermission()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1854
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->access$1700(Lcom/android/server/usage/UsageStatsService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1855
    :try_start_d
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget v1, v1, Lcom/android/server/usage/UsageStatsService;->mUsageSource:I

    monitor-exit v0

    return v1

    .line 1856
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_13

    throw v1

    .line 1852
    :cond_16
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller doesn\'t have OBSERVE_APP_USAGE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isAppInactive(Ljava/lang/String;I)Z
    .registers 12
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 1410
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1411
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "isAppInactive"

    const/4 v7, 0x0

    .line 1410
    move v3, p2

    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_3f

    move p2, v0

    .line 1414
    nop

    .line 1415
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 1416
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1415
    invoke-static {v0, v1, p2}, Lcom/android/server/usage/UsageStatsService;->access$1500(Lcom/android/server/usage/UsageStatsService;II)Z

    move-result v0

    .line 1417
    .local v0, "obfuscateInstantApps":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 1419
    .local v7, "token":J
    :try_start_27
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    .line 1421
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1419
    move-object v2, p1

    move v3, p2

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/AppStandbyController;->isAppIdleFilteredOrParoled(Ljava/lang/String;IJZ)Z

    move-result v1
    :try_end_36
    .catchall {:try_start_27 .. :try_end_36} :catchall_3a

    .line 1423
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1419
    return v1

    .line 1423
    :catchall_3a
    move-exception v1

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 1412
    .end local v0  # "obfuscateInstantApps":Z
    .end local v7  # "token":J
    :catch_3f
    move-exception v0

    .line 1413
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public onCarrierPrivilegedAppsChanged()V
    .registers 4

    .line 1609
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.BIND_CARRIER_SERVICES"

    const-string/jumbo v2, "onCarrierPrivilegedAppsChanged can only be called by privileged apps."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1612
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController;->clearCarrierPrivilegedApps()V

    .line 1613
    return-void
.end method

.method public queryConfigurationStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 21
    .param p1, "bucketType"  # I
    .param p2, "beginTime"  # J
    .param p4, "endTime"  # J
    .param p6, "callingPackage"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1282
    move-object v1, p0

    move-object/from16 v2, p6

    invoke-direct {p0, v2}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_b

    .line 1283
    return-object v3

    .line 1286
    :cond_b
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v11

    .line 1287
    .local v11, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1289
    .local v12, "token":J
    :try_start_13
    iget-object v4, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 1290
    move v5, v11

    move v6, p1

    move-wide/from16 v7, p2

    move-wide/from16 v9, p4

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/usage/UsageStatsService;->queryConfigurationStats(IIJJ)Ljava/util/List;

    move-result-object v0

    .line 1292
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/ConfigurationStats;>;"
    if-eqz v0, :cond_2a

    .line 1293
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_26
    .catchall {:try_start_13 .. :try_end_26} :catchall_2f

    .line 1296
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1293
    return-object v3

    .line 1296
    .end local v0  # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/ConfigurationStats;>;"
    :cond_2a
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1297
    nop

    .line 1298
    return-object v3

    .line 1296
    :catchall_2f
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public queryEventStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 21
    .param p1, "bucketType"  # I
    .param p2, "beginTime"  # J
    .param p4, "endTime"  # J
    .param p6, "callingPackage"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/usage/EventStats;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1304
    move-object v1, p0

    move-object/from16 v2, p6

    invoke-direct {p0, v2}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_b

    .line 1305
    return-object v3

    .line 1308
    :cond_b
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v11

    .line 1309
    .local v11, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1311
    .local v12, "token":J
    :try_start_13
    iget-object v4, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 1312
    move v5, v11

    move v6, p1

    move-wide/from16 v7, p2

    move-wide/from16 v9, p4

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/usage/UsageStatsService;->queryEventStats(IIJJ)Ljava/util/List;

    move-result-object v0

    .line 1314
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/EventStats;>;"
    if-eqz v0, :cond_2a

    .line 1315
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_26
    .catchall {:try_start_13 .. :try_end_26} :catchall_2f

    .line 1318
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1315
    return-object v3

    .line 1318
    .end local v0  # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/EventStats;>;"
    :cond_2a
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1319
    nop

    .line 1320
    return-object v3

    .line 1318
    :catchall_2f
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public queryEvents(JJLjava/lang/String;)Landroid/app/usage/UsageEvents;
    .registers 20
    .param p1, "beginTime"  # J
    .param p3, "endTime"  # J
    .param p5, "callingPackage"  # Ljava/lang/String;

    .line 1325
    move-object v1, p0

    move-object/from16 v2, p5

    invoke-direct {p0, v2}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1326
    const/4 v0, 0x0

    return-object v0

    .line 1329
    :cond_b
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 1330
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 1329
    invoke-static {v0, v3, v4}, Lcom/android/server/usage/UsageStatsService;->access$1500(Lcom/android/server/usage/UsageStatsService;II)Z

    move-result v3

    .line 1332
    .local v3, "obfuscateInstantApps":Z
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 1333
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1335
    .local v12, "token":J
    :try_start_21
    iget-object v5, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move v6, v4

    move-wide v7, p1

    move-wide/from16 v9, p3

    move v11, v3

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/usage/UsageStatsService;->queryEvents(IJJZ)Landroid/app/usage/UsageEvents;

    move-result-object v0
    :try_end_2c
    .catchall {:try_start_21 .. :try_end_2c} :catchall_30

    .line 1338
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1335
    return-object v0

    .line 1338
    :catchall_30
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public queryEventsForPackage(JJLjava/lang/String;)Landroid/app/usage/UsageEvents;
    .registers 22
    .param p1, "beginTime"  # J
    .param p3, "endTime"  # J
    .param p5, "callingPackage"  # Ljava/lang/String;

    .line 1345
    move-object/from16 v1, p0

    move-object/from16 v10, p5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 1346
    .local v11, "callingUid":I
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 1348
    .local v12, "callingUserId":I
    invoke-direct {v1, v10}, Lcom/android/server/usage/UsageStatsService$BinderService;->checkCallerIsSameApp(Ljava/lang/String;)V

    .line 1349
    invoke-direct {v1, v10}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v13

    .line 1351
    .local v13, "includeTaskRoot":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1353
    .local v14, "token":J
    :try_start_17
    iget-object v2, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move v3, v12

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move v9, v13

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/usage/UsageStatsService;->queryEventsForPackage(IJJLjava/lang/String;Z)Landroid/app/usage/UsageEvents;

    move-result-object v0
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_29

    .line 1356
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1353
    return-object v0

    .line 1356
    :catchall_29
    move-exception v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public queryEventsForPackageForUser(JJILjava/lang/String;Ljava/lang/String;)Landroid/app/usage/UsageEvents;
    .registers 23
    .param p1, "beginTime"  # J
    .param p3, "endTime"  # J
    .param p5, "userId"  # I
    .param p6, "pkg"  # Ljava/lang/String;
    .param p7, "callingPackage"  # Ljava/lang/String;

    .line 1388
    move-object v1, p0

    move-object/from16 v2, p7

    invoke-direct {p0, v2}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1389
    const/4 v0, 0x0

    return-object v0

    .line 1391
    :cond_b
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    move/from16 v11, p5

    if-eq v11, v0, :cond_20

    .line 1392
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v4, "No permission to query usage stats for this user"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    :cond_20
    move-object/from16 v12, p6

    invoke-direct {p0, v12}, Lcom/android/server/usage/UsageStatsService$BinderService;->checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    .line 1398
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 1400
    .local v13, "token":J
    :try_start_29
    iget-object v3, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    const/4 v10, 0x1

    move/from16 v4, p5

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move-object/from16 v9, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/usage/UsageStatsService;->queryEventsForPackage(IJJLjava/lang/String;Z)Landroid/app/usage/UsageEvents;

    move-result-object v0
    :try_end_38
    .catchall {:try_start_29 .. :try_end_38} :catchall_3c

    .line 1403
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1400
    return-object v0

    .line 1403
    :catchall_3c
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public queryEventsForUser(JJILjava/lang/String;)Landroid/app/usage/UsageEvents;
    .registers 21
    .param p1, "beginTime"  # J
    .param p3, "endTime"  # J
    .param p5, "userId"  # I
    .param p6, "callingPackage"  # Ljava/lang/String;

    .line 1363
    move-object v1, p0

    move-object/from16 v2, p6

    invoke-direct {p0, v2}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1364
    const/4 v0, 0x0

    return-object v0

    .line 1367
    :cond_b
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    move/from16 v10, p5

    if-eq v10, v0, :cond_20

    .line 1368
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v4, "No permission to query usage stats for this user"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    :cond_20
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 1374
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 1373
    invoke-static {v0, v3, v4}, Lcom/android/server/usage/UsageStatsService;->access$1500(Lcom/android/server/usage/UsageStatsService;II)Z

    move-result v11

    .line 1376
    .local v11, "obfuscateInstantApps":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1378
    .local v12, "token":J
    :try_start_32
    iget-object v3, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move/from16 v4, p5

    move-wide v5, p1

    move-wide/from16 v7, p3

    move v9, v11

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/usage/UsageStatsService;->queryEvents(IJJZ)Landroid/app/usage/UsageEvents;

    move-result-object v0
    :try_end_3e
    .catchall {:try_start_32 .. :try_end_3e} :catchall_42

    .line 1381
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1378
    return-object v0

    .line 1381
    :catchall_42
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public queryUsageStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 23
    .param p1, "bucketType"  # I
    .param p2, "beginTime"  # J
    .param p4, "endTime"  # J
    .param p6, "callingPackage"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    .line 1258
    move-object/from16 v1, p0

    move-object/from16 v2, p6

    invoke-direct {v1, v2}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_c

    .line 1259
    return-object v3

    .line 1262
    :cond_c
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 1263
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 1262
    invoke-static {v0, v4, v5}, Lcom/android/server/usage/UsageStatsService;->access$1500(Lcom/android/server/usage/UsageStatsService;II)Z

    move-result v4

    .line 1265
    .local v4, "obfuscateInstantApps":Z
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 1266
    .local v5, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1268
    .local v14, "token":J
    :try_start_22
    iget-object v6, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move v7, v5

    move/from16 v8, p1

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    move v13, v4

    invoke-virtual/range {v6 .. v13}, Lcom/android/server/usage/UsageStatsService;->queryUsageStats(IIJJZ)Ljava/util/List;

    move-result-object v0

    .line 1270
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    if-eqz v0, :cond_3b

    .line 1271
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_37
    .catchall {:try_start_22 .. :try_end_37} :catchall_40

    .line 1274
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1271
    return-object v3

    .line 1274
    .end local v0  # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    :cond_3b
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1275
    nop

    .line 1276
    return-object v3

    .line 1274
    :catchall_40
    move-exception v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public registerAppUsageLimitObserver(I[Ljava/lang/String;JJLandroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 27
    .param p1, "observerId"  # I
    .param p2, "packages"  # [Ljava/lang/String;
    .param p3, "timeLimitMs"  # J
    .param p5, "timeUsedMs"  # J
    .param p7, "callbackIntent"  # Landroid/app/PendingIntent;
    .param p8, "callingPackage"  # Ljava/lang/String;

    .line 1743
    move-object/from16 v1, p0

    move-object/from16 v12, p2

    const-string v0, "android.permission.SUSPEND_APPS"

    const-string v2, "android.permission.OBSERVE_APP_USAGE"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    move-object/from16 v13, p8

    invoke-direct {v1, v13, v0}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermissions(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 1749
    if-eqz v12, :cond_4f

    array-length v0, v12

    if-eqz v0, :cond_4f

    .line 1752
    if-nez p7, :cond_28

    cmp-long v0, p5, p3

    if-ltz v0, :cond_20

    goto :goto_28

    .line 1753
    :cond_20
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "callbackIntent can\'t be null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1755
    :cond_28
    :goto_28
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 1756
    .local v14, "callingUid":I
    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    .line 1757
    .local v15, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 1759
    .local v16, "token":J
    :try_start_34
    iget-object v2, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move v3, v14

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    move v11, v15

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/usage/UsageStatsService;->registerAppUsageLimitObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;I)V
    :try_end_45
    .catchall {:try_start_34 .. :try_end_45} :catchall_4a

    .line 1762
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1763
    nop

    .line 1764
    return-void

    .line 1762
    :catchall_4a
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1750
    .end local v14  # "callingUid":I
    .end local v15  # "userId":I
    .end local v16  # "token":J
    :cond_4f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must specify at least one package"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1745
    :cond_57
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Caller doesn\'t have both SUSPEND_APPS and OBSERVE_APP_USAGE permissions"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerAppUsageObserver(I[Ljava/lang/String;JLandroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 22
    .param p1, "observerId"  # I
    .param p2, "packages"  # [Ljava/lang/String;
    .param p3, "timeLimitMs"  # J
    .param p5, "callbackIntent"  # Landroid/app/PendingIntent;
    .param p6, "callingPackage"  # Ljava/lang/String;

    .line 1658
    move-object/from16 v9, p2

    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasObserverPermission()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 1662
    if-eqz v9, :cond_3e

    array-length v0, v9

    if-eqz v0, :cond_3e

    .line 1665
    if-eqz p5, :cond_35

    .line 1668
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 1669
    .local v10, "callingUid":I
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 1670
    .local v11, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1672
    .local v12, "token":J
    move-object v14, p0

    :try_start_1c
    iget-object v1, v14, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move v2, v10

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    move-object/from16 v7, p5

    move v8, v11

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usage/UsageStatsService;->registerAppUsageObserver(II[Ljava/lang/String;JLandroid/app/PendingIntent;I)V
    :try_end_2b
    .catchall {:try_start_1c .. :try_end_2b} :catchall_30

    .line 1675
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1676
    nop

    .line 1677
    return-void

    .line 1675
    :catchall_30
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1666
    .end local v10  # "callingUid":I
    .end local v11  # "userId":I
    .end local v12  # "token":J
    :cond_35
    move-object v14, p0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "callbackIntent can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1662
    :cond_3e
    move-object v14, p0

    .line 1663
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify at least one package"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1659
    :cond_47
    move-object v14, p0

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller doesn\'t have OBSERVE_APP_USAGE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerUsageSessionObserver(I[Ljava/lang/String;JJLandroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 27
    .param p1, "sessionObserverId"  # I
    .param p2, "observed"  # [Ljava/lang/String;
    .param p3, "timeLimitMs"  # J
    .param p5, "sessionThresholdTimeMs"  # J
    .param p7, "limitReachedCallbackIntent"  # Landroid/app/PendingIntent;
    .param p8, "sessionEndCallbackIntent"  # Landroid/app/PendingIntent;
    .param p9, "callingPackage"  # Ljava/lang/String;

    .line 1700
    move-object/from16 v12, p2

    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasObserverPermission()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 1704
    if-eqz v12, :cond_43

    array-length v0, v12

    if-eqz v0, :cond_43

    .line 1707
    if-eqz p7, :cond_3a

    .line 1710
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    .line 1711
    .local v13, "callingUid":I
    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    .line 1712
    .local v14, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 1714
    .local v15, "token":J
    move-object/from16 v11, p0

    :try_start_1d
    iget-object v1, v11, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move v2, v13

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move v11, v14

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/usage/UsageStatsService;->registerUsageSessionObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    :try_end_30
    .catchall {:try_start_1d .. :try_end_30} :catchall_35

    .line 1718
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1719
    nop

    .line 1720
    return-void

    .line 1718
    :catchall_35
    move-exception v0

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1708
    .end local v13  # "callingUid":I
    .end local v14  # "userId":I
    .end local v15  # "token":J
    :cond_3a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "limitReachedCallbackIntent can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1705
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify at least one observed entity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1701
    :cond_4b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller doesn\'t have OBSERVE_APP_USAGE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeAppStatusListener(Landroid/app/usage/IFlymeAppStatusListener;)V
    .registers 3
    .param p1, "appStatusListener"  # Landroid/app/usage/IFlymeAppStatusListener;

    .line 1645
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, p1}, Lcom/android/server/usage/UsageStatsService;->removeAppStatusListener(Landroid/app/usage/IFlymeAppStatusListener;)V

    .line 1646
    return-void
.end method

.method public reportChooserSelection(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .param p3, "contentType"  # Ljava/lang/String;
    .param p4, "annotations"  # [Ljava/lang/String;
    .param p5, "action"  # Ljava/lang/String;

    .line 1624
    if-nez p1, :cond_a

    .line 1625
    const-string v0, "UsageStatsService"

    const-string v1, "Event report user selecting a null package"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    return-void

    .line 1629
    :cond_a
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    const/16 v1, 0x9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 1630
    .local v0, "event":Landroid/app/usage/UsageEvents$Event;
    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 1631
    iput-object p5, v0, Landroid/app/usage/UsageEvents$Event;->mAction:Ljava/lang/String;

    .line 1632
    iput-object p3, v0, Landroid/app/usage/UsageEvents$Event;->mContentType:Ljava/lang/String;

    .line 1633
    iput-object p4, v0, Landroid/app/usage/UsageEvents$Event;->mContentAnnotations:[Ljava/lang/String;

    .line 1634
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1635
    return-void
.end method

.method public reportPastUsageStart(Landroid/os/IBinder;Ljava/lang/String;JLjava/lang/String;)V
    .registers 14
    .param p1, "activity"  # Landroid/os/IBinder;
    .param p2, "token"  # Ljava/lang/String;
    .param p3, "timeAgoMs"  # J
    .param p5, "callingPackage"  # Ljava/lang/String;

    .line 1794
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1795
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1796
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1799
    .local v2, "binderToken":J
    :try_start_c
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v4, v4, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    monitor-enter v4
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_72

    .line 1800
    :try_start_11
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v5, v5, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 1801
    .local v5, "tokens":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v5, :cond_32

    .line 1802
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    move-object v5, v6

    .line 1803
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v6, v6, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1805
    :cond_32
    monitor-exit v4
    :try_end_33
    .catchall {:try_start_11 .. :try_end_33} :catchall_6f

    .line 1807
    :try_start_33
    monitor-enter v5
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_72

    .line 1808
    :try_start_34
    invoke-virtual {v5, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 1812
    monitor-exit v5
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_6c

    .line 1814
    :try_start_3b
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v4, v4, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v6, p5, p2}, Lcom/android/server/usage/UsageStatsService;->access$1600(Lcom/android/server/usage/UsageStatsService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v1, p3, p4}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStart(Ljava/lang/String;IJ)V
    :try_end_48
    .catchall {:try_start_3b .. :try_end_48} :catchall_72

    .line 1817
    .end local v5  # "tokens":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1818
    nop

    .line 1819
    return-void

    .line 1809
    .restart local v5  # "tokens":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_4d
    :try_start_4d
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is already reported as started for this activity"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0  # "callingUid":I
    .end local v1  # "userId":I
    .end local v2  # "binderToken":J
    .end local v5  # "tokens":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local p0  # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .end local p1  # "activity":Landroid/os/IBinder;
    .end local p2  # "token":Ljava/lang/String;
    .end local p3  # "timeAgoMs":J
    .end local p5  # "callingPackage":Ljava/lang/String;
    throw v4

    .line 1812
    .restart local v0  # "callingUid":I
    .restart local v1  # "userId":I
    .restart local v2  # "binderToken":J
    .restart local v5  # "tokens":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local p0  # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .restart local p1  # "activity":Landroid/os/IBinder;
    .restart local p2  # "token":Ljava/lang/String;
    .restart local p3  # "timeAgoMs":J
    .restart local p5  # "callingPackage":Ljava/lang/String;
    :catchall_6c
    move-exception v4

    monitor-exit v5
    :try_end_6e
    .catchall {:try_start_4d .. :try_end_6e} :catchall_6c

    .end local v0  # "callingUid":I
    .end local v1  # "userId":I
    .end local v2  # "binderToken":J
    .end local p0  # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .end local p1  # "activity":Landroid/os/IBinder;
    .end local p2  # "token":Ljava/lang/String;
    .end local p3  # "timeAgoMs":J
    .end local p5  # "callingPackage":Ljava/lang/String;
    :try_start_6e
    throw v4
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_72

    .line 1805
    .end local v5  # "tokens":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v0  # "callingUid":I
    .restart local v1  # "userId":I
    .restart local v2  # "binderToken":J
    .restart local p0  # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .restart local p1  # "activity":Landroid/os/IBinder;
    .restart local p2  # "token":Ljava/lang/String;
    .restart local p3  # "timeAgoMs":J
    .restart local p5  # "callingPackage":Ljava/lang/String;
    :catchall_6f
    move-exception v5

    :try_start_70
    monitor-exit v4
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    .end local v0  # "callingUid":I
    .end local v1  # "userId":I
    .end local v2  # "binderToken":J
    .end local p0  # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .end local p1  # "activity":Landroid/os/IBinder;
    .end local p2  # "token":Ljava/lang/String;
    .end local p3  # "timeAgoMs":J
    .end local p5  # "callingPackage":Ljava/lang/String;
    :try_start_71
    throw v5
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_72

    .line 1817
    .restart local v0  # "callingUid":I
    .restart local v1  # "userId":I
    .restart local v2  # "binderToken":J
    .restart local p0  # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .restart local p1  # "activity":Landroid/os/IBinder;
    .restart local p2  # "token":Ljava/lang/String;
    .restart local p3  # "timeAgoMs":J
    .restart local p5  # "callingPackage":Ljava/lang/String;
    :catchall_72
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public reportUsageStart(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "activity"  # Landroid/os/IBinder;
    .param p2, "token"  # Ljava/lang/String;
    .param p3, "callingPackage"  # Ljava/lang/String;

    .line 1787
    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/UsageStatsService$BinderService;->reportPastUsageStart(Landroid/os/IBinder;Ljava/lang/String;JLjava/lang/String;)V

    .line 1788
    return-void
.end method

.method public reportUsageStop(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "activity"  # Landroid/os/IBinder;
    .param p2, "token"  # Ljava/lang/String;
    .param p3, "callingPackage"  # Ljava/lang/String;

    .line 1823
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1824
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1825
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1828
    .local v2, "binderToken":J
    :try_start_c
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v4, v4, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    monitor-enter v4
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_80

    .line 1829
    :try_start_11
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v5, v5, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 1830
    .local v5, "tokens":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v5, :cond_5e

    .line 1835
    monitor-exit v4
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_7d

    .line 1837
    :try_start_22
    monitor-enter v5
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_80

    .line 1838
    :try_start_23
    invoke-virtual {v5, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 1842
    monitor-exit v5
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_5b

    .line 1843
    :try_start_2a
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v4, v4, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v6, p3, p2}, Lcom/android/server/usage/UsageStatsService;->access$1600(Lcom/android/server/usage/UsageStatsService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v1}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStop(Ljava/lang/String;I)V
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_80

    .line 1845
    .end local v5  # "tokens":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1846
    nop

    .line 1847
    return-void

    .line 1839
    .restart local v5  # "tokens":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_3c
    :try_start_3c
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is already reported as stopped for this activity"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0  # "callingUid":I
    .end local v1  # "userId":I
    .end local v2  # "binderToken":J
    .end local v5  # "tokens":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local p0  # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .end local p1  # "activity":Landroid/os/IBinder;
    .end local p2  # "token":Ljava/lang/String;
    .end local p3  # "callingPackage":Ljava/lang/String;
    throw v4

    .line 1842
    .restart local v0  # "callingUid":I
    .restart local v1  # "userId":I
    .restart local v2  # "binderToken":J
    .restart local v5  # "tokens":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local p0  # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .restart local p1  # "activity":Landroid/os/IBinder;
    .restart local p2  # "token":Ljava/lang/String;
    .restart local p3  # "callingPackage":Ljava/lang/String;
    :catchall_5b
    move-exception v4

    monitor-exit v5
    :try_end_5d
    .catchall {:try_start_3c .. :try_end_5d} :catchall_5b

    .end local v0  # "callingUid":I
    .end local v1  # "userId":I
    .end local v2  # "binderToken":J
    .end local p0  # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .end local p1  # "activity":Landroid/os/IBinder;
    .end local p2  # "token":Ljava/lang/String;
    .end local p3  # "callingPackage":Ljava/lang/String;
    :try_start_5d
    throw v4
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_80

    .line 1831
    .restart local v0  # "callingUid":I
    .restart local v1  # "userId":I
    .restart local v2  # "binderToken":J
    .restart local p0  # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .restart local p1  # "activity":Landroid/os/IBinder;
    .restart local p2  # "token":Ljava/lang/String;
    .restart local p3  # "callingPackage":Ljava/lang/String;
    :cond_5e
    :try_start_5e
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown reporter trying to stop token "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0  # "callingUid":I
    .end local v1  # "userId":I
    .end local v2  # "binderToken":J
    .end local p0  # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .end local p1  # "activity":Landroid/os/IBinder;
    .end local p2  # "token":Ljava/lang/String;
    .end local p3  # "callingPackage":Ljava/lang/String;
    throw v6

    .line 1835
    .end local v5  # "tokens":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v0  # "callingUid":I
    .restart local v1  # "userId":I
    .restart local v2  # "binderToken":J
    .restart local p0  # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .restart local p1  # "activity":Landroid/os/IBinder;
    .restart local p2  # "token":Ljava/lang/String;
    .restart local p3  # "callingPackage":Ljava/lang/String;
    :catchall_7d
    move-exception v5

    monitor-exit v4
    :try_end_7f
    .catchall {:try_start_5e .. :try_end_7f} :catchall_7d

    .end local v0  # "callingUid":I
    .end local v1  # "userId":I
    .end local v2  # "binderToken":J
    .end local p0  # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .end local p1  # "activity":Landroid/os/IBinder;
    .end local p2  # "token":Ljava/lang/String;
    .end local p3  # "callingPackage":Ljava/lang/String;
    :try_start_7f
    throw v5
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_80

    .line 1845
    .restart local v0  # "callingUid":I
    .restart local v1  # "userId":I
    .restart local v2  # "binderToken":J
    .restart local p0  # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .restart local p1  # "activity":Landroid/os/IBinder;
    .restart local p2  # "token":Ljava/lang/String;
    .restart local p3  # "callingPackage":Ljava/lang/String;
    :catchall_80
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public setAppInactive(Ljava/lang/String;ZI)V
    .registers 13
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "idle"  # Z
    .param p3, "userId"  # I

    .line 1429
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 1431
    .local v8, "callingUid":I
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1432
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string/jumbo v6, "setAppInactive"

    const/4 v7, 0x0

    .line 1431
    move v2, v8

    move v3, p3

    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_18} :catch_4a

    move p3, v0

    .line 1436
    nop

    .line 1437
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CHANGE_APP_IDLE_STATE"

    const-string v2, "No permission to change app idle state"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1441
    .local v0, "token":J
    :try_start_2b
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v2, v2, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v2, p1}, Lcom/android/server/usage/AppStandbyController;->getAppId(Ljava/lang/String;)I

    move-result v2
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_45

    .line 1442
    .local v2, "appId":I
    if-gez v2, :cond_39

    .line 1445
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1442
    return-void

    .line 1443
    :cond_39
    :try_start_39
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v3, v3, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/usage/AppStandbyController;->setAppIdleAsync(Ljava/lang/String;ZI)V
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_45

    .line 1445
    .end local v2  # "appId":I
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1446
    nop

    .line 1447
    return-void

    .line 1445
    :catchall_45
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1434
    .end local v0  # "token":J
    :catch_4a
    move-exception v0

    .line 1435
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setAppStandbyBucket(Ljava/lang/String;II)V
    .registers 21
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "bucket"  # I
    .param p3, "userId"  # I

    .line 1485
    move-object/from16 v1, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.CHANGE_APP_IDLE_STATE"

    const-string v3, "No permission to change app standby state"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    const/16 v0, 0xa

    if-lt v11, v0, :cond_a5

    const/16 v0, 0x32

    if-gt v11, v0, :cond_a5

    .line 1492
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 1494
    .local v12, "callingUid":I
    :try_start_1f
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    .line 1495
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string/jumbo v8, "setAppStandbyBucket"

    const/4 v9, 0x0

    .line 1494
    move v4, v12

    move/from16 v5, p3

    invoke-interface/range {v2 .. v9}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_34} :catch_9f

    move v13, v0

    .line 1499
    .end local p3  # "userId":I
    .local v13, "userId":I
    nop

    .line 1500
    if-eqz v12, :cond_3f

    const/16 v0, 0x7d0

    if-ne v12, v0, :cond_3d

    goto :goto_3f

    :cond_3d
    const/4 v0, 0x0

    goto :goto_40

    :cond_3f
    :goto_3f
    const/4 v0, 0x1

    :goto_40
    move v9, v0

    .line 1501
    .local v9, "shellCaller":Z
    invoke-static {v12}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v14

    .line 1502
    .local v14, "systemCaller":Z
    if-eqz v14, :cond_4b

    .line 1503
    const/16 v0, 0x400

    move v6, v0

    goto :goto_4e

    .line 1504
    :cond_4b
    const/16 v0, 0x500

    move v6, v0

    :goto_4e
    nop

    .line 1505
    .local v6, "reason":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 1507
    .local v15, "token":J
    :try_start_53
    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/high16 v2, 0x4c0000

    invoke-virtual {v0, v10, v2, v13}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    .line 1511
    .local v0, "packageUid":I
    if-eq v0, v12, :cond_92

    .line 1514
    if-ltz v0, :cond_76

    .line 1519
    iget-object v2, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v2, v2, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    .line 1520
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 1519
    move-object/from16 v3, p1

    move v4, v13

    move/from16 v5, p2

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/usage/AppStandbyController;->setAppStandbyBucket(Ljava/lang/String;IIIJZ)V
    :try_end_71
    .catchall {:try_start_53 .. :try_end_71} :catchall_9a

    .line 1522
    .end local v0  # "packageUid":I
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1523
    nop

    .line 1524
    return-void

    .line 1515
    .restart local v0  # "packageUid":I
    :cond_76
    :try_start_76
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot set standby bucket for non existent package ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v6  # "reason":I
    .end local v9  # "shellCaller":Z
    .end local v12  # "callingUid":I
    .end local v13  # "userId":I
    .end local v14  # "systemCaller":Z
    .end local v15  # "token":J
    .end local p0  # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .end local p1  # "packageName":Ljava/lang/String;
    .end local p2  # "bucket":I
    throw v2

    .line 1512
    .restart local v6  # "reason":I
    .restart local v9  # "shellCaller":Z
    .restart local v12  # "callingUid":I
    .restart local v13  # "userId":I
    .restart local v14  # "systemCaller":Z
    .restart local v15  # "token":J
    .restart local p0  # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .restart local p1  # "packageName":Ljava/lang/String;
    .restart local p2  # "bucket":I
    :cond_92
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot set your own standby bucket"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v6  # "reason":I
    .end local v9  # "shellCaller":Z
    .end local v12  # "callingUid":I
    .end local v13  # "userId":I
    .end local v14  # "systemCaller":Z
    .end local v15  # "token":J
    .end local p0  # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .end local p1  # "packageName":Ljava/lang/String;
    .end local p2  # "bucket":I
    throw v2
    :try_end_9a
    .catchall {:try_start_76 .. :try_end_9a} :catchall_9a

    .line 1522
    .end local v0  # "packageUid":I
    .restart local v6  # "reason":I
    .restart local v9  # "shellCaller":Z
    .restart local v12  # "callingUid":I
    .restart local v13  # "userId":I
    .restart local v14  # "systemCaller":Z
    .restart local v15  # "token":J
    .restart local p0  # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .restart local p1  # "packageName":Ljava/lang/String;
    .restart local p2  # "bucket":I
    :catchall_9a
    move-exception v0

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1497
    .end local v6  # "reason":I
    .end local v9  # "shellCaller":Z
    .end local v13  # "userId":I
    .end local v14  # "systemCaller":Z
    .end local v15  # "token":J
    .restart local p3  # "userId":I
    :catch_9f
    move-exception v0

    .line 1498
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1490
    .end local v0  # "re":Landroid/os/RemoteException;
    .end local v12  # "callingUid":I
    :cond_a5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot set the standby bucket to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAppStandbyBuckets(Landroid/content/pm/ParceledListSlice;I)V
    .registers 21
    .param p1, "appBuckets"  # Landroid/content/pm/ParceledListSlice;
    .param p2, "userId"  # I

    .line 1554
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.CHANGE_APP_IDLE_STATE"

    const-string v3, "No permission to change app standby state"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1557
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1559
    .local v2, "callingUid":I
    :try_start_13
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    .line 1560
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string/jumbo v10, "setAppStandbyBucket"

    const/4 v11, 0x0

    .line 1559
    move v6, v2

    move/from16 v7, p2

    invoke-interface/range {v4 .. v11}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_28} :catch_c0

    move v11, v0

    .line 1564
    .end local p2  # "userId":I
    .local v11, "userId":I
    nop

    .line 1565
    if-eqz v2, :cond_33

    const/16 v0, 0x7d0

    if-ne v2, v0, :cond_31

    goto :goto_33

    :cond_31
    const/4 v0, 0x0

    goto :goto_34

    :cond_33
    :goto_33
    const/4 v0, 0x1

    :goto_34
    move v12, v0

    .line 1566
    .local v12, "shellCaller":Z
    if-eqz v12, :cond_3b

    .line 1567
    const/16 v0, 0x400

    move v7, v0

    goto :goto_3e

    .line 1568
    :cond_3b
    const/16 v0, 0x500

    move v7, v0

    :goto_3e
    nop

    .line 1569
    .local v7, "reason":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 1571
    .local v13, "token":J
    :try_start_43
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1572
    .local v8, "elapsedRealtime":J
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 1573
    .local v0, "bucketList":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/AppStandbyInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_4f
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/AppStandbyInfo;

    move-object v10, v3

    .line 1574
    .local v10, "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    iget-object v3, v10, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    move-object v6, v3

    .line 1575
    .local v6, "packageName":Ljava/lang/String;
    iget v3, v10, Landroid/app/usage/AppStandbyInfo;->mStandbyBucket:I

    move v5, v3

    .line 1576
    .local v5, "bucket":I
    const/16 v3, 0xa

    if-lt v5, v3, :cond_97

    const/16 v3, 0x32

    if-gt v5, v3, :cond_97

    .line 1582
    iget-object v3, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v3, v3, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/high16 v4, 0x400000

    invoke-virtual {v3, v6, v4, v11}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v3

    if-eq v3, v2, :cond_89

    .line 1586
    iget-object v3, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v3, v3, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    move-object v4, v6

    move/from16 p2, v5

    .end local v5  # "bucket":I
    .local p2, "bucket":I
    move v5, v11

    move-object/from16 v16, v6

    .end local v6  # "packageName":Ljava/lang/String;
    .local v16, "packageName":Ljava/lang/String;
    move/from16 v6, p2

    move-object/from16 v17, v10

    .end local v10  # "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    .local v17, "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    move v10, v12

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/usage/AppStandbyController;->setAppStandbyBucket(Ljava/lang/String;IIIJZ)V

    .line 1588
    .end local v16  # "packageName":Ljava/lang/String;
    .end local v17  # "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    .end local p2  # "bucket":I
    goto :goto_4f

    .line 1584
    .restart local v5  # "bucket":I
    .restart local v6  # "packageName":Ljava/lang/String;
    .restart local v10  # "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    :cond_89
    move/from16 p2, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v10

    .end local v5  # "bucket":I
    .end local v6  # "packageName":Ljava/lang/String;
    .end local v10  # "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    .restart local v16  # "packageName":Ljava/lang/String;
    .restart local v17  # "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    .restart local p2  # "bucket":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot set your own standby bucket"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2  # "callingUid":I
    .end local v7  # "reason":I
    .end local v11  # "userId":I
    .end local v12  # "shellCaller":Z
    .end local v13  # "token":J
    .end local p0  # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .end local p1  # "appBuckets":Landroid/content/pm/ParceledListSlice;
    throw v3

    .line 1576
    .end local v16  # "packageName":Ljava/lang/String;
    .end local v17  # "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    .end local p2  # "bucket":I
    .restart local v2  # "callingUid":I
    .restart local v5  # "bucket":I
    .restart local v6  # "packageName":Ljava/lang/String;
    .restart local v7  # "reason":I
    .restart local v10  # "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    .restart local v11  # "userId":I
    .restart local v12  # "shellCaller":Z
    .restart local v13  # "token":J
    .restart local p0  # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .restart local p1  # "appBuckets":Landroid/content/pm/ParceledListSlice;
    :cond_97
    move/from16 p2, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v10

    .line 1578
    .end local v5  # "bucket":I
    .end local v6  # "packageName":Ljava/lang/String;
    .end local v10  # "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    .restart local v16  # "packageName":Ljava/lang/String;
    .restart local v17  # "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    .restart local p2  # "bucket":I
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot set the standby bucket to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p2

    .end local p2  # "bucket":I
    .restart local v5  # "bucket":I
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2  # "callingUid":I
    .end local v7  # "reason":I
    .end local v11  # "userId":I
    .end local v12  # "shellCaller":Z
    .end local v13  # "token":J
    .end local p0  # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .end local p1  # "appBuckets":Landroid/content/pm/ParceledListSlice;
    throw v3
    :try_end_b6
    .catchall {:try_start_43 .. :try_end_b6} :catchall_bb

    .line 1590
    .end local v0  # "bucketList":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/AppStandbyInfo;>;"
    .end local v5  # "bucket":I
    .end local v8  # "elapsedRealtime":J
    .end local v16  # "packageName":Ljava/lang/String;
    .end local v17  # "bucketInfo":Landroid/app/usage/AppStandbyInfo;
    .restart local v2  # "callingUid":I
    .restart local v7  # "reason":I
    .restart local v11  # "userId":I
    .restart local v12  # "shellCaller":Z
    .restart local v13  # "token":J
    .restart local p0  # "this":Lcom/android/server/usage/UsageStatsService$BinderService;
    .restart local p1  # "appBuckets":Landroid/content/pm/ParceledListSlice;
    :cond_b6
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1591
    nop

    .line 1592
    return-void

    .line 1590
    :catchall_bb
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1562
    .end local v7  # "reason":I
    .end local v11  # "userId":I
    .end local v12  # "shellCaller":Z
    .end local v13  # "token":J
    .local p2, "userId":I
    :catch_c0
    move-exception v0

    .line 1563
    .local v0, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public unregisterAppUsageLimitObserver(ILjava/lang/String;)V
    .registers 8
    .param p1, "observerId"  # I
    .param p2, "callingPackage"  # Ljava/lang/String;

    .line 1768
    const-string v0, "android.permission.SUSPEND_APPS"

    const-string v1, "android.permission.OBSERVE_APP_USAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermissions(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1774
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1775
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1776
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1778
    .local v2, "token":J
    :try_start_1a
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v4, v0, p1, v1}, Lcom/android/server/usage/UsageStatsService;->unregisterAppUsageLimitObserver(III)V
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_24

    .line 1781
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1782
    nop

    .line 1783
    return-void

    .line 1781
    :catchall_24
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1770
    .end local v0  # "callingUid":I
    .end local v1  # "userId":I
    .end local v2  # "token":J
    :cond_29
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller doesn\'t have both SUSPEND_APPS and OBSERVE_APP_USAGE permissions"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterAppUsageObserver(ILjava/lang/String;)V
    .registers 8
    .param p1, "observerId"  # I
    .param p2, "callingPackage"  # Ljava/lang/String;

    .line 1681
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasObserverPermission()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1685
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1686
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1687
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1689
    .local v2, "token":J
    :try_start_12
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v4, v0, p1, v1}, Lcom/android/server/usage/UsageStatsService;->unregisterAppUsageObserver(III)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_1c

    .line 1691
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1692
    nop

    .line 1693
    return-void

    .line 1691
    :catchall_1c
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1682
    .end local v0  # "callingUid":I
    .end local v1  # "userId":I
    .end local v2  # "token":J
    :cond_21
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller doesn\'t have OBSERVE_APP_USAGE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterUsageSessionObserver(ILjava/lang/String;)V
    .registers 8
    .param p1, "sessionObserverId"  # I
    .param p2, "callingPackage"  # Ljava/lang/String;

    .line 1724
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasObserverPermission()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1728
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1729
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1730
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1732
    .local v2, "token":J
    :try_start_12
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v4, v0, p1, v1}, Lcom/android/server/usage/UsageStatsService;->unregisterUsageSessionObserver(III)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_1c

    .line 1735
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1736
    nop

    .line 1737
    return-void

    .line 1735
    :catchall_1c
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1725
    .end local v0  # "callingUid":I
    .end local v1  # "userId":I
    .end local v2  # "token":J
    :cond_21
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller doesn\'t have OBSERVE_APP_USAGE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelistAppTemporarily(Ljava/lang/String;JI)V
    .registers 13
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "duration"  # J
    .param p4, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1597
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1598
    .local v0, "reason":Ljava/lang/StringBuilder;
    const-string v1, "from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1599
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 1600
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v2, v1, Lcom/android/server/usage/UsageStatsService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 1601
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1600
    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-interface/range {v2 .. v7}, Landroid/os/IDeviceIdleController;->addPowerSaveTempWhitelistApp(Ljava/lang/String;JILjava/lang/String;)V

    .line 1602
    return-void
.end method
