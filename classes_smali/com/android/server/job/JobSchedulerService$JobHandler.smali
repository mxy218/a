.class final Lcom/android/server/job/JobSchedulerService$JobHandler;
.super Landroid/os/Handler;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "JobHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"  # Landroid/os/Looper;

    .line 1849
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    .line 1850
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1851
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "message"  # Landroid/os/Message;

    .line 1855
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1856
    :try_start_5
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-boolean v1, v1, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    if-nez v1, :cond_d

    .line 1857
    monitor-exit v0

    return-void

    .line 1859
    :cond_d
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_f6

    goto/16 :goto_eb

    .line 1921
    :pswitch_16  #0x7
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1922
    .local v1, "uid":I
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_1d

    goto :goto_1e

    :cond_1d
    move v3, v2

    .line 1923
    .local v3, "disabled":Z
    :goto_1e
    if-eqz v3, :cond_27

    .line 1924
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    const-string v5, "app uid idle"

    invoke-virtual {v4, v1, v5}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(ILjava/lang/String;)Z

    .line 1926
    :cond_27
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v4, v4, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_f2

    .line 1927
    :try_start_2c
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v5}, Lcom/android/server/job/JobSchedulerService;->access$800(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/DeviceIdleJobsController;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->setUidActiveLocked(IZ)V

    .line 1928
    monitor-exit v4

    .line 1929
    goto/16 :goto_eb

    .line 1928
    :catchall_38
    move-exception v2

    monitor-exit v4
    :try_end_3a
    .catchall {:try_start_2c .. :try_end_3a} :catchall_38

    .end local p0  # "this":Lcom/android/server/job/JobSchedulerService$JobHandler;
    .end local p1  # "message":Landroid/os/Message;
    :try_start_3a
    throw v2

    .line 1914
    .end local v1  # "uid":I
    .end local v3  # "disabled":Z
    .restart local p0  # "this":Lcom/android/server/job/JobSchedulerService$JobHandler;
    .restart local p1  # "message":Landroid/os/Message;
    :pswitch_3b  #0x6
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1915
    .restart local v1  # "uid":I
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_42
    .catchall {:try_start_3a .. :try_end_42} :catchall_f2

    .line 1916
    :try_start_42
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v4}, Lcom/android/server/job/JobSchedulerService;->access$800(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/DeviceIdleJobsController;

    move-result-object v4

    invoke-virtual {v4, v1, v3}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->setUidActiveLocked(IZ)V

    .line 1917
    monitor-exit v2

    .line 1918
    goto/16 :goto_eb

    .line 1917
    :catchall_4e
    move-exception v3

    monitor-exit v2
    :try_end_50
    .catchall {:try_start_42 .. :try_end_50} :catchall_4e

    .end local p0  # "this":Lcom/android/server/job/JobSchedulerService$JobHandler;
    .end local p1  # "message":Landroid/os/Message;
    :try_start_50
    throw v3

    .line 1902
    .end local v1  # "uid":I
    .restart local p0  # "this":Lcom/android/server/job/JobSchedulerService$JobHandler;
    .restart local p1  # "message":Landroid/os/Message;
    :pswitch_51  #0x5
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1903
    .restart local v1  # "uid":I
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_58

    goto :goto_59

    :cond_58
    move v3, v2

    .line 1904
    .restart local v3  # "disabled":Z
    :goto_59
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    const/16 v5, 0x14

    invoke-virtual {v4, v1, v5}, Lcom/android/server/job/JobSchedulerService;->updateUidState(II)V

    .line 1905
    if-eqz v3, :cond_6a

    .line 1906
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    const-string/jumbo v5, "uid gone"

    invoke-virtual {v4, v1, v5}, Lcom/android/server/job/JobSchedulerService;->cancelJobsForUid(ILjava/lang/String;)Z

    .line 1908
    :cond_6a
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v4, v4, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_6f
    .catchall {:try_start_50 .. :try_end_6f} :catchall_f2

    .line 1909
    :try_start_6f
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v5}, Lcom/android/server/job/JobSchedulerService;->access$800(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/DeviceIdleJobsController;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Lcom/android/server/job/controllers/DeviceIdleJobsController;->setUidActiveLocked(IZ)V

    .line 1910
    monitor-exit v4

    .line 1911
    goto/16 :goto_eb

    .line 1910
    :catchall_7b
    move-exception v2

    monitor-exit v4
    :try_end_7d
    .catchall {:try_start_6f .. :try_end_7d} :catchall_7b

    .end local p0  # "this":Lcom/android/server/job/JobSchedulerService$JobHandler;
    .end local p1  # "message":Landroid/os/Message;
    :try_start_7d
    throw v2

    .line 1896
    .end local v1  # "uid":I
    .end local v3  # "disabled":Z
    .restart local p0  # "this":Lcom/android/server/job/JobSchedulerService$JobHandler;
    .restart local p1  # "message":Landroid/os/Message;
    :pswitch_7e  #0x4
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1897
    .restart local v1  # "uid":I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 1898
    .local v2, "procState":I
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/job/JobSchedulerService;->updateUidState(II)V

    .line 1899
    goto :goto_eb

    .line 1885
    .end local v1  # "uid":I
    .end local v2  # "procState":I
    :pswitch_88  #0x3
    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v1, :cond_93

    .line 1886
    const-string v1, "JobScheduler"

    const-string v2, "MSG_CHECK_JOB_GREEDY"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    :cond_93
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v1}, Lcom/android/server/job/JobSchedulerService;->access$500(Lcom/android/server/job/JobSchedulerService;)V

    .line 1889
    goto :goto_eb

    .line 1891
    :pswitch_99  #0x2
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    const/4 v3, 0x0

    const-string v4, "app no longer allowed to run"

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/job/JobSchedulerService;->access$700(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Ljava/lang/String;)V

    .line 1893
    goto :goto_eb

    .line 1872
    :pswitch_a6  #0x1
    sget-boolean v1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v1, :cond_b1

    .line 1873
    const-string v1, "JobScheduler"

    const-string v2, "MSG_CHECK_JOB"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    :cond_b1
    invoke-virtual {p0, v3}, Lcom/android/server/job/JobSchedulerService$JobHandler;->removeMessages(I)V

    .line 1876
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-boolean v1, v1, Lcom/android/server/job/JobSchedulerService;->mReportedActive:Z

    if-eqz v1, :cond_c0

    .line 1878
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v1}, Lcom/android/server/job/JobSchedulerService;->access$500(Lcom/android/server/job/JobSchedulerService;)V

    goto :goto_eb

    .line 1881
    :cond_c0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v1}, Lcom/android/server/job/JobSchedulerService;->access$600(Lcom/android/server/job/JobSchedulerService;)V

    .line 1883
    goto :goto_eb

    .line 1861
    :pswitch_c6  #0x0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 1864
    .local v1, "runNow":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v1, :cond_e5

    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v2, v1}, Lcom/android/server/job/JobSchedulerService;->access$400(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v2

    if-eqz v2, :cond_e5

    .line 1865
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    invoke-virtual {v2, v1}, Lcom/android/server/job/JobPackageTracker;->notePending(Lcom/android/server/job/controllers/JobStatus;)V

    .line 1866
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v2, v2, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/server/job/JobSchedulerService;->mEnqueueTimeComparator:Ljava/util/Comparator;

    invoke-static {v2, v1, v3}, Lcom/android/server/job/JobSchedulerService;->addOrderedItem(Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/Comparator;)V

    goto :goto_ea

    .line 1868
    :cond_e5
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v2}, Lcom/android/server/job/JobSchedulerService;->access$500(Lcom/android/server/job/JobSchedulerService;)V

    .line 1870
    .end local v1  # "runNow":Lcom/android/server/job/controllers/JobStatus;
    :goto_ea
    nop

    .line 1933
    :goto_eb
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$JobHandler;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v1}, Lcom/android/server/job/JobSchedulerService;->maybeRunPendingJobsLocked()V

    .line 1935
    monitor-exit v0

    .line 1936
    return-void

    .line 1935
    :catchall_f2
    move-exception v1

    monitor-exit v0
    :try_end_f4
    .catchall {:try_start_7d .. :try_end_f4} :catchall_f2

    throw v1

    nop

    :pswitch_data_f6
    .packed-switch 0x0
        :pswitch_c6  #00000000
        :pswitch_a6  #00000001
        :pswitch_99  #00000002
        :pswitch_88  #00000003
        :pswitch_7e  #00000004
        :pswitch_51  #00000005
        :pswitch_3b  #00000006
        :pswitch_16  #00000007
    .end packed-switch
.end method
