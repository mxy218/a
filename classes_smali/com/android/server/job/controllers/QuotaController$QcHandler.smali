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

    .line 1858
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 1859
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1860
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 15

    .line 1864
    iget-object v0, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v0, v0, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1865
    :try_start_5
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    if-eqz v1, :cond_10e

    const/4 v3, 0x1

    if-eq v1, v3, :cond_f5

    const/4 v4, 0x2

    if-eq v1, v4, :cond_be

    const/4 v4, 0x3

    if-eq v1, v4, :cond_15

    goto/16 :goto_1aa

    .line 1914
    :cond_15
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1915
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 1916
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 1917
    sget-object v5, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    .line 1919
    iget-object v7, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v7, v7, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_1ac

    .line 1921
    const/4 v8, 0x5

    if-gt p1, v8, :cond_36

    .line 1922
    :try_start_2b
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {p1}, Lcom/android/server/job/controllers/QuotaController;->access$1600(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    invoke-virtual {p1, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1923
    move p1, v3

    goto :goto_40

    .line 1925
    :cond_36
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {p1}, Lcom/android/server/job/controllers/QuotaController;->access$1600(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 1926
    move p1, v2

    .line 1929
    :goto_40
    iget-object v8, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v8}, Lcom/android/server/job/controllers/QuotaController;->access$2000(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->indexOfKey(I)I

    move-result v8

    if-ltz v8, :cond_a9

    .line 1930
    iget-object v8, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v8}, Lcom/android/server/job/controllers/QuotaController;->access$400(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseSetArray;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v8
    :try_end_56
    .catchall {:try_start_2b .. :try_end_56} :catchall_bb

    .line 1931
    if-nez v8, :cond_86

    .line 1933
    :try_start_58
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    .line 1934
    invoke-interface {v9, v1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    .line 1935
    if-eqz v9, :cond_7d

    .line 1936
    array-length v10, v9

    :goto_63
    if-ge v2, v10, :cond_73

    aget-object v11, v9, v2

    .line 1937
    iget-object v12, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v12}, Lcom/android/server/job/controllers/QuotaController;->access$400(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseSetArray;

    move-result-object v12

    invoke-virtual {v12, v1, v11}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 1936
    add-int/lit8 v2, v2, 0x1

    goto :goto_63

    .line 1939
    :cond_73
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->access$400(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseSetArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v8
    :try_end_7d
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_7d} :catch_7e
    .catchall {:try_start_58 .. :try_end_7d} :catchall_bb

    .line 1943
    :cond_7d
    goto :goto_86

    .line 1941
    :catch_7e
    move-exception v2

    .line 1942
    :try_start_7f
    const-string v9, "JobScheduler.Quota"

    const-string v10, "Failed to get package list"

    invoke-static {v9, v10, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1945
    :cond_86
    :goto_86
    if-eqz v8, :cond_a9

    .line 1946
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v2

    sub-int/2addr v2, v3

    :goto_8d
    if-ltz v2, :cond_a9

    .line 1947
    iget-object v3, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v3}, Lcom/android/server/job/controllers/QuotaController;->access$2000(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$UserPackageMap;

    move-result-object v3

    invoke-virtual {v8, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v3, v4, v9}, Lcom/android/server/job/controllers/QuotaController$UserPackageMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/QuotaController$Timer;

    .line 1948
    if-eqz v3, :cond_a6

    .line 1949
    invoke-virtual {v3, v5, v6, p1}, Lcom/android/server/job/controllers/QuotaController$Timer;->onStateChangedLocked(JZ)V

    .line 1946
    :cond_a6
    add-int/lit8 v2, v2, -0x1

    goto :goto_8d

    .line 1954
    :cond_a9
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {p1, v1}, Lcom/android/server/job/controllers/QuotaController;->access$2400(Lcom/android/server/job/controllers/QuotaController;I)Z

    move-result p1

    if-eqz p1, :cond_b8

    .line 1955
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object p1, p1, Lcom/android/server/job/controllers/QuotaController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {p1}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    .line 1957
    :cond_b8
    monitor-exit v7

    .line 1958
    goto/16 :goto_1aa

    .line 1957
    :catchall_bb
    move-exception p1

    monitor-exit v7
    :try_end_bd
    .catchall {:try_start_7f .. :try_end_bd} :catchall_bb

    :try_start_bd
    throw p1

    .line 1903
    :cond_be
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 1904
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1905
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->access$1100()Z

    move-result v2

    if-eqz v2, :cond_e4

    .line 1906
    const-string v2, "JobScheduler.Quota"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checking pkg "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v1}, Lcom/android/server/job/controllers/QuotaController;->access$000(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    :cond_e4
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2, p1, v1}, Lcom/android/server/job/controllers/QuotaController;->access$2200(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1aa

    .line 1909
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object p1, p1, Lcom/android/server/job/controllers/QuotaController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {p1}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    goto/16 :goto_1aa

    .line 1895
    :cond_f5
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->access$1100()Z

    move-result p1

    if-eqz p1, :cond_102

    .line 1896
    const-string p1, "JobScheduler.Quota"

    const-string v1, "Cleaning up timing sessions."

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    :cond_102
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/QuotaController;->deleteObsoleteSessionsLocked()V

    .line 1899
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/QuotaController;->maybeScheduleCleanupAlarmLocked()V

    .line 1901
    goto/16 :goto_1aa

    .line 1867
    :cond_10e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/job/controllers/QuotaController$Package;

    .line 1868
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->access$1100()Z

    move-result v1

    if-eqz v1, :cond_133

    .line 1869
    const-string v1, "JobScheduler.Quota"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checking if "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " has reached its quota."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1872
    :cond_133
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget v3, p1, Lcom/android/server/job/controllers/QuotaController$Package;->userId:I

    iget-object v4, p1, Lcom/android/server/job/controllers/QuotaController$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcom/android/server/job/controllers/QuotaController;->getRemainingExecutionTimeLocked(ILjava/lang/String;)J

    move-result-wide v3

    .line 1874
    const-wide/16 v5, 0x32

    cmp-long v1, v3, v5

    if-gtz v1, :cond_173

    .line 1876
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->access$1100()Z

    move-result v1

    if-eqz v1, :cond_15f

    const-string v1, "JobScheduler.Quota"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " has reached its quota."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    :cond_15f
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget v2, p1, Lcom/android/server/job/controllers/QuotaController$Package;->userId:I

    iget-object p1, p1, Lcom/android/server/job/controllers/QuotaController$Package;->packageName:Ljava/lang/String;

    invoke-static {v1, v2, p1}, Lcom/android/server/job/controllers/QuotaController;->access$2200(Lcom/android/server/job/controllers/QuotaController;ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1aa

    .line 1878
    iget-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object p1, p1, Lcom/android/server/job/controllers/QuotaController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {p1}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    goto :goto_1aa

    .line 1884
    :cond_173
    invoke-virtual {p0, v2, p1}, Lcom/android/server/job/controllers/QuotaController$QcHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1885
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$QcHandler;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget v3, p1, Lcom/android/server/job/controllers/QuotaController$Package;->userId:I

    iget-object v4, p1, Lcom/android/server/job/controllers/QuotaController$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/job/controllers/QuotaController;->getTimeUntilQuotaConsumedLocked(ILjava/lang/String;)J

    move-result-wide v2

    .line 1887
    invoke-static {}, Lcom/android/server/job/controllers/QuotaController;->access$1100()Z

    move-result v4

    if-eqz v4, :cond_1a6

    .line 1888
    const-string v4, "JobScheduler.Quota"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " has "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ms left."

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    :cond_1a6
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/job/controllers/QuotaController$QcHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1892
    nop

    .line 1961
    :cond_1aa
    :goto_1aa
    monitor-exit v0

    .line 1962
    return-void

    .line 1961
    :catchall_1ac
    move-exception p1

    monitor-exit v0
    :try_end_1ae
    .catchall {:try_start_bd .. :try_end_1ae} :catchall_1ac

    throw p1
.end method
