.class Lcom/android/server/job/controllers/QuotaController$QcHandler;
.super Landroid/os/Handler;
.source "QuotaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/QuotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QcHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/controllers/QuotaController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/QuotaController;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"  # Landroid/os/Looper;

    .line 1858
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 1859
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1860
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 18
    .param p1, "msg"  # Landroid/os/Message;

    .line 1864
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v3, v0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1865
    :try_start_9
    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v4, 0x0

    if-eqz v0, :cond_11c

    const/4 v5, 0x1

    if-eq v0, v5, :cond_103

    const/4 v6, 0x2

    if-eq v0, v6, :cond_cc

    const/4 v6, 0x3

    if-eq v0, v6, :cond_19

    goto/16 :goto_1b9

    .line 1914
    :cond_19
    iget v0, v2, Landroid/os/Message;->arg1:I

    move v6, v0

    .line 1915
    .local v6, "uid":I
    iget v0, v2, Landroid/os/Message;->arg2:I

    move v7, v0

    .line 1916
    .local v7, "procState":I
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    move v8, v0

    .line 1917
    .local v8, "userId":I
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v9

    .line 1919
    .local v9, "nowElapsed":J
    iget-object v0, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v11, v0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_2f
    .catchall {:try_start_9 .. :try_end_2f} :catchall_1bb

    .line 1921
    const/4 v0, 0x5

    if-gt v7, v0, :cond_3e

    .line 1922
    :try_start_32
    iget-object v0, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v0}, Lcom/android/server/job/controllers/QuotaController;->access$1600(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1923
    const/4 v0, 0x1

    move v12, v0

    .local v0, "isQuotaFree":Z
    goto :goto_49

    .line 1925
    .end local v0  # "isQuotaFree":Z
    :cond_3e
    iget-object v0, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v0}, Lcom/android/server/job/controllers/QuotaController;->access$1600(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 1926
    move v0, v4

    move v12, v0

    .line 1929
    .local v12, "isQuotaFree":Z
    :goto_49
    iget-object v0, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v0}, Lcom/android/server/job/controllers/QuotaController;->access$2000(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_b7

    .line 1930
    iget-object v0, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v0}, Lcom/android/server/job/controllers/QuotaController;->access$400(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseSetArray;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v0
    :try_end_5f
    .catchall {:try_start_32 .. :try_end_5f} :catchall_c9

    move-object v13, v0

    .line 1931
    .local v13, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v13, :cond_93

    .line 1933
    :try_start_62
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 1934
    invoke-interface {v0, v6}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 1935
    .local v0, "pkgs":[Ljava/lang/String;
    if-eqz v0, :cond_8a

    .line 1936
    array-length v14, v0

    :goto_6d
    if-ge v4, v14, :cond_7f

    aget-object v15, v0, v4

    .line 1937
    .local v15, "pkg":Ljava/lang/String;
    iget-object v5, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5}, Lcom/android/server/job/controllers/QuotaController;->access$400(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseSetArray;

    move-result-object v5

    invoke-virtual {v5, v6, v15}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 1936
    nop

    .end local v15  # "pkg":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    goto :goto_6d

    .line 1939
    :cond_7f
    iget-object v4, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4}, Lcom/android/server/job/controllers/QuotaController;->access$400(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseSetArray;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v4
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_89} :catch_8b
    .catchall {:try_start_62 .. :try_end_89} :catchall_c9

    move-object v13, v4

    .line 1943
    .end local v0  # "pkgs":[Ljava/lang/String;
    :cond_8a
    goto :goto_93

    .line 1941
    :catch_8b
    move-exception v0

    .line 1942
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_8c
    const-string v4, "JobScheduler.Quota"

    const-string v5, "Failed to get package list"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1945
    .end local v0  # "e":Landroid/os/RemoteException;
    :cond_93
    :goto_93
    if-eqz v13, :cond_b7

    .line 1946
    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    .local v0, "i":I
    :goto_9b
    if-ltz v0, :cond_b7

    .line 1947
    iget-object v4, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v4}, Lcom/android/server/job/controllers/QuotaController;->access$2000(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    move-result-object v4

    invoke-virtual {v13, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v8, v5}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 1948
    .local v4, "t":Lcom/android/server/job/controllers/QuotaController$Timer;
    if-eqz v4, :cond_b4

    .line 1949
    invoke-virtual {v4, v9, v10, v12}, Lcom/android/server/job/controllers/QuotaController$Timer;->onStateChangedLocked(JZ)V

    .line 1946
    .end local v4  # "t":Lcom/android/server/job/controllers/QuotaController$Timer;
    :cond_b4
    add-int/lit8 v0, v0, -0x1

    goto :goto_9b

    .line 1954
    .end local v0  # "i":I
    .end local v13  # "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_b7
    iget-object v0, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v0, v6}, Lcom/android/server/job/controllers/QuotaController;->access$2400(Lcom/android/server/job/controllers/QuotaController;I)Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 1955
    iget-object v0, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v0}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    .line 1957
    .end local v12  # "isQuotaFree":Z
    :cond_c6
    monitor-exit v11

    .line 1958
    goto/16 :goto_1b9

    .line 1957
    :catchall_c9
    move-exception v0

    monitor-exit v11
    :try_end_cb
    .catchall {:try_start_8c .. :try_end_cb} :catchall_c9

    .end local p0  # "this":Lcom/android/server/job/controllers/QuotaController$QcHandler;
    .end local p1  # "msg":Landroid/os/Message;
    :try_start_cb
    throw v0

    .line 1903
    .end local v6  # "uid":I
    .end local v7  # "procState":I
    .end local v8  # "userId":I
    .end local v9  # "nowElapsed":J
    .restart local p0  # "this":Lcom/android/server/job/controllers/QuotaController$QcHandler;
    .restart local p1  # "msg":Landroid/os/Message;
    :cond_cc
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1904
    .local v0, "packageName":Ljava/lang/String;
    iget v4, v2, Landroid/os/Message;->arg1:I

    .line 1905
    .local v4, "userId":I
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->access$1100()Z

    move-result v5

    if-eqz v5, :cond_f2

    .line 1906
    const-string v5, "JobScheduler.Quota"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Checking pkg "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v0}, Lcom/android/server/job/controllers/QuotaController;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    :cond_f2
    iget-object v5, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v5, v4, v0}, Lcom/android/server/job/controllers/QuotaController;->access$2200(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b9

    .line 1909
    iget-object v5, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v5, v5, Lcom/android/server/job/controllers/QuotaController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v5}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    goto/16 :goto_1b9

    .line 1895
    .end local v0  # "packageName":Ljava/lang/String;
    .end local v4  # "userId":I
    :cond_103
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_110

    .line 1896
    const-string v0, "JobScheduler.Quota"

    const-string v4, "Cleaning up timing sessions."

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    :cond_110
    iget-object v0, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController;->deleteObsoleteSessionsLocked()V

    .line 1899
    iget-object v0, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/QuotaController;->maybeScheduleCleanupAlarmLocked()V

    .line 1901
    goto/16 :goto_1b9

    .line 1867
    :cond_11c
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/job/controllers/QuotaController$Package;

    .line 1868
    .local v0, "pkg":Lcom/android/server/job/controllers/QuotaController$Package;
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->access$1100()Z

    move-result v5

    if-eqz v5, :cond_141

    .line 1869
    const-string v5, "JobScheduler.Quota"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Checking if "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " has reached its quota."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1872
    :cond_141
    iget-object v5, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget v6, v0, Lcom/android/server/job/controllers/QuotaController$Package;->userId:I

    iget-object v7, v0, Lcom/android/server/job/controllers/QuotaController$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(ILjava/lang/String;)J

    move-result-wide v5

    .line 1874
    .local v5, "timeRemainingMs":J
    const-wide/16 v7, 0x32

    cmp-long v7, v5, v7

    if-gtz v7, :cond_181

    .line 1876
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->access$1100()Z

    move-result v4

    if-eqz v4, :cond_16d

    const-string v4, "JobScheduler.Quota"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " has reached its quota."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    :cond_16d
    iget-object v4, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget v7, v0, Lcom/android/server/job/controllers/QuotaController$Package;->userId:I

    iget-object v8, v0, Lcom/android/server/job/controllers/QuotaController$Package;->packageName:Ljava/lang/String;

    invoke-static {v4, v7, v8}, Lcom/android/server/job/controllers/QuotaController;->access$2200(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b9

    .line 1878
    iget-object v4, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v4, v4, Lcom/android/server/job/controllers/QuotaController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v4}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    goto :goto_1b9

    .line 1884
    :cond_181
    invoke-virtual {v1, v4, v0}, Lcom/android/server/job/controllers/QuotaController$QcHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1885
    .local v4, "rescheduleMsg":Landroid/os/Message;
    iget-object v7, v1, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget v8, v0, Lcom/android/server/job/controllers/QuotaController$Package;->userId:I

    iget-object v9, v0, Lcom/android/server/job/controllers/QuotaController$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilQuotaConsumedLocked(ILjava/lang/String;)J

    move-result-wide v7

    move-wide v5, v7

    .line 1887
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->access$1100()Z

    move-result v7

    if-eqz v7, :cond_1b5

    .line 1888
    const-string v7, "JobScheduler.Quota"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " has "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "ms left."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    :cond_1b5
    invoke-virtual {v1, v4, v5, v6}, Lcom/android/server/job/controllers/QuotaController$QcHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1892
    nop

    .line 1961
    .end local v0  # "pkg":Lcom/android/server/job/controllers/QuotaController$Package;
    .end local v4  # "rescheduleMsg":Landroid/os/Message;
    .end local v5  # "timeRemainingMs":J
    :cond_1b9
    :goto_1b9
    monitor-exit v3

    .line 1962
    return-void

    .line 1961
    :catchall_1bb
    move-exception v0

    monitor-exit v3
    :try_end_1bd
    .catchall {:try_start_cb .. :try_end_1bd} :catchall_1bb

    throw v0
.end method
