.class Lcom/android/server/notification/NotificationManagerService$10;
.super Landroid/app/INotificationManager$Stub;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 2409
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/app/INotificationManager$Stub;-><init>()V

    return-void
.end method

.method private cancelNotificationFromListenerLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IILjava/lang/String;Ljava/lang/String;II)V
    .registers 21
    .param p1, "info"  # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "callingUid"  # I
    .param p3, "callingPid"  # I
    .param p4, "pkg"  # Ljava/lang/String;
    .param p5, "tag"  # Ljava/lang/String;
    .param p6, "id"  # I
    .param p7, "userId"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 3468
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v7, 0x0

    const/16 v8, 0x1042

    const/4 v9, 0x1

    const/16 v11, 0xa

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v10, p7

    move-object v12, p1

    invoke-virtual/range {v1 .. v12}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 3472
    return-void
.end method

.method private checkPackagePolicyAccess(Ljava/lang/String;)Z
    .registers 4
    .param p1, "pkg"  # Ljava/lang/String;

    .line 3912
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v0

    .line 3913
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService$10;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 3912
    invoke-virtual {v0, p1, v1}, Lcom/android/server/notification/ConditionProviders;->isPackageOrComponentAllowed(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private checkPolicyAccess(Ljava/lang/String;)Z
    .registers 7
    .param p1, "pkg"  # Ljava/lang/String;

    .line 3918
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3919
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 3918
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1

    .line 3920
    .local v1, "uid":I
    const-string v2, "android.permission.MANAGE_NOTIFICATIONS"

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-static {v2, v1, v3, v4}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v2
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1b} :catch_4d

    if-nez v2, :cond_1e

    .line 3923
    return v4

    .line 3927
    .end local v1  # "uid":I
    :cond_1e
    nop

    .line 3928
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$10;->checkPackagePolicyAccess(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4b

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 3929
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->isComponentEnabledForPackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4b

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 3930
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$5600(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object v1

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 3931
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$5600(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    move-result v1

    if-eqz v1, :cond_4a

    goto :goto_4b

    :cond_4a
    goto :goto_4c

    :cond_4b
    :goto_4b
    move v0, v4

    .line 3928
    :goto_4c
    return v0

    .line 3925
    :catch_4d
    move-exception v1

    .line 3926
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method private createNotificationChannelsImpl(Ljava/lang/String;ILandroid/content/pm/ParceledListSlice;)V
    .registers 15
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "channelsList"  # Landroid/content/pm/ParceledListSlice;

    .line 2843
    invoke-virtual {p3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 2844
    .local v0, "channels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 2845
    .local v1, "channelsSize":I
    const/4 v2, 0x0

    .line 2846
    .local v2, "needsPolicyFileChange":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    if-ge v3, v1, :cond_55

    .line 2847
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationChannel;

    .line 2848
    .local v4, "channel":Landroid/app/NotificationChannel;
    const-string v5, "channel in list is null"

    invoke-static {v4, v5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2849
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v5

    const/4 v9, 0x1

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 2851
    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->access$1200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v6

    .line 2852
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 2851
    invoke-virtual {v6, p1, v7}, Lcom/android/server/notification/ConditionProviders;->isPackageOrComponentAllowed(Ljava/lang/String;I)Z

    move-result v10

    .line 2849
    move-object v6, p1

    move v7, p2

    move-object v8, v4

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/notification/PreferencesHelper;->createNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;ZZ)Z

    move-result v2

    .line 2853
    if-eqz v2, :cond_52

    .line 2854
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v5

    .line 2855
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 2856
    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v7

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, p1, p2, v8, v9}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v7

    .line 2854
    const/4 v8, 0x1

    invoke-virtual {v5, p1, v6, v7, v8}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyNotificationChannelChanged(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V

    .line 2846
    .end local v4  # "channel":Landroid/app/NotificationChannel;
    :cond_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 2861
    .end local v3  # "i":I
    :cond_55
    if-eqz v2, :cond_5c

    .line 2862
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 2864
    :cond_5c
    return-void
.end method

.method private enforcePolicyAccess(ILjava/lang/String;)V
    .registers 10
    .param p1, "uid"  # I
    .param p2, "method"  # Ljava/lang/String;

    .line 3880
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_NOTIFICATIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_f

    .line 3882
    return-void

    .line 3884
    :cond_f
    const/4 v0, 0x0

    .line 3885
    .local v0, "accessAllowed":Z
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$4100(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 3886
    .local v1, "packages":[Ljava/lang/String;
    array-length v2, v1

    .line 3887
    .local v2, "packageCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1c
    if-ge v3, v2, :cond_34

    .line 3888
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->access$1200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v4

    aget-object v5, v1, v3

    .line 3889
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 3888
    invoke-virtual {v4, v5, v6}, Lcom/android/server/notification/ConditionProviders;->isPackageOrComponentAllowed(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 3890
    const/4 v0, 0x1

    .line 3887
    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 3893
    .end local v3  # "i":I
    :cond_34
    if-eqz v0, :cond_37

    .line 3897
    return-void

    .line 3894
    :cond_37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notification policy access denied calling "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NotificationService"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3895
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Notification policy access denied"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private enforcePolicyAccess(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "method"  # Ljava/lang/String;

    .line 3900
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_NOTIFICATIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_f

    .line 3902
    return-void

    .line 3904
    :cond_f
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$3800(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 3905
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$10;->checkPolicyAccess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3909
    return-void

    .line 3906
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Notification policy access denied calling "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3907
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Notification policy access denied"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceSystemOrSystemUI(Ljava/lang/String;)V
    .registers 4
    .param p1, "message"  # Ljava/lang/String;

    .line 3864
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 3865
    :cond_9
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3867
    return-void
.end method

.method private enforceSystemOrSystemUIOrSamePackage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "message"  # Ljava/lang/String;

    .line 3871
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$3500(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_5} :catch_6

    .line 3876
    goto :goto_12

    .line 3872
    :catch_6
    move-exception v0

    .line 3873
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v1, v2, p2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3877
    .end local v0  # "e":Ljava/lang/SecurityException;
    :goto_12
    return-void
.end method

.method private getUidForPackageAndUser(Ljava/lang/String;Landroid/os/UserHandle;)I
    .registers 9
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "user"  # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4402
    const/4 v0, 0x0

    .line 4403
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4405
    .local v1, "identity":J
    :try_start_5
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$1600(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-interface {v3, p1, v4, v5}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v3
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_1a

    move v0, v3

    .line 4407
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4408
    nop

    .line 4409
    return v0

    .line 4407
    :catchall_1a
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private sanitizeSbn(Ljava/lang/String;ILandroid/service/notification/StatusBarNotification;)Landroid/service/notification/StatusBarNotification;
    .registers 19
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .param p3, "sbn"  # Landroid/service/notification/StatusBarNotification;

    .line 3284
    move-object/from16 v0, p1

    invoke-virtual/range {p3 .. p3}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    move/from16 v2, p2

    if-ne v1, v2, :cond_51

    .line 3285
    invoke-virtual/range {p3 .. p3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-virtual/range {p3 .. p3}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 3289
    :cond_1e
    new-instance v1, Landroid/service/notification/StatusBarNotification;

    .line 3290
    invoke-virtual/range {p3 .. p3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 3291
    invoke-virtual/range {p3 .. p3}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v5

    .line 3292
    invoke-virtual/range {p3 .. p3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    invoke-virtual/range {p3 .. p3}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p3 .. p3}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v8

    invoke-virtual/range {p3 .. p3}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v9

    .line 3293
    invoke-virtual/range {p3 .. p3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    move-result-object v10

    .line 3294
    invoke-virtual/range {p3 .. p3}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v13

    move-object v3, v1

    invoke-direct/range {v3 .. v14}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILandroid/app/Notification;Landroid/os/UserHandle;Ljava/lang/String;J)V

    .line 3289
    return-object v1

    .line 3297
    :cond_51
    const/4 v1, 0x0

    return-object v1
.end method

.method private verifyPrivilegedListener(Landroid/service/notification/INotificationListener;Landroid/os/UserHandle;Z)V
    .registers 9
    .param p1, "token"  # Landroid/service/notification/INotificationListener;
    .param p2, "user"  # Landroid/os/UserHandle;
    .param p3, "assistantAllowed"  # Z

    .line 4386
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4387
    :try_start_5
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v1

    .line 4388
    .local v1, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_6b

    .line 4389
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->hasCompanionDevice(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v0

    if-nez v0, :cond_49

    .line 4390
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4391
    if-eqz p3, :cond_2f

    :try_start_1f
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-virtual {v2, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->isServiceTokenValidLocked(Landroid/os/IInterface;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 4394
    monitor-exit v0

    goto :goto_49

    .line 4392
    :cond_2f
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " does not have access"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v1  # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .end local p0  # "this":Lcom/android/server/notification/NotificationManagerService$10;
    .end local p1  # "token":Landroid/service/notification/INotificationListener;
    .end local p2  # "user":Landroid/os/UserHandle;
    .end local p3  # "assistantAllowed":Z
    throw v2

    .line 4394
    .restart local v1  # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .restart local p0  # "this":Lcom/android/server/notification/NotificationManagerService$10;
    .restart local p1  # "token":Landroid/service/notification/INotificationListener;
    .restart local p2  # "user":Landroid/os/UserHandle;
    .restart local p3  # "assistantAllowed":Z
    :catchall_46
    move-exception v2

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_1f .. :try_end_48} :catchall_46

    throw v2

    .line 4396
    :cond_49
    :goto_49
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->enabledAndUserMatches(I)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 4399
    return-void

    .line 4397
    :cond_54
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " does not have access"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4388
    .end local v1  # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :catchall_6b
    move-exception v1

    :try_start_6c
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    throw v1
.end method


# virtual methods
.method public addAutomaticZenRule(Landroid/app/AutomaticZenRule;)Ljava/lang/String;
    .registers 4
    .param p1, "automaticZenRule"  # Landroid/app/AutomaticZenRule;

    .line 3740
    const-string v0, "automaticZenRule is null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3741
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Name is null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3742
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_23

    .line 3743
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConfigurationActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1b

    goto :goto_23

    .line 3744
    :cond_1b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Rule must have a conditionproviderservice and/or configuration activity"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3747
    :cond_23
    :goto_23
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "ConditionId is null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3748
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 3749
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getInterruptionFilter()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3a

    goto :goto_42

    .line 3750
    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ZenPolicy is only applicable to INTERRUPTION_FILTER_PRIORITY filters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3753
    :cond_42
    :goto_42
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "addAutomaticZenRule"

    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService$10;->enforcePolicyAccess(ILjava/lang/String;)V

    .line 3755
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/notification/ZenModeHelper;->addAutomaticZenRule(Landroid/app/AutomaticZenRule;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public allowAssistantAdjustment(Ljava/lang/String;)V
    .registers 3
    .param p1, "adjustmentType"  # Ljava/lang/String;

    .line 3188
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$4400(Lcom/android/server/notification/NotificationManagerService;)V

    .line 3189
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->allowAdjustmentType(Ljava/lang/String;)V

    .line 3191
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 3192
    return-void
.end method

.method public applyAdjustmentFromAssistant(Landroid/service/notification/INotificationListener;Landroid/service/notification/Adjustment;)V
    .registers 4
    .param p1, "token"  # Landroid/service/notification/INotificationListener;
    .param p2, "adjustment"  # Landroid/service/notification/Adjustment;

    .line 4264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4265
    .local v0, "adjustments":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/Adjustment;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4266
    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService$10;->applyAdjustmentsFromAssistant(Landroid/service/notification/INotificationListener;Ljava/util/List;)V

    .line 4267
    return-void
.end method

.method public applyAdjustmentsFromAssistant(Landroid/service/notification/INotificationListener;Ljava/util/List;)V
    .registers 13
    .param p1, "token"  # Landroid/service/notification/INotificationListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/INotificationListener;",
            "Ljava/util/List<",
            "Landroid/service/notification/Adjustment;",
            ">;)V"
        }
    .end annotation

    .line 4273
    .local p2, "adjustments":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/Adjustment;>;"
    const/4 v0, 0x0

    .line 4274
    .local v0, "needsSort":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4276
    .local v1, "identity":J
    :try_start_5
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_86

    .line 4277
    :try_start_a
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->access$400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 4278
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_72

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/Adjustment;

    .line 4279
    .local v5, "adjustment":Landroid/service/notification/Adjustment;
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/service/notification/Adjustment;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    .line 4280
    .local v6, "r":Lcom/android/server/notification/NotificationRecord;
    if-eqz v6, :cond_71

    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->access$400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v8

    invoke-virtual {v7, p1, v8}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->isSameUser(Landroid/os/IInterface;I)Z

    move-result v7

    if-eqz v7, :cond_71

    .line 4281
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v7, v6, v5}, Lcom/android/server/notification/NotificationManagerService;->access$6600(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Landroid/service/notification/Adjustment;)V

    .line 4285
    invoke-virtual {v5}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "key_importance"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_70

    .line 4286
    invoke-virtual {v5}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "key_importance"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_70

    .line 4288
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, p1, v7}, Lcom/android/server/notification/NotificationManagerService$10;->cancelNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V

    goto :goto_71

    .line 4290
    :cond_70
    const/4 v0, 0x1

    .line 4293
    .end local v5  # "adjustment":Landroid/service/notification/Adjustment;
    .end local v6  # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_71
    :goto_71
    goto :goto_17

    .line 4294
    :cond_72
    monitor-exit v3
    :try_end_73
    .catchall {:try_start_a .. :try_end_73} :catchall_83

    .line 4295
    if-eqz v0, :cond_7e

    .line 4296
    :try_start_75
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$2900(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHandler;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/notification/RankingHandler;->requestSort()V
    :try_end_7e
    .catchall {:try_start_75 .. :try_end_7e} :catchall_86

    .line 4299
    :cond_7e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4300
    nop

    .line 4301
    return-void

    .line 4294
    :catchall_83
    move-exception v4

    :try_start_84
    monitor-exit v3
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    .end local v0  # "needsSort":Z
    .end local v1  # "identity":J
    .end local p0  # "this":Lcom/android/server/notification/NotificationManagerService$10;
    .end local p1  # "token":Landroid/service/notification/INotificationListener;
    .end local p2  # "adjustments":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/Adjustment;>;"
    :try_start_85
    throw v4
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_86

    .line 4299
    .restart local v0  # "needsSort":Z
    .restart local v1  # "identity":J
    .restart local p0  # "this":Lcom/android/server/notification/NotificationManagerService$10;
    .restart local p1  # "token":Landroid/service/notification/INotificationListener;
    .restart local p2  # "adjustments":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/Adjustment;>;"
    :catchall_86
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public applyEnqueuedAdjustmentFromAssistant(Landroid/service/notification/INotificationListener;Landroid/service/notification/Adjustment;)V
    .registers 12
    .param p1, "token"  # Landroid/service/notification/INotificationListener;
    .param p2, "adjustment"  # Landroid/service/notification/Adjustment;

    .line 4231
    const/4 v0, 0x0

    .line 4232
    .local v0, "foundEnqueued":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4234
    .local v1, "identity":J
    :try_start_5
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_7a

    .line 4235
    :try_start_a
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->access$400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 4236
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 4237
    .local v4, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1c
    if-ge v5, v4, :cond_6c

    .line 4238
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    .line 4239
    .local v6, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {p2}, Landroid/service/notification/Adjustment;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_69

    .line 4240
    invoke-virtual {p2}, Landroid/service/notification/Adjustment;->getUser()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_69

    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 4241
    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->access$400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v8

    invoke-virtual {v7, p1, v8}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->isSameUser(Landroid/os/IInterface;I)Z

    move-result v7

    if-eqz v7, :cond_69

    .line 4242
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v7, v6, p2}, Lcom/android/server/notification/NotificationManagerService;->access$6600(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Landroid/service/notification/Adjustment;)V

    .line 4243
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->applyAdjustments()V

    .line 4247
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->calculateImportance()V

    .line 4248
    const/4 v0, 0x1

    .line 4249
    goto :goto_6c

    .line 4237
    .end local v6  # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_69
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    .line 4252
    .end local v5  # "i":I
    :cond_6c
    :goto_6c
    if-nez v0, :cond_71

    .line 4253
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$10;->applyAdjustmentFromAssistant(Landroid/service/notification/INotificationListener;Landroid/service/notification/Adjustment;)V

    .line 4255
    .end local v4  # "N":I
    :cond_71
    monitor-exit v3
    :try_end_72
    .catchall {:try_start_a .. :try_end_72} :catchall_77

    .line 4257
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4258
    nop

    .line 4259
    return-void

    .line 4255
    :catchall_77
    move-exception v4

    :try_start_78
    monitor-exit v3
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    .end local v0  # "foundEnqueued":Z
    .end local v1  # "identity":J
    .end local p0  # "this":Lcom/android/server/notification/NotificationManagerService$10;
    .end local p1  # "token":Landroid/service/notification/INotificationListener;
    .end local p2  # "adjustment":Landroid/service/notification/Adjustment;
    :try_start_79
    throw v4
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_7a

    .line 4257
    .restart local v0  # "foundEnqueued":Z
    .restart local v1  # "identity":J
    .restart local p0  # "this":Lcom/android/server/notification/NotificationManagerService$10;
    .restart local p1  # "token":Landroid/service/notification/INotificationListener;
    .restart local p2  # "adjustment":Landroid/service/notification/Adjustment;
    :catchall_7a
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public applyRestore([BI)V
    .registers 7
    .param p1, "payload"  # [B
    .param p2, "user"  # I

    .line 3994
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$3900(Lcom/android/server/notification/NotificationManagerService;)V

    .line 3995
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    const-string v1, "NotificationService"

    if-eqz v0, :cond_32

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyRestore u="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " payload="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3996
    if-eqz p1, :cond_27

    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_28

    :cond_27
    const/4 v2, 0x0

    :goto_28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3995
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3997
    :cond_32
    if-nez p1, :cond_49

    .line 3998
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyRestore: no payload to restore for user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3999
    return-void

    .line 4001
    :cond_49
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 4003
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_4e
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3, p2}, Lcom/android/server/notification/NotificationManagerService;->readPolicyXml(Ljava/io/InputStream;ZI)V

    .line 4004
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V
    :try_end_59
    .catch Ljava/lang/NumberFormatException; {:try_start_4e .. :try_end_59} :catch_5a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4e .. :try_end_59} :catch_5a
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_59} :catch_5a

    .line 4007
    goto :goto_60

    .line 4005
    :catch_5a
    move-exception v2

    .line 4006
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "applyRestore: error reading payload"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4008
    .end local v2  # "e":Ljava/lang/Exception;
    :goto_60
    return-void
.end method

.method public areBubblesAllowed(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkg"  # Ljava/lang/String;

    .line 2688
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService$10;->areBubblesAllowedForPackage(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public areBubblesAllowedForPackage(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 2693
    const-string v0, "Caller not system or systemui or same package"

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService$10;->enforceSystemOrSystemUIOrSamePackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 2696
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-eq v0, v1, :cond_2b

    .line 2697
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canNotifyAsPackage for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2702
    :cond_2b
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->areBubblesAllowed(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public areChannelsBypassingDnd()Z
    .registers 2

    .line 3142
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/notification/PreferencesHelper;->areChannelsBypassingDnd()Z

    move-result v0

    return v0
.end method

.method public areNotificationsEnabled(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkg"  # Ljava/lang/String;

    .line 2667
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService$10;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 2675
    const-string v0, "Caller not system or systemui or same package"

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService$10;->enforceSystemOrSystemUIOrSamePackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 2677
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-eq v0, v1, :cond_2b

    .line 2678
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canNotifyAsPackage for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2683
    :cond_2b
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getImportance(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_39

    const/4 v0, 0x1

    goto :goto_3a

    :cond_39
    const/4 v0, 0x0

    :goto_3a
    return v0
.end method

.method public canNotifyAsPackage(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 9
    .param p1, "callingPkg"  # Ljava/lang/String;
    .param p2, "targetPkg"  # Ljava/lang/String;
    .param p3, "userId"  # I

    .line 2794
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$3800(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 2795
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2796
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 2797
    .local v1, "user":Landroid/os/UserHandle;
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    if-eq v2, p3, :cond_2f

    .line 2798
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canNotifyAsPackage for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2802
    :cond_2f
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 2803
    const/4 v2, 0x1

    return v2

    .line 2806
    :cond_37
    :try_start_37
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 2807
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1600(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/high16 v3, 0xc0000

    invoke-interface {v2, p2, v3, p3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 2810
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_52

    .line 2811
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v3

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, p2, v4, p1, v0}, Lcom/android/server/notification/PreferencesHelper;->isDelegateAllowed(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v3
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_51} :catch_53

    return v3

    .line 2816
    .end local v2  # "info":Landroid/content/pm/ApplicationInfo;
    :cond_52
    goto :goto_54

    .line 2814
    :catch_53
    move-exception v2

    .line 2817
    :goto_54
    const/4 v2, 0x0

    return v2
.end method

.method public canShowBadge(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 2749
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$3900(Lcom/android/server/notification/NotificationManagerService;)V

    .line 2750
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->canShowBadge(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public cancelAllNotifications(Ljava/lang/String;I)V
    .registers 17
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 2589
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object v13, p1

    invoke-static {v1, p1}, Lcom/android/server/notification/NotificationManagerService;->access$3500(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 2591
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 2592
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2591
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "cancelAllNotifications"

    move/from16 v4, p2

    move-object v8, p1

    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 2596
    .end local p2  # "userId":I
    .local v1, "userId":I
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x40

    const/4 v9, 0x1

    const/16 v11, 0x9

    const/4 v12, 0x0

    move-object v5, p1

    move v10, v1

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 2599
    return-void
.end method

.method public cancelNotificationFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 21
    .param p1, "token"  # Landroid/service/notification/INotificationListener;
    .param p2, "pkg"  # Ljava/lang/String;
    .param p3, "tag"  # Ljava/lang/String;
    .param p4, "id"  # I

    .line 3541
    move-object/from16 v9, p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 3542
    .local v10, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 3543
    .local v11, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 3545
    .local v12, "identity":J
    :try_start_e
    iget-object v0, v9, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v14, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_62

    .line 3546
    :try_start_13
    iget-object v0, v9, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_59

    move-object/from16 v15, p1

    :try_start_1b
    invoke-virtual {v0, v15}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v0

    .line 3547
    .local v0, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    invoke-virtual {v0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->supportsProfiles()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 3548
    const-string v1, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring deprecated cancelNotification(pkg, tag, id) from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " use cancelNotification(key) instead."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    .line 3552
    :cond_43
    iget v8, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    move-object/from16 v1, p0

    move-object v2, v0

    move v3, v10

    move v4, v11

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/server/notification/NotificationManagerService$10;->cancelNotificationFromListenerLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IILjava/lang/String;Ljava/lang/String;II)V

    .line 3555
    .end local v0  # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :goto_53
    monitor-exit v14
    :try_end_54
    .catchall {:try_start_1b .. :try_end_54} :catchall_60

    .line 3557
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3558
    nop

    .line 3559
    return-void

    .line 3555
    :catchall_59
    move-exception v0

    move-object/from16 v15, p1

    :goto_5c
    :try_start_5c
    monitor-exit v14
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_60

    .end local v10  # "callingUid":I
    .end local v11  # "callingPid":I
    .end local v12  # "identity":J
    .end local p0  # "this":Lcom/android/server/notification/NotificationManagerService$10;
    .end local p1  # "token":Landroid/service/notification/INotificationListener;
    .end local p2  # "pkg":Ljava/lang/String;
    .end local p3  # "tag":Ljava/lang/String;
    .end local p4  # "id":I
    :try_start_5d
    throw v0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5e

    .line 3557
    .restart local v10  # "callingUid":I
    .restart local v11  # "callingPid":I
    .restart local v12  # "identity":J
    .restart local p0  # "this":Lcom/android/server/notification/NotificationManagerService$10;
    .restart local p1  # "token":Landroid/service/notification/INotificationListener;
    .restart local p2  # "pkg":Ljava/lang/String;
    .restart local p3  # "tag":Ljava/lang/String;
    .restart local p4  # "id":I
    :catchall_5e
    move-exception v0

    goto :goto_65

    .line 3555
    :catchall_60
    move-exception v0

    goto :goto_5c

    .line 3557
    :catchall_62
    move-exception v0

    move-object/from16 v15, p1

    :goto_65
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 20
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "tag"  # Ljava/lang/String;
    .param p3, "id"  # I
    .param p4, "userId"  # I

    .line 2576
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v14, p1

    invoke-static {v1, v14}, Lcom/android/server/notification/NotificationManagerService;->access$3500(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 2577
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 2578
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2577
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "cancelNotificationWithTag"

    move/from16 v4, p4

    move-object/from16 v8, p1

    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 2581
    .end local p4  # "userId":I
    .local v1, "userId":I
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService;->isCallingUidSystem()Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v2, 0x0

    move v9, v2

    goto :goto_2a

    .line 2582
    :cond_27
    const/16 v2, 0x440

    move v9, v2

    :goto_2a
    nop

    .line 2583
    .local v9, "mustNotHaveFlags":I
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/16 v12, 0x8

    const/4 v13, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move v11, v1

    invoke-virtual/range {v2 .. v13}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 2585
    return-void
.end method

.method public cancelNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V
    .registers 24
    .param p1, "token"  # Landroid/service/notification/INotificationListener;
    .param p2, "keys"  # [Ljava/lang/String;

    .line 3355
    move-object/from16 v9, p0

    move-object/from16 v10, p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 3356
    .local v11, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 3357
    .local v12, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 3359
    .local v13, "identity":J
    :try_start_10
    iget-object v0, v9, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v15, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v15
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_c0

    .line 3360
    :try_start_15
    iget-object v0, v9, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    move-object/from16 v8, p1

    invoke-virtual {v0, v8}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v0

    .line 3362
    .local v0, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    if-eqz v10, :cond_a7

    .line 3363
    array-length v1, v10

    move v7, v1

    .line 3364
    .local v7, "N":I
    const/4 v1, 0x0

    move v6, v1

    .local v6, "i":I
    :goto_27
    if-ge v6, v7, :cond_a2

    .line 3365
    iget-object v1, v9, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    aget-object v2, v10, v6

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    move-object v5, v1

    .line 3366
    .local v5, "r":Lcom/android/server/notification/NotificationRecord;
    if-nez v5, :cond_3d

    move/from16 v16, v6

    move/from16 v17, v7

    goto :goto_9b

    .line 3367
    :cond_3d
    iget-object v1, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    move v4, v1

    .line 3368
    .local v4, "userId":I
    iget v1, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    if-eq v4, v1, :cond_71

    const/4 v1, -0x1

    if-eq v4, v1, :cond_71

    iget-object v1, v9, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 3369
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$2400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    move-result v1

    if-eqz v1, :cond_58

    goto :goto_71

    .line 3370
    :cond_58
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disallowed call from listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v11  # "callingUid":I
    .end local v12  # "callingPid":I
    .end local v13  # "identity":J
    .end local p0  # "this":Lcom/android/server/notification/NotificationManagerService$10;
    .end local p1  # "token":Landroid/service/notification/INotificationListener;
    .end local p2  # "keys":[Ljava/lang/String;
    throw v1

    .line 3373
    .restart local v11  # "callingUid":I
    .restart local v12  # "callingPid":I
    .restart local v13  # "identity":J
    .restart local p0  # "this":Lcom/android/server/notification/NotificationManagerService$10;
    .restart local p1  # "token":Landroid/service/notification/INotificationListener;
    .restart local p2  # "keys":[Ljava/lang/String;
    :cond_71
    :goto_71
    iget-object v1, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 3374
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v16

    iget-object v1, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v17

    iget-object v1, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v18

    .line 3373
    move-object/from16 v1, p0

    move-object v2, v0

    move v3, v11

    move/from16 v19, v4

    .end local v4  # "userId":I
    .local v19, "userId":I
    move v4, v12

    move-object/from16 v20, v5

    .end local v5  # "r":Lcom/android/server/notification/NotificationRecord;
    .local v20, "r":Lcom/android/server/notification/NotificationRecord;
    move-object/from16 v5, v16

    move/from16 v16, v6

    .end local v6  # "i":I
    .local v16, "i":I
    move-object/from16 v6, v17

    move/from16 v17, v7

    .end local v7  # "N":I
    .local v17, "N":I
    move/from16 v7, v18

    move/from16 v8, v19

    invoke-direct/range {v1 .. v8}, Lcom/android/server/notification/NotificationManagerService$10;->cancelNotificationFromListenerLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IILjava/lang/String;Ljava/lang/String;II)V

    .line 3364
    .end local v19  # "userId":I
    .end local v20  # "r":Lcom/android/server/notification/NotificationRecord;
    :goto_9b
    add-int/lit8 v6, v16, 0x1

    move-object/from16 v8, p1

    move/from16 v7, v17

    .end local v16  # "i":I
    .restart local v6  # "i":I
    goto :goto_27

    .end local v17  # "N":I
    .restart local v7  # "N":I
    :cond_a2
    move/from16 v16, v6

    move/from16 v17, v7

    .line 3377
    .end local v6  # "i":I
    .end local v7  # "N":I
    goto :goto_b7

    .line 3378
    :cond_a7
    iget-object v1, v9, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget v4, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    const/16 v5, 0xb

    .line 3379
    invoke-virtual {v0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->supportsProfiles()Z

    move-result v7

    .line 3378
    move v2, v11

    move v3, v12

    move-object v6, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/notification/NotificationManagerService;->cancelAllLocked(IIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V

    .line 3381
    .end local v0  # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :goto_b7
    monitor-exit v15
    :try_end_b8
    .catchall {:try_start_15 .. :try_end_b8} :catchall_bd

    .line 3383
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3384
    nop

    .line 3385
    return-void

    .line 3381
    :catchall_bd
    move-exception v0

    :try_start_be
    monitor-exit v15
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_bd

    .end local v11  # "callingUid":I
    .end local v12  # "callingPid":I
    .end local v13  # "identity":J
    .end local p0  # "this":Lcom/android/server/notification/NotificationManagerService$10;
    .end local p1  # "token":Landroid/service/notification/INotificationListener;
    .end local p2  # "keys":[Ljava/lang/String;
    :try_start_bf
    throw v0
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_c0

    .line 3383
    .restart local v11  # "callingUid":I
    .restart local v12  # "callingPid":I
    .restart local v13  # "identity":J
    .restart local p0  # "this":Lcom/android/server/notification/NotificationManagerService$10;
    .restart local p1  # "token":Landroid/service/notification/INotificationListener;
    .restart local p2  # "keys":[Ljava/lang/String;
    :catchall_c0
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public cancelToast(Ljava/lang/String;Landroid/app/ITransientNotification;)V
    .registers 10
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "callback"  # Landroid/app/ITransientNotification;

    .line 2525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelToast pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2527
    if-eqz p1, :cond_66

    if-nez p2, :cond_23

    goto :goto_66

    .line 2532
    :cond_23
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2533
    :try_start_28
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_63

    .line 2535
    .local v1, "callingId":J
    :try_start_2c
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I

    move-result v3

    .line 2536
    .local v3, "index":I
    if-ltz v3, :cond_3a

    .line 2537
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4, v3}, Lcom/android/server/notification/NotificationManagerService;->cancelToastLocked(I)V

    goto :goto_58

    .line 2539
    :cond_3a
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Toast already cancelled. pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " callback="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catchall {:try_start_2c .. :try_end_58} :catchall_5e

    .line 2543
    .end local v3  # "index":I
    :goto_58
    :try_start_58
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2544
    nop

    .line 2545
    .end local v1  # "callingId":J
    monitor-exit v0

    .line 2546
    return-void

    .line 2543
    .restart local v1  # "callingId":J
    :catchall_5e
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/notification/NotificationManagerService$10;
    .end local p1  # "pkg":Ljava/lang/String;
    .end local p2  # "callback":Landroid/app/ITransientNotification;
    throw v3

    .line 2545
    .end local v1  # "callingId":J
    .restart local p0  # "this":Lcom/android/server/notification/NotificationManagerService$10;
    .restart local p1  # "pkg":Ljava/lang/String;
    .restart local p2  # "callback":Landroid/app/ITransientNotification;
    :catchall_63
    move-exception v1

    monitor-exit v0
    :try_end_65
    .catchall {:try_start_58 .. :try_end_65} :catchall_63

    throw v1

    .line 2528
    :cond_66
    :goto_66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not cancelling notification. pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2529
    return-void
.end method

.method public clearData(Ljava/lang/String;IZ)V
    .registers 16
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "fromApp"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3147
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$3900(Lcom/android/server/notification/NotificationManagerService;)V

    .line 3150
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$1700()I

    move-result v2

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$1800()I

    move-result v3

    .line 3151
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 3150
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v10, 0x11

    const/4 v11, 0x0

    move-object v4, p1

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 3153
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 3154
    .local v1, "packages":[Ljava/lang/String;
    new-array v3, v0, [I

    aput p2, v3, v2

    move-object v2, v3

    .line 3157
    .local v2, "uids":[I
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    .line 3158
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    .line 3161
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$1200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/notification/ConditionProviders;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    .line 3164
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$4300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/SnoozeHelper;

    move-result-object v0

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v0, v3, p1}, Lcom/android/server/notification/SnoozeHelper;->clearData(ILjava/lang/String;)V

    .line 3167
    if-nez p3, :cond_60

    .line 3168
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->clearData(Ljava/lang/String;I)V

    .line 3171
    :cond_60
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 3172
    return-void
.end method

.method public clearRequestedListenerHints(Landroid/service/notification/INotificationListener;)V
    .registers 7
    .param p1, "token"  # Landroid/service/notification/INotificationListener;

    .line 3627
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3629
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_2b

    .line 3630
    :try_start_9
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v3

    .line 3631
    .local v3, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4, v3}, Lcom/android/server/notification/NotificationManagerService;->access$4800(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    .line 3632
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->access$4900(Lcom/android/server/notification/NotificationManagerService;)V

    .line 3633
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->access$5000(Lcom/android/server/notification/NotificationManagerService;)V

    .line 3634
    .end local v3  # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_28

    .line 3636
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3637
    nop

    .line 3638
    return-void

    .line 3634
    :catchall_28
    move-exception v3

    :try_start_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    .end local v0  # "identity":J
    .end local p0  # "this":Lcom/android/server/notification/NotificationManagerService$10;
    .end local p1  # "token":Landroid/service/notification/INotificationListener;
    :try_start_2a
    throw v3
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_2b

    .line 3636
    .restart local v0  # "identity":J
    .restart local p0  # "this":Lcom/android/server/notification/NotificationManagerService$10;
    .restart local p1  # "token":Landroid/service/notification/INotificationListener;
    :catchall_2b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public createNotificationChannelGroups(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    .registers 13
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "channelGroupList"  # Landroid/content/pm/ParceledListSlice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2831
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$3500(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 2832
    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 2833
    .local v0, "groups":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannelGroup;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 2834
    .local v1, "groupSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v1, :cond_26

    .line 2835
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannelGroup;

    .line 2836
    .local v3, "group":Landroid/app/NotificationChannelGroup;
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v5, p1

    move-object v7, v3

    invoke-static/range {v4 .. v9}, Lcom/android/server/notification/NotificationManagerService;->access$4000(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;ILandroid/app/NotificationChannelGroup;ZZ)V

    .line 2834
    .end local v3  # "group":Landroid/app/NotificationChannelGroup;
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 2838
    .end local v2  # "i":I
    :cond_26
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 2839
    return-void
.end method

.method public createNotificationChannels(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    .registers 4
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "channelsList"  # Landroid/content/pm/ParceledListSlice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2869
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$3500(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 2870
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/notification/NotificationManagerService$10;->createNotificationChannelsImpl(Ljava/lang/String;ILandroid/content/pm/ParceledListSlice;)V

    .line 2871
    return-void
.end method

.method public createNotificationChannelsForPackage(Ljava/lang/String;ILandroid/content/pm/ParceledListSlice;)V
    .registers 5
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "channelsList"  # Landroid/content/pm/ParceledListSlice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2876
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$3900(Lcom/android/server/notification/NotificationManagerService;)V

    .line 2877
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService$10;->createNotificationChannelsImpl(Ljava/lang/String;ILandroid/content/pm/ParceledListSlice;)V

    .line 2878
    return-void
.end method

.method public deleteNotificationChannel(Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "channelId"  # Ljava/lang/String;

    .line 2981
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$3500(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 2982
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2983
    .local v0, "callingUid":I
    const-string/jumbo v1, "miscellaneous"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 2986
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$1700()I

    move-result v3

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$1800()I

    move-result v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 2987
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    const/16 v11, 0x11

    const/4 v12, 0x0

    .line 2986
    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 2988
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/android/server/notification/PreferencesHelper;->deleteNotificationChannel(Ljava/lang/String;ILjava/lang/String;)V

    .line 2989
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v1

    .line 2990
    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 2991
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v0, p2, v4}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v3

    const/4 v4, 0x3

    .line 2989
    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyNotificationChannelChanged(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V

    .line 2993
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 2994
    return-void

    .line 2984
    :cond_53
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot delete default channel"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public deleteNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;)V
    .registers 24
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "groupId"  # Ljava/lang/String;

    .line 3013
    move-object/from16 v0, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1, v12}, Lcom/android/server/notification/NotificationManagerService;->access$3500(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 3015
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 3016
    .local v14, "callingUid":I
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 3017
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v1

    invoke-virtual {v1, v13, v12, v14}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;

    move-result-object v15

    .line 3018
    .local v15, "groupToDelete":Landroid/app/NotificationChannelGroup;
    if-eqz v15, :cond_92

    .line 3019
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 3020
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v1

    invoke-virtual {v1, v12, v14, v13}, Lcom/android/server/notification/PreferencesHelper;->deleteNotificationChannelGroup(Ljava/lang/String;ILjava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 3021
    .local v11, "deletedChannels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    const/4 v1, 0x0

    move v10, v1

    .local v10, "i":I
    :goto_27
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    const/4 v9, 0x3

    if-ge v10, v1, :cond_7b

    .line 3022
    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/app/NotificationChannel;

    .line 3023
    .local v8, "deletedChannel":Landroid/app/NotificationChannel;
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$1700()I

    move-result v2

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$1800()I

    move-result v3

    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v16, 0x1

    .line 3025
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v17

    const/16 v18, 0x11

    const/16 v19, 0x0

    .line 3023
    move-object/from16 v4, p1

    move-object/from16 v20, v8

    .end local v8  # "deletedChannel":Landroid/app/NotificationChannel;
    .local v20, "deletedChannel":Landroid/app/NotificationChannel;
    move/from16 v8, v16

    move/from16 v9, v17

    move/from16 v16, v10

    .end local v10  # "i":I
    .local v16, "i":I
    move/from16 v10, v18

    move-object/from16 v17, v11

    .end local v11  # "deletedChannels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    .local v17, "deletedChannels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    move-object/from16 v11, v19

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 3027
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v1

    .line 3028
    invoke-static {v14}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 3027
    move-object/from16 v3, v20

    const/4 v4, 0x3

    .end local v20  # "deletedChannel":Landroid/app/NotificationChannel;
    .local v3, "deletedChannel":Landroid/app/NotificationChannel;
    invoke-virtual {v1, v12, v2, v3, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyNotificationChannelChanged(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V

    .line 3021
    .end local v3  # "deletedChannel":Landroid/app/NotificationChannel;
    add-int/lit8 v10, v16, 0x1

    move-object/from16 v11, v17

    .end local v16  # "i":I
    .restart local v10  # "i":I
    goto :goto_27

    .end local v17  # "deletedChannels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    .restart local v11  # "deletedChannels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    :cond_7b
    move v4, v9

    move/from16 v16, v10

    move-object/from16 v17, v11

    .line 3032
    .end local v10  # "i":I
    .end local v11  # "deletedChannels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    .restart local v17  # "deletedChannels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v1

    .line 3033
    invoke-static {v14}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 3032
    invoke-virtual {v1, v12, v2, v15, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyNotificationChannelGroupChanged(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;I)V

    .line 3035
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 3037
    .end local v17  # "deletedChannels":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannel;>;"
    :cond_92
    return-void
.end method

.method public disallowAssistantAdjustment(Ljava/lang/String;)V
    .registers 3
    .param p1, "adjustmentType"  # Ljava/lang/String;

    .line 3196
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$4400(Lcom/android/server/notification/NotificationManagerService;)V

    .line 3197
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->disallowAdjustmentType(Ljava/lang/String;)V

    .line 3199
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 3200
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 3937
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "NotificationService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 3938
    :cond_f
    invoke-static {p3}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->parseFromArguments([Ljava/lang/String;)Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    move-result-object v0

    .line 3939
    .local v0, "filter":Lcom/android/server/notification/NotificationManagerService$DumpFilter;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3941
    .local v1, "token":J
    :try_start_17
    iget-boolean v3, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->stats:Z

    if-eqz v3, :cond_21

    .line 3942
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3, p2, v0}, Lcom/android/server/notification/NotificationManagerService;->access$5700(Lcom/android/server/notification/NotificationManagerService;Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    goto :goto_3a

    .line 3943
    :cond_21
    iget-boolean v3, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->proto:Z

    if-eqz v3, :cond_2b

    .line 3944
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->access$5800(Lcom/android/server/notification/NotificationManagerService;Ljava/io/FileDescriptor;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    goto :goto_3a

    .line 3945
    :cond_2b
    iget-boolean v3, v0, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->criticalPriority:Z

    if-eqz v3, :cond_35

    .line 3946
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3, p2, v0}, Lcom/android/server/notification/NotificationManagerService;->access$5900(Lcom/android/server/notification/NotificationManagerService;Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    goto :goto_3a

    .line 3948
    :cond_35
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3, p2, v0}, Lcom/android/server/notification/NotificationManagerService;->dumpImpl(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    :try_end_3a
    .catchall {:try_start_17 .. :try_end_3a} :catchall_3f

    .line 3951
    :goto_3a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3952
    nop

    .line 3953
    return-void

    .line 3951
    :catchall_3f
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V
    .registers 16
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "opPkg"  # Ljava/lang/String;
    .param p3, "tag"  # Ljava/lang/String;
    .param p4, "id"  # I
    .param p5, "notification"  # Landroid/app/Notification;
    .param p6, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2570
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2571
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 2570
    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/notification/NotificationManagerService;->enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;I)V

    .line 2572
    return-void
.end method

.method public enqueueToast(Ljava/lang/String;Landroid/app/ITransientNotification;II)V
    .registers 31
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "callback"  # Landroid/app/ITransientNotification;
    .param p3, "duration"  # I
    .param p4, "displayId"  # I

    .line 2418
    move-object/from16 v1, p0

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    const/4 v2, 0x0

    .line 2419
    .local v2, "packageName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2421
    .local v3, "message":Ljava/lang/String;
    :try_start_a
    new-instance v0, Lorg/json/JSONObject;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_c} :catch_2f

    move-object/from16 v4, p1

    :try_start_e
    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2422
    .local v0, "root":Lorg/json/JSONObject;
    const-string/jumbo v5, "pkg"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 2423
    const-string/jumbo v5, "message"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 2424
    const-string/jumbo v5, "message"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_29} :catch_2d

    move-object v3, v5

    .line 2427
    .end local v0  # "root":Lorg/json/JSONObject;
    :cond_2a
    move-object v12, v2

    move-object v13, v3

    goto :goto_34

    .line 2426
    :catch_2d
    move-exception v0

    goto :goto_32

    :catch_2f
    move-exception v0

    move-object/from16 v4, p1

    :goto_32
    move-object v12, v2

    move-object v13, v3

    .line 2428
    .end local v2  # "packageName":Ljava/lang/String;
    .end local v3  # "message":Ljava/lang/String;
    .local v12, "packageName":Ljava/lang/String;
    .local v13, "message":Ljava/lang/String;
    :goto_34
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 2429
    move-object v0, v12

    move-object v14, v0

    .end local p1  # "pkg":Ljava/lang/String;
    .local v0, "pkg":Ljava/lang/String;
    goto :goto_3e

    .line 2428
    .end local v0  # "pkg":Ljava/lang/String;
    .restart local p1  # "pkg":Ljava/lang/String;
    :cond_3d
    move-object v14, v4

    .line 2433
    .end local p1  # "pkg":Ljava/lang/String;
    .local v14, "pkg":Ljava/lang/String;
    :goto_3e
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_70

    .line 2434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueueToast pkg="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " callback="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " duration="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " displayId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NotificationService"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    :cond_70
    if-eqz v14, :cond_1e5

    if-nez v9, :cond_76

    goto/16 :goto_1e5

    .line 2443
    :cond_76
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 2444
    .local v15, "callingUid":I
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result v0

    const/4 v2, 0x0

    const/16 v16, 0x1

    if-nez v0, :cond_90

    .line 2445
    const-string v0, "android"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    goto :goto_90

    :cond_8e
    move v0, v2

    goto :goto_92

    :cond_90
    :goto_90
    move/from16 v0, v16

    :goto_92
    move/from16 v17, v0

    .line 2446
    .local v17, "isSystemToast":Z
    invoke-virtual {v1, v14}, Lcom/android/server/notification/NotificationManagerService$10;->isPackagePaused(Ljava/lang/String;)Z

    move-result v18

    .line 2447
    .local v18, "isPackageSuspended":Z
    invoke-virtual {v1, v14, v15}, Lcom/android/server/notification/NotificationManagerService$10;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    move/from16 v19, v0

    .line 2450
    .local v19, "notificationsDisabledForPackage":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 2452
    .local v20, "callingIdentity":J
    :try_start_a4
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$3200(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/ActivityManager;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/app/ActivityManager;->getUidImportance(I)I

    move-result v0

    const/16 v3, 0x64

    if-ne v0, v3, :cond_b4

    move/from16 v2, v16

    :cond_b4
    move v0, v2

    .line 2454
    .local v0, "appIsForeground":Z
    if-nez v17, :cond_e1

    if-eqz v19, :cond_bb

    if-eqz v0, :cond_bd

    :cond_bb
    if-eqz v18, :cond_e1

    .line 2456
    :cond_bd
    const-string v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Suppressing toast from package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2457
    if-eqz v18, :cond_d1

    const-string v4, " due to package suspended."

    goto :goto_d3

    .line 2458
    :cond_d1
    const-string v4, " by user request."

    :goto_d3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2456
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_dd
    .catchall {:try_start_a4 .. :try_end_dd} :catchall_1e0

    .line 2462
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2459
    return-void

    .line 2462
    .end local v0  # "appIsForeground":Z
    :cond_e1
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2463
    nop

    .line 2465
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v8, v0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v8

    .line 2466
    :try_start_ea
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    move v7, v0

    .line 2467
    .local v7, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_f3
    .catchall {:try_start_ea .. :try_end_f3} :catchall_1d9

    move-wide/from16 v22, v2

    .line 2470
    .local v22, "callingId":J
    :try_start_f5
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0, v14, v9}, Lcom/android/server/notification/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I

    move-result v0
    :try_end_fb
    .catchall {:try_start_f5 .. :try_end_fb} :catchall_1d1

    .line 2473
    .local v0, "index":I
    if-ltz v0, :cond_111

    .line 2474
    :try_start_fd
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 2475
    .local v2, "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    invoke-virtual {v2, v10}, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->update(I)V
    :try_end_10a
    .catchall {:try_start_fd .. :try_end_10a} :catchall_10b

    goto :goto_119

    .line 2518
    .end local v0  # "index":I
    .end local v2  # "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :catchall_10b
    move-exception v0

    move v10, v7

    move-object/from16 v25, v8

    goto/16 :goto_1d5

    .line 2477
    .restart local v0  # "index":I
    :cond_111
    :try_start_111
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2, v14, v13}, Lcom/android/server/notification/NotificationManagerService;->access$3300(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_117
    .catchall {:try_start_111 .. :try_end_117} :catchall_1d1

    if-eqz v2, :cond_11e

    .line 2514
    :goto_119
    move v10, v7

    move-object/from16 v25, v8

    goto/16 :goto_1c1

    .line 2483
    :cond_11e
    if-nez v17, :cond_180

    .line 2484
    const/4 v2, 0x0

    .line 2485
    .local v2, "count":I
    :try_start_121
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2486
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_12a
    if-ge v4, v3, :cond_17b

    .line 2487
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 2488
    .local v5, "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    iget-object v6, v5, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_170

    .line 2489
    add-int/lit8 v2, v2, 0x1

    .line 2490
    const/16 v6, 0x32

    if-lt v2, v6, :cond_16b

    .line 2491
    const-string v6, "NotificationService"

    move/from16 p1, v0

    .end local v0  # "index":I
    .local p1, "index":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v24, v3

    .end local v3  # "N":I
    .local v24, "N":I
    const-string v3, "Package has already posted "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " toasts. Not showing more. Package="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_166
    .catchall {:try_start_121 .. :try_end_166} :catchall_10b

    .line 2518
    :try_start_166
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v8
    :try_end_16a
    .catchall {:try_start_166 .. :try_end_16a} :catchall_1d9

    .line 2493
    return-void

    .line 2490
    .end local v24  # "N":I
    .end local p1  # "index":I
    .restart local v0  # "index":I
    .restart local v3  # "N":I
    :cond_16b
    move/from16 p1, v0

    move/from16 v24, v3

    .end local v0  # "index":I
    .end local v3  # "N":I
    .restart local v24  # "N":I
    .restart local p1  # "index":I
    goto :goto_174

    .line 2488
    .end local v24  # "N":I
    .end local p1  # "index":I
    .restart local v0  # "index":I
    .restart local v3  # "N":I
    :cond_170
    move/from16 p1, v0

    move/from16 v24, v3

    .line 2486
    .end local v0  # "index":I
    .end local v3  # "N":I
    .end local v5  # "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    .restart local v24  # "N":I
    .restart local p1  # "index":I
    :goto_174
    add-int/lit8 v4, v4, 0x1

    move/from16 v0, p1

    move/from16 v3, v24

    goto :goto_12a

    .end local v24  # "N":I
    .end local p1  # "index":I
    .restart local v0  # "index":I
    .restart local v3  # "N":I
    :cond_17b
    move/from16 p1, v0

    move/from16 v24, v3

    .end local v0  # "index":I
    .end local v3  # "N":I
    .restart local v24  # "N":I
    .restart local p1  # "index":I
    goto :goto_182

    .line 2483
    .end local v2  # "count":I
    .end local v4  # "i":I
    .end local v24  # "N":I
    .end local p1  # "index":I
    .restart local v0  # "index":I
    :cond_180
    move/from16 p1, v0

    .line 2499
    .end local v0  # "index":I
    .restart local p1  # "index":I
    :goto_182
    :try_start_182
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 2500
    .local v0, "token":Landroid/os/Binder;
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$3400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v2

    const/16 v3, 0x7d5

    invoke-virtual {v2, v0, v3, v11}, Lcom/android/server/wm/WindowManagerInternal;->addWindowToken(Landroid/os/IBinder;II)V

    .line 2501
    new-instance v24, Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :try_end_194
    .catchall {:try_start_182 .. :try_end_194} :catchall_1d1

    move-object/from16 v2, v24

    move v3, v7

    move-object v4, v14

    move-object/from16 v5, p2

    move/from16 v6, p3

    move v10, v7

    .end local v7  # "callingPid":I
    .local v10, "callingPid":I
    move-object v7, v0

    move-object/from16 v25, v8

    move/from16 v8, p4

    :try_start_1a2
    invoke-direct/range {v2 .. v8}, Lcom/android/server/notification/NotificationManagerService$ToastRecord;-><init>(ILjava/lang/String;Landroid/app/ITransientNotification;ILandroid/os/Binder;I)V

    move-object/from16 v2, v24

    .line 2504
    .local v2, "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    invoke-virtual {v2, v13}, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->setMessage(Ljava/lang/String;)V

    .line 2506
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2507
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 2508
    .end local p1  # "index":I
    .local v3, "index":I
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/notification/NotificationManagerService;->keepProcessAliveIfNeededLocked(I)V

    move v0, v3

    .line 2514
    .end local v2  # "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    .end local v3  # "index":I
    .local v0, "index":I
    :goto_1c1
    if-nez v0, :cond_1cb

    .line 2515
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService;->showNextToastLocked()V
    :try_end_1c8
    .catchall {:try_start_1a2 .. :try_end_1c8} :catchall_1c9

    goto :goto_1cb

    .line 2518
    .end local v0  # "index":I
    :catchall_1c9
    move-exception v0

    goto :goto_1d5

    :cond_1cb
    :goto_1cb
    :try_start_1cb
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2519
    nop

    .line 2520
    .end local v10  # "callingPid":I
    .end local v22  # "callingId":J
    monitor-exit v25

    .line 2521
    return-void

    .line 2518
    .restart local v7  # "callingPid":I
    .restart local v22  # "callingId":J
    :catchall_1d1
    move-exception v0

    move v10, v7

    move-object/from16 v25, v8

    .end local v7  # "callingPid":I
    .restart local v10  # "callingPid":I
    :goto_1d5
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v12  # "packageName":Ljava/lang/String;
    .end local v13  # "message":Ljava/lang/String;
    .end local v14  # "pkg":Ljava/lang/String;
    .end local v15  # "callingUid":I
    .end local v17  # "isSystemToast":Z
    .end local v18  # "isPackageSuspended":Z
    .end local v19  # "notificationsDisabledForPackage":Z
    .end local v20  # "callingIdentity":J
    .end local p0  # "this":Lcom/android/server/notification/NotificationManagerService$10;
    .end local p2  # "callback":Landroid/app/ITransientNotification;
    .end local p3  # "duration":I
    .end local p4  # "displayId":I
    throw v0

    .line 2520
    .end local v10  # "callingPid":I
    .end local v22  # "callingId":J
    .restart local v12  # "packageName":Ljava/lang/String;
    .restart local v13  # "message":Ljava/lang/String;
    .restart local v14  # "pkg":Ljava/lang/String;
    .restart local v15  # "callingUid":I
    .restart local v17  # "isSystemToast":Z
    .restart local v18  # "isPackageSuspended":Z
    .restart local v19  # "notificationsDisabledForPackage":Z
    .restart local v20  # "callingIdentity":J
    .restart local p0  # "this":Lcom/android/server/notification/NotificationManagerService$10;
    .restart local p2  # "callback":Landroid/app/ITransientNotification;
    .restart local p3  # "duration":I
    .restart local p4  # "displayId":I
    :catchall_1d9
    move-exception v0

    move-object/from16 v25, v8

    :goto_1dc
    monitor-exit v25
    :try_end_1dd
    .catchall {:try_start_1cb .. :try_end_1dd} :catchall_1de

    throw v0

    :catchall_1de
    move-exception v0

    goto :goto_1dc

    .line 2462
    :catchall_1e0
    move-exception v0

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2439
    .end local v15  # "callingUid":I
    .end local v17  # "isSystemToast":Z
    .end local v18  # "isPackageSuspended":Z
    .end local v19  # "notificationsDisabledForPackage":Z
    .end local v20  # "callingIdentity":J
    :cond_1e5
    :goto_1e5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not enqueuing toast. pkg="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " callback="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NotificationService"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2440
    return-void
.end method

.method public finishToken(Ljava/lang/String;Landroid/app/ITransientNotification;)V
    .registers 11
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "callback"  # Landroid/app/ITransientNotification;

    .line 2550
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2551
    :try_start_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_4e

    .line 2553
    .local v1, "callingId":J
    :try_start_9
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I

    move-result v3

    .line 2554
    .local v3, "index":I
    if-ltz v3, :cond_25

    .line 2555
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 2556
    .local v4, "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v4, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->token:Landroid/os/Binder;

    iget v7, v4, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->displayId:I

    invoke-virtual {v5, v6, v7}, Lcom/android/server/notification/NotificationManagerService;->finishTokenLocked(Landroid/os/IBinder;I)V

    .line 2557
    .end local v4  # "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    goto :goto_43

    .line 2558
    :cond_25
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Toast already killed. pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " callback="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_9 .. :try_end_43} :catchall_49

    .line 2562
    .end local v3  # "index":I
    :goto_43
    :try_start_43
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2563
    nop

    .line 2564
    .end local v1  # "callingId":J
    monitor-exit v0

    .line 2565
    return-void

    .line 2562
    .restart local v1  # "callingId":J
    :catchall_49
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/notification/NotificationManagerService$10;
    .end local p1  # "pkg":Ljava/lang/String;
    .end local p2  # "callback":Landroid/app/ITransientNotification;
    throw v3

    .line 2564
    .end local v1  # "callingId":J
    .restart local p0  # "this":Lcom/android/server/notification/NotificationManagerService$10;
    .restart local p1  # "pkg":Ljava/lang/String;
    .restart local p2  # "callback":Landroid/app/ITransientNotification;
    :catchall_4e
    move-exception v1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_43 .. :try_end_50} :catchall_4e

    throw v1
.end method

.method public getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;
    .registers 8
    .param p1, "callingPkg"  # Ljava/lang/String;

    .line 3211
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_NOTIFICATIONS"

    const-string v2, "NotificationManagerService.getActiveNotifications"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3215
    const/4 v0, 0x0

    .line 3216
    .local v0, "tmp":[Landroid/service/notification/StatusBarNotification;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3219
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$4500(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/AppOpsManager;

    move-result-object v2

    const/16 v3, 0x19

    invoke-virtual {v2, v3, v1, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_51

    .line 3221
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3222
    :try_start_25
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/service/notification/StatusBarNotification;

    move-object v0, v3

    .line 3223
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3224
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_39
    if-ge v4, v3, :cond_4c

    .line 3225
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    iget-object v5, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    aput-object v5, v0, v4

    .line 3224
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    .line 3227
    .end local v3  # "N":I
    .end local v4  # "i":I
    :cond_4c
    monitor-exit v2

    goto :goto_51

    :catchall_4e
    move-exception v3

    monitor-exit v2
    :try_end_50
    .catchall {:try_start_25 .. :try_end_50} :catchall_4e

    throw v3

    .line 3229
    :cond_51
    :goto_51
    return-object v0
.end method

.method public getActiveNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 13
    .param p1, "token"  # Landroid/service/notification/INotificationListener;
    .param p2, "keys"  # [Ljava/lang/String;
    .param p3, "trim"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/INotificationListener;",
            "[",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation

    .line 3574
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3575
    :try_start_5
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v1

    .line 3576
    .local v1, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    if-eqz p2, :cond_13

    const/4 v2, 0x1

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    .line 3577
    .local v2, "getKeys":Z
    :goto_14
    if-eqz v2, :cond_18

    array-length v3, p2

    goto :goto_20

    :cond_18
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3578
    .local v3, "N":I
    :goto_20
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 3580
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/StatusBarNotification;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_26
    if-ge v5, v3, :cond_5e

    .line 3581
    if-eqz v2, :cond_37

    .line 3582
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    aget-object v7, p2, v5

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    goto :goto_41

    .line 3583
    :cond_37
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    :goto_41
    nop

    .line 3584
    .local v6, "r":Lcom/android/server/notification/NotificationRecord;
    if-nez v6, :cond_45

    goto :goto_5b

    .line 3585
    :cond_45
    iget-object v7, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 3586
    .local v7, "sbn":Landroid/service/notification/StatusBarNotification;
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v8, v7, v1}, Lcom/android/server/notification/NotificationManagerService;->access$4700(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v8

    if-nez v8, :cond_50

    goto :goto_5b

    .line 3588
    :cond_50
    if-nez p3, :cond_54

    move-object v8, v7

    goto :goto_58

    :cond_54
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->cloneLight()Landroid/service/notification/StatusBarNotification;

    move-result-object v8

    .line 3589
    .local v8, "sbnToSend":Landroid/service/notification/StatusBarNotification;
    :goto_58
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3580
    .end local v6  # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v7  # "sbn":Landroid/service/notification/StatusBarNotification;
    .end local v8  # "sbnToSend":Landroid/service/notification/StatusBarNotification;
    :goto_5b
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    .line 3591
    .end local v5  # "i":I
    :cond_5e
    new-instance v5, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v5, v4}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v0

    return-object v5

    .line 3592
    .end local v1  # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .end local v2  # "getKeys":Z
    .end local v3  # "N":I
    .end local v4  # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/StatusBarNotification;>;"
    :catchall_65
    move-exception v1

    monitor-exit v0
    :try_end_67
    .catchall {:try_start_5 .. :try_end_67} :catchall_65

    throw v1
.end method

.method public getAllowedAssistantAdjustments(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "pkg"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3176
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$3500(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 3178
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 3179
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->isPackageAllowed(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_26

    .line 3180
    :cond_1e
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Not currently an assistant"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3183
    :cond_26
    :goto_26
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->getAllowedAssistantAdjustments()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllowedNotificationAssistant()Landroid/content/ComponentName;
    .registers 2

    .line 4144
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService$10;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$10;->getAllowedNotificationAssistantForUser(I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getAllowedNotificationAssistantForUser(I)Landroid/content/ComponentName;
    .registers 6
    .param p1, "userId"  # I

    .line 4133
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$4400(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4134
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->getAllowedComponents(I)Ljava/util/List;

    move-result-object v0

    .line 4135
    .local v0, "allowedComponents":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1d

    .line 4139
    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    return-object v1

    .line 4136
    :cond_1d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "At most one NotificationAssistant: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4137
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAppActiveNotifications(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 11
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "incomingUserId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation

    .line 3247
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$3500(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 3248
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 3249
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 3248
    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "getAppActiveNotifications"

    move v3, p2

    move-object v7, p1

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 3251
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3252
    :try_start_1c
    new-instance v2, Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 3253
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(I)V

    .line 3254
    .local v2, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/service/notification/StatusBarNotification;>;"
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3255
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3b
    if-ge v4, v3, :cond_59

    .line 3256
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 3257
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    iget-object v5, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 3256
    invoke-direct {p0, p1, v0, v5}, Lcom/android/server/notification/NotificationManagerService$10;->sanitizeSbn(Ljava/lang/String;ILandroid/service/notification/StatusBarNotification;)Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    .line 3258
    .local v5, "sbn":Landroid/service/notification/StatusBarNotification;
    if-eqz v5, :cond_56

    .line 3259
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3255
    .end local v5  # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_56
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    .line 3262
    .end local v4  # "i":I
    :cond_59
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->access$4300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/SnoozeHelper;

    move-result-object v4

    invoke-virtual {v4, v0, p1}, Lcom/android/server/notification/SnoozeHelper;->getSnoozed(ILjava/lang/String;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_67
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_83

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 3263
    .local v5, "snoozed":Lcom/android/server/notification/NotificationRecord;
    iget-object v6, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, p1, v0, v6}, Lcom/android/server/notification/NotificationManagerService$10;->sanitizeSbn(Ljava/lang/String;ILandroid/service/notification/StatusBarNotification;)Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    .line 3264
    .local v6, "sbn":Landroid/service/notification/StatusBarNotification;
    if-eqz v6, :cond_82

    .line 3265
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3267
    .end local v5  # "snoozed":Lcom/android/server/notification/NotificationRecord;
    .end local v6  # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_82
    goto :goto_67

    .line 3268
    :cond_83
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3269
    .local v4, "M":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_8c
    if-ge v5, v4, :cond_aa

    .line 3270
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 3271
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    iget-object v6, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 3270
    invoke-direct {p0, p1, v0, v6}, Lcom/android/server/notification/NotificationManagerService$10;->sanitizeSbn(Ljava/lang/String;ILandroid/service/notification/StatusBarNotification;)Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    .line 3272
    .restart local v6  # "sbn":Landroid/service/notification/StatusBarNotification;
    if-eqz v6, :cond_a7

    .line 3273
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3269
    .end local v6  # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_a7
    add-int/lit8 v5, v5, 0x1

    goto :goto_8c

    .line 3276
    .end local v5  # "i":I
    :cond_aa
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 3277
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/StatusBarNotification;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3278
    new-instance v6, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v6, v5}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v1

    return-object v6

    .line 3279
    .end local v2  # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/service/notification/StatusBarNotification;>;"
    .end local v3  # "N":I
    .end local v4  # "M":I
    .end local v5  # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/StatusBarNotification;>;"
    :catchall_c1
    move-exception v2

    monitor-exit v1
    :try_end_c3
    .catchall {:try_start_1c .. :try_end_c3} :catchall_c1

    throw v2
.end method

.method public getAppsBypassingDndCount(I)I
    .registers 3
    .param p1, "userId"  # I

    .line 3129
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$3900(Lcom/android/server/notification/NotificationManagerService;)V

    .line 3130
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/notification/PreferencesHelper;->getAppsBypassingDndCount(I)I

    move-result v0

    return v0
.end method

.method public getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;
    .registers 4
    .param p1, "id"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3733
    const-string v0, "Id is null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3734
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "getAutomaticZenRule"

    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService$10;->enforcePolicyAccess(ILjava/lang/String;)V

    .line 3735
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;

    move-result-object v0

    return-object v0
.end method

.method public getBackupPayload(I)[B
    .registers 7
    .param p1, "user"  # I

    .line 3980
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$3900(Lcom/android/server/notification/NotificationManagerService;)V

    .line 3981
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    const-string v1, "NotificationService"

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBackupPayload u="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3982
    :cond_1f
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3984
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_24
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v3, 0x1

    invoke-static {v2, v0, v3, p1}, Lcom/android/server/notification/NotificationManagerService;->access$6200(Lcom/android/server/notification/NotificationManagerService;Ljava/io/OutputStream;ZI)V

    .line 3985
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2e} :catch_2f

    return-object v1

    .line 3986
    :catch_2f
    move-exception v2

    .line 3987
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBackupPayload: error writing payload for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3989
    .end local v2  # "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getBlockedAppCount(I)I
    .registers 3
    .param p1, "userId"  # I

    .line 3123
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$3900(Lcom/android/server/notification/NotificationManagerService;)V

    .line 3124
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/notification/PreferencesHelper;->getBlockedAppCount(I)I

    move-result v0

    return v0
.end method

.method public getBlockedChannelCount(Ljava/lang/String;I)I
    .registers 4
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 3076
    const-string v0, "getBlockedChannelCount"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$10;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 3077
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getBlockedChannelCount(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;
    .registers 4

    .line 4064
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4066
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v2
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_10

    .line 4068
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4066
    return-object v2

    .line 4068
    :catchall_10
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getDeletedChannelCount(Ljava/lang/String;I)I
    .registers 4
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 3070
    const-string v0, "getDeletedChannelCount"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$10;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 3071
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getDeletedChannelCount(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getEffectsSuppressor()Landroid/content/ComponentName;
    .registers 3

    .line 3957
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$6000(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$6000(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return-object v0
.end method

.method public getEnabledNotificationListenerPackages()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4121
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$3900(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4122
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService$10;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getAllowedPackages(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledNotificationListeners(I)Ljava/util/List;
    .registers 3
    .param p1, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 4127
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$3900(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4128
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getAllowedComponents(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHintsFromListener(Landroid/service/notification/INotificationListener;)I
    .registers 4
    .param p1, "token"  # Landroid/service/notification/INotificationListener;

    .line 3665
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3666
    :try_start_5
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$5300(Lcom/android/server/notification/NotificationManagerService;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 3667
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public getHistoricalNotifications(Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;
    .registers 7
    .param p1, "callingPkg"  # Ljava/lang/String;
    .param p2, "count"  # I

    .line 3308
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_NOTIFICATIONS"

    const-string v2, "NotificationManagerService.getHistoricalNotifications"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3312
    const/4 v0, 0x0

    .line 3313
    .local v0, "tmp":[Landroid/service/notification/StatusBarNotification;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3316
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$4500(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/AppOpsManager;

    move-result-object v2

    const/16 v3, 0x19

    invoke-virtual {v2, v3, v1, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_37

    .line 3318
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$4600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$Archive;

    move-result-object v2

    monitor-enter v2

    .line 3319
    :try_start_27
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$4600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$Archive;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/android/server/notification/NotificationManagerService$Archive;->getArray(I)[Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    move-object v0, v3

    .line 3320
    monitor-exit v2

    goto :goto_37

    :catchall_34
    move-exception v3

    monitor-exit v2
    :try_end_36
    .catchall {:try_start_27 .. :try_end_36} :catchall_34

    throw v3

    .line 3322
    :cond_37
    :goto_37
    return-object v0
.end method

.method public getInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;)I
    .registers 4
    .param p1, "token"  # Landroid/service/notification/INotificationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3688
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$5400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/Light;

    move-result-object v0

    monitor-enter v0

    .line 3689
    :try_start_7
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$5500(Lcom/android/server/notification/NotificationManagerService;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 3690
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getMaxPriority(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 2921
    const-string v0, "Caller not system or systemui"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$10;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 2923
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getMaxPriority(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;
    .registers 8
    .param p1, "callingPkg"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .param p3, "targetPkg"  # Ljava/lang/String;
    .param p4, "channelId"  # Ljava/lang/String;

    .line 2883
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/notification/NotificationManagerService$10;->canNotifyAsPackage(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 2884
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->isCallingUidSystem()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_36

    .line 2894
    :cond_f
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cannot read channels for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2885
    :cond_36
    :goto_36
    const/4 v0, -0x1

    .line 2887
    .local v0, "targetUid":I
    :try_start_37
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$4100(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p3, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1
    :try_end_41
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_37 .. :try_end_41} :catch_43

    move v0, v1

    .line 2890
    goto :goto_44

    .line 2888
    :catch_43
    move-exception v1

    .line 2891
    :goto_44
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p3, v0, p4, v2}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v1

    return-object v1
.end method

.method public getNotificationChannelForPackage(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;
    .registers 6
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "channelId"  # Ljava/lang/String;
    .param p4, "includeDeleted"  # Z

    .line 2901
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$3900(Lcom/android/server/notification/NotificationManagerService;)V

    .line 2902
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannelGroup;
    .registers 6
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "groupId"  # Ljava/lang/String;

    .line 2998
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$3500(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 2999
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    .line 3000
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2999
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannelGroupWithChannels(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannelGroup;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationChannelGroupForPackage(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;
    .registers 5
    .param p1, "groupId"  # Ljava/lang/String;
    .param p2, "pkg"  # Ljava/lang/String;
    .param p3, "uid"  # I

    .line 3099
    const-string v0, "getNotificationChannelGroupForPackage"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$10;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 3100
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationChannelGroups(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 9
    .param p1, "pkg"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation

    .line 3006
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$3500(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 3007
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v1

    .line 3008
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 3007
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannelGroups(Ljava/lang/String;IZZZ)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationChannelGroupsForPackage(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;
    .registers 11
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "includeDeleted"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation

    .line 3083
    const-string v0, "getNotificationChannelGroupsForPackage"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$10;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 3084
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannelGroups(Ljava/lang/String;IZZZ)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationChannelGroupsFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;
    .registers 7
    .param p1, "token"  # Landroid/service/notification/INotificationListener;
    .param p2, "pkg"  # Ljava/lang/String;
    .param p3, "user"  # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/INotificationListener;",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4340
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4341
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4342
    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/notification/NotificationManagerService$10;->verifyPrivilegedListener(Landroid/service/notification/INotificationListener;Landroid/os/UserHandle;Z)V

    .line 4344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4345
    .local v0, "groups":Ljava/util/List;, "Ljava/util/List<Landroid/app/NotificationChannelGroup;>;"
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v1

    .line 4346
    invoke-direct {p0, p2, p3}, Lcom/android/server/notification/NotificationManagerService$10;->getUidForPackageAndUser(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v2

    .line 4345
    invoke-virtual {v1, p2, v2}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannelGroups(Ljava/lang/String;I)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4347
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public getNotificationChannels(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 7
    .param p1, "callingPkg"  # Ljava/lang/String;
    .param p2, "targetPkg"  # Ljava/lang/String;
    .param p3, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    .line 3106
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService$10;->canNotifyAsPackage(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 3107
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->isCallingUidSystem()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_36

    .line 3117
    :cond_f
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cannot read channels for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3108
    :cond_36
    :goto_36
    const/4 v0, -0x1

    .line 3110
    .local v0, "targetUid":I
    :try_start_37
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$4100(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1
    :try_end_41
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_37 .. :try_end_41} :catch_43

    move v0, v1

    .line 3113
    goto :goto_44

    .line 3111
    :catch_43
    move-exception v1

    .line 3114
    :goto_44
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v0, v2}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannels(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    return-object v1
.end method

.method public getNotificationChannelsBypassingDnd(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 4
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    .line 3136
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$3900(Lcom/android/server/notification/NotificationManagerService;)V

    .line 3137
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannelsBypassingDnd(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationChannelsForPackage(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;
    .registers 5
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "includeDeleted"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    .line 3050
    const-string v0, "getNotificationChannelsForPackage"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$10;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 3051
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannels(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationChannelsFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;
    .registers 7
    .param p1, "token"  # Landroid/service/notification/INotificationListener;
    .param p2, "pkg"  # Ljava/lang/String;
    .param p3, "user"  # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/INotificationListener;",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4328
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4329
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4330
    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/notification/NotificationManagerService$10;->verifyPrivilegedListener(Landroid/service/notification/INotificationListener;Landroid/os/UserHandle;Z)V

    .line 4332
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-direct {p0, p2, p3}, Lcom/android/server/notification/NotificationManagerService$10;->getUidForPackageAndUser(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannels(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationDelegate(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "callingPkg"  # Ljava/lang/String;

    .line 2788
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$3500(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 2789
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/notification/PreferencesHelper;->getNotificationDelegate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationPolicy(Ljava/lang/String;)Landroid/app/NotificationManager$Policy;
    .registers 5
    .param p1, "pkg"  # Ljava/lang/String;

    .line 4054
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4056
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v2
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_10

    .line 4058
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4056
    return-object v2

    .line 4058
    :catchall_10
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getNumNotificationChannelsForPackage(Ljava/lang/String;IZ)I
    .registers 5
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "includeDeleted"  # Z

    .line 3057
    const-string v0, "getNumNotificationChannelsForPackage"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$10;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 3058
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannels(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 3059
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3058
    return v0
.end method

.method public getPackageHeadsUpVisibility(Ljava/lang/String;I)I
    .registers 4
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 2928
    const-string v0, "Caller not system or systemui"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$10;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 2929
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackageHeadsUpVisibility(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPackageImportance(Ljava/lang/String;)I
    .registers 4
    .param p1, "pkg"  # Ljava/lang/String;

    .line 2743
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$3500(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 2744
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/notification/PreferencesHelper;->getImportance(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPackageRemindEnable(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 2941
    const-string v0, "Caller not system or systemui"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$10;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 2942
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getPackageRemindEnable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public getPopulatedNotificationChannelGroupForPackage(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannelGroup;
    .registers 6
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "groupId"  # Ljava/lang/String;
    .param p4, "includeDeleted"  # Z

    .line 3091
    const-string v0, "getPopulatedNotificationChannelGroupForPackage"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$10;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 3092
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannelGroupWithChannels(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannelGroup;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateNotificationsAllowed()Z
    .registers 3

    .line 4366
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 4367
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_KEYGUARD_SECURE_NOTIFICATIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    .line 4372
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$6700(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v0

    return v0

    .line 4369
    :cond_15
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires CONTROL_KEYGUARD_SECURE_NOTIFICATIONS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRuleInstanceCount(Landroid/content/ComponentName;)I
    .registers 3
    .param p1, "owner"  # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3795
    const-string v0, "Owner is null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3796
    const-string v0, "getRuleInstanceCount"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$10;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 3798
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->getCurrentInstanceCount(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public getSnoozedNotificationsFromListener(Landroid/service/notification/INotificationListener;I)Landroid/content/pm/ParceledListSlice;
    .registers 12
    .param p1, "token"  # Landroid/service/notification/INotificationListener;
    .param p2, "trim"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/INotificationListener;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation

    .line 3607
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3608
    :try_start_5
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v1

    .line 3609
    .local v1, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$4300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/SnoozeHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/notification/SnoozeHelper;->getSnoozed()Ljava/util/List;

    move-result-object v2

    .line 3610
    .local v2, "snoozedRecords":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 3611
    .local v3, "N":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 3612
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/StatusBarNotification;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_23
    if-ge v5, v3, :cond_47

    .line 3613
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    .line 3614
    .local v6, "r":Lcom/android/server/notification/NotificationRecord;
    if-nez v6, :cond_2e

    goto :goto_44

    .line 3615
    :cond_2e
    iget-object v7, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 3616
    .local v7, "sbn":Landroid/service/notification/StatusBarNotification;
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v8, v7, v1}, Lcom/android/server/notification/NotificationManagerService;->access$4700(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v8

    if-nez v8, :cond_39

    goto :goto_44

    .line 3618
    :cond_39
    if-nez p2, :cond_3d

    move-object v8, v7

    goto :goto_41

    :cond_3d
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->cloneLight()Landroid/service/notification/StatusBarNotification;

    move-result-object v8

    .line 3619
    .local v8, "sbnToSend":Landroid/service/notification/StatusBarNotification;
    :goto_41
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3612
    .end local v6  # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v7  # "sbn":Landroid/service/notification/StatusBarNotification;
    .end local v8  # "sbnToSend":Landroid/service/notification/StatusBarNotification;
    :goto_44
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    .line 3621
    .end local v5  # "i":I
    :cond_47
    new-instance v5, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v5, v4}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v0

    return-object v5

    .line 3622
    .end local v1  # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .end local v2  # "snoozedRecords":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    .end local v3  # "N":I
    .end local v4  # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/StatusBarNotification;>;"
    :catchall_4e
    move-exception v1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_5 .. :try_end_50} :catchall_4e

    throw v1
.end method

.method public getUserFilter(Ljava/lang/String;I)I
    .registers 4
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 2967
    const-string v0, "Caller not system or systemui"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$10;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 2968
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getUserFilter(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getUserFilterSP(Ljava/lang/String;)I
    .registers 3
    .param p1, "pkg"  # Ljava/lang/String;

    .line 2955
    const-string v0, "Caller not system or systemui"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$10;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 2956
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$3600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationFirewall;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/notification/NotificationFirewall;->getUserFilter(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getZenMode()I
    .registers 2

    .line 3705
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v0

    return v0
.end method

.method public getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    .registers 2

    .line 3710
    const-string v0, "INotificationManager.getZenModeConfig"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$10;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 3711
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    return-object v0
.end method

.method public getZenRules()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3727
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "getAutomaticZenRules"

    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService$10;->enforcePolicyAccess(ILjava/lang/String;)V

    .line 3728
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getZenRules()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasUserApprovedBubblesForPackage(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 2714
    const-string v0, "Caller not system or systemui"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$10;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 2715
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getAppLockedFields(Ljava/lang/String;I)I

    move-result v0

    .line 2716
    .local v0, "lockedFields":I
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    return v1
.end method

.method public isNotificationAssistantAccessGranted(Landroid/content/ComponentName;)Z
    .registers 5
    .param p1, "assistant"  # Landroid/content/ComponentName;

    .line 4166
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4167
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->access$3500(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 4168
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    .line 4169
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService$10;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 4168
    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->isPackageOrComponentAllowed(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isNotificationListenerAccessGranted(Landroid/content/ComponentName;)Z
    .registers 5
    .param p1, "listener"  # Landroid/content/ComponentName;

    .line 4149
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4150
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->access$3500(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 4151
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    .line 4152
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService$10;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 4151
    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->isPackageOrComponentAllowed(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;I)Z
    .registers 5
    .param p1, "listener"  # Landroid/content/ComponentName;
    .param p2, "userId"  # I

    .line 4158
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4159
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$3900(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4160
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->isPackageOrComponentAllowed(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isNotificationPolicyAccessGranted(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkg"  # Ljava/lang/String;

    .line 4012
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$10;->checkPolicyAccess(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkg"  # Ljava/lang/String;

    .line 4017
    const-string/jumbo v0, "request policy access status for another package"

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService$10;->enforceSystemOrSystemUIOrSamePackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 4019
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$10;->checkPolicyAccess(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPackagePaused(Ljava/lang/String;)Z
    .registers 4
    .param p1, "pkg"  # Ljava/lang/String;

    .line 4377
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4378
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$3800(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 4380
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/notification/NotificationManagerService;->isPackagePausedOrSuspended(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isSystemConditionProviderEnabled(Ljava/lang/String;)Z
    .registers 3
    .param p1, "path"  # Ljava/lang/String;

    .line 3973
    const-string v0, "INotificationManager.isSystemConditionProviderEnabled"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$10;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 3974
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ConditionProviders;->isSystemProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public matchesCallFilter(Landroid/os/Bundle;)Z
    .registers 9
    .param p1, "extras"  # Landroid/os/Bundle;

    .line 3962
    const-string v0, "INotificationManager.matchesCallFilter"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$10;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 3963
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 3964
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 3966
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$6100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    move-result-object v0

    const-class v3, Lcom/android/server/notification/ValidateNotificationPeople;

    invoke-virtual {v0, v3}, Lcom/android/server/notification/RankingHelper;->findExtractor(Ljava/lang/Class;)Lcom/android/server/notification/NotificationSignalExtractor;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/notification/ValidateNotificationPeople;

    .line 3963
    const/16 v5, 0xbb8

    const/high16 v6, 0x3f800000  # 1.0f

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/notification/ZenModeHelper;->matchesCallFilter(Landroid/os/UserHandle;Landroid/os/Bundle;Lcom/android/server/notification/ValidateNotificationPeople;IF)Z

    move-result v0

    return v0
.end method

.method public notifyConditions(Ljava/lang/String;Landroid/service/notification/IConditionProvider;[Landroid/service/notification/Condition;)V
    .registers 7
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "provider"  # Landroid/service/notification/IConditionProvider;
    .param p3, "conditions"  # [Landroid/service/notification/Condition;

    .line 3830
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/notification/ConditionProviders;->checkServiceToken(Landroid/service/notification/IConditionProvider;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v0

    .line 3831
    .local v0, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1, p1}, Lcom/android/server/notification/NotificationManagerService;->access$3500(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 3832
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$2100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v1

    new-instance v2, Lcom/android/server/notification/NotificationManagerService$10$1;

    invoke-direct {v2, p0, p1, v0, p3}, Lcom/android/server/notification/NotificationManagerService$10$1;-><init>(Lcom/android/server/notification/NotificationManagerService$10;Ljava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;[Landroid/service/notification/Condition;)V

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 3838
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"  # Ljava/io/FileDescriptor;
    .param p2, "out"  # Ljava/io/FileDescriptor;
    .param p3, "err"  # Ljava/io/FileDescriptor;
    .param p4, "args"  # [Ljava/lang/String;
    .param p5, "callback"  # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"  # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4416
    new-instance v0, Lcom/android/server/notification/NotificationShellCmd;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/notification/NotificationShellCmd;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4417
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/notification/NotificationShellCmd;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 4418
    return-void
.end method

.method public onlyHasDefaultChannel(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 3064
    const-string/jumbo v0, "onlyHasDefaultChannel"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$10;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 3065
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/service/notification/INotificationListener;Landroid/content/ComponentName;I)V
    .registers 5
    .param p1, "listener"  # Landroid/service/notification/INotificationListener;
    .param p2, "component"  # Landroid/content/ComponentName;
    .param p3, "userid"  # I

    .line 3334
    const-string v0, "INotificationManager.registerListener"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$10;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 3335
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->registerService(Landroid/os/IInterface;Landroid/content/ComponentName;I)V

    .line 3336
    return-void
.end method

.method public removeAutomaticZenRule(Ljava/lang/String;)Z
    .registers 4
    .param p1, "id"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3778
    const-string v0, "Id is null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3780
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string/jumbo v1, "removeAutomaticZenRule"

    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService$10;->enforcePolicyAccess(ILjava/lang/String;)V

    .line 3782
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/notification/ZenModeHelper;->removeAutomaticZenRule(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeAutomaticZenRules(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3787
    const-string v0, "Package name is null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3788
    const-string/jumbo v0, "removeAutomaticZenRules"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$10;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 3790
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/notification/ZenModeHelper;->removeAutomaticZenRules(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public requestBindListener(Landroid/content/ComponentName;)V
    .registers 6
    .param p1, "component"  # Landroid/content/ComponentName;

    .line 3394
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->access$3500(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 3395
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3398
    .local v0, "identity":J
    :try_start_d
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->isComponentEnabledForCurrentProfiles(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 3399
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v2

    goto :goto_26

    .line 3400
    :cond_20
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v2

    :goto_26
    nop

    .line 3401
    .local v2, "manager":Lcom/android/server/notification/ManagedServices;
    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/android/server/notification/ManagedServices;->setComponentState(Landroid/content/ComponentName;Z)V
    :try_end_2b
    .catchall {:try_start_d .. :try_end_2b} :catchall_30

    .line 3403
    .end local v2  # "manager":Lcom/android/server/notification/ManagedServices;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3404
    nop

    .line 3405
    return-void

    .line 3403
    :catchall_30
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public requestBindProvider(Landroid/content/ComponentName;)V
    .registers 6
    .param p1, "component"  # Landroid/content/ComponentName;

    .line 3854
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->access$3500(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 3855
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3857
    .local v0, "identity":J
    :try_start_d
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/android/server/notification/ConditionProviders;->setComponentState(Landroid/content/ComponentName;Z)V
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_1c

    .line 3859
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3860
    nop

    .line 3861
    return-void

    .line 3859
    :catchall_1c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public requestHintsFromListener(Landroid/service/notification/INotificationListener;I)V
    .registers 10
    .param p1, "token"  # Landroid/service/notification/INotificationListener;
    .param p2, "hints"  # I

    .line 3642
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3644
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_3b

    .line 3645
    :try_start_9
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v3

    .line 3646
    .local v3, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    const/4 v4, 0x7

    .line 3649
    .local v4, "disableEffectsMask":I
    and-int/lit8 v5, p2, 0x7

    if-eqz v5, :cond_1a

    const/4 v5, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v5, 0x0

    .line 3650
    .local v5, "disableEffects":Z
    :goto_1b
    if-eqz v5, :cond_23

    .line 3651
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v6, v3, p2}, Lcom/android/server/notification/NotificationManagerService;->access$5100(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    goto :goto_28

    .line 3653
    :cond_23
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v6, v3, p2}, Lcom/android/server/notification/NotificationManagerService;->access$5200(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z

    .line 3655
    :goto_28
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->access$4900(Lcom/android/server/notification/NotificationManagerService;)V

    .line 3656
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->access$5000(Lcom/android/server/notification/NotificationManagerService;)V

    .line 3657
    .end local v3  # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .end local v4  # "disableEffectsMask":I
    .end local v5  # "disableEffects":Z
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_9 .. :try_end_33} :catchall_38

    .line 3659
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3660
    nop

    .line 3661
    return-void

    .line 3657
    :catchall_38
    move-exception v3

    :try_start_39
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    .end local v0  # "identity":J
    .end local p0  # "this":Lcom/android/server/notification/NotificationManagerService$10;
    .end local p1  # "token":Landroid/service/notification/INotificationListener;
    .end local p2  # "hints":I
    :try_start_3a
    throw v3
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3b

    .line 3659
    .restart local v0  # "identity":J
    .restart local p0  # "this":Lcom/android/server/notification/NotificationManagerService$10;
    .restart local p1  # "token":Landroid/service/notification/INotificationListener;
    .restart local p2  # "hints":I
    :catchall_3b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public requestInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;I)V
    .registers 9
    .param p1, "token"  # Landroid/service/notification/INotificationListener;
    .param p2, "interruptionFilter"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3673
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3675
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_2a

    .line 3676
    :try_start_9
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v3

    .line 3677
    .local v3, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    iget-object v5, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v4, v5, p2}, Lcom/android/server/notification/ZenModeHelper;->requestFromListener(Landroid/content/ComponentName;I)V

    .line 3678
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->access$2800(Lcom/android/server/notification/NotificationManagerService;)V

    .line 3679
    .end local v3  # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_27

    .line 3681
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3682
    nop

    .line 3683
    return-void

    .line 3679
    :catchall_27
    move-exception v3

    :try_start_28
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    .end local v0  # "identity":J
    .end local p0  # "this":Lcom/android/server/notification/NotificationManagerService$10;
    .end local p1  # "token":Landroid/service/notification/INotificationListener;
    .end local p2  # "interruptionFilter":I
    :try_start_29
    throw v3
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    .line 3681
    .restart local v0  # "identity":J
    .restart local p0  # "this":Lcom/android/server/notification/NotificationManagerService$10;
    .restart local p1  # "token":Landroid/service/notification/INotificationListener;
    .restart local p2  # "interruptionFilter":I
    :catchall_2a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public requestUnbindListener(Landroid/service/notification/INotificationListener;)V
    .registers 9
    .param p1, "token"  # Landroid/service/notification/INotificationListener;

    .line 3409
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3412
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_26

    .line 3413
    :try_start_9
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v3

    .line 3414
    .local v3, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    invoke-virtual {v3}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->getOwner()Lcom/android/server/notification/ManagedServices;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/server/notification/ManagedServices;->setComponentState(Landroid/content/ComponentName;Z)V

    .line 3415
    .end local v3  # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_23

    .line 3417
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3418
    nop

    .line 3419
    return-void

    .line 3415
    :catchall_23
    move-exception v3

    :try_start_24
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    .end local v0  # "identity":J
    .end local p0  # "this":Lcom/android/server/notification/NotificationManagerService$10;
    .end local p1  # "token":Landroid/service/notification/INotificationListener;
    :try_start_25
    throw v3
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_26

    .line 3417
    .restart local v0  # "identity":J
    .restart local p0  # "this":Lcom/android/server/notification/NotificationManagerService$10;
    .restart local p1  # "token":Landroid/service/notification/INotificationListener;
    :catchall_26
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public requestUnbindProvider(Landroid/service/notification/IConditionProvider;)V
    .registers 8
    .param p1, "provider"  # Landroid/service/notification/IConditionProvider;

    .line 3842
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3845
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/notification/ConditionProviders;->checkServiceToken(Landroid/service/notification/IConditionProvider;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v2

    .line 3846
    .local v2, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    invoke-virtual {v2}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->getOwner()Lcom/android/server/notification/ManagedServices;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/notification/ManagedServices;->setComponentState(Landroid/content/ComponentName;Z)V
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_1d

    .line 3848
    .end local v2  # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3849
    nop

    .line 3850
    return-void

    .line 3848
    :catchall_1d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setAutomaticZenRuleState(Ljava/lang/String;Landroid/service/notification/Condition;)V
    .registers 5
    .param p1, "id"  # Ljava/lang/String;
    .param p2, "condition"  # Landroid/service/notification/Condition;

    .line 3803
    const-string/jumbo v0, "id is null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3804
    const-string v0, "Condition is null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3806
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string/jumbo v1, "setAutomaticZenRuleState"

    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService$10;->enforcePolicyAccess(ILjava/lang/String;)V

    .line 3808
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/ZenModeHelper;->setAutomaticZenRuleState(Ljava/lang/String;Landroid/service/notification/Condition;)V

    .line 3809
    return-void
.end method

.method public setBubblesAllowed(Ljava/lang/String;IZ)V
    .registers 5
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "allowed"  # Z

    .line 2707
    const-string v0, "Caller not system or systemui"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$10;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 2708
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->setBubblesAllowed(Ljava/lang/String;IZ)V

    .line 2709
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 2710
    return-void
.end method

.method public setHideSilentStatusIcons(Z)V
    .registers 3
    .param p1, "hide"  # Z

    .line 2733
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$3900(Lcom/android/server/notification/NotificationManagerService;)V

    .line 2735
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/notification/PreferencesHelper;->setHideSilentStatusIcons(Z)V

    .line 2736
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 2738
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onStatusBarIconsBehaviorChanged(Z)V

    .line 2739
    return-void
.end method

.method public setInterruptionFilter(Ljava/lang/String;I)V
    .registers 10
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "filter"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3813
    const-string/jumbo v0, "setInterruptionFilter"

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService$10;->enforcePolicyAccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 3814
    const/4 v0, -0x1

    invoke-static {p2, v0}, Landroid/app/NotificationManager;->zenModeFromInterruptionFilter(II)I

    move-result v1

    .line 3815
    .local v1, "zen":I
    if-eq v1, v0, :cond_34

    .line 3816
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3820
    .local v2, "identity":J
    :try_start_11
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " setInterruptionFilter"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v4, p1, v5}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_11 .. :try_end_2a} :catchall_2f

    .line 3823
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3824
    nop

    .line 3825
    return-void

    .line 3823
    :catchall_2f
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 3815
    .end local v2  # "identity":J
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid filter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMaxPriority(Ljava/lang/String;IZ)V
    .registers 5
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "maxPriority"  # Z

    .line 2911
    const-string v0, "Caller not system or systemui"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$10;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 2913
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->setMaxPriority(Ljava/lang/String;IZ)V

    .line 2914
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 2915
    return-void
.end method

.method public setNotificationAssistantAccessGranted(Landroid/content/ComponentName;Z)V
    .registers 4
    .param p1, "assistant"  # Landroid/content/ComponentName;
    .param p2, "granted"  # Z

    .line 4182
    nop

    .line 4183
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService$10;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 4182
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/notification/NotificationManagerService$10;->setNotificationAssistantAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    .line 4184
    return-void
.end method

.method public setNotificationAssistantAccessGrantedForUser(Landroid/content/ComponentName;IZ)V
    .registers 9
    .param p1, "assistant"  # Landroid/content/ComponentName;
    .param p2, "userId"  # I
    .param p3, "granted"  # Z

    .line 4216
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$4400(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4217
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$6500(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 4218
    .local v1, "ui":Landroid/content/pm/UserInfo;
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v2

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->setUserSet(IZ)V

    .line 4219
    .end local v1  # "ui":Landroid/content/pm/UserInfo;
    goto :goto_13

    .line 4220
    :cond_2c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4222
    .local v0, "identity":J
    :try_start_30
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->setNotificationAssistantAccessGrantedForUserInternal(Landroid/content/ComponentName;IZ)V
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_3a

    .line 4224
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4225
    nop

    .line 4226
    return-void

    .line 4224
    :catchall_3a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setNotificationDelegate(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "callingPkg"  # Ljava/lang/String;
    .param p2, "delegate"  # Ljava/lang/String;

    .line 2762
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$3800(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 2763
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2764
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 2765
    .local v1, "user":Landroid/os/UserHandle;
    if-nez p2, :cond_22

    .line 2766
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/android/server/notification/PreferencesHelper;->revokeNotificationDelegate(Ljava/lang/String;I)V

    .line 2767
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    goto :goto_49

    .line 2770
    :cond_22
    :try_start_22
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 2771
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1600(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/high16 v3, 0xc0000

    .line 2773
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 2771
    invoke-interface {v2, p2, v3, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 2774
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_44

    .line 2775
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v3

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, p1, v0, p2, v4}, Lcom/android/server/notification/PreferencesHelper;->setNotificationDelegate(Ljava/lang/String;ILjava/lang/String;I)V

    .line 2777
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_44} :catch_45

    .line 2781
    .end local v2  # "info":Landroid/content/pm/ApplicationInfo;
    :cond_44
    goto :goto_49

    .line 2779
    :catch_45
    move-exception v2

    .line 2780
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2783
    .end local v2  # "e":Landroid/os/RemoteException;
    :goto_49
    return-void
.end method

.method public setNotificationListenerAccessGranted(Landroid/content/ComponentName;Z)V
    .registers 4
    .param p1, "listener"  # Landroid/content/ComponentName;
    .param p2, "granted"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4175
    nop

    .line 4176
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService$10;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 4175
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/notification/NotificationManagerService$10;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    .line 4177
    return-void
.end method

.method public setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZ)V
    .registers 10
    .param p1, "listener"  # Landroid/content/ComponentName;
    .param p2, "userId"  # I
    .param p3, "granted"  # Z

    .line 4189
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4190
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$6300(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4191
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4193
    .local v0, "identity":J
    :try_start_c
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$6400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/internal/util/function/TriPredicate;

    move-result-object v2

    .line 4194
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getRequiredPermission()Ljava/lang/String;

    move-result-object v5

    .line 4193
    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/util/function/TriPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 4195
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p2, v4, p3}, Lcom/android/server/notification/ConditionProviders;->setPackageOrComponentEnabled(Ljava/lang/String;IZZ)V

    .line 4197
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, p2, v4, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->setPackageOrComponentEnabled(Ljava/lang/String;IZZ)V

    .line 4200
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.app.action.NOTIFICATION_POLICY_ACCESS_GRANTED_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4202
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x40000000  # 2.0f

    .line 4203
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    .line 4204
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    const/4 v5, 0x0

    .line 4200
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 4206
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V
    :try_end_6e
    .catchall {:try_start_c .. :try_end_6e} :catchall_73

    .line 4209
    :cond_6e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4210
    nop

    .line 4211
    return-void

    .line 4209
    :catchall_73
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setNotificationPolicy(Ljava/lang/String;Landroid/app/NotificationManager$Policy;)V
    .registers 12
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "policy"  # Landroid/app/NotificationManager$Policy;

    .line 4081
    const-string/jumbo v0, "setNotificationPolicy"

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService$10;->enforcePolicyAccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 4082
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4084
    .local v0, "identity":J
    :try_start_a
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1600(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v3, 0x0

    .line 4085
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$1700()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 4084
    invoke-interface {v2, p1, v3, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 4086
    .local v2, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v3}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v3

    .line 4088
    .local v3, "currPolicy":Landroid/app/NotificationManager$Policy;
    iget v4, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0x1c

    if-ge v4, v5, :cond_4e

    .line 4089
    iget v4, p2, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    .line 4091
    .local v4, "priorityCategories":I
    and-int/lit8 v4, v4, -0x21

    .line 4092
    and-int/lit8 v4, v4, -0x41

    .line 4093
    and-int/lit16 v4, v4, -0x81

    .line 4095
    iget v5, v3, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v5, v5, 0x20

    or-int/2addr v4, v5

    .line 4097
    iget v5, v3, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v5, v5, 0x40

    or-int/2addr v4, v5

    .line 4099
    iget v5, v3, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit16 v5, v5, 0x80

    or-int/2addr v4, v5

    .line 4102
    new-instance v5, Landroid/app/NotificationManager$Policy;

    iget v6, p2, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v7, p2, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget v8, p2, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-direct {v5, v4, v6, v7, v8}, Landroid/app/NotificationManager$Policy;-><init>(IIII)V

    move-object p2, v5

    .line 4106
    .end local v4  # "priorityCategories":I
    :cond_4e
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget v5, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v4, p2, v3, v5}, Lcom/android/server/notification/NotificationManagerService;->calculateSuppressedVisualEffects(Landroid/app/NotificationManager$Policy;Landroid/app/NotificationManager$Policy;I)I

    move-result v4

    .line 4108
    .local v4, "newVisualEffects":I
    new-instance v5, Landroid/app/NotificationManager$Policy;

    iget v6, p2, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    iget v7, p2, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v8, p2, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    invoke-direct {v5, v6, v7, v8, v4}, Landroid/app/NotificationManager$Policy;-><init>(IIII)V

    move-object p2, v5

    .line 4111
    iget v5, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {p1, v5, p2}, Lcom/android/server/notification/ZenLog;->traceSetNotificationPolicy(Ljava/lang/String;ILandroid/app/NotificationManager$Policy;)V

    .line 4112
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v5, p2}, Lcom/android/server/notification/ZenModeHelper;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_6e} :catch_74
    .catchall {:try_start_a .. :try_end_6e} :catchall_6f

    .end local v2  # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3  # "currPolicy":Landroid/app/NotificationManager$Policy;
    .end local v4  # "newVisualEffects":I
    goto :goto_75

    .line 4115
    :catchall_6f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 4113
    :catch_74
    move-exception v2

    .line 4115
    :goto_75
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4116
    nop

    .line 4117
    return-void
.end method

.method public setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "granted"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4025
    nop

    .line 4026
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService$10;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 4025
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/notification/NotificationManagerService$10;->setNotificationPolicyAccessGrantedForUser(Ljava/lang/String;IZ)V

    .line 4027
    return-void
.end method

.method public setNotificationPolicyAccessGrantedForUser(Ljava/lang/String;IZ)V
    .registers 10
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .param p3, "granted"  # Z

    .line 4032
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$6300(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4033
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4035
    .local v0, "identity":J
    :try_start_9
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$6400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/internal/util/function/TriPredicate;

    move-result-object v2

    .line 4036
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->access$1200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/notification/ConditionProviders;->getRequiredPermission()Ljava/lang/String;

    move-result-object v4

    .line 4035
    invoke-interface {v2, p1, v3, v4}, Lcom/android/internal/util/function/TriPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 4037
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, p2, v3, p3}, Lcom/android/server/notification/ConditionProviders;->setPackageOrComponentEnabled(Ljava/lang/String;IZZ)V

    .line 4040
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.app.action.NOTIFICATION_POLICY_ACCESS_GRANTED_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4042
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x4000000

    .line 4043
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    .line 4044
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    const/4 v5, 0x0

    .line 4040
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 4045
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V
    :try_end_51
    .catchall {:try_start_9 .. :try_end_51} :catchall_56

    .line 4048
    :cond_51
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4049
    nop

    .line 4050
    return-void

    .line 4048
    :catchall_56
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    .registers 22
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "enabled"  # Z

    .line 2603
    move-object/from16 v1, p0

    move-object/from16 v13, p1

    move/from16 v14, p2

    move/from16 v15, p3

    const-string/jumbo v0, "setNotificationsEnabledForPackage"

    invoke-direct {v1, v0}, Lcom/android/server/notification/NotificationManagerService$10;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 2606
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$3600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationFirewall;

    move-result-object v0

    invoke-interface {v0, v13}, Lcom/android/server/notification/NotificationFirewall;->existClonedApp(Ljava/lang/String;)Z

    move-result v16

    .line 2607
    .local v16, "existClonedApp":Z
    if-eqz v16, :cond_21

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, v14}, Lcom/android/server/notification/NotificationManagerService;->access$3700(Lcom/android/server/notification/NotificationManagerService;I)I

    move-result v0

    goto :goto_22

    :cond_21
    move v0, v14

    :goto_22
    move v12, v0

    .line 2608
    .local v12, "clonedAppUid":I
    if-eqz v16, :cond_2e

    .line 2609
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0, v13, v12, v15}, Lcom/android/server/notification/PreferencesHelper;->setEnabled(Ljava/lang/String;IZ)V

    .line 2612
    :cond_2e
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/server/notification/PreferencesHelper;->setEnabled(Ljava/lang/String;IZ)V

    .line 2613
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    new-instance v2, Landroid/metrics/LogMaker;

    const/16 v3, 0x93

    invoke-direct {v2, v3}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v3, 0x4

    .line 2614
    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 2615
    invoke-virtual {v2, v13}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 2616
    invoke-virtual {v2, v15}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 2613
    invoke-virtual {v0, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 2618
    if-nez v15, :cond_8e

    .line 2619
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$1700()I

    move-result v3

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$1800()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 2620
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    const/4 v11, 0x7

    const/4 v0, 0x0

    .line 2619
    move-object/from16 v5, p1

    move/from16 v17, v12

    .end local v12  # "clonedAppUid":I
    .local v17, "clonedAppUid":I
    move-object v12, v0

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 2622
    if-eqz v16, :cond_90

    .line 2623
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$1700()I

    move-result v3

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$1800()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 2624
    invoke-static/range {v17 .. v17}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    const/4 v11, 0x7

    const/4 v12, 0x0

    .line 2623
    move-object/from16 v5, p1

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    goto :goto_90

    .line 2618
    .end local v17  # "clonedAppUid":I
    .restart local v12  # "clonedAppUid":I
    :cond_8e
    move/from16 v17, v12

    .line 2629
    .end local v12  # "clonedAppUid":I
    .restart local v17  # "clonedAppUid":I
    :cond_90
    :goto_90
    :try_start_90
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.app.action.APP_BLOCK_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.app.extra.BLOCKED_STATE"

    if-nez v15, :cond_a3

    const/4 v4, 0x1

    goto :goto_a4

    :cond_a3
    const/4 v4, 0x0

    .line 2631
    :goto_a4
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10000000

    .line 2632
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 2633
    invoke-virtual {v2, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 2634
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x0

    .line 2629
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_be
    .catch Ljava/lang/SecurityException; {:try_start_90 .. :try_end_be} :catch_bf

    .line 2637
    goto :goto_c7

    .line 2635
    :catch_bf
    move-exception v0

    .line 2636
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "NotificationService"

    const-string v3, "Can\'t notify app about app block change"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2639
    .end local v0  # "e":Ljava/lang/SecurityException;
    :goto_c7
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 2640
    return-void
.end method

.method public setNotificationsEnabledWithImportanceLockForPackage(Ljava/lang/String;IZ)V
    .registers 5
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "enabled"  # Z

    .line 2657
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService$10;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V

    .line 2659
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->setAppImportanceLocked(Ljava/lang/String;I)V

    .line 2660
    return-void
.end method

.method public setNotificationsShownFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V
    .registers 15
    .param p1, "token"  # Landroid/service/notification/INotificationListener;
    .param p2, "keys"  # [Ljava/lang/String;

    .line 3423
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3425
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b2

    .line 3426
    :try_start_9
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v3

    .line 3427
    .local v3, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    if-nez p2, :cond_1a

    .line 3428
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_af

    .line 3454
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3428
    return-void

    .line 3430
    :cond_1a
    :try_start_1a
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3431
    .local v4, "seen":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    array-length v5, p2

    .line 3432
    .local v5, "n":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_21
    if-ge v6, v5, :cond_9a

    .line 3433
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v7, v7, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    aget-object v8, p2, v6

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/notification/NotificationRecord;

    .line 3434
    .local v7, "r":Lcom/android/server/notification/NotificationRecord;
    if-nez v7, :cond_32

    goto :goto_97

    .line 3435
    :cond_32
    iget-object v8, v7, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v8

    .line 3436
    .local v8, "userId":I
    iget v9, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    if-eq v8, v9, :cond_65

    const/4 v9, -0x1

    if-eq v8, v9, :cond_65

    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 3437
    invoke-static {v9}, Lcom/android/server/notification/NotificationManagerService;->access$2400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    move-result v9

    if-eqz v9, :cond_4c

    goto :goto_65

    .line 3438
    :cond_4c
    new-instance v9, Ljava/lang/SecurityException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Disallowed call from listener: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0  # "identity":J
    .end local p0  # "this":Lcom/android/server/notification/NotificationManagerService$10;
    .end local p1  # "token":Landroid/service/notification/INotificationListener;
    .end local p2  # "keys":[Ljava/lang/String;
    throw v9

    .line 3441
    .restart local v0  # "identity":J
    .restart local p0  # "this":Lcom/android/server/notification/NotificationManagerService$10;
    .restart local p1  # "token":Landroid/service/notification/INotificationListener;
    .restart local p2  # "keys":[Ljava/lang/String;
    :cond_65
    :goto_65
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3442
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->isSeen()Z

    move-result v9

    if-nez v9, :cond_97

    .line 3443
    sget-boolean v9, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v9, :cond_8a

    const-string v9, "NotificationService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Marking notification as seen "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, p2, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3444
    :cond_8a
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v9, v7}, Lcom/android/server/notification/NotificationManagerService;->reportSeen(Lcom/android/server/notification/NotificationRecord;)V

    .line 3445
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->setSeen()V

    .line 3446
    iget-object v9, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v9, v7}, Lcom/android/server/notification/NotificationManagerService;->maybeRecordInterruptionLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 3432
    .end local v7  # "r":Lcom/android/server/notification/NotificationRecord;
    .end local v8  # "userId":I
    :cond_97
    :goto_97
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    .line 3449
    .end local v6  # "i":I
    :cond_9a
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_a9

    .line 3450
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->access$400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->onNotificationsSeenLocked(Ljava/util/ArrayList;)V

    .line 3452
    .end local v3  # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .end local v4  # "seen":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    .end local v5  # "n":I
    :cond_a9
    monitor-exit v2
    :try_end_aa
    .catchall {:try_start_1a .. :try_end_aa} :catchall_af

    .line 3454
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3455
    nop

    .line 3456
    return-void

    .line 3452
    :catchall_af
    move-exception v3

    :try_start_b0
    monitor-exit v2
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_af

    .end local v0  # "identity":J
    .end local p0  # "this":Lcom/android/server/notification/NotificationManagerService$10;
    .end local p1  # "token":Landroid/service/notification/INotificationListener;
    .end local p2  # "keys":[Ljava/lang/String;
    :try_start_b1
    throw v3
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b2

    .line 3454
    .restart local v0  # "identity":J
    .restart local p0  # "this":Lcom/android/server/notification/NotificationManagerService$10;
    .restart local p1  # "token":Landroid/service/notification/INotificationListener;
    .restart local p2  # "keys":[Ljava/lang/String;
    :catchall_b2
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setOnNotificationPostedTrimFromListener(Landroid/service/notification/INotificationListener;I)V
    .registers 6
    .param p1, "token"  # Landroid/service/notification/INotificationListener;
    .param p2, "trim"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3696
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3697
    :try_start_5
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v1

    .line 3698
    .local v1, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    if-nez v1, :cond_13

    monitor-exit v0

    return-void

    .line 3699
    :cond_13
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v2

    invoke-virtual {v2, v1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->setOnNotificationPostedTrimLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    .line 3700
    .end local v1  # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    monitor-exit v0

    .line 3701
    return-void

    .line 3700
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public setPackageHeadsUpVisibility(Ljava/lang/String;II)V
    .registers 5
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "visibility"  # I

    .line 2934
    const-string v0, "Caller not system or systemui"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$10;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 2935
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->setPackageHeadsUpVisibility(Ljava/lang/String;II)V

    .line 2936
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 2937
    return-void
.end method

.method public setPackageRemindEnable(Ljava/lang/String;IZ)V
    .registers 5
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "enable"  # Z

    .line 2947
    const-string v0, "Caller not system or systemui"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$10;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 2948
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->setPackageRemindEnable(Ljava/lang/String;IZ)V

    .line 2949
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 2950
    return-void
.end method

.method public setPrivateNotificationsAllowed(Z)V
    .registers 4
    .param p1, "allow"  # Z

    .line 4352
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 4353
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_KEYGUARD_SECURE_NOTIFICATIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_21

    .line 4358
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$6700(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v0

    if-eq p1, v0, :cond_20

    .line 4359
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$6702(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 4360
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 4362
    :cond_20
    return-void

    .line 4355
    :cond_21
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires CONTROL_KEYGUARD_SECURE_NOTIFICATIONS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setShowBadge(Ljava/lang/String;IZ)V
    .registers 5
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "showBadge"  # Z

    .line 2755
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$3900(Lcom/android/server/notification/NotificationManagerService;)V

    .line 2756
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->setShowBadge(Ljava/lang/String;IZ)V

    .line 2757
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 2758
    return-void
.end method

.method public setUserFilter(Ljava/lang/String;II)V
    .registers 5
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "userFilter"  # I

    .line 2973
    const-string v0, "Caller not system or systemui"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$10;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 2974
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->setUserFilter(Ljava/lang/String;II)V

    .line 2975
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 2976
    return-void
.end method

.method public setUserFilterSP(Ljava/lang/String;II)V
    .registers 5
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "userFilter"  # I

    .line 2961
    const-string v0, "Caller not system or systemui"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$10;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 2962
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$3600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationFirewall;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/notification/NotificationFirewall;->setUserFilter(Ljava/lang/String;II)V

    .line 2963
    return-void
.end method

.method public setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V
    .registers 8
    .param p1, "mode"  # I
    .param p2, "conditionId"  # Landroid/net/Uri;
    .param p3, "reason"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3716
    const-string v0, "INotificationManager.setZenMode"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$10;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 3717
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3719
    .local v0, "identity":J
    :try_start_9
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, p2, v3, p3}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_16

    .line 3721
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3722
    nop

    .line 3723
    return-void

    .line 3721
    :catchall_16
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public shouldHideSilentStatusIcons(Ljava/lang/String;)Z
    .registers 4
    .param p1, "callingPkg"  # Ljava/lang/String;

    .line 2721
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$3800(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 2723
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 2724
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->isListenerPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_22

    .line 2727
    :cond_1a
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only available for notification listeners"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2725
    :cond_22
    :goto_22
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/notification/PreferencesHelper;->shouldHideSilentStatusIcons()Z

    move-result v0

    return v0
.end method

.method public snoozeNotificationUntilContextFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .param p1, "token"  # Landroid/service/notification/INotificationListener;
    .param p2, "key"  # Ljava/lang/String;
    .param p3, "snoozeCriterionId"  # Ljava/lang/String;

    .line 3482
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3484
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_25

    .line 3485
    :try_start_9
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v9

    .line 3486
    .local v9, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-wide/16 v6, -0x1

    move-object v5, p2

    move-object v8, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/notification/NotificationManagerService;->snoozeNotificationInt(Ljava/lang/String;JLjava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 3487
    .end local v9  # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_22

    .line 3489
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3490
    nop

    .line 3491
    return-void

    .line 3487
    :catchall_22
    move-exception v3

    :try_start_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    .end local v0  # "identity":J
    .end local p0  # "this":Lcom/android/server/notification/NotificationManagerService$10;
    .end local p1  # "token":Landroid/service/notification/INotificationListener;
    .end local p2  # "key":Ljava/lang/String;
    .end local p3  # "snoozeCriterionId":Ljava/lang/String;
    :try_start_24
    throw v3
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_25

    .line 3489
    .restart local v0  # "identity":J
    .restart local p0  # "this":Lcom/android/server/notification/NotificationManagerService$10;
    .restart local p1  # "token":Landroid/service/notification/INotificationListener;
    .restart local p2  # "key":Ljava/lang/String;
    .restart local p3  # "snoozeCriterionId":Ljava/lang/String;
    :catchall_25
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public snoozeNotificationUntilFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;J)V
    .registers 15
    .param p1, "token"  # Landroid/service/notification/INotificationListener;
    .param p2, "key"  # Ljava/lang/String;
    .param p3, "duration"  # J

    .line 3501
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3503
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_24

    .line 3504
    :try_start_9
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v9

    .line 3505
    .local v9, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v8, 0x0

    move-object v5, p2

    move-wide v6, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/notification/NotificationManagerService;->snoozeNotificationInt(Ljava/lang/String;JLjava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 3506
    .end local v9  # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_21

    .line 3508
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3509
    nop

    .line 3510
    return-void

    .line 3506
    :catchall_21
    move-exception v3

    :try_start_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    .end local v0  # "identity":J
    .end local p0  # "this":Lcom/android/server/notification/NotificationManagerService$10;
    .end local p1  # "token":Landroid/service/notification/INotificationListener;
    .end local p2  # "key":Ljava/lang/String;
    .end local p3  # "duration":J
    :try_start_23
    throw v3
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_24

    .line 3508
    .restart local v0  # "identity":J
    .restart local p0  # "this":Lcom/android/server/notification/NotificationManagerService$10;
    .restart local p1  # "token":Landroid/service/notification/INotificationListener;
    .restart local p2  # "key":Ljava/lang/String;
    .restart local p3  # "duration":J
    :catchall_24
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public unregisterListener(Landroid/service/notification/INotificationListener;I)V
    .registers 4
    .param p1, "token"  # Landroid/service/notification/INotificationListener;
    .param p2, "userid"  # I

    .line 3343
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->unregisterService(Landroid/os/IInterface;I)V

    .line 3344
    return-void
.end method

.method public unsnoozeNotificationFromAssistant(Landroid/service/notification/INotificationListener;Ljava/lang/String;)V
    .registers 8
    .param p1, "token"  # Landroid/service/notification/INotificationListener;
    .param p2, "key"  # Ljava/lang/String;

    .line 3519
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3521
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_21

    .line 3522
    :try_start_9
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 3523
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v3

    .line 3524
    .local v3, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4, p2, v3}, Lcom/android/server/notification/NotificationManagerService;->unsnoozeNotificationInt(Ljava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 3525
    .end local v3  # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_1e

    .line 3527
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3528
    nop

    .line 3529
    return-void

    .line 3525
    :catchall_1e
    move-exception v3

    :try_start_1f
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    .end local v0  # "identity":J
    .end local p0  # "this":Lcom/android/server/notification/NotificationManagerService$10;
    .end local p1  # "token":Landroid/service/notification/INotificationListener;
    .end local p2  # "key":Ljava/lang/String;
    :try_start_20
    throw v3
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_21

    .line 3527
    .restart local v0  # "identity":J
    .restart local p0  # "this":Lcom/android/server/notification/NotificationManagerService$10;
    .restart local p1  # "token":Landroid/service/notification/INotificationListener;
    .restart local p2  # "key":Ljava/lang/String;
    :catchall_21
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z
    .registers 5
    .param p1, "id"  # Ljava/lang/String;
    .param p2, "automaticZenRule"  # Landroid/app/AutomaticZenRule;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3762
    const-string v0, "automaticZenRule is null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3763
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Name is null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3764
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_23

    .line 3765
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getConfigurationActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1b

    goto :goto_23

    .line 3766
    :cond_1b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Rule must have a conditionproviderservice and/or configuration activity"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3769
    :cond_23
    :goto_23
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "ConditionId is null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3770
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string/jumbo v1, "updateAutomaticZenRule"

    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService$10;->enforcePolicyAccess(ILjava/lang/String;)V

    .line 3772
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/notification/ZenModeHelper;->updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V
    .registers 6
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "channel"  # Landroid/app/NotificationChannel;

    .line 3042
    const-string v0, "Caller not system or systemui"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$10;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 3043
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3044
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, p3, v1}, Lcom/android/server/notification/NotificationManagerService;->access$4200(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;ILandroid/app/NotificationChannel;Z)V

    .line 3045
    return-void
.end method

.method public updateNotificationChannelFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;)V
    .registers 8
    .param p1, "token"  # Landroid/service/notification/INotificationListener;
    .param p2, "pkg"  # Ljava/lang/String;
    .param p3, "user"  # Landroid/os/UserHandle;
    .param p4, "channel"  # Landroid/app/NotificationChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4317
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4318
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4319
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4321
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/notification/NotificationManagerService$10;->verifyPrivilegedListener(Landroid/service/notification/INotificationListener;Landroid/os/UserHandle;Z)V

    .line 4322
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0, p2, p3}, Lcom/android/server/notification/NotificationManagerService$10;->getUidForPackageAndUser(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, p2, v1, p4, v2}, Lcom/android/server/notification/NotificationManagerService;->access$4200(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;ILandroid/app/NotificationChannel;Z)V

    .line 4323
    return-void
.end method

.method public updateNotificationChannelGroupForPackage(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;)V
    .registers 11
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "group"  # Landroid/app/NotificationChannelGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2823
    const-string v0, "Caller not system or systemui"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$10;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 2824
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v6}, Lcom/android/server/notification/NotificationManagerService;->access$4000(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;ILandroid/app/NotificationChannelGroup;ZZ)V

    .line 2825
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 2826
    return-void
.end method

.method public updateNotificationChannelGroupFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;)V
    .registers 12
    .param p1, "token"  # Landroid/service/notification/INotificationListener;
    .param p2, "pkg"  # Ljava/lang/String;
    .param p3, "user"  # Landroid/os/UserHandle;
    .param p4, "group"  # Landroid/app/NotificationChannelGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4307
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4308
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/notification/NotificationManagerService$10;->verifyPrivilegedListener(Landroid/service/notification/INotificationListener;Landroid/os/UserHandle;Z)V

    .line 4309
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 4310
    invoke-direct {p0, p2, p3}, Lcom/android/server/notification/NotificationManagerService$10;->getUidForPackageAndUser(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v3

    .line 4309
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, p2

    move-object v4, p4

    invoke-static/range {v1 .. v6}, Lcom/android/server/notification/NotificationManagerService;->access$4000(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;ILandroid/app/NotificationChannelGroup;ZZ)V

    .line 4311
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$10;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 4312
    return-void
.end method
