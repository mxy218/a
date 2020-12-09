.class Lcom/android/server/content/SyncManager$ActiveSyncContext;
.super Landroid/content/ISyncContext$Stub;
.source "SyncManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActiveSyncContext"
.end annotation


# instance fields
.field mBound:Z

.field mBytesTransferredAtLastPoll:J

.field mEventName:Ljava/lang/String;

.field final mHistoryRowId:J

.field mIsLinkedToDeath:Z

.field mLastPolledTimeElapsed:J

.field final mStartTime:J

.field mSyncAdapter:Landroid/content/ISyncAdapter;

.field final mSyncAdapterUid:I

.field mSyncInfo:Landroid/content/SyncInfo;

.field final mSyncOperation:Lcom/android/server/content/SyncOperation;

.field final mSyncWakeLock:Landroid/os/PowerManager$WakeLock;

.field mTimeoutStartTime:J

.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method public constructor <init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;JI)V
    .registers 7

    .line 1861
    iput-object p1, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    .line 1862
    invoke-direct {p0}, Landroid/content/ISyncContext$Stub;-><init>()V

    .line 1839
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mIsLinkedToDeath:Z

    .line 1863
    iput p5, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapterUid:I

    .line 1864
    iput-object p2, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 1865
    iput-wide p3, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mHistoryRowId:J

    .line 1866
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    .line 1867
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    .line 1868
    iget-wide p2, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    iput-wide p2, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mTimeoutStartTime:J

    .line 1869
    invoke-static {p1}, Lcom/android/server/content/SyncManager;->access$1700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncManager$SyncHandler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    invoke-static {p1, p2}, Lcom/android/server/content/SyncManager$SyncHandler;->access$1800(Lcom/android/server/content/SyncManager$SyncHandler;Lcom/android/server/content/SyncOperation;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1870
    iget-object p1, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance p2, Landroid/os/WorkSource;

    invoke-direct {p2, p5}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 1871
    iget-object p1, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1872
    return-void
.end method


# virtual methods
.method bindToSyncAdapter(Landroid/content/ComponentName;I)Z
    .registers 8

    .line 1911
    const/4 v0, 0x2

    const-string v1, "SyncManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1912
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindToSyncAdapter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    :cond_25
    iget-object v1, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$2000(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/android/server/content/SyncManager;->getAdapterBindIntent(Landroid/content/Context;Landroid/content/ComponentName;I)Landroid/content/Intent;

    move-result-object p1

    .line 1916
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mBound:Z

    .line 1917
    iget-object v1, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$2000(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x15

    new-instance v3, Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v4, v4, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, p1, p0, v2, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p1

    .line 1919
    iget-object v1, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "bindService() returned="

    aput-object v4, v2, v3

    iget-boolean v4, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mBound:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, p2

    const-string p2, " for "

    aput-object p2, v2, v0

    const/4 p2, 0x3

    aput-object p0, v2, p2

    invoke-virtual {v1, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1920
    if-nez p1, :cond_6e

    .line 1921
    iput-boolean v3, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mBound:Z

    goto :goto_85

    .line 1924
    :cond_6e
    :try_start_6e
    iget-object p2, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    invoke-virtual {p2}, Lcom/android/server/content/SyncOperation;->wakeLockName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mEventName:Ljava/lang/String;

    .line 1925
    iget-object p2, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {p2}, Lcom/android/server/content/SyncManager;->access$2100(Lcom/android/server/content/SyncManager;)Lcom/android/internal/app/IBatteryStats;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mEventName:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapterUid:I

    invoke-interface {p2, v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteSyncStart(Ljava/lang/String;I)V
    :try_end_83
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_83} :catch_84

    .line 1927
    goto :goto_85

    .line 1926
    :catch_84
    move-exception p2

    .line 1929
    :goto_85
    return p1
.end method

.method public binderDied()V
    .registers 3

    .line 1967
    iget-object v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/android/server/content/SyncManager;->access$1900(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    .line 1968
    return-void
.end method

.method protected close()V
    .registers 5

    .line 1937
    const/4 v0, 0x2

    const-string v1, "SyncManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1938
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unBindFromSyncAdapter: connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    :cond_1e
    iget-boolean v1, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mBound:Z

    if-eqz v1, :cond_50

    .line 1941
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mBound:Z

    .line 1942
    iget-object v2, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v3, "unbindService for "

    aput-object v3, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-virtual {v2, v0}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1943
    iget-object v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$2000(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1945
    :try_start_41
    iget-object v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$2100(Lcom/android/server/content/SyncManager;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mEventName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapterUid:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/IBatteryStats;->noteSyncFinish(Ljava/lang/String;I)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_4e} :catch_4f

    .line 1947
    goto :goto_50

    .line 1946
    :catch_4f
    move-exception v0

    .line 1949
    :cond_50
    :goto_50
    iget-object v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1950
    iget-object v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 1951
    return-void
.end method

.method public onFinished(Landroid/content/SyncResult;)V
    .registers 7

    .line 1879
    const/4 v0, 0x2

    const-string v1, "SyncManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onFinished: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    :cond_1e
    iget-object v1, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "onFinished result="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string v3, " endpoint="

    aput-object v3, v2, v0

    const/4 v0, 0x3

    .line 1884
    iget-object v3, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    if-nez v3, :cond_3d

    const-string/jumbo v3, "null"

    goto :goto_3f

    :cond_3d
    iget-object v3, v3, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    :goto_3f
    aput-object v3, v2, v0

    .line 1883
    invoke-virtual {v1, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 1885
    iget-object v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0, p0, p1}, Lcom/android/server/content/SyncManager;->access$1900(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    .line 1886
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .line 1897
    iget-object p1, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {p1}, Lcom/android/server/content/SyncManager;->access$1700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncManager$SyncHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 1898
    const/4 v0, 0x4

    iput v0, p1, Landroid/os/Message;->what:I

    .line 1899
    new-instance v0, Lcom/android/server/content/SyncManager$ServiceConnectionData;

    iget-object v1, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {v0, v1, p0, p2}, Lcom/android/server/content/SyncManager$ServiceConnectionData;-><init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/os/IBinder;)V

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1900
    iget-object p2, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {p2}, Lcom/android/server/content/SyncManager;->access$1700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncManager$SyncHandler;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1901
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    .line 1904
    iget-object p1, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {p1}, Lcom/android/server/content/SyncManager;->access$1700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncManager$SyncHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/content/SyncManager$SyncHandler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 1905
    const/4 v0, 0x5

    iput v0, p1, Landroid/os/Message;->what:I

    .line 1906
    new-instance v0, Lcom/android/server/content/SyncManager$ServiceConnectionData;

    iget-object v1, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/android/server/content/SyncManager$ServiceConnectionData;-><init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/os/IBinder;)V

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1907
    iget-object v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$1700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncManager$SyncHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1908
    return-void
.end method

.method public sendHeartbeat()V
    .registers 1

    .line 1876
    return-void
.end method

.method public toSafeString()Ljava/lang/String;
    .registers 3

    .line 1960
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1961
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/content/SyncManager$ActiveSyncContext;->toString(Ljava/lang/StringBuilder;Z)V

    .line 1962
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1954
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1955
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/content/SyncManager$ActiveSyncContext;->toString(Ljava/lang/StringBuilder;Z)V

    .line 1956
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/StringBuilder;Z)V
    .registers 5

    .line 1889
    const-string/jumbo v0, "startTime "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1890
    const-string v0, ", mTimeoutStartTime "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mTimeoutStartTime:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1891
    const-string v0, ", mHistoryRowId "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mHistoryRowId:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1892
    const-string v0, ", syncOperation "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1893
    if-eqz p2, :cond_2d

    iget-object p2, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    invoke-static {p2}, Lcom/android/server/content/SyncLogger;->logSafe(Lcom/android/server/content/SyncOperation;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2f

    :cond_2d
    iget-object p2, p0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 1892
    :goto_2f
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1894
    return-void
.end method
