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

    .line 3671
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p2, "x1"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$1;

    .line 3671
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;-><init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;)V

    return-void
.end method

.method private isCallerBindAppWidgetWhiteListedLocked(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"  # Ljava/lang/String;

    .line 3763
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 3764
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v1, p1, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2300(Lcom/android/server/appwidget/AppWidgetServiceImpl;Ljava/lang/String;I)I

    move-result v1

    .line 3765
    .local v1, "packageUid":I
    if-ltz v1, :cond_35

    .line 3769
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$200(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 3770
    :try_start_13
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v3, v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2400(Lcom/android/server/appwidget/AppWidgetServiceImpl;I)V

    .line 3772
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    .line 3773
    .local v3, "packageId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2500(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/util/ArraySet;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 3774
    const/4 v4, 0x1

    monitor-exit v2

    return v4

    .line 3776
    .end local v3  # "packageId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_2f
    monitor-exit v2

    .line 3778
    const/4 v2, 0x0

    return v2

    .line 3776
    :catchall_32
    move-exception v3

    monitor-exit v2
    :try_end_34
    .catchall {:try_start_13 .. :try_end_34} :catchall_32

    throw v3

    .line 3766
    :cond_35
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private isParentOrProfile(II)Z
    .registers 5
    .param p1, "parentId"  # I
    .param p2, "profileId"  # I

    .line 3807
    const/4 v0, 0x1

    if-ne p1, p2, :cond_4

    .line 3808
    return v0

    .line 3810
    :cond_4
    invoke-virtual {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getProfileParent(I)I

    move-result v1

    if-ne v1, p1, :cond_b

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private isProfileEnabled(I)Z
    .registers 6
    .param p1, "profileId"  # I

    .line 3875
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3877
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2000(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 3878
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v3
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_22

    if-nez v3, :cond_17

    goto :goto_1d

    .line 3882
    .end local v2  # "userInfo":Landroid/content/pm/UserInfo;
    :cond_17
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3883
    nop

    .line 3884
    const/4 v2, 0x1

    return v2

    .line 3879
    .restart local v2  # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1d
    :goto_1d
    const/4 v3, 0x0

    .line 3882
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3879
    return v3

    .line 3882
    .end local v2  # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_22
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method


# virtual methods
.method public canAccessAppWidget(Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;ILjava/lang/String;)Z
    .registers 8
    .param p1, "widget"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .param p2, "uid"  # I
    .param p3, "packageName"  # Ljava/lang/String;

    .line 3782
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isHostInPackageForUid(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 3784
    return v1

    .line 3786
    :cond_a
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isProviderInPackageForUid(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3788
    return v1

    .line 3790
    :cond_13
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    invoke-virtual {p0, v0, v2, p2, p3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isHostAccessingProvider(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3792
    return v1

    .line 3794
    :cond_1e
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3795
    .local v0, "userId":I
    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-virtual {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v2

    if-eq v2, v0, :cond_36

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    if-eqz v2, :cond_45

    iget-object v2, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->provider:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 3796
    invoke-virtual {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v2

    if-ne v2, v0, :cond_45

    :cond_36
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 3797
    invoke-static {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$1400(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.BIND_APPWIDGET"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_45

    .line 3801
    return v1

    .line 3803
    :cond_45
    const/4 v1, 0x0

    return v1
.end method

.method public enforceCallFromPackage(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;

    .line 3747
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2200(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/app/AppOpsManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 3748
    return-void
.end method

.method public enforceModifyAppWidgetBindPermissions(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;

    .line 3712
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$1400(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasBindAppWidgetPermission packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.MODIFY_APPWIDGET_BIND_PERMISSIONS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3715
    return-void
.end method

.method public enforceServiceExistsAndRequiresBindRemoteViewsPermission(Landroid/content/ComponentName;I)V
    .registers 10
    .param p1, "componentName"  # Landroid/content/ComponentName;
    .param p2, "userId"  # I

    .line 3691
    const-string v0, "android.permission.BIND_REMOTEVIEWS"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3693
    .local v1, "identity":J
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

    .line 3695
    .local v3, "serviceInfo":Landroid/content/pm/ServiceInfo;
    const-string v4, "Service "

    if-eqz v3, :cond_44

    .line 3699
    :try_start_16
    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .end local v3  # "serviceInfo":Landroid/content/pm/ServiceInfo;
    goto :goto_67

    .line 3700
    .restart local v3  # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_1f
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " in user "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "does not require "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v1  # "identity":J
    .end local p0  # "this":Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;
    .end local p1  # "componentName":Landroid/content/ComponentName;
    .end local p2  # "userId":I
    throw v5

    .line 3696
    .restart local v1  # "identity":J
    .restart local p0  # "this":Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;
    .restart local p1  # "componentName":Landroid/content/ComponentName;
    .restart local p2  # "userId":I
    :cond_44
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " not installed for user "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v1  # "identity":J
    .end local p0  # "this":Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;
    .end local p1  # "componentName":Landroid/content/ComponentName;
    .end local p2  # "userId":I
    throw v0
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_61} :catch_66
    .catchall {:try_start_16 .. :try_end_61} :catchall_61

    .line 3707
    .end local v3  # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .restart local v1  # "identity":J
    .restart local p0  # "this":Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;
    .restart local p1  # "componentName":Landroid/content/ComponentName;
    .restart local p2  # "userId":I
    :catchall_61
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 3704
    :catch_66
    move-exception v0

    .line 3707
    :goto_67
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3708
    nop

    .line 3709
    return-void
.end method

.method public getEnabledGroupProfileIds(I)[I
    .registers 6
    .param p1, "userId"  # I

    .line 3679
    invoke-virtual {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getGroupParent(I)I

    move-result v0

    .line 3681
    .local v0, "parentId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3683
    .local v1, "identity":J
    :try_start_8
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2000(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v3
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_16

    .line 3685
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3683
    return-object v3

    .line 3685
    :catchall_16
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getGroupParent(I)I
    .registers 4
    .param p1, "profileId"  # I

    .line 3852
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2700(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getProfileParent(I)I

    move-result v0

    .line 3853
    .local v0, "parentId":I
    const/16 v1, -0xa

    if-eq v0, v1, :cond_10

    move v1, v0

    goto :goto_11

    :cond_10
    move v1, p1

    :goto_11
    return v1
.end method

.method public getProfileParent(I)I
    .registers 6
    .param p1, "profileId"  # I

    .line 3839
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3841
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2000(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 3842
    .local v2, "parent":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_1c

    .line 3843
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_23

    .line 3846
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3843
    return v3

    .line 3846
    .end local v2  # "parent":Landroid/content/pm/UserInfo;
    :cond_1c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3847
    nop

    .line 3848
    const/16 v2, -0xa

    return v2

    .line 3846
    :catchall_23
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public hasCallerBindPermissionOrBindWhiteListedLocked(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;

    .line 3752
    :try_start_0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$1400(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.BIND_APPWIDGET"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_c} :catch_d

    .line 3758
    goto :goto_16

    .line 3754
    :catch_d
    move-exception v0

    .line 3755
    .local v0, "se":Ljava/lang/SecurityException;
    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isCallerBindAppWidgetWhiteListedLocked(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 3756
    const/4 v1, 0x0

    return v1

    .line 3759
    .end local v0  # "se":Ljava/lang/SecurityException;
    :cond_16
    :goto_16
    const/4 v0, 0x1

    return v0
.end method

.method public isCallerInstantAppLocked()Z
    .registers 9

    .line 3718
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3719
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3721
    .local v1, "identity":J
    const/4 v3, 0x0

    :try_start_9
    iget-object v4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v4}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 3722
    .local v4, "uidPackages":[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2d

    .line 3723
    iget-object v5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v5}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/content/pm/IPackageManager;

    move-result-object v5

    aget-object v6, v4, v3

    .line 3724
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    .line 3723
    invoke-interface {v5, v6, v7}, Landroid/content/pm/IPackageManager;->isInstantApp(Ljava/lang/String;I)Z

    move-result v3
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_29} :catch_33
    .catchall {:try_start_9 .. :try_end_29} :catchall_2e

    .line 3729
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3723
    return v3

    .line 3722
    .end local v4  # "uidPackages":[Ljava/lang/String;
    :cond_2d
    goto :goto_34

    .line 3729
    :catchall_2e
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 3726
    :catch_33
    move-exception v4

    .line 3729
    :goto_34
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3730
    nop

    .line 3731
    return v3
.end method

.method public isEnabledGroupProfile(I)Z
    .registers 4
    .param p1, "profileId"  # I

    .line 3674
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 3675
    .local v0, "parentId":I
    invoke-direct {p0, v0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isParentOrProfile(II)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-direct {p0, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isProfileEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method public isHostAccessingProvider(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;ILjava/lang/String;)Z
    .registers 6
    .param p1, "host"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "provider"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .param p3, "uid"  # I
    .param p4, "packageName"  # Ljava/lang/String;

    .line 3870
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    if-ne v0, p3, :cond_18

    if-eqz p2, :cond_18

    iget-object v0, p2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 3871
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 3870
    :goto_19
    return v0
.end method

.method public isHostInPackageForUid(Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;ILjava/lang/String;)Z
    .registers 5
    .param p1, "host"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;
    .param p2, "uid"  # I
    .param p3, "packageName"  # Ljava/lang/String;

    .line 3857
    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->uid:I

    if-ne v0, p2, :cond_12

    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public isInstantAppLocked(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 3735
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3737
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v2}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2100(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->isInstantApp(Ljava/lang/String;I)Z

    move-result v2
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_17
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 3741
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3737
    return v2

    .line 3741
    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 3738
    :catch_17
    move-exception v2

    .line 3741
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3742
    nop

    .line 3743
    const/4 v2, 0x0

    return v2
.end method

.method public isProviderInCallerOrInProfileAndWhitelListed(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "profileId"  # I

    .line 3815
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 3816
    .local v0, "callerId":I
    if-ne p2, v0, :cond_8

    .line 3817
    const/4 v1, 0x1

    return v1

    .line 3819
    :cond_8
    invoke-virtual {p0, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->getProfileParent(I)I

    move-result v1

    .line 3820
    .local v1, "parentId":I
    if-eq v1, v0, :cond_10

    .line 3821
    const/4 v2, 0x0

    return v2

    .line 3823
    :cond_10
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->isProviderWhiteListed(Ljava/lang/String;I)Z

    move-result v2

    return v2
.end method

.method public isProviderInPackageForUid(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;ILjava/lang/String;)Z
    .registers 5
    .param p1, "provider"  # Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    .param p2, "uid"  # I
    .param p3, "packageName"  # Ljava/lang/String;

    .line 3863
    if-eqz p1, :cond_18

    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    if-ne v0, p2, :cond_18

    iget-object v0, p1, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    .line 3864
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 3863
    :goto_19
    return v0
.end method

.method public isProviderWhiteListed(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "profileId"  # I

    .line 3828
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2600(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object v0

    if-nez v0, :cond_a

    .line 3829
    const/4 v0, 0x0

    return v0

    .line 3832
    :cond_a
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$SecurityPolicy;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->access$2600(Lcom/android/server/appwidget/AppWidgetServiceImpl;)Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object v0

    .line 3833
    invoke-virtual {v0, p2}, Landroid/app/admin/DevicePolicyManagerInternal;->getCrossProfileWidgetProviders(I)Ljava/util/List;

    move-result-object v0

    .line 3835
    .local v0, "crossProfilePackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
