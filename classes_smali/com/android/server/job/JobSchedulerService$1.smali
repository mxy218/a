.class Lcom/android/server/job/JobSchedulerService$1;
.super Landroid/content/BroadcastReceiver;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/job/JobSchedulerService;

    .line 797
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 800
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 801
    .local v0, "action":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v1, :cond_1e

    .line 802
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receieved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JobScheduler"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    :cond_1e
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v1, p2}, Lcom/android/server/job/JobSchedulerService;->access$100(Lcom/android/server/job/JobSchedulerService;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 805
    .local v1, "pkgName":Ljava/lang/String;
    const/4 v2, -0x1

    const-string v3, "android.intent.extra.UID"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 807
    .local v3, "pkgUid":I
    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_10d

    .line 810
    if-eqz v1, :cond_ed

    if-eq v3, v2, :cond_ed

    .line 811
    const-string v2, "android.intent.extra.changed_component_name_list"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 813
    .local v2, "changedComponents":[Ljava/lang/String;
    if-eqz v2, :cond_eb

    .line 814
    array-length v4, v2

    :goto_41
    if-ge v5, v4, :cond_a6

    aget-object v6, v2, v5

    .line 815
    .local v6, "component":Ljava/lang/String;
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a3

    .line 816
    sget-boolean v4, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v4, :cond_65

    .line 817
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package state change: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "JobScheduler"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    :cond_65
    :try_start_65
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 821
    .local v4, "userId":I
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    .line 822
    .local v5, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {v5, v1, v4}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v7

    .line 823
    .local v7, "state":I
    const/4 v8, 0x2

    if-eq v7, v8, :cond_77

    const/4 v8, 0x3

    if-ne v7, v8, :cond_a0

    .line 825
    :cond_77
    sget-boolean v8, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v8, :cond_99

    .line 826
    const-string v8, "JobScheduler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Removing jobs for package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " in user "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :cond_99
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    const-string v9, "app disabled"

    invoke-virtual {v8, v1, v3, v9}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForPackageAndUid(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_a0
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_a0} :catch_a1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_65 .. :try_end_a0} :catch_a1

    .line 843
    .end local v4  # "userId":I
    .end local v5  # "pm":Landroid/content/pm/IPackageManager;
    .end local v7  # "state":I
    :cond_a0
    goto :goto_a6

    .line 832
    :catch_a1
    move-exception v4

    .line 844
    goto :goto_a6

    .line 814
    .end local v6  # "component":Ljava/lang/String;
    :cond_a3
    add-int/lit8 v5, v5, 0x1

    goto :goto_41

    .line 847
    :cond_a6
    :goto_a6
    sget-boolean v4, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v4, :cond_c5

    .line 848
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Something in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " changed. Reevaluating controller states."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "JobScheduler"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    :cond_c5
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v4, v4, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 852
    :try_start_ca
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v5, v5, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "c":I
    :goto_d4
    if-ltz v5, :cond_e6

    .line 853
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v6, v3}, Lcom/android/server/job/controllers/StateController;->reevaluateStateLocked(I)V

    .line 852
    add-int/lit8 v5, v5, -0x1

    goto :goto_d4

    .line 855
    .end local v5  # "c":I
    :cond_e6
    monitor-exit v4

    goto :goto_eb

    :catchall_e8
    move-exception v5

    monitor-exit v4
    :try_end_ea
    .catchall {:try_start_ca .. :try_end_ea} :catchall_e8

    throw v5

    .line 857
    .end local v2  # "changedComponents":[Ljava/lang/String;
    :cond_eb
    :goto_eb
    goto/16 :goto_252

    .line 858
    :cond_ed
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PACKAGE_CHANGED for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " / uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "JobScheduler"

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_252

    .line 860
    :cond_10d
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16a

    .line 863
    const-string v4, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_252

    .line 864
    const-string v4, "android.intent.extra.UID"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 865
    .local v2, "uidRemoved":I
    sget-boolean v4, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v4, :cond_13d

    .line 866
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing jobs for uid: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "JobScheduler"

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :cond_13d
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    const-string v6, "app uninstalled"

    invoke-virtual {v4, v1, v2, v6}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForPackageAndUid(Ljava/lang/String;ILjava/lang/String;)V

    .line 869
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v4, v4, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 870
    nop

    .restart local v5  # "c":I
    :goto_14a
    :try_start_14a
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_164

    .line 871
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v6, v1, v3}, Lcom/android/server/job/controllers/StateController;->onAppRemovedLocked(Ljava/lang/String;I)V

    .line 870
    add-int/lit8 v5, v5, 0x1

    goto :goto_14a

    .line 873
    .end local v5  # "c":I
    :cond_164
    monitor-exit v4

    .line 874
    .end local v2  # "uidRemoved":I
    goto/16 :goto_252

    .line 873
    .restart local v2  # "uidRemoved":I
    :catchall_167
    move-exception v5

    monitor-exit v4
    :try_end_169
    .catchall {:try_start_14a .. :try_end_169} :catchall_167

    throw v5

    .line 875
    .end local v2  # "uidRemoved":I
    :cond_16a
    const-string v4, "android.intent.action.USER_REMOVED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1bd

    .line 876
    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 877
    .restart local v4  # "userId":I
    sget-boolean v2, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v2, :cond_192

    .line 878
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing jobs for user: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "JobScheduler"

    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    :cond_192
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v2, v4}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUser(I)V

    .line 881
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v6, v2, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 882
    move v2, v5

    .local v2, "c":I
    :goto_19d
    :try_start_19d
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v5, v5, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1b7

    .line 883
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v5, v5, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v5, v4}, Lcom/android/server/job/controllers/StateController;->onUserRemovedLocked(I)V

    .line 882
    add-int/lit8 v2, v2, 0x1

    goto :goto_19d

    .line 885
    .end local v2  # "c":I
    :cond_1b7
    monitor-exit v6

    .line 886
    .end local v4  # "userId":I
    goto/16 :goto_252

    .line 885
    .restart local v4  # "userId":I
    :catchall_1ba
    move-exception v2

    monitor-exit v6
    :try_end_1bc
    .catchall {:try_start_19d .. :try_end_1bc} :catchall_1ba

    throw v2

    .line 886
    .end local v4  # "userId":I
    :cond_1bd
    const-string v4, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21f

    .line 889
    if-eq v3, v2, :cond_252

    .line 891
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v4, v4, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 892
    :try_start_1cc
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v5, v5, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v5, v3}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Ljava/util/List;

    move-result-object v5

    .line 893
    .local v5, "jobsForUid":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    monitor-exit v4
    :try_end_1d5
    .catchall {:try_start_1cc .. :try_end_1d5} :catchall_21c

    .line 894
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_1db
    if-ltz v4, :cond_21b

    .line 895
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v6}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_218

    .line 896
    sget-boolean v6, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v6, :cond_214

    .line 897
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Restart query: package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " at uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " has jobs"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "JobScheduler"

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    :cond_214
    invoke-virtual {p0, v2}, Lcom/android/server/job/JobSchedulerService$1;->setResultCode(I)V

    .line 901
    goto :goto_21b

    .line 894
    :cond_218
    add-int/lit8 v4, v4, -0x1

    goto :goto_1db

    .line 904
    .end local v4  # "i":I
    .end local v5  # "jobsForUid":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_21b
    :goto_21b
    goto :goto_252

    .line 893
    :catchall_21c
    move-exception v2

    :try_start_21d
    monitor-exit v4
    :try_end_21e
    .catchall {:try_start_21d .. :try_end_21e} :catchall_21c

    throw v2

    .line 905
    :cond_21f
    const-string v4, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_252

    .line 907
    if-eq v3, v2, :cond_252

    .line 908
    sget-boolean v2, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v2, :cond_24b

    .line 909
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing jobs for pkg "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " at uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "JobScheduler"

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    :cond_24b
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    const-string v4, "app force stopped"

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForPackageAndUid(Ljava/lang/String;ILjava/lang/String;)V

    .line 914
    :cond_252
    :goto_252
    return-void
.end method
