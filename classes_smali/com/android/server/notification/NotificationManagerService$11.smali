.class Lcom/android/server/notification/NotificationManagerService$11;
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

    .line 2327
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/app/INotificationManager$Stub;-><init>()V

    return-void
.end method

.method private cancelNotificationFromListenerLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IILjava/lang/String;Ljava/lang/String;II)V
    .registers 20
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 3306
    move-object v0, p0

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v6, 0x0

    const/16 v7, 0x1042

    const/4 v8, 0x1

    const/16 v10, 0xa

    move v1, p2

    move v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v9, p7

    move-object v11, p1

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 3310
    return-void
.end method

.method private checkPackagePolicyAccess(Ljava/lang/String;)Z
    .registers 4

    .line 3747
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1500(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v0

    .line 3748
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService$11;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 3747
    invoke-virtual {v0, p1, v1}, Lcom/android/server/notification/ConditionProviders;->isPackageOrComponentAllowed(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method private checkPolicyAccess(Ljava/lang/String;)Z
    .registers 7

    .line 3753
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3754
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 3753
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1

    .line 3755
    const-string v2, "android.permission.MANAGE_NOTIFICATIONS"

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-static {v2, v1, v3, v4}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v1
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1b} :catch_4d

    if-nez v1, :cond_1e

    .line 3758
    return v4

    .line 3762
    :cond_1e
    nop

    .line 3763
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$11;->checkPackagePolicyAccess(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4b

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 3764
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->isComponentEnabledForPackage(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4b

    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 3765
    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->access$5300(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object p1

    if-eqz p1, :cond_4a

    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 3766
    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->access$5300(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p1, v1, v3}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    move-result p1

    if-eqz p1, :cond_4a

    goto :goto_4b

    :cond_4a
    goto :goto_4c

    :cond_4b
    :goto_4b
    move v0, v4

    .line 3763
    :goto_4c
    return v0

    .line 3760
    :catch_4d
    move-exception p1

    .line 3761
    return v0
.end method

.method private createNotificationChannelsImpl(Ljava/lang/String;ILandroid/content/pm/ParceledListSlice;)V
    .registers 14

    .line 2755
    invoke-virtual {p3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p3

    .line 2756
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    .line 2757
    nop

    .line 2758
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_c
    if-ge v2, v0, :cond_57

    .line 2759
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannel;

    .line 2760
    const-string v4, "channel in list is null"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2761
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v4

    const/4 v8, 0x1

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 2763
    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$1500(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v5

    .line 2764
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 2763
    invoke-virtual {v5, p1, v6}, Lcom/android/server/notification/ConditionProviders;->isPackageOrComponentAllowed(Ljava/lang/String;I)Z

    move-result v9

    .line 2761
    move-object v5, p1

    move v6, p2

    move-object v7, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/notification/PreferencesHelper;->createNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;ZZ)Z

    move-result v4

    .line 2765
    if-eqz v4, :cond_53

    .line 2766
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$1400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v5

    .line 2767
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 2768
    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v7

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, p1, p2, v3, v1}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v3

    .line 2766
    const/4 v7, 0x1

    invoke-virtual {v5, p1, v6, v3, v7}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyNotificationChannelChanged(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V

    .line 2758
    :cond_53
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_c

    .line 2773
    :cond_57
    if-eqz v3, :cond_5e

    .line 2774
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 2776
    :cond_5e
    return-void
.end method

.method private enforcePolicyAccess(ILjava/lang/String;)V
    .registers 10

    .line 3715
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_NOTIFICATIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_f

    .line 3717
    return-void

    .line 3719
    :cond_f
    nop

    .line 3720
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$3900(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 3721
    array-length v1, v0

    .line 3722
    const/4 v2, 0x0

    move v3, v2

    :goto_1d
    if-ge v2, v1, :cond_35

    .line 3723
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->access$1500(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v4

    aget-object v5, v0, v2

    .line 3724
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 3723
    invoke-virtual {v4, v5, v6}, Lcom/android/server/notification/ConditionProviders;->isPackageOrComponentAllowed(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 3725
    const/4 v3, 0x1

    .line 3722
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 3728
    :cond_35
    if-eqz v3, :cond_38

    .line 3732
    return-void

    .line 3729
    :cond_38
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Notification policy access denied calling "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NotificationService"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3730
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Notification policy access denied"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private enforcePolicyAccess(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 3735
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_NOTIFICATIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_f

    .line 3737
    return-void

    .line 3739
    :cond_f
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$3700(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 3740
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$11;->checkPolicyAccess(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 3744
    return-void

    .line 3741
    :cond_1b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Notification policy access denied calling "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NotificationService"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3742
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Notification policy access denied"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private enforceSystemOrSystemUI(Ljava/lang/String;)V
    .registers 4

    .line 3699
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 3700
    :cond_9
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3702
    return-void
.end method

.method private enforceSystemOrSystemUIOrSamePackage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 3706
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$3500(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_5} :catch_6

    .line 3711
    goto :goto_12

    .line 3707
    :catch_6
    move-exception p1

    .line 3708
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3712
    :goto_12
    return-void
.end method

.method private getUidForPackageAndUser(Ljava/lang/String;Landroid/os/UserHandle;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4239
    nop

    .line 4240
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4242
    :try_start_5
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1800(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-interface {v2, p1, v3, p2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result p1
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_19

    .line 4244
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4245
    nop

    .line 4246
    return p1

    .line 4244
    :catchall_19
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private sanitizeSbn(Ljava/lang/String;ILandroid/service/notification/StatusBarNotification;)Landroid/service/notification/StatusBarNotification;
    .registers 16

    .line 3122
    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    if-ne v0, p2, :cond_4d

    .line 3123
    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1a

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 3127
    :cond_1a
    new-instance p1, Landroid/service/notification/StatusBarNotification;

    .line 3128
    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3129
    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v2

    .line 3130
    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v5

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v6

    .line 3131
    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    move-result-object v7

    .line 3132
    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v10

    move-object v0, p1

    invoke-direct/range {v0 .. v11}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILandroid/app/Notification;Landroid/os/UserHandle;Ljava/lang/String;J)V

    .line 3127
    return-object p1

    .line 3135
    :cond_4d
    const/4 p1, 0x0

    return-object p1
.end method

.method private verifyPrivilegedListener(Landroid/service/notification/INotificationListener;Landroid/os/UserHandle;Z)V
    .registers 6

    .line 4223
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4224
    :try_start_5
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p1

    .line 4225
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_6b

    .line 4226
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->hasCompanionDevice(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v0

    if-nez v0, :cond_49

    .line 4227
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4228
    if-eqz p3, :cond_2f

    :try_start_1f
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p3}, Lcom/android/server/notification/NotificationManagerService;->access$600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object p3

    iget-object v1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-virtual {p3, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->isServiceTokenValidLocked(Landroid/os/IInterface;)Z

    move-result p3

    if-eqz p3, :cond_2f

    .line 4231
    monitor-exit v0

    goto :goto_49

    .line 4229
    :cond_2f
    new-instance p2, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " does not have access"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 4231
    :catchall_46
    move-exception p1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_1f .. :try_end_48} :catchall_46

    throw p1

    .line 4233
    :cond_49
    :goto_49
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->enabledAndUserMatches(I)Z

    move-result p2

    if-eqz p2, :cond_54

    .line 4236
    return-void

    .line 4234
    :cond_54
    new-instance p2, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " does not have access"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 4225
    :catchall_6b
    move-exception p1

    :try_start_6c
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    throw p1
.end method


# virtual methods
.method public addAutomaticZenRule(Landroid/app/AutomaticZenRule;)Ljava/lang/String;
    .registers 4

    .line 3578
    const-string v0, "automaticZenRule is null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3579
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Name is null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3580
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_23

    .line 3581
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConfigurationActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1b

    goto :goto_23

    .line 3582
    :cond_1b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Rule must have a conditionproviderservice and/or configuration activity"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3585
    :cond_23
    :goto_23
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "ConditionId is null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3586
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 3587
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getInterruptionFilter()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3a

    goto :goto_42

    .line 3588
    :cond_3a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ZenPolicy is only applicable to INTERRUPTION_FILTER_PRIORITY filters"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3591
    :cond_42
    :goto_42
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "addAutomaticZenRule"

    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService$11;->enforcePolicyAccess(ILjava/lang/String;)V

    .line 3593
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/notification/ZenModeHelper;->addAutomaticZenRule(Landroid/app/AutomaticZenRule;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public allowAssistantAdjustment(Ljava/lang/String;)V
    .registers 3

    .line 3026
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$4200(Lcom/android/server/notification/NotificationManagerService;)V

    .line 3027
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->allowAdjustmentType(Ljava/lang/String;)V

    .line 3029
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 3030
    return-void
.end method

.method public applyAdjustmentFromAssistant(Landroid/service/notification/INotificationListener;Landroid/service/notification/Adjustment;)V
    .registers 4

    .line 4101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4102
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4103
    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService$11;->applyAdjustmentsFromAssistant(Landroid/service/notification/INotificationListener;Ljava/util/List;)V

    .line 4104
    return-void
.end method

.method public applyAdjustmentsFromAssistant(Landroid/service/notification/INotificationListener;Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/INotificationListener;",
            "Ljava/util/List<",
            "Landroid/service/notification/Adjustment;",
            ">;)V"
        }
    .end annotation

    .line 4110
    nop

    .line 4111
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4113
    :try_start_5
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_85

    .line 4114
    :try_start_a
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 4115
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v3, 0x0

    move v4, v3

    :goto_19
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_71

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/Adjustment;

    .line 4116
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/service/notification/Adjustment;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    .line 4117
    const/4 v7, 0x1

    if-eqz v6, :cond_70

    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v8}, Lcom/android/server/notification/NotificationManagerService;->access$600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v8

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v9

    invoke-virtual {v8, p1, v9}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->isSameUser(Landroid/os/IInterface;I)Z

    move-result v8

    if-eqz v8, :cond_70

    .line 4118
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v8, v6, v5}, Lcom/android/server/notification/NotificationManagerService;->access$6300(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Landroid/service/notification/Adjustment;)V

    .line 4122
    invoke-virtual {v5}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "key_importance"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6f

    .line 4123
    invoke-virtual {v5}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v5

    const-string v8, "key_importance"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_6f

    .line 4125
    new-array v5, v7, [Ljava/lang/String;

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {p0, p1, v5}, Lcom/android/server/notification/NotificationManagerService$11;->cancelNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V

    goto :goto_70

    .line 4127
    :cond_6f
    move v4, v7

    .line 4130
    :cond_70
    :goto_70
    goto :goto_19

    .line 4131
    :cond_71
    monitor-exit v2
    :try_end_72
    .catchall {:try_start_a .. :try_end_72} :catchall_82

    .line 4132
    if-eqz v4, :cond_7d

    .line 4133
    :try_start_74
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->access$3000(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/notification/RankingHandler;->requestSort()V
    :try_end_7d
    .catchall {:try_start_74 .. :try_end_7d} :catchall_85

    .line 4136
    :cond_7d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4137
    nop

    .line 4138
    return-void

    .line 4131
    :catchall_82
    move-exception p1

    :try_start_83
    monitor-exit v2
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_82

    :try_start_84
    throw p1
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_85

    .line 4136
    :catchall_85
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public applyEnqueuedAdjustmentFromAssistant(Landroid/service/notification/INotificationListener;Landroid/service/notification/Adjustment;)V
    .registers 12

    .line 4068
    nop

    .line 4069
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4071
    :try_start_5
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_7c

    .line 4072
    :try_start_a
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 4073
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4074
    const/4 v4, 0x0

    move v5, v4

    :goto_1d
    if-ge v5, v3, :cond_6e

    .line 4075
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    .line 4076
    invoke-virtual {p2}, Landroid/service/notification/Adjustment;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6b

    .line 4077
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

    if-eqz v7, :cond_6b

    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 4078
    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->access$600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v8

    invoke-virtual {v7, p1, v8}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->isSameUser(Landroid/os/IInterface;I)Z

    move-result v7

    if-eqz v7, :cond_6b

    .line 4079
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3, v6, p2}, Lcom/android/server/notification/NotificationManagerService;->access$6300(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Landroid/service/notification/Adjustment;)V

    .line 4080
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->applyAdjustments()V

    .line 4084
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->calculateImportance()V

    .line 4085
    nop

    .line 4086
    const/4 v4, 0x1

    goto :goto_6e

    .line 4074
    :cond_6b
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    .line 4089
    :cond_6e
    :goto_6e
    if-nez v4, :cond_73

    .line 4090
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$11;->applyAdjustmentFromAssistant(Landroid/service/notification/INotificationListener;Landroid/service/notification/Adjustment;)V

    .line 4092
    :cond_73
    monitor-exit v2
    :try_end_74
    .catchall {:try_start_a .. :try_end_74} :catchall_79

    .line 4094
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4095
    nop

    .line 4096
    return-void

    .line 4092
    :catchall_79
    move-exception p1

    :try_start_7a
    monitor-exit v2
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    :try_start_7b
    throw p1
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7c

    .line 4094
    :catchall_7c
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public applyRestore([BI)V
    .registers 7

    .line 3831
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$3600(Lcom/android/server/notification/NotificationManagerService;)V

    .line 3832
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

    .line 3833
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

    .line 3832
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3834
    :cond_32
    if-nez p1, :cond_49

    .line 3835
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "applyRestore: no payload to restore for user "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3836
    return-void

    .line 3838
    :cond_49
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 3840
    :try_start_4e
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2, p2}, Lcom/android/server/notification/NotificationManagerService;->readPolicyXml(Ljava/io/InputStream;ZI)V

    .line 3841
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V
    :try_end_59
    .catch Ljava/lang/NumberFormatException; {:try_start_4e .. :try_end_59} :catch_5a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4e .. :try_end_59} :catch_5a
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_59} :catch_5a

    .line 3844
    goto :goto_60

    .line 3842
    :catch_5a
    move-exception p1

    .line 3843
    const-string p2, "applyRestore: error reading payload"

    invoke-static {v1, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3845
    :goto_60
    return-void
.end method

.method public areBubblesAllowed(Ljava/lang/String;)Z
    .registers 3

    .line 2600
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService$11;->areBubblesAllowedForPackage(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public areBubblesAllowedForPackage(Ljava/lang/String;I)Z
    .registers 6

    .line 2605
    const-string v0, "Caller not system or systemui or same package"

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService$11;->enforceSystemOrSystemUIOrSamePackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 2608
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-eq v0, v1, :cond_2b

    .line 2609
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

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

    .line 2614
    :cond_2b
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->areBubblesAllowed(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public areChannelsBypassingDnd()Z
    .registers 2

    .line 2980
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/notification/PreferencesHelper;->areChannelsBypassingDnd()Z

    move-result v0

    return v0
.end method

.method public areNotificationsEnabled(Ljava/lang/String;)Z
    .registers 3

    .line 2579
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService$11;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
    .registers 6

    .line 2587
    const-string v0, "Caller not system or systemui or same package"

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService$11;->enforceSystemOrSystemUIOrSamePackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 2589
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-eq v0, v1, :cond_2b

    .line 2590
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

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

    .line 2595
    :cond_2b
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getImportance(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_39

    const/4 p1, 0x1

    goto :goto_3a

    :cond_39
    const/4 p1, 0x0

    :goto_3a
    return p1
.end method

.method public canNotifyAsPackage(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 8

    .line 2706
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$3700(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 2707
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2708
    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 2709
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-eq v1, p3, :cond_2f

    .line 2710
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canNotifyAsPackage for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2714
    :cond_2f
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 2715
    const/4 p1, 0x1

    return p1

    .line 2718
    :cond_37
    :try_start_37
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 2719
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1800(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/high16 v2, 0xc0000

    invoke-interface {v1, p2, v2, p3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    .line 2722
    if-eqz p3, :cond_52

    .line 2723
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v1

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, p2, p3, p1, v0}, Lcom/android/server/notification/PreferencesHelper;->isDelegateAllowed(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result p1
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_51} :catch_53

    return p1

    .line 2728
    :cond_52
    goto :goto_54

    .line 2726
    :catch_53
    move-exception p1

    .line 2729
    :goto_54
    const/4 p1, 0x0

    return p1
.end method

.method public canShowBadge(Ljava/lang/String;I)Z
    .registers 4

    .line 2661
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$3600(Lcom/android/server/notification/NotificationManagerService;)V

    .line 2662
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->canShowBadge(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public cancelAllNotifications(Ljava/lang/String;I)V
    .registers 16

    .line 2484
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1, p1}, Lcom/android/server/notification/NotificationManagerService;->access$3500(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 2486
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 2487
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2486
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "cancelAllNotifications"

    move v4, p2

    move-object v8, p1

    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 2491
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x40

    const/4 v0, 0x1

    const/16 v11, 0x9

    const/4 v12, 0x0

    move-object v5, p1

    move v9, v0

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 2494
    return-void
.end method

.method public cancelNotificationFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 16

    .line 3379
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 3380
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 3381
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 3383
    :try_start_c
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v10, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_51

    .line 3384
    :try_start_11
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v1

    .line 3385
    invoke-virtual {v1}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->supportsProfiles()Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 3386
    const-string p1, "NotificationService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Ignoring deprecated cancelNotification(pkg, tag, id) from "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " use cancelNotification(key) instead."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    .line 3390
    :cond_3f
    iget v7, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/notification/NotificationManagerService$11;->cancelNotificationFromListenerLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IILjava/lang/String;Ljava/lang/String;II)V

    .line 3393
    :goto_48
    monitor-exit v10
    :try_end_49
    .catchall {:try_start_11 .. :try_end_49} :catchall_4e

    .line 3395
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3396
    nop

    .line 3397
    return-void

    .line 3393
    :catchall_4e
    move-exception p1

    :try_start_4f
    monitor-exit v10
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    :try_start_50
    throw p1
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_51

    .line 3395
    :catchall_51
    move-exception p1

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 19

    .line 2471
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object v9, p1

    invoke-static {v1, p1}, Lcom/android/server/notification/NotificationManagerService;->access$3500(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 2472
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 2473
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2472
    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v7, "cancelNotificationWithTag"

    move/from16 v4, p4

    move-object v8, p1

    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 2476
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->isCallingUidSystem()Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v1, 0x0

    goto :goto_26

    .line 2477
    :cond_24
    const/16 v1, 0x440

    .line 2478
    :goto_26
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/16 v12, 0x8

    const/4 v13, 0x0

    move-object v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move v9, v1

    invoke-virtual/range {v2 .. v13}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 2480
    return-void
.end method

.method public cancelNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V
    .registers 22

    .line 3193
    move-object/from16 v0, p0

    move-object/from16 v9, p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 3194
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 3195
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 3197
    :try_start_10
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v14, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_b3

    .line 3198
    :try_start_15
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v15

    .line 3200
    if-eqz v9, :cond_9a

    .line 3201
    array-length v8, v9

    .line 3202
    const/4 v1, 0x0

    move v7, v1

    :goto_26
    if-ge v7, v8, :cond_99

    .line 3203
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    aget-object v2, v9, v7

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    .line 3204
    if-nez v1, :cond_3b

    move/from16 v16, v7

    move/from16 v17, v8

    goto :goto_94

    .line 3205
    :cond_3b
    iget-object v2, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v6

    .line 3206
    iget v2, v15, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    if-eq v6, v2, :cond_6e

    const/4 v2, -0x1

    if-eq v6, v2, :cond_6e

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 3207
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$2500(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    move-result v2

    if-eqz v2, :cond_55

    goto :goto_6e

    .line 3208
    :cond_55
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disallowed call from listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3211
    :cond_6e
    :goto_6e
    iget-object v2, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 3212
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v2, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v16

    iget-object v1, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v17

    .line 3211
    move-object/from16 v1, p0

    move-object v2, v15

    move v3, v10

    move v4, v11

    move/from16 v18, v6

    move-object/from16 v6, v16

    move/from16 v16, v7

    move/from16 v7, v17

    move/from16 v17, v8

    move/from16 v8, v18

    invoke-direct/range {v1 .. v8}, Lcom/android/server/notification/NotificationManagerService$11;->cancelNotificationFromListenerLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IILjava/lang/String;Ljava/lang/String;II)V

    .line 3202
    :goto_94
    add-int/lit8 v7, v16, 0x1

    move/from16 v8, v17

    goto :goto_26

    .line 3215
    :cond_99
    goto :goto_aa

    .line 3216
    :cond_9a
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget v3, v15, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    const/16 v4, 0xb

    .line 3217
    invoke-virtual {v15}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->supportsProfiles()Z

    move-result v6

    .line 3216
    move v1, v10

    move v2, v11

    move-object v5, v15

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/notification/NotificationManagerService;->cancelAllLocked(IIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V

    .line 3219
    :goto_aa
    monitor-exit v14
    :try_end_ab
    .catchall {:try_start_15 .. :try_end_ab} :catchall_b0

    .line 3221
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3222
    nop

    .line 3223
    return-void

    .line 3219
    :catchall_b0
    move-exception v0

    :try_start_b1
    monitor-exit v14
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b0

    :try_start_b2
    throw v0
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_b3

    .line 3221
    :catchall_b3
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public cancelToast(Ljava/lang/String;Landroid/app/ITransientNotification;)V
    .registers 9

    .line 2420
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

    .line 2422
    if-eqz p1, :cond_66

    if-nez p2, :cond_23

    goto :goto_66

    .line 2427
    :cond_23
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2428
    :try_start_28
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_63

    .line 2430
    :try_start_2c
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I

    move-result v3

    .line 2431
    if-ltz v3, :cond_3a

    .line 2432
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1, v3}, Lcom/android/server/notification/NotificationManagerService;->cancelToastLocked(I)V

    goto :goto_58

    .line 2434
    :cond_3a
    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Toast already cancelled. pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " callback="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catchall {:try_start_2c .. :try_end_58} :catchall_5e

    .line 2438
    :goto_58
    :try_start_58
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2439
    nop

    .line 2440
    monitor-exit v0

    .line 2441
    return-void

    .line 2438
    :catchall_5e
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 2440
    :catchall_63
    move-exception p1

    monitor-exit v0
    :try_end_65
    .catchall {:try_start_58 .. :try_end_65} :catchall_63

    throw p1

    .line 2423
    :cond_66
    :goto_66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not cancelling notification. pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " callback="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NotificationService"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2424
    return-void
.end method

.method public clearData(Ljava/lang/String;IZ)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2985
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$3600(Lcom/android/server/notification/NotificationManagerService;)V

    .line 2988
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$1900()I

    move-result v2

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$2000()I

    move-result v3

    .line 2989
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 2988
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v10, 0x11

    const/4 v11, 0x0

    move-object v4, p1

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 2991
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 2992
    new-array v3, v0, [I

    aput p2, v3, v2

    .line 2995
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    .line 2996
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    .line 2999
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1500(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/server/notification/ConditionProviders;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    .line 3002
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$4100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/SnoozeHelper;

    move-result-object v0

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/notification/SnoozeHelper;->clearData(ILjava/lang/String;)V

    .line 3005
    if-nez p3, :cond_5f

    .line 3006
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p3}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->clearData(Ljava/lang/String;I)V

    .line 3009
    :cond_5f
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 3010
    return-void
.end method

.method public clearRequestedListenerHints(Landroid/service/notification/INotificationListener;)V
    .registers 6

    .line 3465
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3467
    :try_start_4
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_2b

    .line 3468
    :try_start_9
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$1400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p1

    .line 3469
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3, p1}, Lcom/android/server/notification/NotificationManagerService;->access$4600(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    .line 3470
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->access$4700(Lcom/android/server/notification/NotificationManagerService;)V

    .line 3471
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->access$4800(Lcom/android/server/notification/NotificationManagerService;)V

    .line 3472
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_28

    .line 3474
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3475
    nop

    .line 3476
    return-void

    .line 3472
    :catchall_28
    move-exception p1

    :try_start_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    :try_start_2a
    throw p1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_2b

    .line 3474
    :catchall_2b
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public createNotificationChannelGroups(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2743
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$3500(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 2744
    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p2

    .line 2745
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 2746
    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_26

    .line 2747
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/app/NotificationChannelGroup;

    .line 2748
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v4, p1

    invoke-static/range {v3 .. v8}, Lcom/android/server/notification/NotificationManagerService;->access$3800(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;ILandroid/app/NotificationChannelGroup;ZZ)V

    .line 2746
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 2750
    :cond_26
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 2751
    return-void
.end method

.method public createNotificationChannels(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2781
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$3500(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 2782
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/notification/NotificationManagerService$11;->createNotificationChannelsImpl(Ljava/lang/String;ILandroid/content/pm/ParceledListSlice;)V

    .line 2783
    return-void
.end method

.method public createNotificationChannelsForPackage(Ljava/lang/String;ILandroid/content/pm/ParceledListSlice;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2788
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$3600(Lcom/android/server/notification/NotificationManagerService;)V

    .line 2789
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService$11;->createNotificationChannelsImpl(Ljava/lang/String;ILandroid/content/pm/ParceledListSlice;)V

    .line 2790
    return-void
.end method

.method public deleteNotificationChannel(Ljava/lang/String;Ljava/lang/String;)V
    .registers 16

    .line 2819
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$3500(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 2820
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2821
    const-string v1, "miscellaneous"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_52

    .line 2824
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$1900()I

    move-result v3

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$2000()I

    move-result v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 2825
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    const/16 v11, 0x11

    const/4 v12, 0x0

    .line 2824
    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 2826
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/android/server/notification/PreferencesHelper;->deleteNotificationChannel(Ljava/lang/String;ILjava/lang/String;)V

    .line 2827
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v1

    .line 2828
    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 2829
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v0, p2, v4}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object p2

    const/4 v0, 0x3

    .line 2827
    invoke-virtual {v1, p1, v2, p2, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyNotificationChannelChanged(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V

    .line 2831
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 2832
    return-void

    .line 2822
    :cond_52
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot delete default channel"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public deleteNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;)V
    .registers 23

    .line 2851
    move-object/from16 v0, p0

    move-object/from16 v12, p1

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2, v12}, Lcom/android/server/notification/NotificationManagerService;->access$3500(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 2853
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    .line 2854
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 2855
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v2

    invoke-virtual {v2, v1, v12, v13}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;

    move-result-object v14

    .line 2856
    if-eqz v14, :cond_87

    .line 2857
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 2858
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v2

    invoke-virtual {v2, v12, v13, v1}, Lcom/android/server/notification/PreferencesHelper;->deleteNotificationChannelGroup(Ljava/lang/String;ILjava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 2859
    const/4 v1, 0x0

    move v11, v1

    :goto_27
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    const/4 v10, 0x3

    if-ge v11, v1, :cond_74

    .line 2860
    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/app/NotificationChannel;

    .line 2861
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$1900()I

    move-result v2

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$2000()I

    move-result v3

    invoke-virtual {v9}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 2863
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v16

    const/16 v17, 0x11

    const/16 v18, 0x0

    .line 2861
    move-object/from16 v4, p1

    move-object/from16 v19, v9

    move/from16 v9, v16

    move/from16 v10, v17

    move/from16 v16, v11

    move-object/from16 v11, v18

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 2865
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v1

    .line 2866
    invoke-static {v13}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 2865
    move-object/from16 v3, v19

    const/4 v4, 0x3

    invoke-virtual {v1, v12, v2, v3, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyNotificationChannelChanged(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V

    .line 2859
    add-int/lit8 v11, v16, 0x1

    goto :goto_27

    .line 2870
    :cond_74
    move v4, v10

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v1

    .line 2871
    invoke-static {v13}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 2870
    invoke-virtual {v1, v12, v2, v14, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyNotificationChannelGroupChanged(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;I)V

    .line 2873
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 2875
    :cond_87
    return-void
.end method

.method public disallowAssistantAdjustment(Ljava/lang/String;)V
    .registers 3

    .line 3034
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$4200(Lcom/android/server/notification/NotificationManagerService;)V

    .line 3035
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->disallowAdjustmentType(Ljava/lang/String;)V

    .line 3037
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 3038
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 3772
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "NotificationService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 3773
    :cond_f
    invoke-static {p3}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->parseFromArguments([Ljava/lang/String;)Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    move-result-object p3

    .line 3774
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3776
    :try_start_17
    iget-boolean v2, p3, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->stats:Z

    if-eqz v2, :cond_21

    .line 3777
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->access$5400(Lcom/android/server/notification/NotificationManagerService;Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    goto :goto_44

    .line 3778
    :cond_21
    iget-boolean v2, p3, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->rvStats:Z

    if-eqz v2, :cond_2b

    .line 3779
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->access$5500(Lcom/android/server/notification/NotificationManagerService;Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    goto :goto_44

    .line 3780
    :cond_2b
    iget-boolean v2, p3, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->proto:Z

    if-eqz v2, :cond_35

    .line 3781
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p2, p1, p3}, Lcom/android/server/notification/NotificationManagerService;->access$5600(Lcom/android/server/notification/NotificationManagerService;Ljava/io/FileDescriptor;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    goto :goto_44

    .line 3782
    :cond_35
    iget-boolean p1, p3, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->criticalPriority:Z

    if-eqz p1, :cond_3f

    .line 3783
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->access$5700(Lcom/android/server/notification/NotificationManagerService;Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    goto :goto_44

    .line 3785
    :cond_3f
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->dumpImpl(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    :try_end_44
    .catchall {:try_start_17 .. :try_end_44} :catchall_49

    .line 3788
    :goto_44
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3789
    nop

    .line 3790
    return-void

    .line 3788
    :catchall_49
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2465
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2466
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 2465
    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/notification/NotificationManagerService;->enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;I)V

    .line 2467
    return-void
.end method

.method public enqueueToast(Ljava/lang/String;Landroid/app/ITransientNotification;II)V
    .registers 19

    .line 2335
    move-object v0, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p4

    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v1, :cond_3a

    .line 2336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueueToast pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotificationService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2340
    :cond_3a
    if-eqz v3, :cond_165

    if-nez v4, :cond_40

    goto/16 :goto_165

    .line 2345
    :cond_40
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2346
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result v2

    const/4 v6, 0x0

    const/4 v8, 0x1

    if-nez v2, :cond_59

    .line 2347
    const-string v2, "android"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    goto :goto_59

    :cond_57
    move v2, v6

    goto :goto_5a

    :cond_59
    :goto_59
    move v2, v8

    .line 2348
    :goto_5a
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$11;->isPackagePaused(Ljava/lang/String;)Z

    move-result v9

    .line 2349
    invoke-virtual {p0, p1, v1}, Lcom/android/server/notification/NotificationManagerService$11;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v10

    .line 2352
    xor-int/2addr v10, v8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 2354
    :try_start_67
    iget-object v13, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v13}, Lcom/android/server/notification/NotificationManagerService;->access$3300(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/ActivityManager;

    move-result-object v13

    invoke-virtual {v13, v1}, Landroid/app/ActivityManager;->getUidImportance(I)I

    move-result v1

    const/16 v13, 0x64

    if-ne v1, v13, :cond_77

    move v1, v8

    goto :goto_78

    :cond_77
    move v1, v6

    .line 2356
    :goto_78
    if-nez v2, :cond_a4

    if-eqz v10, :cond_7e

    if-eqz v1, :cond_80

    :cond_7e
    if-eqz v9, :cond_a4

    .line 2358
    :cond_80
    const-string v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Suppressing toast from package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2359
    if-eqz v9, :cond_94

    const-string v2, " due to package suspended."

    goto :goto_96

    .line 2360
    :cond_94
    const-string v2, " by user request."

    :goto_96
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2358
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a0
    .catchall {:try_start_67 .. :try_end_a0} :catchall_160

    .line 2364
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2361
    return-void

    .line 2364
    :cond_a4
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2365
    nop

    .line 2367
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v9

    .line 2368
    :try_start_ad
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 2369
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11
    :try_end_b5
    .catchall {:try_start_ad .. :try_end_b5} :catchall_15d

    .line 2372
    :try_start_b5
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1, p1, v4}, Lcom/android/server/notification/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I

    move-result v1

    .line 2375
    if-ltz v1, :cond_cc

    .line 2376
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 2377
    invoke-virtual {v2, v5}, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->update(I)V

    goto/16 :goto_14b

    .line 2381
    :cond_cc
    if-nez v2, :cond_118

    .line 2382
    nop

    .line 2383
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2384
    move v2, v6

    :goto_d8
    if-ge v6, v1, :cond_118

    .line 2385
    iget-object v13, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v13, v13, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 2386
    iget-object v13, v13, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v13, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_115

    .line 2387
    add-int/lit8 v2, v2, 0x1

    .line 2388
    const/16 v13, 0x19

    if-lt v2, v13, :cond_115

    .line 2389
    const-string v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package has already posted "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " toasts. Not showing more. Package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_110
    .catchall {:try_start_b5 .. :try_end_110} :catchall_158

    .line 2413
    :try_start_110
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v9
    :try_end_114
    .catchall {:try_start_110 .. :try_end_114} :catchall_15d

    .line 2391
    return-void

    .line 2384
    :cond_115
    add-int/lit8 v6, v6, 0x1

    goto :goto_d8

    .line 2397
    :cond_118
    :try_start_118
    new-instance v6, Landroid/os/Binder;

    invoke-direct {v6}, Landroid/os/Binder;-><init>()V

    .line 2398
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$3400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v1

    const/16 v2, 0x7d5

    invoke-virtual {v1, v6, v2, v7}, Lcom/android/server/wm/WindowManagerInternal;->addWindowToken(Landroid/os/IBinder;II)V

    .line 2399
    new-instance v13, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    move-object v1, v13

    move v2, v10

    move-object v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/notification/NotificationManagerService$ToastRecord;-><init>(ILjava/lang/String;Landroid/app/ITransientNotification;ILandroid/os/Binder;I)V

    .line 2401
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2402
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v8

    .line 2403
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2, v10}, Lcom/android/server/notification/NotificationManagerService;->keepProcessAliveIfNeededLocked(I)V

    .line 2409
    :goto_14b
    if-nez v1, :cond_152

    .line 2410
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->showNextToastLocked()V
    :try_end_152
    .catchall {:try_start_118 .. :try_end_152} :catchall_158

    .line 2413
    :cond_152
    :try_start_152
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2414
    nop

    .line 2415
    monitor-exit v9

    .line 2416
    return-void

    .line 2413
    :catchall_158
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2415
    :catchall_15d
    move-exception v0

    monitor-exit v9
    :try_end_15f
    .catchall {:try_start_152 .. :try_end_15f} :catchall_15d

    throw v0

    .line 2364
    :catchall_160
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2341
    :cond_165
    :goto_165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not enqueuing toast. pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2342
    return-void
.end method

.method public finishToken(Ljava/lang/String;Landroid/app/ITransientNotification;)V
    .registers 9

    .line 2445
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2446
    :try_start_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_4e

    .line 2448
    :try_start_9
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I

    move-result v3

    .line 2449
    if-ltz v3, :cond_25

    .line 2450
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 2451
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->token:Landroid/os/Binder;

    iget p1, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->displayId:I

    invoke-virtual {p2, v3, p1}, Lcom/android/server/notification/NotificationManagerService;->finishTokenLocked(Landroid/os/IBinder;I)V

    .line 2452
    goto :goto_43

    .line 2453
    :cond_25
    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Toast already killed. pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " callback="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_9 .. :try_end_43} :catchall_49

    .line 2457
    :goto_43
    :try_start_43
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2458
    nop

    .line 2459
    monitor-exit v0

    .line 2460
    return-void

    .line 2457
    :catchall_49
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 2459
    :catchall_4e
    move-exception p1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_43 .. :try_end_50} :catchall_4e

    throw p1
.end method

.method public getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;
    .registers 6

    .line 3049
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_NOTIFICATIONS"

    const-string v2, "NotificationManagerService.getActiveNotifications"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3053
    nop

    .line 3054
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3057
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$4300(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/AppOpsManager;

    move-result-object v1

    const/16 v2, 0x19

    invoke-virtual {v1, v2, v0, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_50

    .line 3059
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter p1

    .line 3060
    :try_start_25
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/service/notification/StatusBarNotification;

    .line 3061
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3062
    const/4 v2, 0x0

    :goto_38
    if-ge v2, v1, :cond_4b

    .line 3063
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    iget-object v3, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    aput-object v3, v0, v2

    .line 3062
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 3065
    :cond_4b
    monitor-exit p1

    goto :goto_51

    :catchall_4d
    move-exception v0

    monitor-exit p1
    :try_end_4f
    .catchall {:try_start_25 .. :try_end_4f} :catchall_4d

    throw v0

    .line 3057
    :cond_50
    const/4 v0, 0x0

    .line 3067
    :goto_51
    return-object v0
.end method

.method public getActiveNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 11
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

    .line 3412
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3413
    :try_start_5
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p1

    .line 3414
    const/4 v1, 0x0

    if-eqz p2, :cond_14

    const/4 v2, 0x1

    goto :goto_15

    :cond_14
    move v2, v1

    .line 3415
    :goto_15
    if-eqz v2, :cond_19

    array-length v3, p2

    goto :goto_21

    :cond_19
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3416
    :goto_21
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 3418
    nop

    :goto_27
    if-ge v1, v3, :cond_5d

    .line 3419
    if-eqz v2, :cond_38

    .line 3420
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    aget-object v6, p2, v1

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    goto :goto_42

    .line 3421
    :cond_38
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 3422
    :goto_42
    if-nez v5, :cond_45

    goto :goto_5a

    .line 3423
    :cond_45
    iget-object v5, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 3424
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v6, v5, p1}, Lcom/android/server/notification/NotificationManagerService;->access$4500(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v6

    if-nez v6, :cond_50

    goto :goto_5a

    .line 3426
    :cond_50
    if-nez p3, :cond_53

    goto :goto_57

    :cond_53
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->cloneLight()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    .line 3427
    :goto_57
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3418
    :goto_5a
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 3429
    :cond_5d
    new-instance p1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p1, v4}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v0

    return-object p1

    .line 3430
    :catchall_64
    move-exception p1

    monitor-exit v0
    :try_end_66
    .catchall {:try_start_5 .. :try_end_66} :catchall_64

    throw p1
.end method

.method public getAllowedAssistantAdjustments(Ljava/lang/String;)Ljava/util/List;
    .registers 4
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

    .line 3014
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$3500(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 3016
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 3017
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->isPackageAllowed(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1e

    goto :goto_26

    .line 3018
    :cond_1e
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Not currently an assistant"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3021
    :cond_26
    :goto_26
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->access$600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->getAllowedAssistantAdjustments()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAllowedNotificationAssistant()Landroid/content/ComponentName;
    .registers 2

    .line 3981
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService$11;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$11;->getAllowedNotificationAssistantForUser(I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getAllowedNotificationAssistantForUser(I)Landroid/content/ComponentName;
    .registers 5

    .line 3970
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$4200(Lcom/android/server/notification/NotificationManagerService;)V

    .line 3971
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->getAllowedComponents(I)Ljava/util/List;

    move-result-object p1

    .line 3972
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1d

    .line 3976
    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    return-object p1

    .line 3973
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "At most one NotificationAssistant: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3974
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAppActiveNotifications(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 11
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

    .line 3085
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$3500(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 3086
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 3087
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 3086
    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "getAppActiveNotifications"

    move v3, p2

    move-object v7, p1

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 3089
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3090
    :try_start_1c
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 3091
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    .line 3092
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3093
    const/4 v3, 0x0

    move v4, v3

    :goto_3c
    if-ge v4, v2, :cond_5a

    .line 3094
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 3095
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    iget-object v5, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 3094
    invoke-direct {p0, p1, p2, v5}, Lcom/android/server/notification/NotificationManagerService$11;->sanitizeSbn(Ljava/lang/String;ILandroid/service/notification/StatusBarNotification;)Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    .line 3096
    if-eqz v5, :cond_57

    .line 3097
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3093
    :cond_57
    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    .line 3100
    :cond_5a
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$4100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/SnoozeHelper;

    move-result-object v2

    invoke-virtual {v2, p2, p1}, Lcom/android/server/notification/SnoozeHelper;->getSnoozed(ILjava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_68
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_84

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 3101
    iget-object v4, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/notification/NotificationManagerService$11;->sanitizeSbn(Ljava/lang/String;ILandroid/service/notification/StatusBarNotification;)Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    .line 3102
    if-eqz v4, :cond_83

    .line 3103
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3105
    :cond_83
    goto :goto_68

    .line 3106
    :cond_84
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3107
    nop

    :goto_8d
    if-ge v3, v2, :cond_ab

    .line 3108
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 3109
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    iget-object v4, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 3108
    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/notification/NotificationManagerService$11;->sanitizeSbn(Ljava/lang/String;ILandroid/service/notification/StatusBarNotification;)Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    .line 3110
    if-eqz v4, :cond_a8

    .line 3111
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3107
    :cond_a8
    add-int/lit8 v3, v3, 0x1

    goto :goto_8d

    .line 3114
    :cond_ab
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3115
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3116
    new-instance p2, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p2, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v0

    return-object p2

    .line 3117
    :catchall_c2
    move-exception p1

    monitor-exit v0
    :try_end_c4
    .catchall {:try_start_1c .. :try_end_c4} :catchall_c2

    throw p1
.end method

.method public getAppsBypassingDndCount(I)I
    .registers 3

    .line 2967
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$3600(Lcom/android/server/notification/NotificationManagerService;)V

    .line 2968
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/notification/PreferencesHelper;->getAppsBypassingDndCount(I)I

    move-result p1

    return p1
.end method

.method public getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3571
    const-string v0, "Id is null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3572
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "getAutomaticZenRule"

    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService$11;->enforcePolicyAccess(ILjava/lang/String;)V

    .line 3573
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;

    move-result-object p1

    return-object p1
.end method

.method public getBackupPayload(I)[B
    .registers 6

    .line 3817
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$3600(Lcom/android/server/notification/NotificationManagerService;)V

    .line 3818
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

    .line 3819
    :cond_1f
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3821
    :try_start_24
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v3, 0x1

    invoke-static {v2, v0, v3, p1}, Lcom/android/server/notification/NotificationManagerService;->access$200(Lcom/android/server/notification/NotificationManagerService;Ljava/io/OutputStream;ZI)V

    .line 3822
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2e} :catch_2f

    return-object p1

    .line 3823
    :catch_2f
    move-exception v0

    .line 3824
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBackupPayload: error writing payload for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3826
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBlockedAppCount(I)I
    .registers 3

    .line 2961
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$3600(Lcom/android/server/notification/NotificationManagerService;)V

    .line 2962
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/notification/PreferencesHelper;->getBlockedAppCount(I)I

    move-result p1

    return p1
.end method

.method public getBlockedChannelCount(Ljava/lang/String;I)I
    .registers 4

    .line 2914
    const-string v0, "getBlockedChannelCount"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$11;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 2915
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getBlockedChannelCount(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;
    .registers 4

    .line 3901
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3903
    :try_start_4
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v2
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_10

    .line 3905
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3903
    return-object v2

    .line 3905
    :catchall_10
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getDeletedChannelCount(Ljava/lang/String;I)I
    .registers 4

    .line 2908
    const-string v0, "getDeletedChannelCount"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$11;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 2909
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getDeletedChannelCount(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getEffectsSuppressor()Landroid/content/ComponentName;
    .registers 3

    .line 3794
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$5800(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$5800(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/List;

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

    .line 3958
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$3600(Lcom/android/server/notification/NotificationManagerService;)V

    .line 3959
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService$11;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getAllowedPackages(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledNotificationListeners(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 3964
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$3600(Lcom/android/server/notification/NotificationManagerService;)V

    .line 3965
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getAllowedComponents(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getHintsFromListener(Landroid/service/notification/INotificationListener;)I
    .registers 3

    .line 3503
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter p1

    .line 3504
    :try_start_5
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$5100(Lcom/android/server/notification/NotificationManagerService;)I

    move-result v0

    monitor-exit p1

    return v0

    .line 3505
    :catchall_d
    move-exception v0

    monitor-exit p1
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public getHistoricalNotifications(Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;
    .registers 6

    .line 3146
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_NOTIFICATIONS"

    const-string v2, "NotificationManagerService.getHistoricalNotifications"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3150
    nop

    .line 3151
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3154
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$4300(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/AppOpsManager;

    move-result-object v1

    const/16 v2, 0x19

    invoke-virtual {v1, v2, v0, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result p1

    if-nez p1, :cond_36

    .line 3156
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->access$4400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$Archive;

    move-result-object p1

    monitor-enter p1

    .line 3157
    :try_start_27
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$4400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$Archive;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/notification/NotificationManagerService$Archive;->getArray(I)[Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    .line 3158
    monitor-exit p1

    goto :goto_37

    :catchall_33
    move-exception p2

    monitor-exit p1
    :try_end_35
    .catchall {:try_start_27 .. :try_end_35} :catchall_33

    throw p2

    .line 3154
    :cond_36
    const/4 p2, 0x0

    .line 3160
    :goto_37
    return-object p2
.end method

.method public getInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3526
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->access$2400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/Light;

    move-result-object p1

    monitor-enter p1

    .line 3527
    :try_start_7
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$5200(Lcom/android/server/notification/NotificationManagerService;)I

    move-result v0

    monitor-exit p1

    return v0

    .line 3528
    :catchall_f
    move-exception v0

    monitor-exit p1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;
    .registers 7

    .line 2795
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/notification/NotificationManagerService$11;->canNotifyAsPackage(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 2796
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->isCallingUidSystem()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_36

    .line 2806
    :cond_f
    new-instance p4, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pkg "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cannot read channels for "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p4

    .line 2797
    :cond_36
    :goto_36
    const/4 p1, -0x1

    .line 2799
    :try_start_37
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$3900(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p3, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p1
    :try_end_41
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_37 .. :try_end_41} :catch_42

    .line 2802
    goto :goto_43

    .line 2800
    :catch_42
    move-exception p2

    .line 2803
    :goto_43
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p2}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p3, p1, p4, v0}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object p1

    return-object p1
.end method

.method public getNotificationChannelForPackage(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;
    .registers 6

    .line 2813
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$3600(Lcom/android/server/notification/NotificationManagerService;)V

    .line 2814
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object p1

    return-object p1
.end method

.method public getNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannelGroup;
    .registers 6

    .line 2836
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$3500(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 2837
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    .line 2838
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2837
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannelGroupWithChannels(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannelGroup;

    move-result-object p1

    return-object p1
.end method

.method public getNotificationChannelGroupForPackage(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;
    .registers 5

    .line 2937
    const-string v0, "getNotificationChannelGroupForPackage"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$11;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 2938
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;

    move-result-object p1

    return-object p1
.end method

.method public getNotificationChannelGroups(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 9
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

    .line 2844
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$3500(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 2845
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v1

    .line 2846
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2845
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannelGroups(Ljava/lang/String;IZZZ)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    return-object p1
.end method

.method public getNotificationChannelGroupsForPackage(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;
    .registers 11
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

    .line 2921
    const-string v0, "getNotificationChannelGroupsForPackage"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$11;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 2922
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannelGroups(Ljava/lang/String;IZZZ)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    return-object p1
.end method

.method public getNotificationChannelGroupsFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;
    .registers 5
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

    .line 4177
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4178
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4179
    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/notification/NotificationManagerService$11;->verifyPrivilegedListener(Landroid/service/notification/INotificationListener;Landroid/os/UserHandle;Z)V

    .line 4181
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4182
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    .line 4183
    invoke-direct {p0, p2, p3}, Lcom/android/server/notification/NotificationManagerService$11;->getUidForPackageAndUser(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result p3

    .line 4182
    invoke-virtual {v0, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannelGroups(Ljava/lang/String;I)Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4184
    new-instance p2, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p2, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p2
.end method

.method public getNotificationChannels(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 7
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

    .line 2944
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService$11;->canNotifyAsPackage(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 2945
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->isCallingUidSystem()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_36

    .line 2955
    :cond_f
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cannot read channels for "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2946
    :cond_36
    :goto_36
    const/4 p1, -0x1

    .line 2948
    :try_start_37
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$3900(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p1
    :try_end_41
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_37 .. :try_end_41} :catch_42

    .line 2951
    goto :goto_43

    .line 2949
    :catch_42
    move-exception p3

    .line 2952
    :goto_43
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p3}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, p2, p1, v0}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannels(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    return-object p1
.end method

.method public getNotificationChannelsBypassingDnd(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 4
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

    .line 2974
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$3600(Lcom/android/server/notification/NotificationManagerService;)V

    .line 2975
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannelsBypassingDnd(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    return-object p1
.end method

.method public getNotificationChannelsForPackage(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;
    .registers 5
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

    .line 2888
    const-string v0, "getNotificationChannelsForPackage"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$11;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 2889
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannels(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    return-object p1
.end method

.method public getNotificationChannelsFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;
    .registers 5
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

    .line 4165
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4166
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4167
    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/notification/NotificationManagerService$11;->verifyPrivilegedListener(Landroid/service/notification/INotificationListener;Landroid/os/UserHandle;Z)V

    .line 4169
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object p1

    invoke-direct {p0, p2, p3}, Lcom/android/server/notification/NotificationManagerService$11;->getUidForPackageAndUser(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannels(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    return-object p1
.end method

.method public getNotificationDelegate(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 2700
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$3500(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 2701
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/notification/PreferencesHelper;->getNotificationDelegate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getNotificationPolicy(Ljava/lang/String;)Landroid/app/NotificationManager$Policy;
    .registers 4

    .line 3891
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3893
    :try_start_4
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p1}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object p1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_10

    .line 3895
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3893
    return-object p1

    .line 3895
    :catchall_10
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public getNotificationSoundTimeout(Ljava/lang/String;I)J
    .registers 4

    .line 2550
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$3600(Lcom/android/server/notification/NotificationManagerService;)V

    .line 2551
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getNotificationSoundTimeout(Ljava/lang/String;I)J

    move-result-wide p1

    return-wide p1
.end method

.method public getNumNotificationChannelsForPackage(Ljava/lang/String;IZ)I
    .registers 5

    .line 2895
    const-string v0, "getNumNotificationChannelsForPackage"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$11;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 2896
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannels(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 2897
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 2896
    return p1
.end method

.method public getPackageImportance(Ljava/lang/String;)I
    .registers 4

    .line 2655
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$3500(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 2656
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/notification/PreferencesHelper;->getImportance(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getPopulatedNotificationChannelGroupForPackage(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannelGroup;
    .registers 6

    .line 2929
    const-string v0, "getPopulatedNotificationChannelGroupForPackage"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$11;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 2930
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannelGroupWithChannels(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannelGroup;

    move-result-object p1

    return-object p1
.end method

.method public getPrivateNotificationsAllowed()Z
    .registers 3

    .line 4203
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 4204
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_KEYGUARD_SECURE_NOTIFICATIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    .line 4209
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$6400(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v0

    return v0

    .line 4206
    :cond_15
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires CONTROL_KEYGUARD_SECURE_NOTIFICATIONS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRuleInstanceCount(Landroid/content/ComponentName;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3633
    const-string v0, "Owner is null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3634
    const-string v0, "getRuleInstanceCount"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$11;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 3636
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->getCurrentInstanceCount(Landroid/content/ComponentName;)I

    move-result p1

    return p1
.end method

.method public getSnoozedNotificationsFromListener(Landroid/service/notification/INotificationListener;I)Landroid/content/pm/ParceledListSlice;
    .registers 10
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

    .line 3445
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3446
    :try_start_5
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p1

    .line 3447
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$4100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/SnoozeHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/notification/SnoozeHelper;->getSnoozed()Ljava/util/List;

    move-result-object v1

    .line 3448
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 3449
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3450
    const/4 v4, 0x0

    :goto_23
    if-ge v4, v2, :cond_46

    .line 3451
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 3452
    if-nez v5, :cond_2e

    goto :goto_43

    .line 3453
    :cond_2e
    iget-object v5, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 3454
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v6, v5, p1}, Lcom/android/server/notification/NotificationManagerService;->access$4500(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v6

    if-nez v6, :cond_39

    goto :goto_43

    .line 3456
    :cond_39
    if-nez p2, :cond_3c

    goto :goto_40

    :cond_3c
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->cloneLight()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    .line 3457
    :goto_40
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3450
    :goto_43
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 3459
    :cond_46
    new-instance p1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p1, v3}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v0

    return-object p1

    .line 3460
    :catchall_4d
    move-exception p1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_5 .. :try_end_4f} :catchall_4d

    throw p1
.end method

.method public getZenMode()I
    .registers 2

    .line 3543
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v0

    return v0
.end method

.method public getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    .registers 2

    .line 3548
    const-string v0, "INotificationManager.getZenModeConfig"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$11;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 3549
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

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

    .line 3565
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "getAutomaticZenRules"

    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService$11;->enforcePolicyAccess(ILjava/lang/String;)V

    .line 3566
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getZenRules()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasUserApprovedBubblesForPackage(Ljava/lang/String;I)Z
    .registers 4

    .line 2626
    const-string v0, "Caller not system or systemui"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$11;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 2627
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getAppLockedFields(Ljava/lang/String;I)I

    move-result p1

    .line 2628
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_15

    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    return p1
.end method

.method public isNotificationAssistantAccessGranted(Landroid/content/ComponentName;)Z
    .registers 4

    .line 4003
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4004
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->access$3500(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 4005
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    .line 4006
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService$11;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 4005
    invoke-virtual {v0, p1, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->isPackageOrComponentAllowed(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public isNotificationListenerAccessGranted(Landroid/content/ComponentName;)Z
    .registers 4

    .line 3986
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3987
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->access$3500(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 3988
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    .line 3989
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService$11;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 3988
    invoke-virtual {v0, p1, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->isPackageOrComponentAllowed(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public isNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;I)Z
    .registers 4

    .line 3995
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3996
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$3600(Lcom/android/server/notification/NotificationManagerService;)V

    .line 3997
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->isPackageOrComponentAllowed(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public isNotificationPolicyAccessGranted(Ljava/lang/String;)Z
    .registers 2

    .line 3849
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$11;->checkPolicyAccess(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z
    .registers 3

    .line 3854
    const-string/jumbo v0, "request policy access status for another package"

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService$11;->enforceSystemOrSystemUIOrSamePackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 3856
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$11;->checkPolicyAccess(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isPackagePaused(Ljava/lang/String;)Z
    .registers 4

    .line 4214
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4215
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$3700(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 4217
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/notification/NotificationManagerService;->isPackagePausedOrSuspended(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public isSystemConditionProviderEnabled(Ljava/lang/String;)Z
    .registers 3

    .line 3810
    const-string v0, "INotificationManager.isSystemConditionProviderEnabled"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$11;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 3811
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1500(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ConditionProviders;->isSystemProviderEnabled(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public matchesCallFilter(Landroid/os/Bundle;)Z
    .registers 9

    .line 3799
    const-string v0, "INotificationManager.matchesCallFilter"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$11;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 3800
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 3801
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 3803
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$5900(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;

    move-result-object v0

    const-class v3, Lcom/android/server/notification/ValidateNotificationPeople;

    invoke-virtual {v0, v3}, Lcom/android/server/notification/RankingHelper;->findExtractor(Ljava/lang/Class;)Lcom/android/server/notification/NotificationSignalExtractor;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/notification/ValidateNotificationPeople;

    .line 3800
    const/16 v5, 0xbb8

    const/high16 v6, 0x3f800000  # 1.0f

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/notification/ZenModeHelper;->matchesCallFilter(Landroid/os/UserHandle;Landroid/os/Bundle;Lcom/android/server/notification/ValidateNotificationPeople;IF)Z

    move-result p1

    return p1
.end method

.method public notifyConditions(Ljava/lang/String;Landroid/service/notification/IConditionProvider;[Landroid/service/notification/Condition;)V
    .registers 6

    .line 3665
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1500(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/notification/ConditionProviders;->checkServiceToken(Landroid/service/notification/IConditionProvider;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p2

    .line 3666
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$3500(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 3667
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$2100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v0

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$11$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService$11$1;-><init>(Lcom/android/server/notification/NotificationManagerService$11;Ljava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;[Landroid/service/notification/Condition;)V

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 3673
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4253
    new-instance v0, Lcom/android/server/notification/NotificationShellCmd;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/notification/NotificationShellCmd;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4254
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/notification/NotificationShellCmd;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 4255
    return-void
.end method

.method public onlyHasDefaultChannel(Ljava/lang/String;I)Z
    .registers 4

    .line 2902
    const-string/jumbo v0, "onlyHasDefaultChannel"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$11;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 2903
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public pullStats(JIZLjava/util/List;)J
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIZ",
            "Ljava/util/List<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)J"
        }
    .end annotation

    .line 4270
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$6000(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4271
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    .line 4273
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4275
    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const-string v5, "NotificationService"

    if-eq p3, v2, :cond_19

    goto :goto_87

    .line 4277
    :cond_19
    :try_start_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pullStats REPORT_REMOTE_VIEWS from: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "  wtih "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4279
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$6500(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p4}, Lcom/android/server/notification/NotificationUsageStats;->remoteViewStats(JZ)Lcom/android/server/notification/PulledStats;

    move-result-object p1

    .line 4280
    if-eqz p1, :cond_72

    .line 4281
    invoke-virtual {p1, p3}, Lcom/android/server/notification/PulledStats;->toParcelFileDescriptor(I)Landroid/os/ParcelFileDescriptor;

    move-result-object p2

    invoke-interface {p5, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4282
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "exiting pullStats with: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4283
    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4284
    invoke-virtual {p1}, Lcom/android/server/notification/PulledStats;->endTimeMs()J

    move-result-wide p3

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, p3, p4, p1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_6d} :catch_93
    .catchall {:try_start_19 .. :try_end_6d} :catchall_91

    .line 4285
    nop

    .line 4294
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4285
    return-wide p1

    .line 4287
    :cond_72
    :try_start_72
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "null stats for: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_87} :catch_93
    .catchall {:try_start_72 .. :try_end_87} :catchall_91

    .line 4294
    :goto_87
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4295
    nop

    .line 4296
    const-string p1, "exiting pullStats: bad request"

    invoke-static {v5, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4297
    return-wide v3

    .line 4294
    :catchall_91
    move-exception p1

    goto :goto_9e

    .line 4289
    :catch_93
    move-exception p1

    .line 4291
    :try_start_94
    const-string p2, "exiting pullStats: on error"

    invoke-static {v5, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_99
    .catchall {:try_start_94 .. :try_end_99} :catchall_91

    .line 4292
    nop

    .line 4294
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4292
    return-wide v3

    .line 4294
    :goto_9e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public registerListener(Landroid/service/notification/INotificationListener;Landroid/content/ComponentName;I)V
    .registers 5

    .line 3172
    const-string v0, "INotificationManager.registerListener"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$11;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 3173
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->registerService(Landroid/os/IInterface;Landroid/content/ComponentName;I)V

    .line 3174
    return-void
.end method

.method public removeAutomaticZenRule(Ljava/lang/String;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3616
    const-string v0, "Id is null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3618
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string/jumbo v1, "removeAutomaticZenRule"

    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService$11;->enforcePolicyAccess(ILjava/lang/String;)V

    .line 3620
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/notification/ZenModeHelper;->removeAutomaticZenRule(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public removeAutomaticZenRules(Ljava/lang/String;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3625
    const-string v0, "Package name is null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3626
    const-string/jumbo v0, "removeAutomaticZenRules"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$11;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 3628
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/notification/ZenModeHelper;->removeAutomaticZenRules(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public requestBindListener(Landroid/content/ComponentName;)V
    .registers 6

    .line 3232
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->access$3500(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 3233
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3236
    :try_start_d
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->isComponentEnabledForCurrentProfiles(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 3237
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v2

    goto :goto_26

    .line 3238
    :cond_20
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v2

    .line 3239
    :goto_26
    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/android/server/notification/ManagedServices;->setComponentState(Landroid/content/ComponentName;Z)V
    :try_end_2a
    .catchall {:try_start_d .. :try_end_2a} :catchall_2f

    .line 3241
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3242
    nop

    .line 3243
    return-void

    .line 3241
    :catchall_2f
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public requestBindProvider(Landroid/content/ComponentName;)V
    .registers 6

    .line 3689
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->access$3500(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 3690
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3692
    :try_start_d
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1500(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/android/server/notification/ConditionProviders;->setComponentState(Landroid/content/ComponentName;Z)V
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_1c

    .line 3694
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3695
    nop

    .line 3696
    return-void

    .line 3694
    :catchall_1c
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public requestHintsFromListener(Landroid/service/notification/INotificationListener;I)V
    .registers 7

    .line 3480
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3482
    :try_start_4
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_3a

    .line 3483
    :try_start_9
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$1400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p1

    .line 3487
    and-int/lit8 v3, p2, 0x7

    if-eqz v3, :cond_19

    const/4 v3, 0x1

    goto :goto_1a

    :cond_19
    const/4 v3, 0x0

    .line 3488
    :goto_1a
    if-eqz v3, :cond_22

    .line 3489
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->access$4900(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    goto :goto_27

    .line 3491
    :cond_22
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->access$5000(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z

    .line 3493
    :goto_27
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->access$4700(Lcom/android/server/notification/NotificationManagerService;)V

    .line 3494
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->access$4800(Lcom/android/server/notification/NotificationManagerService;)V

    .line 3495
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_9 .. :try_end_32} :catchall_37

    .line 3497
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3498
    nop

    .line 3499
    return-void

    .line 3495
    :catchall_37
    move-exception p1

    :try_start_38
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    :try_start_39
    throw p1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_3a

    .line 3497
    :catchall_3a
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public requestInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3511
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3513
    :try_start_4
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_2a

    .line 3514
    :try_start_9
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$1400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p1

    .line 3515
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    iget-object p1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/notification/ZenModeHelper;->requestFromListener(Landroid/content/ComponentName;I)V

    .line 3516
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->access$2900(Lcom/android/server/notification/NotificationManagerService;)V

    .line 3517
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_27

    .line 3519
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3520
    nop

    .line 3521
    return-void

    .line 3517
    :catchall_27
    move-exception p1

    :try_start_28
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    :try_start_29
    throw p1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_2a

    .line 3519
    :catchall_2a
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public requestUnbindListener(Landroid/service/notification/INotificationListener;)V
    .registers 7

    .line 3247
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3250
    :try_start_4
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_26

    .line 3251
    :try_start_9
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$1400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p1

    .line 3252
    invoke-virtual {p1}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->getOwner()Lcom/android/server/notification/ManagedServices;

    move-result-object v3

    iget-object p1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/android/server/notification/ManagedServices;->setComponentState(Landroid/content/ComponentName;Z)V

    .line 3253
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_23

    .line 3255
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3256
    nop

    .line 3257
    return-void

    .line 3253
    :catchall_23
    move-exception p1

    :try_start_24
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    :try_start_25
    throw p1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_26

    .line 3255
    :catchall_26
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public requestUnbindProvider(Landroid/service/notification/IConditionProvider;)V
    .registers 6

    .line 3677
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3680
    :try_start_4
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1500(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/notification/ConditionProviders;->checkServiceToken(Landroid/service/notification/IConditionProvider;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p1

    .line 3681
    invoke-virtual {p1}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->getOwner()Lcom/android/server/notification/ManagedServices;

    move-result-object v2

    iget-object p1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/android/server/notification/ManagedServices;->setComponentState(Landroid/content/ComponentName;Z)V
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_1d

    .line 3683
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3684
    nop

    .line 3685
    return-void

    .line 3683
    :catchall_1d
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setAutomaticZenRuleState(Ljava/lang/String;Landroid/service/notification/Condition;)V
    .registers 5

    .line 3641
    const-string v0, "id is null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3642
    const-string v0, "Condition is null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3644
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string/jumbo v1, "setAutomaticZenRuleState"

    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService$11;->enforcePolicyAccess(ILjava/lang/String;)V

    .line 3646
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/ZenModeHelper;->setAutomaticZenRuleState(Ljava/lang/String;Landroid/service/notification/Condition;)V

    .line 3647
    return-void
.end method

.method public setBubblesAllowed(Ljava/lang/String;IZ)V
    .registers 5

    .line 2619
    const-string v0, "Caller not system or systemui"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$11;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 2620
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->setBubblesAllowed(Ljava/lang/String;IZ)V

    .line 2621
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 2622
    return-void
.end method

.method public setHideSilentStatusIcons(Z)V
    .registers 3

    .line 2645
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$3600(Lcom/android/server/notification/NotificationManagerService;)V

    .line 2647
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/notification/PreferencesHelper;->setHideSilentStatusIcons(Z)V

    .line 2648
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 2650
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onStatusBarIconsBehaviorChanged(Z)V

    .line 2651
    return-void
.end method

.method public setInterruptionFilter(Ljava/lang/String;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3651
    const-string/jumbo v0, "setInterruptionFilter"

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService$11;->enforcePolicyAccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 3652
    const/4 v1, -0x1

    invoke-static {p2, v1}, Landroid/app/NotificationManager;->zenModeFromInterruptionFilter(II)I

    move-result v2

    .line 3653
    if-eq v2, v1, :cond_23

    .line 3654
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 3656
    :try_start_11
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p2, p2, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const/4 v1, 0x0

    invoke-virtual {p2, v2, v1, p1, v0}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1e

    .line 3658
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3659
    nop

    .line 3660
    return-void

    .line 3658
    :catchall_1e
    move-exception p1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 3653
    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid filter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setNotificationAssistantAccessGranted(Landroid/content/ComponentName;Z)V
    .registers 4

    .line 4019
    nop

    .line 4020
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService$11;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 4019
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/notification/NotificationManagerService$11;->setNotificationAssistantAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    .line 4021
    return-void
.end method

.method public setNotificationAssistantAccessGrantedForUser(Landroid/content/ComponentName;IZ)V
    .registers 8

    .line 4053
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$4200(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4054
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$6200(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/UserManager;

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

    .line 4055
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v2

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->setUserSet(IZ)V

    .line 4056
    goto :goto_13

    .line 4057
    :cond_2c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4059
    :try_start_30
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->setNotificationAssistantAccessGrantedForUserInternal(Landroid/content/ComponentName;IZ)V
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_3a

    .line 4061
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4062
    nop

    .line 4063
    return-void

    .line 4061
    :catchall_3a
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setNotificationDelegate(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 2674
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$3700(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 2675
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2676
    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 2677
    if-nez p2, :cond_22

    .line 2678
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p2}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/android/server/notification/PreferencesHelper;->revokeNotificationDelegate(Ljava/lang/String;I)V

    .line 2679
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    goto :goto_49

    .line 2682
    :cond_22
    :try_start_22
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 2683
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1800(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/high16 v3, 0xc0000

    .line 2685
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 2683
    invoke-interface {v2, p2, v3, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2686
    if-eqz v1, :cond_44

    .line 2687
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v2

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, p1, v0, p2, v1}, Lcom/android/server/notification/PreferencesHelper;->setNotificationDelegate(Ljava/lang/String;ILjava/lang/String;I)V

    .line 2689
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_44} :catch_45

    .line 2693
    :cond_44
    goto :goto_49

    .line 2691
    :catch_45
    move-exception p1

    .line 2692
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2695
    :goto_49
    return-void
.end method

.method public setNotificationListenerAccessGranted(Landroid/content/ComponentName;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4012
    nop

    .line 4013
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService$11;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 4012
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/notification/NotificationManagerService$11;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    .line 4014
    return-void
.end method

.method public setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZ)V
    .registers 10

    .line 4026
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4027
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$6000(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4028
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4030
    :try_start_c
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$6100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/internal/util/function/TriPredicate;

    move-result-object v2

    .line 4031
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->access$1400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getRequiredPermission()Ljava/lang/String;

    move-result-object v5

    .line 4030
    invoke-interface {v2, v3, v4, v5}, Lcom/android/internal/util/function/TriPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 4032
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1500(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p2, v4, p3}, Lcom/android/server/notification/ConditionProviders;->setPackageOrComponentEnabled(Ljava/lang/String;IZZ)V

    .line 4034
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, p2, v4, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->setPackageOrComponentEnabled(Ljava/lang/String;IZZ)V

    .line 4037
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p3}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object p3

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.app.action.NOTIFICATION_POLICY_ACCESS_GRANTED_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4039
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v2, 0x40000000  # 2.0f

    .line 4040
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 4041
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    const/4 v2, 0x0

    .line 4037
    invoke-virtual {p3, p1, p2, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 4043
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V
    :try_end_6e
    .catchall {:try_start_c .. :try_end_6e} :catchall_73

    .line 4046
    :cond_6e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4047
    nop

    .line 4048
    return-void

    .line 4046
    :catchall_73
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setNotificationPolicy(Ljava/lang/String;Landroid/app/NotificationManager$Policy;)V
    .registers 11

    .line 3918
    const-string/jumbo v0, "setNotificationPolicy"

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService$11;->enforcePolicyAccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 3919
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3921
    :try_start_a
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1800(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v3, 0x0

    .line 3922
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$1900()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 3921
    invoke-interface {v2, p1, v3, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 3923
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v3}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v3

    .line 3925
    iget v4, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0x1c

    if-ge v4, v5, :cond_4e

    .line 3926
    iget v4, p2, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    .line 3928
    and-int/lit8 v4, v4, -0x21

    .line 3929
    and-int/lit8 v4, v4, -0x41

    .line 3930
    and-int/lit16 v4, v4, -0x81

    .line 3932
    iget v5, v3, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v5, v5, 0x20

    or-int/2addr v4, v5

    .line 3934
    iget v5, v3, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v5, v5, 0x40

    or-int/2addr v4, v5

    .line 3936
    iget v5, v3, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit16 v5, v5, 0x80

    or-int/2addr v4, v5

    .line 3939
    new-instance v5, Landroid/app/NotificationManager$Policy;

    iget v6, p2, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v7, p2, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget p2, p2, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-direct {v5, v4, v6, v7, p2}, Landroid/app/NotificationManager$Policy;-><init>(IIII)V

    move-object p2, v5

    .line 3943
    :cond_4e
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget v5, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v4, p2, v3, v5}, Lcom/android/server/notification/NotificationManagerService;->calculateSuppressedVisualEffects(Landroid/app/NotificationManager$Policy;Landroid/app/NotificationManager$Policy;I)I

    move-result v3

    .line 3945
    new-instance v4, Landroid/app/NotificationManager$Policy;

    iget v5, p2, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    iget v6, p2, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget p2, p2, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    invoke-direct {v4, v5, v6, p2, v3}, Landroid/app/NotificationManager$Policy;-><init>(IIII)V

    .line 3948
    iget p2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {p1, p2, v4}, Lcom/android/server/notification/ZenLog;->traceSetNotificationPolicy(Ljava/lang/String;ILandroid/app/NotificationManager$Policy;)V

    .line 3949
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p1, v4}, Lcom/android/server/notification/ZenModeHelper;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_6d} :catch_73
    .catchall {:try_start_a .. :try_end_6d} :catchall_6e

    goto :goto_74

    .line 3952
    :catchall_6e
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 3950
    :catch_73
    move-exception p1

    .line 3952
    :goto_74
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3953
    nop

    .line 3954
    return-void
.end method

.method public setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3862
    nop

    .line 3863
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService$11;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 3862
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/notification/NotificationManagerService$11;->setNotificationPolicyAccessGrantedForUser(Ljava/lang/String;IZ)V

    .line 3864
    return-void
.end method

.method public setNotificationPolicyAccessGrantedForUser(Ljava/lang/String;IZ)V
    .registers 9

    .line 3869
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$6000(Lcom/android/server/notification/NotificationManagerService;)V

    .line 3870
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3872
    :try_start_9
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$6100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/internal/util/function/TriPredicate;

    move-result-object v2

    .line 3873
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->access$1500(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/notification/ConditionProviders;->getRequiredPermission()Ljava/lang/String;

    move-result-object v4

    .line 3872
    invoke-interface {v2, p1, v3, v4}, Lcom/android/internal/util/function/TriPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 3874
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1500(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, p2, v3, p3}, Lcom/android/server/notification/ConditionProviders;->setPackageOrComponentEnabled(Ljava/lang/String;IZZ)V

    .line 3877
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p3}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object p3

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.app.action.NOTIFICATION_POLICY_ACCESS_GRANTED_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3879
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v2, 0x4000000

    .line 3880
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 3881
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    const/4 v2, 0x0

    .line 3877
    invoke-virtual {p3, p1, p2, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 3882
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V
    :try_end_51
    .catchall {:try_start_9 .. :try_end_51} :catchall_56

    .line 3885
    :cond_51
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3886
    nop

    .line 3887
    return-void

    .line 3885
    :catchall_56
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setNotificationSoundTimeout(Ljava/lang/String;IJ)V
    .registers 6

    .line 2543
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$3600(Lcom/android/server/notification/NotificationManagerService;)V

    .line 2544
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/notification/PreferencesHelper;->setNotificationSoundTimeout(Ljava/lang/String;IJ)V

    .line 2545
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 2546
    return-void
.end method

.method public setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    .registers 21

    .line 2505
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v13, p2

    move/from16 v14, p3

    const-string/jumbo v2, "setNotificationsEnabledForPackage"

    invoke-direct {v1, v2}, Lcom/android/server/notification/NotificationManagerService$11;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 2507
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2508
    :try_start_13
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v3

    invoke-virtual {v3, v0, v13}, Lcom/android/server/notification/PreferencesHelper;->getImportance(Ljava/lang/String;I)I

    move-result v3

    const/4 v15, 0x1

    const/16 v16, 0x0

    if-eqz v3, :cond_24

    move v3, v15

    goto :goto_26

    :cond_24
    move/from16 v3, v16

    .line 2511
    :goto_26
    if-ne v3, v14, :cond_2a

    .line 2512
    monitor-exit v2

    return-void

    .line 2514
    :cond_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_13 .. :try_end_2b} :catchall_a9

    .line 2516
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v2

    invoke-virtual {v2, v0, v13, v14}, Lcom/android/server/notification/PreferencesHelper;->setEnabled(Ljava/lang/String;IZ)V

    .line 2517
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$1000(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/internal/logging/MetricsLogger;

    move-result-object v2

    new-instance v3, Landroid/metrics/LogMaker;

    const/16 v4, 0x93

    invoke-direct {v3, v4}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v4, 0x4

    .line 2518
    invoke-virtual {v3, v4}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 2519
    invoke-virtual {v3, v0}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 2520
    invoke-virtual {v3, v14}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 2517
    invoke-virtual {v2, v3}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 2522
    if-nez v14, :cond_6c

    .line 2523
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$1900()I

    move-result v3

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$2000()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 2524
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    const/4 v11, 0x7

    const/4 v12, 0x0

    .line 2523
    move-object/from16 v5, p1

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 2528
    :cond_6c
    :try_start_6c
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.app.action.APP_BLOCK_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.app.extra.BLOCKED_STATE"

    if-nez v14, :cond_7e

    goto :goto_80

    :cond_7e
    move/from16 v15, v16

    .line 2530
    :goto_80
    invoke-virtual {v3, v4, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x10000000

    .line 2531
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    .line 2532
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2533
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x0

    .line 2528
    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_9a
    .catch Ljava/lang/SecurityException; {:try_start_6c .. :try_end_9a} :catch_9b

    .line 2536
    goto :goto_a3

    .line 2534
    :catch_9b
    move-exception v0

    .line 2535
    const-string v2, "NotificationService"

    const-string v3, "Can\'t notify app about app block change"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2538
    :goto_a3
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 2539
    return-void

    .line 2514
    :catchall_a9
    move-exception v0

    :try_start_aa
    monitor-exit v2
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_a9

    throw v0
.end method

.method public setNotificationsEnabledWithImportanceLockForPackage(Ljava/lang/String;IZ)V
    .registers 4

    .line 2569
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService$11;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V

    .line 2571
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p3}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->setAppImportanceLocked(Ljava/lang/String;I)V

    .line 2572
    return-void
.end method

.method public setNotificationsShownFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V
    .registers 13

    .line 3261
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3263
    :try_start_4
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b2

    .line 3264
    :try_start_9
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$1400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p1

    .line 3265
    if-nez p2, :cond_1a

    .line 3266
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_af

    .line 3292
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3266
    return-void

    .line 3268
    :cond_1a
    :try_start_1a
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3269
    array-length v4, p2

    .line 3270
    const/4 v5, 0x0

    :goto_21
    if-ge v5, v4, :cond_9a

    .line 3271
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    aget-object v7, p2, v5

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    .line 3272
    if-nez v6, :cond_32

    goto :goto_97

    .line 3273
    :cond_32
    iget-object v7, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    .line 3274
    iget v8, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    if-eq v7, v8, :cond_65

    const/4 v8, -0x1

    if-eq v7, v8, :cond_65

    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 3275
    invoke-static {v8}, Lcom/android/server/notification/NotificationManagerService;->access$2500(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    move-result v7

    if-eqz v7, :cond_4c

    goto :goto_65

    .line 3276
    :cond_4c
    new-instance p2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disallowed call from listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 3279
    :cond_65
    :goto_65
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3280
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->isSeen()Z

    move-result v7

    if-nez v7, :cond_97

    .line 3281
    sget-boolean v7, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v7, :cond_8a

    const-string v7, "NotificationService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Marking notification as seen "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, p2, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3282
    :cond_8a
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v7, v6}, Lcom/android/server/notification/NotificationManagerService;->reportSeen(Lcom/android/server/notification/NotificationRecord;)V

    .line 3283
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->setSeen()V

    .line 3284
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v7, v6}, Lcom/android/server/notification/NotificationManagerService;->maybeRecordInterruptionLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 3270
    :cond_97
    :goto_97
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    .line 3287
    :cond_9a
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a9

    .line 3288
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->access$600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->onNotificationsSeenLocked(Ljava/util/ArrayList;)V

    .line 3290
    :cond_a9
    monitor-exit v2
    :try_end_aa
    .catchall {:try_start_1a .. :try_end_aa} :catchall_af

    .line 3292
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3293
    nop

    .line 3294
    return-void

    .line 3290
    :catchall_af
    move-exception p1

    :try_start_b0
    monitor-exit v2
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_af

    :try_start_b1
    throw p1
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b2

    .line 3292
    :catchall_b2
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setOnNotificationPostedTrimFromListener(Landroid/service/notification/INotificationListener;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3534
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3535
    :try_start_5
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p1

    .line 3536
    if-nez p1, :cond_13

    monitor-exit v0

    return-void

    .line 3537
    :cond_13
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->setOnNotificationPostedTrimLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    .line 3538
    monitor-exit v0

    .line 3539
    return-void

    .line 3538
    :catchall_1e
    move-exception p1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_1e

    throw p1
.end method

.method public setPrivateNotificationsAllowed(Z)V
    .registers 4

    .line 4189
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 4190
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_KEYGUARD_SECURE_NOTIFICATIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_21

    .line 4195
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$6400(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v0

    if-eq p1, v0, :cond_20

    .line 4196
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$6402(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 4197
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 4199
    :cond_20
    return-void

    .line 4192
    :cond_21
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Requires CONTROL_KEYGUARD_SECURE_NOTIFICATIONS permission"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setShowBadge(Ljava/lang/String;IZ)V
    .registers 5

    .line 2667
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$3600(Lcom/android/server/notification/NotificationManagerService;)V

    .line 2668
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->setShowBadge(Ljava/lang/String;IZ)V

    .line 2669
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 2670
    return-void
.end method

.method public setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3554
    const-string v0, "INotificationManager.setZenMode"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$11;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 3555
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3557
    :try_start_9
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, p2, v3, p3}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_16

    .line 3559
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3560
    nop

    .line 3561
    return-void

    .line 3559
    :catchall_16
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public shouldHideSilentStatusIcons(Ljava/lang/String;)Z
    .registers 3

    .line 2633
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$3700(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 2635
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 2636
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->isListenerPackage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1a

    goto :goto_22

    .line 2639
    :cond_1a
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Only available for notification listeners"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2637
    :cond_22
    :goto_22
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/notification/PreferencesHelper;->shouldHideSilentStatusIcons()Z

    move-result p1

    return p1
.end method

.method public silenceNotificationSound()V
    .registers 2

    .line 2498
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$3600(Lcom/android/server/notification/NotificationManagerService;)V

    .line 2500
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v0}, Lcom/android/server/notification/NotificationDelegate;->clearEffects()V

    .line 2501
    return-void
.end method

.method public snoozeNotificationUntilContextFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    .line 3320
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3322
    :try_start_4
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_25

    .line 3323
    :try_start_9
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$1400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v9

    .line 3324
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-wide/16 v6, -0x1

    move-object v5, p2

    move-object v8, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/notification/NotificationManagerService;->snoozeNotificationInt(Ljava/lang/String;JLjava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 3325
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_22

    .line 3327
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3328
    nop

    .line 3329
    return-void

    .line 3325
    :catchall_22
    move-exception p1

    :try_start_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    :try_start_24
    throw p1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_25

    .line 3327
    :catchall_25
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public snoozeNotificationUntilFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;J)V
    .registers 15

    .line 3339
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3341
    :try_start_4
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_24

    .line 3342
    :try_start_9
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$1400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v9

    .line 3343
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v8, 0x0

    move-object v5, p2

    move-wide v6, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/notification/NotificationManagerService;->snoozeNotificationInt(Ljava/lang/String;JLjava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 3344
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_21

    .line 3346
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3347
    nop

    .line 3348
    return-void

    .line 3344
    :catchall_21
    move-exception p1

    :try_start_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    :try_start_23
    throw p1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_24

    .line 3346
    :catchall_24
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public unregisterListener(Landroid/service/notification/INotificationListener;I)V
    .registers 4

    .line 3181
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->unregisterService(Landroid/os/IInterface;I)V

    .line 3182
    return-void
.end method

.method public unsnoozeNotificationFromAssistant(Landroid/service/notification/INotificationListener;Ljava/lang/String;)V
    .registers 7

    .line 3357
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3359
    :try_start_4
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_21

    .line 3360
    :try_start_9
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 3361
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p1

    .line 3362
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3, p2, p1}, Lcom/android/server/notification/NotificationManagerService;->unsnoozeNotificationInt(Ljava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 3363
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_1e

    .line 3365
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3366
    nop

    .line 3367
    return-void

    .line 3363
    :catchall_1e
    move-exception p1

    :try_start_1f
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    :try_start_20
    throw p1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_21

    .line 3365
    :catchall_21
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3600
    const-string v0, "automaticZenRule is null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3601
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Name is null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3602
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_23

    .line 3603
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getConfigurationActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1b

    goto :goto_23

    .line 3604
    :cond_1b
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Rule must have a conditionproviderservice and/or configuration activity"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3607
    :cond_23
    :goto_23
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "ConditionId is null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3608
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string/jumbo v1, "updateAutomaticZenRule"

    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService$11;->enforcePolicyAccess(ILjava/lang/String;)V

    .line 3610
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/notification/ZenModeHelper;->updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V
    .registers 6

    .line 2880
    const-string v0, "Caller not system or systemui"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$11;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 2881
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2882
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, p3, v1}, Lcom/android/server/notification/NotificationManagerService;->access$4000(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;ILandroid/app/NotificationChannel;Z)V

    .line 2883
    return-void
.end method

.method public updateNotificationChannelFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4154
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4155
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4156
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4158
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/notification/NotificationManagerService$11;->verifyPrivilegedListener(Landroid/service/notification/INotificationListener;Landroid/os/UserHandle;Z)V

    .line 4159
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0, p2, p3}, Lcom/android/server/notification/NotificationManagerService$11;->getUidForPackageAndUser(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result p3

    const/4 v0, 0x1

    invoke-static {p1, p2, p3, p4, v0}, Lcom/android/server/notification/NotificationManagerService;->access$4000(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;ILandroid/app/NotificationChannel;Z)V

    .line 4160
    return-void
.end method

.method public updateNotificationChannelGroupForPackage(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2735
    const-string v0, "Caller not system or systemui"

    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService$11;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 2736
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v6}, Lcom/android/server/notification/NotificationManagerService;->access$3800(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;ILandroid/app/NotificationChannelGroup;ZZ)V

    .line 2737
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 2738
    return-void
.end method

.method public updateNotificationChannelGroupFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4144
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4145
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/notification/NotificationManagerService$11;->verifyPrivilegedListener(Landroid/service/notification/INotificationListener;Landroid/os/UserHandle;Z)V

    .line 4146
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 4147
    invoke-direct {p0, p2, p3}, Lcom/android/server/notification/NotificationManagerService$11;->getUidForPackageAndUser(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v3

    .line 4146
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, p2

    move-object v4, p4

    invoke-static/range {v1 .. v6}, Lcom/android/server/notification/NotificationManagerService;->access$3800(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;ILandroid/app/NotificationChannelGroup;ZZ)V

    .line 4148
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$11;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 4149
    return-void
.end method
