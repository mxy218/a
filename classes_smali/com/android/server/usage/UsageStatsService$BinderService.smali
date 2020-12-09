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

    .line 918
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-direct {p0}, Landroid/app/usage/IUsageStatsManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$1;)V
    .registers 3

    .line 918
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService$BinderService;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    return-void
.end method

.method private checkCallerIsSameApp(Ljava/lang/String;)V
    .registers 6

    .line 974
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 975
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 977
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v2, v2, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v0, :cond_14

    .line 982
    return-void

    .line 979
    :cond_14
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " cannot query eventsfor package "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkCallerIsSystemOrSameApp(Ljava/lang/String;)V
    .registers 3

    .line 967
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService$BinderService;->isCallingUidSystem()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 968
    return-void

    .line 970
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService$BinderService;->checkCallerIsSameApp(Ljava/lang/String;)V

    .line 971
    return-void
.end method

.method private hasObserverPermission()Z
    .registers 5

    .line 937
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 938
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v1}, Lcom/android/server/usage/UsageStatsService;->access$800(Lcom/android/server/usage/UsageStatsService;)Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object v1

    .line 939
    const/4 v2, 0x1

    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_2a

    if-eqz v1, :cond_19

    const/4 v3, -0x1

    .line 941
    invoke-virtual {v1, v0, v3}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_2a

    .line 946
    :cond_19
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.OBSERVE_APP_USAGE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_28

    goto :goto_29

    :cond_28
    const/4 v2, 0x0

    :goto_29
    return v2

    .line 944
    :cond_2a
    :goto_2a
    return v2
.end method

.method private hasPermission(Ljava/lang/String;)Z
    .registers 6

    .line 921
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 922
    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_a

    .line 923
    return v1

    .line 925
    :cond_a
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v2, v2, Lcom/android/server/usage/UsageStatsService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0x2b

    invoke-virtual {v2, v3, v0, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result p1

    .line 927
    const/4 v0, 0x3

    const/4 v2, 0x0

    if-ne p1, v0, :cond_29

    .line 930
    iget-object p1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {p1}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_27

    goto :goto_28

    :cond_27
    move v1, v2

    :goto_28
    return v1

    .line 933
    :cond_29
    if-nez p1, :cond_2c

    goto :goto_2d

    :cond_2c
    move v1, v2

    :goto_2d
    return v1
.end method

.method private varargs hasPermissions(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 8

    .line 951
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    .line 952
    const/4 v0, 0x1

    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_a

    .line 954
    return v0

    .line 957
    :cond_a
    nop

    .line 958
    iget-object p1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {p1}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 959
    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    :goto_14
    array-length v4, p2

    if-ge v2, v4, :cond_27

    .line 960
    if-eqz v3, :cond_23

    aget-object v3, p2, v2

    invoke-virtual {p1, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_23

    move v3, v0

    goto :goto_24

    :cond_23
    move v3, v1

    .line 959
    :goto_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 963
    :cond_27
    return v3
.end method

.method private isCallingUidSystem()Z
    .registers 3

    .line 985
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 986
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 1351
    iget-object p1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {p1}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "UsageStatsService"

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_f

    return-void

    .line 1352
    :cond_f
    iget-object p1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {p1, p3, p2}, Lcom/android/server/usage/UsageStatsService;->dump([Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1353
    return-void
.end method

.method public forceUsageSourceSettingRead()V
    .registers 2

    .line 1578
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->access$1200(Lcom/android/server/usage/UsageStatsService;)V

    .line 1579
    return-void
.end method

.method public getAppStandbyBucket(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 15

    .line 1185
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 1187
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    .line 1188
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "getAppStandbyBucket"

    const/4 v9, 0x0

    .line 1187
    move v4, v10

    move v5, p3

    invoke-interface/range {v2 .. v9}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_17} :catch_70

    .line 1192
    nop

    .line 1193
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v3, v3, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v3

    .line 1195
    if-eq v3, v10, :cond_32

    .line 1196
    invoke-direct {p0, p2}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    goto :goto_32

    .line 1197
    :cond_2a
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Don\'t have permission to query app standby bucket"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1201
    :cond_32
    :goto_32
    if-ltz v3, :cond_54

    .line 1205
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v3, v10, v2}, Lcom/android/server/usage/UsageStatsService;->access$900(Lcom/android/server/usage/UsageStatsService;II)Z

    move-result v5

    .line 1207
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1209
    :try_start_3e
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    .line 1210
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1209
    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppStandbyController;->getAppStandbyBucket(Ljava/lang/String;IJZ)I

    move-result v0
    :try_end_4b
    .catchall {:try_start_3e .. :try_end_4b} :catchall_4f

    .line 1212
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1209
    return v0

    .line 1212
    :catchall_4f
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1202
    :cond_54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot get standby bucket for non existent package ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1190
    :catch_70
    move-exception v0

    .line 1191
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public getAppStandbyBuckets(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 11
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

    .line 1263
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1265
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1266
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "getAppStandbyBucket"

    const/4 v7, 0x0

    .line 1265
    move v3, p2

    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_16} :catch_47

    .line 1270
    nop

    .line 1271
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 1275
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1277
    :try_start_21
    iget-object p1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p1, p1, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    .line 1278
    invoke-virtual {p1, p2}, Lcom/android/server/usage/AppStandbyController;->getAppStandbyBuckets(I)Ljava/util/List;

    move-result-object p1

    .line 1279
    if-nez p1, :cond_30

    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    goto :goto_36

    .line 1280
    :cond_30
    new-instance p2, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p2, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_35
    .catchall {:try_start_21 .. :try_end_35} :catchall_3a

    move-object p1, p2

    .line 1282
    :goto_36
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1279
    return-object p1

    .line 1282
    :catchall_3a
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 1272
    :cond_3f
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Don\'t have permission to query app standby bucket"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1268
    :catch_47
    move-exception p1

    .line 1269
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getUsageSource()I
    .registers 3

    .line 1568
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasObserverPermission()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1571
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v0}, Lcom/android/server/usage/UsageStatsService;->access$1100(Lcom/android/server/usage/UsageStatsService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1572
    :try_start_d
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget v1, v1, Lcom/android/server/usage/UsageStatsService;->mUsageSource:I

    monitor-exit v0

    return v1

    .line 1573
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_13

    throw v1

    .line 1569
    :cond_16
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller doesn\'t have OBSERVE_APP_USAGE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isAppInactive(Ljava/lang/String;I)Z
    .registers 18

    move-object v0, p0

    .line 1144
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1145
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "isAppInactive"

    const/4 v8, 0x0

    .line 1144
    move/from16 v4, p2

    invoke-interface/range {v1 .. v8}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v11
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_18} :catch_3e

    .line 1148
    nop

    .line 1149
    iget-object v1, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 1150
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1149
    invoke-static {v1, v2, v11}, Lcom/android/server/usage/UsageStatsService;->access$900(Lcom/android/server/usage/UsageStatsService;II)Z

    move-result v14

    .line 1151
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1153
    :try_start_27
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v9, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    .line 1155
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 1153
    move-object/from16 v10, p1

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/usage/AppStandbyController;->isAppIdleFilteredOrParoled(Ljava/lang/String;IJZ)Z

    move-result v0
    :try_end_35
    .catchall {:try_start_27 .. :try_end_35} :catchall_39

    .line 1157
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1153
    return v0

    .line 1157
    :catchall_39
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1146
    :catch_3e
    move-exception v0

    .line 1147
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public onCarrierPrivilegedAppsChanged()V
    .registers 4

    .line 1343
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.BIND_CARRIER_SERVICES"

    const-string/jumbo v2, "onCarrierPrivilegedAppsChanged can only be called by privileged apps."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController;->clearCarrierPrivilegedApps()V

    .line 1347
    return-void
.end method

.method public queryConfigurationStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 19
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

    .line 1016
    move-object v0, p0

    move-object/from16 v1, p6

    invoke-direct {p0, v1}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_b

    .line 1017
    return-object v2

    .line 1020
    :cond_b
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 1021
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1023
    :try_start_13
    iget-object v3, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 1024
    move v5, p1

    move-wide v6, p2

    move-wide/from16 v8, p4

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/usage/UsageStatsService;->queryConfigurationStats(IIJJ)Ljava/util/List;

    move-result-object v0

    .line 1026
    if-eqz v0, :cond_28

    .line 1027
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_24
    .catchall {:try_start_13 .. :try_end_24} :catchall_2d

    .line 1030
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1027
    return-object v1

    .line 1030
    :cond_28
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1031
    nop

    .line 1032
    return-object v2

    .line 1030
    :catchall_2d
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public queryEventStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 19
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

    .line 1038
    move-object v0, p0

    move-object/from16 v1, p6

    invoke-direct {p0, v1}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_b

    .line 1039
    return-object v2

    .line 1042
    :cond_b
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 1043
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1045
    :try_start_13
    iget-object v3, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 1046
    move v5, p1

    move-wide v6, p2

    move-wide/from16 v8, p4

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/usage/UsageStatsService;->queryEventStats(IIJJ)Ljava/util/List;

    move-result-object v0

    .line 1048
    if-eqz v0, :cond_28

    .line 1049
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_24
    .catchall {:try_start_13 .. :try_end_24} :catchall_2d

    .line 1052
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1049
    return-object v1

    .line 1052
    :cond_28
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1053
    nop

    .line 1054
    return-object v2

    .line 1052
    :catchall_2d
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public queryEvents(JJLjava/lang/String;)Landroid/app/usage/UsageEvents;
    .registers 15

    .line 1059
    invoke-direct {p0, p5}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_8

    .line 1060
    const/4 p1, 0x0

    return-object p1

    .line 1063
    :cond_8
    iget-object p5, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 1064
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1063
    invoke-static {p5, v0, v1}, Lcom/android/server/usage/UsageStatsService;->access$900(Lcom/android/server/usage/UsageStatsService;II)Z

    move-result v8

    .line 1066
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 1067
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1069
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/usage/UsageStatsService;->queryEvents(IJJZ)Landroid/app/usage/UsageEvents;

    move-result-object p1
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_2a

    .line 1072
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1069
    return-object p1

    .line 1072
    :catchall_2a
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public queryEventsForPackage(JJLjava/lang/String;)Landroid/app/usage/UsageEvents;
    .registers 16

    .line 1079
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1080
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1082
    invoke-direct {p0, p5}, Lcom/android/server/usage/UsageStatsService$BinderService;->checkCallerIsSameApp(Ljava/lang/String;)V

    .line 1083
    invoke-direct {p0, p5}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v7

    .line 1085
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1087
    :try_start_13
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/UsageStatsService;->queryEventsForPackage(IJJLjava/lang/String;Z)Landroid/app/usage/UsageEvents;

    move-result-object v0
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_20

    .line 1090
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1087
    return-object v0

    .line 1090
    :catchall_20
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public queryEventsForPackageForUser(JJILjava/lang/String;Ljava/lang/String;)Landroid/app/usage/UsageEvents;
    .registers 20

    .line 1122
    move-object v0, p0

    move-object/from16 v1, p7

    invoke-direct {p0, v1}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1123
    const/4 v0, 0x0

    return-object v0

    .line 1125
    :cond_b
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    move/from16 v3, p5

    if-eq v3, v1, :cond_20

    .line 1126
    iget-object v1, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v1}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v4, "No permission to query usage stats for this user"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    :cond_20
    move-object/from16 v1, p6

    invoke-direct {p0, v1}, Lcom/android/server/usage/UsageStatsService$BinderService;->checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    .line 1132
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1134
    :try_start_29
    iget-object v2, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    const/4 v9, 0x1

    move/from16 v3, p5

    move-wide v4, p1

    move-wide v6, p3

    move-object/from16 v8, p6

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/usage/UsageStatsService;->queryEventsForPackage(IJJLjava/lang/String;Z)Landroid/app/usage/UsageEvents;

    move-result-object v0
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_3a

    .line 1137
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1134
    return-object v0

    .line 1137
    :catchall_3a
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public queryEventsForUser(JJILjava/lang/String;)Landroid/app/usage/UsageEvents;
    .registers 16

    .line 1097
    invoke-direct {p0, p6}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result p6

    if-nez p6, :cond_8

    .line 1098
    const/4 p1, 0x0

    return-object p1

    .line 1101
    :cond_8
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p6

    if-eq p5, p6, :cond_1b

    .line 1102
    iget-object p6, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {p6}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object p6

    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v1, "No permission to query usage stats for this user"

    invoke-virtual {p6, v0, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    :cond_1b
    iget-object p6, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 1108
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1107
    invoke-static {p6, v0, v1}, Lcom/android/server/usage/UsageStatsService;->access$900(Lcom/android/server/usage/UsageStatsService;II)Z

    move-result v8

    .line 1110
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1112
    :try_start_2d
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move v3, p5

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/usage/UsageStatsService;->queryEvents(IJJZ)Landroid/app/usage/UsageEvents;

    move-result-object p1
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_3a

    .line 1115
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1112
    return-object p1

    .line 1115
    :catchall_3a
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public queryUsageStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 20
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

    .line 992
    move-object v0, p0

    move-object/from16 v1, p6

    invoke-direct {p0, v1}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_b

    .line 993
    return-object v2

    .line 996
    :cond_b
    iget-object v1, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    .line 997
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 996
    invoke-static {v1, v3, v4}, Lcom/android/server/usage/UsageStatsService;->access$900(Lcom/android/server/usage/UsageStatsService;II)Z

    move-result v12

    .line 999
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    .line 1000
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1002
    :try_start_21
    iget-object v5, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move v7, p1

    move-wide v8, p2

    move-wide/from16 v10, p4

    invoke-virtual/range {v5 .. v12}, Lcom/android/server/usage/UsageStatsService;->queryUsageStats(IIJJZ)Ljava/util/List;

    move-result-object v0

    .line 1004
    if-eqz v0, :cond_36

    .line 1005
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_32
    .catchall {:try_start_21 .. :try_end_32} :catchall_3b

    .line 1008
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1005
    return-object v1

    .line 1008
    :cond_36
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1009
    nop

    .line 1010
    return-object v2

    .line 1008
    :catchall_3b
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public registerAppUsageLimitObserver(I[Ljava/lang/String;JJLandroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 21

    .line 1460
    move-object v0, p0

    move-object v3, p2

    const-string v1, "android.permission.SUSPEND_APPS"

    const-string v2, "android.permission.OBSERVE_APP_USAGE"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p8

    invoke-direct {p0, v2, v1}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermissions(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 1466
    if-eqz v3, :cond_48

    array-length v1, v3

    if-eqz v1, :cond_48

    .line 1469
    if-nez p7, :cond_26

    cmp-long v1, p5, p3

    if-ltz v1, :cond_1e

    goto :goto_26

    .line 1470
    :cond_1e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "callbackIntent can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1472
    :cond_26
    :goto_26
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1473
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 1474
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1476
    :try_start_32
    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/usage/UsageStatsService;->registerAppUsageLimitObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;I)V
    :try_end_3e
    .catchall {:try_start_32 .. :try_end_3e} :catchall_43

    .line 1479
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1480
    nop

    .line 1481
    return-void

    .line 1479
    :catchall_43
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1467
    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify at least one package"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1462
    :cond_50
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller doesn\'t have both SUSPEND_APPS and OBSERVE_APP_USAGE permissions"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerAppUsageObserver(I[Ljava/lang/String;JLandroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 18

    .line 1375
    move-object v0, p2

    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasObserverPermission()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 1379
    if-eqz v0, :cond_37

    array-length v1, v0

    if-eqz v1, :cond_37

    .line 1382
    if-eqz p5, :cond_2f

    .line 1385
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1386
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 1387
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 1389
    move-object v1, p0

    :try_start_1b
    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move v3, p1

    move-object v4, p2

    move-wide v5, p3

    move-object/from16 v7, p5

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usage/UsageStatsService;->registerAppUsageObserver(II[Ljava/lang/String;JLandroid/app/PendingIntent;I)V
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_2a

    .line 1392
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1393
    nop

    .line 1394
    return-void

    .line 1392
    :catchall_2a
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1383
    :cond_2f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "callbackIntent can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1380
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify at least one package"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1376
    :cond_3f
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller doesn\'t have OBSERVE_APP_USAGE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerUsageSessionObserver(I[Ljava/lang/String;JJLandroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 24

    .line 1417
    move-object/from16 v0, p2

    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasObserverPermission()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 1421
    if-eqz v0, :cond_3e

    array-length v1, v0

    if-eqz v1, :cond_3e

    .line 1424
    if-eqz p7, :cond_36

    .line 1427
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1428
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 1429
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1431
    move-object v1, p0

    :try_start_1c
    iget-object v1, v1, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    move v3, p1

    move-object/from16 v4, p2

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/usage/UsageStatsService;->registerUsageSessionObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    :try_end_2c
    .catchall {:try_start_1c .. :try_end_2c} :catchall_31

    .line 1435
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1436
    nop

    .line 1437
    return-void

    .line 1435
    :catchall_31
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1425
    :cond_36
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "limitReachedCallbackIntent can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1422
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify at least one observed entity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1418
    :cond_46
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller doesn\'t have OBSERVE_APP_USAGE permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reportChooserSelection(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 1358
    if-nez p1, :cond_a

    .line 1359
    const-string p1, "UsageStatsService"

    const-string p2, "Event report user selecting a null package"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    return-void

    .line 1363
    :cond_a
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    const/16 v1, 0x9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 1364
    iput-object p1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 1365
    iput-object p5, v0, Landroid/app/usage/UsageEvents$Event;->mAction:Ljava/lang/String;

    .line 1366
    iput-object p3, v0, Landroid/app/usage/UsageEvents$Event;->mContentType:Ljava/lang/String;

    .line 1367
    iput-object p4, v0, Landroid/app/usage/UsageEvents$Event;->mContentAnnotations:[Ljava/lang/String;

    .line 1368
    iget-object p1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p1, p1, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1369
    return-void
.end method

.method public reportPastUsageStart(Landroid/os/IBinder;Ljava/lang/String;JLjava/lang/String;)V
    .registers 12

    .line 1511
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1512
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1513
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1516
    :try_start_c
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v3, v3, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    monitor-enter v3
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_71

    .line 1517
    :try_start_11
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v4, v4, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 1518
    if-nez v4, :cond_31

    .line 1519
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 1520
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v5, v5, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v5, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1522
    :cond_31
    monitor-exit v3
    :try_end_32
    .catchall {:try_start_11 .. :try_end_32} :catchall_6e

    .line 1524
    :try_start_32
    monitor-enter v4
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_71

    .line 1525
    :try_start_33
    invoke-virtual {v4, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 1529
    monitor-exit v4
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_6b

    .line 1531
    :try_start_3a
    iget-object p1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p1, p1, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v3, p5, p2}, Lcom/android/server/usage/UsageStatsService;->access$1000(Lcom/android/server/usage/UsageStatsService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0, p3, p4}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStart(Ljava/lang/String;IJ)V
    :try_end_47
    .catchall {:try_start_3a .. :try_end_47} :catchall_71

    .line 1534
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1535
    nop

    .line 1536
    return-void

    .line 1526
    :cond_4c
    :try_start_4c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is already reported as started for this activity"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1529
    :catchall_6b
    move-exception p1

    monitor-exit v4
    :try_end_6d
    .catchall {:try_start_4c .. :try_end_6d} :catchall_6b

    :try_start_6d
    throw p1
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_71

    .line 1522
    :catchall_6e
    move-exception p1

    :try_start_6f
    monitor-exit v3
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    :try_start_70
    throw p1
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_71

    .line 1534
    :catchall_71
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public reportUsageStart(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 1504
    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/UsageStatsService$BinderService;->reportPastUsageStart(Landroid/os/IBinder;Ljava/lang/String;JLjava/lang/String;)V

    .line 1505
    return-void
.end method

.method public reportUsageStop(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 1540
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1541
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1542
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1545
    :try_start_c
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v3, v3, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    monitor-enter v3
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_80

    .line 1546
    :try_start_11
    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v4, v4, Lcom/android/server/usage/UsageStatsService;->mUsageReporters:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArraySet;

    .line 1547
    if-eqz p1, :cond_5e

    .line 1552
    monitor-exit v3
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_7d

    .line 1554
    :try_start_22
    monitor-enter p1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_80

    .line 1555
    :try_start_23
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 1559
    monitor-exit p1
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_5b

    .line 1560
    :try_start_2a
    iget-object p1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object p1, p1, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-static {v3, p3, p2}, Lcom/android/server/usage/UsageStatsService;->access$1000(Lcom/android/server/usage/UsageStatsService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStop(Ljava/lang/String;I)V
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_80

    .line 1562
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1563
    nop

    .line 1564
    return-void

    .line 1556
    :cond_3c
    :try_start_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is already reported as stopped for this activity"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1559
    :catchall_5b
    move-exception p2

    monitor-exit p1
    :try_end_5d
    .catchall {:try_start_3c .. :try_end_5d} :catchall_5b

    :try_start_5d
    throw p2
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_80

    .line 1548
    :cond_5e
    :try_start_5e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown reporter trying to stop token "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1552
    :catchall_7d
    move-exception p1

    monitor-exit v3
    :try_end_7f
    .catchall {:try_start_5e .. :try_end_7f} :catchall_7d

    :try_start_7f
    throw p1
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_80

    .line 1562
    :catchall_80
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setAppInactive(Ljava/lang/String;ZI)V
    .registers 12

    .line 1163
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1165
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1166
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string/jumbo v6, "setAppInactive"

    const/4 v7, 0x0

    .line 1165
    move v3, p3

    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p3
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_17} :catch_48

    .line 1170
    nop

    .line 1171
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CHANGE_APP_IDLE_STATE"

    const-string v2, "No permission to change app idle state"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1175
    :try_start_29
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v2, v2, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v2, p1}, Lcom/android/server/usage/AppStandbyController;->getAppId(Ljava/lang/String;)I

    move-result v2
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_43

    .line 1176
    if-gez v2, :cond_37

    .line 1179
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1176
    return-void

    .line 1177
    :cond_37
    :try_start_37
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v2, v2, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/usage/AppStandbyController;->setAppIdleAsync(Ljava/lang/String;ZI)V
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_43

    .line 1179
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1180
    nop

    .line 1181
    return-void

    .line 1179
    :catchall_43
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 1168
    :catch_48
    move-exception p1

    .line 1169
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public setAppStandbyBucket(Ljava/lang/String;II)V
    .registers 16

    .line 1219
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v2}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "android.permission.CHANGE_APP_IDLE_STATE"

    const-string v5, "No permission to change app standby state"

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    const/16 v2, 0xa

    if-lt p2, v2, :cond_9a

    const/16 v2, 0x32

    if-gt p2, v2, :cond_9a

    .line 1226
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1228
    :try_start_19
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    .line 1229
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string/jumbo v10, "setAppStandbyBucket"

    const/4 v11, 0x0

    .line 1228
    move v6, v2

    move v7, p3

    invoke-interface/range {v4 .. v11}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v4
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_2d} :catch_94

    .line 1233
    nop

    .line 1234
    if-eqz v2, :cond_37

    const/16 v5, 0x7d0

    if-ne v2, v5, :cond_35

    goto :goto_37

    :cond_35
    const/4 v5, 0x0

    goto :goto_38

    :cond_37
    :goto_37
    const/4 v5, 0x1

    :goto_38
    move v7, v5

    .line 1235
    invoke-static {v2}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v5

    .line 1236
    if-eqz v5, :cond_42

    .line 1237
    const/16 v5, 0x400

    goto :goto_44

    .line 1238
    :cond_42
    const/16 v5, 0x500

    .line 1239
    :goto_44
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1241
    :try_start_48
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v6, v6, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/high16 v10, 0x4c0000

    invoke-virtual {v6, p1, v10, v4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v6

    .line 1245
    if-eq v6, v2, :cond_87

    .line 1248
    if-ltz v6, :cond_6b

    .line 1253
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    .line 1254
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 1253
    move-object v1, p1

    move v2, v4

    move v3, p2

    move v4, v5

    move-wide v5, v10

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/AppStandbyController;->setAppStandbyBucket(Ljava/lang/String;IIIJZ)V
    :try_end_66
    .catchall {:try_start_48 .. :try_end_66} :catchall_8f

    .line 1256
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1257
    nop

    .line 1258
    return-void

    .line 1249
    :cond_6b
    :try_start_6b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot set standby bucket for non existent package ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1246
    :cond_87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set your own standby bucket"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8f
    .catchall {:try_start_6b .. :try_end_8f} :catchall_8f

    .line 1256
    :catchall_8f
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1231
    :catch_94
    move-exception v0

    .line 1232
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1224
    :cond_9a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set the standby bucket to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAppStandbyBuckets(Landroid/content/pm/ParceledListSlice;I)V
    .registers 23

    .line 1288
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v1}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.CHANGE_APP_IDLE_STATE"

    const-string v3, "No permission to change app standby state"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1293
    :try_start_13
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    .line 1294
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string/jumbo v10, "setAppStandbyBucket"

    const/4 v11, 0x0

    .line 1293
    move v6, v1

    move/from16 v7, p2

    invoke-interface/range {v4 .. v11}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_28} :catch_a6

    .line 1298
    nop

    .line 1299
    if-eqz v1, :cond_32

    const/16 v3, 0x7d0

    if-ne v1, v3, :cond_30

    goto :goto_32

    :cond_30
    const/4 v3, 0x0

    goto :goto_33

    :cond_32
    :goto_32
    const/4 v3, 0x1

    .line 1300
    :goto_33
    if-eqz v3, :cond_38

    .line 1301
    const/16 v4, 0x400

    goto :goto_3a

    .line 1302
    :cond_38
    const/16 v4, 0x500

    .line 1303
    :goto_3a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 1305
    :try_start_3e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 1306
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v9

    .line 1307
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/usage/AppStandbyInfo;

    .line 1308
    iget-object v13, v10, Landroid/app/usage/AppStandbyInfo;->mPackageName:Ljava/lang/String;

    .line 1309
    iget v15, v10, Landroid/app/usage/AppStandbyInfo;->mStandbyBucket:I

    .line 1310
    const/16 v10, 0xa

    if-lt v15, v10, :cond_85

    const/16 v10, 0x32

    if-gt v15, v10, :cond_85

    .line 1316
    iget-object v10, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v10, v10, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const/high16 v11, 0x400000

    invoke-virtual {v10, v13, v11, v2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v10

    if-eq v10, v1, :cond_7d

    .line 1320
    iget-object v10, v0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v12, v10, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    move v14, v2

    move/from16 v16, v4

    move-wide/from16 v17, v7

    move/from16 v19, v3

    invoke-virtual/range {v12 .. v19}, Lcom/android/server/usage/AppStandbyController;->setAppStandbyBucket(Ljava/lang/String;IIIJZ)V

    .line 1322
    goto :goto_4a

    .line 1318
    :cond_7d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set your own standby bucket"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1312
    :cond_85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set the standby bucket to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9c
    .catchall {:try_start_3e .. :try_end_9c} :catchall_a1

    .line 1324
    :cond_9c
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1325
    nop

    .line 1326
    return-void

    .line 1324
    :catchall_a1
    move-exception v0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1296
    :catch_a6
    move-exception v0

    .line 1297
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public unregisterAppUsageLimitObserver(ILjava/lang/String;)V
    .registers 7

    .line 1485
    const-string v0, "android.permission.SUSPEND_APPS"

    const-string v1, "android.permission.OBSERVE_APP_USAGE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasPermissions(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_29

    .line 1491
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    .line 1492
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1493
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1495
    :try_start_1a
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v3, p2, p1, v0}, Lcom/android/server/usage/UsageStatsService;->unregisterAppUsageLimitObserver(III)V
    :try_end_1f
    .catchall {:try_start_1a .. :try_end_1f} :catchall_24

    .line 1498
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1499
    nop

    .line 1500
    return-void

    .line 1498
    :catchall_24
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 1487
    :cond_29
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Caller doesn\'t have both SUSPEND_APPS and OBSERVE_APP_USAGE permissions"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unregisterAppUsageObserver(ILjava/lang/String;)V
    .registers 7

    .line 1398
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasObserverPermission()Z

    move-result p2

    if-eqz p2, :cond_21

    .line 1402
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    .line 1403
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1404
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1406
    :try_start_12
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v3, p2, p1, v0}, Lcom/android/server/usage/UsageStatsService;->unregisterAppUsageObserver(III)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_1c

    .line 1408
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1409
    nop

    .line 1410
    return-void

    .line 1408
    :catchall_1c
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 1399
    :cond_21
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Caller doesn\'t have OBSERVE_APP_USAGE permission"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unregisterUsageSessionObserver(ILjava/lang/String;)V
    .registers 7

    .line 1441
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService$BinderService;->hasObserverPermission()Z

    move-result p2

    if-eqz p2, :cond_21

    .line 1445
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    .line 1446
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1447
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1449
    :try_start_12
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v3, p2, p1, v0}, Lcom/android/server/usage/UsageStatsService;->unregisterUsageSessionObserver(III)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_1c

    .line 1452
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1453
    nop

    .line 1454
    return-void

    .line 1452
    :catchall_1c
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 1442
    :cond_21
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Caller doesn\'t have OBSERVE_APP_USAGE permission"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelistAppTemporarily(Ljava/lang/String;JI)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1331
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1332
    const-string v1, "from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1333
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 1334
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService$BinderService;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v2, v1, Lcom/android/server/usage/UsageStatsService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 1335
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1334
    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-interface/range {v2 .. v7}, Landroid/os/IDeviceIdleController;->addPowerSaveTempWhitelistApp(Ljava/lang/String;JILjava/lang/String;)V

    .line 1336
    return-void
.end method
