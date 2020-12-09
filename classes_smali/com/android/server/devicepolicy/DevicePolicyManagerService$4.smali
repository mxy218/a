.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;
.super Landroid/content/BroadcastReceiver;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .registers 2

    .line 746
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private sendDeviceOwnerUserCommand(Ljava/lang/String;I)V
    .registers 11

    .line 852
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 853
    :try_start_7
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerAdminLocked()Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v3

    .line 854
    if-eqz v3, :cond_25

    .line 855
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 856
    const-string v1, "android.intent.extra.USER"

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {v5, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 857
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/BroadcastReceiver;Z)Z

    .line 860
    :cond_25
    monitor-exit v0

    .line 861
    return-void

    .line 860
    :catchall_27
    move-exception p1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_27

    throw p1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    .line 749
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 750
    nop

    .line 751
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->getSendingUserId()I

    move-result v0

    .line 750
    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 758
    const-string v1, "android.intent.action.USER_STARTED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    .line 759
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerUserId()I

    move-result v1

    if-ne v0, v1, :cond_3b

    .line 760
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 761
    :try_start_29
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$600(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 762
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v3, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$700(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Z)V

    .line 764
    :cond_36
    monitor-exit v1

    goto :goto_3b

    :catchall_38
    move-exception p1

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_29 .. :try_end_3a} :catchall_38

    throw p1

    .line 766
    :cond_3b
    :goto_3b
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8c

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    .line 767
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerUserId()I

    move-result v1

    if-ne v0, v1, :cond_8c

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 768
    invoke-static {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$800(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8c

    .line 769
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 770
    const-string v3, "com.android.server.action.REMOTE_BUGREPORT_SHARING_DECLINED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 771
    const-string v3, "com.android.server.action.REMOTE_BUGREPORT_SHARING_ACCEPTED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 772
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v3, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$500(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Landroid/content/BroadcastReceiver;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 773
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v1

    const v3, 0x28700e57

    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v4, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    const/4 v5, 0x3

    .line 775
    invoke-static {v4, v5}, Lcom/android/server/devicepolicy/RemoteBugreportUtils;->buildNotification(Landroid/content/Context;I)Landroid/app/Notification;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 773
    const-string v6, "DevicePolicyManager"

    invoke-virtual {v1, v6, v3, v4, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 779
    :cond_8c
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9c

    .line 780
    const-string v1, "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 785
    :cond_9c
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4$1;

    invoke-direct {v3, p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4$1;-><init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;I)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 793
    :cond_a8
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c7

    .line 794
    const-string p1, "android.app.action.USER_ADDED"

    invoke-direct {p0, p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->sendDeviceOwnerUserCommand(Ljava/lang/String;I)V

    .line 795
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 798
    :try_start_bc
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1000(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V

    .line 799
    monitor-exit v1

    goto/16 :goto_1d3

    :catchall_c4
    move-exception p1

    monitor-exit v1
    :try_end_c6
    .catchall {:try_start_bc .. :try_end_c6} :catchall_c4

    throw p1

    .line 800
    :cond_c7
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f8

    .line 801
    const-string p1, "android.app.action.USER_REMOVED"

    invoke-direct {p0, p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->sendDeviceOwnerUserCommand(Ljava/lang/String;I)V

    .line 802
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 804
    :try_start_db
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1100(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)Z

    move-result p1

    .line 805
    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p2, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->removeUserData(I)V

    .line 806
    if-nez p1, :cond_f2

    .line 809
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1200(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V

    .line 811
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1300(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V

    .line 813
    :cond_f2
    monitor-exit v1

    goto/16 :goto_1d3

    :catchall_f5
    move-exception p1

    monitor-exit v1
    :try_end_f7
    .catchall {:try_start_db .. :try_end_f7} :catchall_f5

    throw p1

    .line 814
    :cond_f8
    const-string v1, "android.intent.action.USER_STARTED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_124

    .line 815
    const-string p1, "android.app.action.USER_STARTED"

    invoke-direct {p0, p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->sendDeviceOwnerUserCommand(Ljava/lang/String;I)V

    .line 816
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 817
    :try_start_10d
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1400(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    .line 819
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p1, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 820
    monitor-exit v1
    :try_end_11a
    .catchall {:try_start_10d .. :try_end_11a} :catchall_121

    .line 821
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1500(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V

    goto/16 :goto_1d3

    .line 820
    :catchall_121
    move-exception p1

    :try_start_122
    monitor-exit v1
    :try_end_123
    .catchall {:try_start_122 .. :try_end_123} :catchall_121

    throw p1

    .line 822
    :cond_124
    const-string v1, "android.intent.action.USER_STOPPED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_133

    .line 823
    const-string p1, "android.app.action.USER_STOPPED"

    invoke-direct {p0, p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->sendDeviceOwnerUserCommand(Ljava/lang/String;I)V

    goto/16 :goto_1d3

    .line 824
    :cond_133
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_142

    .line 825
    const-string p1, "android.app.action.USER_SWITCHED"

    invoke-direct {p0, p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->sendDeviceOwnerUserCommand(Ljava/lang/String;I)V

    goto/16 :goto_1d3

    .line 826
    :cond_142
    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15c

    .line 827
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 828
    :try_start_151
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1400(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    .line 829
    monitor-exit v1

    goto/16 :goto_1d3

    :catchall_159
    move-exception p1

    monitor-exit v1
    :try_end_15b
    .catchall {:try_start_151 .. :try_end_15b} :catchall_159

    throw p1

    .line 830
    :cond_15c
    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16a

    .line 831
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p1, v3, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1500(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V

    goto :goto_1d3

    .line 832
    :cond_16a
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c6

    .line 833
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_184

    .line 834
    const-string v1, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_184

    goto :goto_1c6

    .line 836
    :cond_184
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a2

    .line 837
    const-string v1, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1a2

    .line 838
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1500(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V

    goto :goto_1d3

    .line 839
    :cond_1a2
    const-string p2, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1b0

    .line 840
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1600(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V

    goto :goto_1d3

    .line 841
    :cond_1b0
    const-string p2, "android.intent.action.DATE_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1c0

    .line 842
    const-string p2, "android.intent.action.TIME_SET"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d3

    .line 846
    :cond_1c0
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1700(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Z)V

    goto :goto_1d3

    .line 835
    :cond_1c6
    :goto_1c6
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1500(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;I)V

    .line 849
    :cond_1d3
    :goto_1d3
    return-void
.end method
