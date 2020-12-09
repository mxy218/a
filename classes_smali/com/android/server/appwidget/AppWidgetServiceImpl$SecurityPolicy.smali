.class final Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SecurityPolicy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V
    .registers 2

    .line 3647
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V
    .registers 3

    .line 3647
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V

    return-void
.end method

.method private isCallerBindAppWidgetWhiteListedLocked(Ljava/lang/String;)Z
    .registers 6

    .line 3739
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 3740
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v1, p1, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2300(Lcom/android/server/appwidget/AppWidgetServiceImpl;Ljava/lang/String;I)I

    move-result v1

    .line 3741
    if-ltz v1, :cond_35

    .line 3745
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$200(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3746
    :try_start_13
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v2, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2400(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    .line 3748
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    .line 3749
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2500(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 3750
    const/4 p1, 0x1

    monitor-exit v1

    return p1

    .line 3752
    :cond_2f
    monitor-exit v1

    .line 3754
    const/4 p1, 0x0

    return p1

    .line 3752
    :catchall_32
    move-exception p1

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_13 .. :try_end_34} :catchall_32

    throw p1

    .line 3742
    :cond_35
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for user "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private isParentOrProfile(II)Z
    .registers 4

    .line 3783
    const/4 v0, 0x1

    if-ne p1, p2, :cond_4

    .line 3784
    return v0

    .line 3786
    :cond_4
    invoke-virtual {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getProfileParent(I)I

    move-result p2

    if-ne p2, p1, :cond_b

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private isProfileEnabled(I)Z
    .registers 5

    .line 3851
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3853
    :try_start_4
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2000(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 3854
    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result p1
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_22

    if-nez p1, :cond_17

    goto :goto_1d

    .line 3858
    :cond_17
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3859
    nop

    .line 3860
    const/4 p1, 0x1

    return p1

    .line 3855
    :cond_1d
    :goto_1d
    const/4 p1, 0x0

    .line 3858
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3855
    return p1

    .line 3858
    :catchall_22
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method


# virtual methods
.method public canAccessAppWidget(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;ILjava/lang/String;)Z
    .registers 7

    .line 3758
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isHostInPackageForUid(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 3760
    return v1

    .line 3762
    :cond_a
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isProviderInPackageForUid(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3764
    return v1

    .line 3766
    :cond_13
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {p0, v0, v2, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isHostAccessingProvider(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;ILjava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1e

    .line 3768
    return v1

    .line 3770
    :cond_1e
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 3771
    iget-object p3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-virtual {p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result p3

    if-eq p3, p2, :cond_36

    iget-object p3, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz p3, :cond_45

    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 3772
    invoke-virtual {p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result p1

    if-ne p1, p2, :cond_45

    :cond_36
    iget-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 3773
    invoke-static {p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$1400(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "android.permission.BIND_APPWIDGET"

    invoke-virtual {p1, p2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_45

    .line 3777
    return v1

    .line 3779
    :cond_45
    const/4 p1, 0x0

    return p1
.end method

.method public enforceCallFromPackage(Ljava/lang/String;)V
    .registers 4

    .line 3723
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2200(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/app/AppOpsManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 3724
    return-void
.end method

.method public enforceModifyAppWidgetBindPermissions(Ljava/lang/String;)V
    .registers 5

    .line 3688
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$1400(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasBindAppWidgetPermission packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.permission.MODIFY_APPWIDGET_BIND_PERMISSIONS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3691
    return-void
.end method

.method public enforceServiceExistsAndRequiresBindRemoteViewsPermission(Landroid/content/ComponentName;I)V
    .registers 9

    .line 3667
    const-string v0, "android.permission.BIND_REMOTEVIEWS"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3669
    :try_start_6
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/16 v4, 0x1000

    invoke-interface {v3, p1, v4, p2}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v3
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_12} :catch_66
    .catchall {:try_start_6 .. :try_end_12} :catchall_61

    .line 3671
    const-string v4, "Service "

    if-eqz v3, :cond_44

    .line 3675
    :try_start_16
    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 3683
    goto :goto_67

    .line 3676
    :cond_1f
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " in user "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "does not require "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3672
    :cond_44
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not installed for user "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_61} :catch_66
    .catchall {:try_start_16 .. :try_end_61} :catchall_61

    .line 3683
    :catchall_61
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 3680
    :catch_66
    move-exception p1

    .line 3683
    :goto_67
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3684
    nop

    .line 3685
    return-void
.end method

.method public getEnabledGroupProfileIds(I)[I
    .registers 5

    .line 3655
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getGroupParent(I)I

    move-result p1

    .line 3657
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3659
    :try_start_8
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2000(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object p1
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_16

    .line 3661
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3659
    return-object p1

    .line 3661
    :catchall_16
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public getGroupParent(I)I
    .registers 4

    .line 3828
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2700(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getProfileParent(I)I

    move-result v0

    .line 3829
    const/16 v1, -0xa

    if-eq v0, v1, :cond_f

    move p1, v0

    :cond_f
    return p1
.end method

.method public getProfileParent(I)I
    .registers 5

    .line 3815
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3817
    :try_start_4
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2000(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 3818
    if-eqz p1, :cond_1c

    .line 3819
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_23

    .line 3822
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3819
    return p1

    .line 3822
    :cond_1c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3823
    nop

    .line 3824
    const/16 p1, -0xa

    return p1

    .line 3822
    :catchall_23
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public hasCallerBindPermissionOrBindWhiteListedLocked(Ljava/lang/String;)Z
    .registers 5

    .line 3728
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$1400(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.BIND_APPWIDGET"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_c} :catch_d

    .line 3734
    goto :goto_16

    .line 3730
    :catch_d
    move-exception v0

    .line 3731
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isCallerBindAppWidgetWhiteListedLocked(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_16

    .line 3732
    const/4 p1, 0x0

    return p1

    .line 3735
    :cond_16
    :goto_16
    const/4 p1, 0x1

    return p1
.end method

.method public isCallerInstantAppLocked()Z
    .registers 7

    .line 3694
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3695
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3697
    const/4 v3, 0x0

    :try_start_9
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 3698
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_33

    .line 3699
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/content/pm/IPackageManager;

    move-result-object v4

    aget-object v0, v0, v3

    .line 3700
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 3699
    invoke-interface {v4, v0, v5}, Landroid/content/pm/IPackageManager;->isInstantApp(Ljava/lang/String;I)Z

    move-result v0
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_29} :catch_32
    .catchall {:try_start_9 .. :try_end_29} :catchall_2d

    .line 3705
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3699
    return v0

    .line 3705
    :catchall_2d
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 3702
    :catch_32
    move-exception v0

    .line 3705
    :cond_33
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3706
    nop

    .line 3707
    return v3
.end method

.method public isEnabledGroupProfile(I)Z
    .registers 3

    .line 3650
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 3651
    invoke-direct {p0, v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isParentOrProfile(II)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isProfileEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public isHostAccessingProvider(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;ILjava/lang/String;)Z
    .registers 5

    .line 3846
    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    if-ne p1, p3, :cond_18

    if-eqz p2, :cond_18

    iget-object p1, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 3847
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    .line 3846
    :goto_19
    return p1
.end method

.method public isHostInPackageForUid(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;ILjava/lang/String;)Z
    .registers 5

    .line 3833
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    if-ne v0, p2, :cond_12

    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public isInstantAppLocked(Ljava/lang/String;I)Z
    .registers 6

    .line 3711
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3713
    :try_start_4
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->isInstantApp(Ljava/lang/String;I)Z

    move-result p1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_17
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 3717
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3713
    return p1

    .line 3717
    :catchall_12
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 3714
    :catch_17
    move-exception p1

    .line 3717
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3718
    nop

    .line 3719
    const/4 p1, 0x0

    return p1
.end method

.method public isProviderInCallerOrInProfileAndWhitelListed(Ljava/lang/String;I)Z
    .registers 5

    .line 3791
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 3792
    if-ne p2, v0, :cond_8

    .line 3793
    const/4 p1, 0x1

    return p1

    .line 3795
    :cond_8
    invoke-virtual {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getProfileParent(I)I

    move-result v1

    .line 3796
    if-eq v1, v0, :cond_10

    .line 3797
    const/4 p1, 0x0

    return p1

    .line 3799
    :cond_10
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isProviderWhiteListed(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public isProviderInPackageForUid(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;ILjava/lang/String;)Z
    .registers 5

    .line 3839
    if-eqz p1, :cond_18

    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    if-ne v0, p2, :cond_18

    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object p1, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 3840
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    .line 3839
    :goto_19
    return p1
.end method

.method public isProviderWhiteListed(Ljava/lang/String;I)Z
    .registers 4

    .line 3804
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2600(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object v0

    if-nez v0, :cond_a

    .line 3805
    const/4 p1, 0x0

    return p1

    .line 3808
    :cond_a
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2600(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object v0

    .line 3809
    invoke-virtual {v0, p2}, Landroid/app/admin/DevicePolicyManagerInternal;->getCrossProfileWidgetProviders(I)Ljava/util/List;

    move-result-object p2

    .line 3811
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
