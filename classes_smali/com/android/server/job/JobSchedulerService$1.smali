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

    .line 797
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .line 800
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 801
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_1e

    .line 802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Receieved: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    :cond_1e
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v0, p2}, Lcom/android/server/job/JobSchedulerService;->access$100(Lcom/android/server/job/JobSchedulerService;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 805
    const/4 v1, -0x1

    const-string v2, "android.intent.extra.UID"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 807
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_10d

    .line 810
    if-eqz v0, :cond_ed

    if-eq v2, v1, :cond_ed

    .line 811
    const-string p1, "android.intent.extra.changed_component_name_list"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 813
    if-eqz p1, :cond_eb

    .line 814
    array-length p2, p1

    :goto_41
    if-ge v4, p2, :cond_a6

    aget-object v1, p1, v4

    .line 815
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 816
    sget-boolean p1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz p1, :cond_65

    .line 817
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Package state change: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JobScheduler"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    :cond_65
    :try_start_65
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 821
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p2

    .line 822
    invoke-interface {p2, v0, p1}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result p2

    .line 823
    const/4 v1, 0x2

    if-eq p2, v1, :cond_77

    const/4 v1, 0x3

    if-ne p2, v1, :cond_a0

    .line 825
    :cond_77
    sget-boolean p2, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz p2, :cond_99

    .line 826
    const-string p2, "JobScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing jobs for package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :cond_99
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    const-string p2, "app disabled"

    invoke-virtual {p1, v0, v2, p2}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForPackageAndUid(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_a0
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_a0} :catch_a1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_65 .. :try_end_a0} :catch_a1

    .line 843
    :cond_a0
    goto :goto_a6

    .line 832
    :catch_a1
    move-exception p1

    .line 844
    goto :goto_a6

    .line 814
    :cond_a3
    add-int/lit8 v4, v4, 0x1

    goto :goto_41

    .line 847
    :cond_a6
    :goto_a6
    sget-boolean p1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz p1, :cond_c5

    .line 848
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Something in "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " changed. Reevaluating controller states."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JobScheduler"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    :cond_c5
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 852
    :try_start_ca
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_d4
    if-ltz p2, :cond_e6

    .line 853
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v0, v2}, Lcom/android/server/job/controllers/StateController;->reevaluateStateLocked(I)V

    .line 852
    add-int/lit8 p2, p2, -0x1

    goto :goto_d4

    .line 855
    :cond_e6
    monitor-exit p1

    goto :goto_eb

    :catchall_e8
    move-exception p2

    monitor-exit p1
    :try_end_ea
    .catchall {:try_start_ca .. :try_end_ea} :catchall_e8

    throw p2

    .line 857
    :cond_eb
    :goto_eb
    goto/16 :goto_252

    .line 858
    :cond_ed
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "PACKAGE_CHANGED for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " / uid "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JobScheduler"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_252

    .line 860
    :cond_10d
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16a

    .line 863
    const-string p1, "android.intent.extra.REPLACING"

    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_252

    .line 864
    const-string p1, "android.intent.extra.UID"

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 865
    sget-boolean p2, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz p2, :cond_13d

    .line 866
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing jobs for uid: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "JobScheduler"

    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :cond_13d
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    const-string v1, "app uninstalled"

    invoke-virtual {p2, v0, p1, v1}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForPackageAndUid(Ljava/lang/String;ILjava/lang/String;)V

    .line 869
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 870
    nop

    :goto_14a
    :try_start_14a
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v4, p2, :cond_164

    .line 871
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {p2, v0, v2}, Lcom/android/server/job/controllers/StateController;->onAppRemovedLocked(Ljava/lang/String;I)V

    .line 870
    add-int/lit8 v4, v4, 0x1

    goto :goto_14a

    .line 873
    :cond_164
    monitor-exit p1

    .line 874
    goto/16 :goto_252

    .line 873
    :catchall_167
    move-exception p2

    monitor-exit p1
    :try_end_169
    .catchall {:try_start_14a .. :try_end_169} :catchall_167

    throw p2

    .line 875
    :cond_16a
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1bd

    .line 876
    const-string p1, "android.intent.extra.user_handle"

    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 877
    sget-boolean p2, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz p2, :cond_192

    .line 878
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Removing jobs for user: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "JobScheduler"

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    :cond_192
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p2, p1}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUser(I)V

    .line 881
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 882
    nop

    :goto_19d
    :try_start_19d
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_1b7

    .line 883
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/StateController;->onUserRemovedLocked(I)V

    .line 882
    add-int/lit8 v4, v4, 0x1

    goto :goto_19d

    .line 885
    :cond_1b7
    monitor-exit p2

    .line 886
    goto/16 :goto_252

    .line 885
    :catchall_1ba
    move-exception p1

    monitor-exit p2
    :try_end_1bc
    .catchall {:try_start_19d .. :try_end_1bc} :catchall_1ba

    throw p1

    .line 886
    :cond_1bd
    const-string p2, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_21f

    .line 889
    if-eq v2, v1, :cond_252

    .line 891
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 892
    :try_start_1cc
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {p2, v2}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Ljava/util/List;

    move-result-object p2

    .line 893
    monitor-exit p1
    :try_end_1d5
    .catchall {:try_start_1cc .. :try_end_1d5} :catchall_21c

    .line 894
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1db
    if-ltz p1, :cond_21b

    .line 895
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_218

    .line 896
    sget-boolean p1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz p1, :cond_214

    .line 897
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Restart query: package "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " at uid "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " has jobs"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JobScheduler"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    :cond_214
    invoke-virtual {p0, v1}, Lcom/android/server/job/JobSchedulerService$1;->setResultCode(I)V

    .line 901
    goto :goto_21b

    .line 894
    :cond_218
    add-int/lit8 p1, p1, -0x1

    goto :goto_1db

    .line 904
    :cond_21b
    :goto_21b
    goto :goto_252

    .line 893
    :catchall_21c
    move-exception p2

    :try_start_21d
    monitor-exit p1
    :try_end_21e
    .catchall {:try_start_21d .. :try_end_21e} :catchall_21c

    throw p2

    .line 905
    :cond_21f
    const-string p2, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_252

    .line 907
    if-eq v2, v1, :cond_252

    .line 908
    sget-boolean p1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz p1, :cond_24b

    .line 909
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Removing jobs for pkg "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " at uid "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "JobScheduler"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    :cond_24b
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$1;->this$0:Lcom/android/server/job/JobSchedulerService;

    const-string p2, "app force stopped"

    invoke-virtual {p1, v0, v2, p2}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForPackageAndUid(Ljava/lang/String;ILjava/lang/String;)V

    .line 914
    :cond_252
    :goto_252
    return-void
.end method
