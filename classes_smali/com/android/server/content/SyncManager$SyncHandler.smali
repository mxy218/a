.class Lcom/android/server/content/SyncManager$SyncHandler;
.super Landroid/os/Handler;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SyncHandler"
.end annotation


# static fields
.field private static final MESSAGE_ACCOUNTS_UPDATED:I = 0x9

.field private static final MESSAGE_CANCEL:I = 0x6

.field private static final MESSAGE_MONITOR_SYNC:I = 0x8

.field static final MESSAGE_REMOVE_PERIODIC_SYNC:I = 0xe

.field static final MESSAGE_SCHEDULE_SYNC:I = 0xc

.field private static final MESSAGE_SERVICE_CONNECTED:I = 0x4

.field private static final MESSAGE_SERVICE_DISCONNECTED:I = 0x5

.field static final MESSAGE_START_SYNC:I = 0xa

.field static final MESSAGE_STOP_SYNC:I = 0xb

.field private static final MESSAGE_SYNC_FINISHED:I = 0x1

.field static final MESSAGE_UPDATE_PERIODIC_SYNC:I = 0xd


# instance fields
.field public final mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

.field private final mWakeLocks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/PowerManager$WakeLock;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method public constructor <init>(Lcom/android/server/content/SyncManager;Landroid/os/Looper;)V
    .registers 4

    .line 2910
    iput-object p1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 2911
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2907
    new-instance p1, Lcom/android/server/content/SyncManager$SyncTimeTracker;

    iget-object p2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/android/server/content/SyncManager$SyncTimeTracker;-><init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$1;)V

    iput-object p1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    .line 2908
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mWakeLocks:Ljava/util/HashMap;

    .line 2912
    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/content/SyncManager$SyncHandler;Lcom/android/server/content/SyncOperation;)Landroid/os/PowerManager$WakeLock;
    .registers 2

    .line 2888
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->getSyncWakeLock(Lcom/android/server/content/SyncOperation;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    return-object p0
.end method

.method private cancelActiveSyncH(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 8

    .line 3590
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v1, v1, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3592
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 3593
    if-eqz v1, :cond_3f

    .line 3594
    iget-object v2, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v2, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 3596
    invoke-virtual {v2, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 3597
    goto :goto_d

    .line 3599
    :cond_26
    const/4 v2, 0x0

    if-eqz p2, :cond_34

    iget-object v3, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v3, v3, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    .line 3600
    invoke-static {v3, p2, v2}, Lcom/android/server/content/SyncManager;->syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z

    move-result v3

    if-nez v3, :cond_34

    .line 3603
    goto :goto_d

    .line 3605
    :cond_34
    iget-object v3, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget v3, v3, Lcom/android/server/content/SyncOperation;->jobId:I

    invoke-static {v3, v2, p3}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZLjava/lang/String;)V

    .line 3607
    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 3609
    :cond_3f
    goto :goto_d

    .line 3610
    :cond_40
    return-void
.end method

.method private closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    .registers 6

    .line 3757
    invoke-virtual {p1}, Lcom/android/server/content/SyncManager$ActiveSyncContext;->close()V

    .line 3758
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3759
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$800(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncInfo:Landroid/content/SyncInfo;

    iget-object v2, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v2, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/content/SyncStorageEngine;->removeActiveSync(Landroid/content/SyncInfo;I)V

    .line 3762
    const/4 v0, 0x2

    const-string v1, "SyncManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 3763
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removing all MESSAGE_MONITOR_SYNC & MESSAGE_SYNC_EXPIRED for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3764
    invoke-virtual {p1}, Lcom/android/server/content/SyncManager$ActiveSyncContext;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3763
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3766
    :cond_3d
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$1700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncManager$SyncHandler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->removeMessages(ILjava/lang/Object;)V

    .line 3768
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "closeActiveSyncContext: "

    aput-object v3, v0, v2

    const/4 v2, 0x1

    aput-object p1, v0, v2

    invoke-virtual {v1, v0}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3769
    return-void
.end method

.method private computeSyncOpState(Lcom/android/server/content/SyncOperation;)I
    .registers 11

    .line 3444
    const/4 v0, 0x2

    const-string v1, "SyncManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    .line 3446
    iget-object v3, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 3449
    iget-object v4, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v4}, Lcom/android/server/content/SyncManager;->access$3400(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;

    move-result-object v4

    .line 3450
    iget-object v5, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v6, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v7, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-static {v5, v4, v6, v7}, Lcom/android/server/content/SyncManager;->access$3600(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_24

    .line 3451
    if-eqz v2, :cond_23

    .line 3452
    const-string p1, "    Dropping sync operation: account doesn\'t exist."

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3454
    :cond_23
    return v5

    .line 3457
    :cond_24
    iget-object v4, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v6, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v7, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget-object v8, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v4, v6, v7, v8, v5}, Lcom/android/server/content/SyncManager;->computeSyncable(Landroid/accounts/Account;ILjava/lang/String;Z)I

    move-result v4

    .line 3458
    const/4 v6, 0x3

    if-ne v4, v6, :cond_3b

    .line 3459
    if-eqz v2, :cond_3a

    .line 3460
    const-string p1, "    Dropping sync operation: isSyncable == SYNCABLE_NO_ACCOUNT_ACCESS"

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3463
    :cond_3a
    return v0

    .line 3465
    :cond_3b
    if-nez v4, :cond_45

    .line 3466
    if-eqz v2, :cond_44

    .line 3467
    const-string p1, "    Dropping sync operation: isSyncable == NOT_SYNCABLE"

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3469
    :cond_44
    return v5

    .line 3472
    :cond_45
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$800(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v0

    iget v6, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v0, v6}, Lcom/android/server/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 3473
    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$800(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v0

    iget-object v7, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v8, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v0, v7, v8, v3}, Lcom/android/server/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    move v0, v5

    goto :goto_69

    :cond_68
    move v0, v6

    .line 3480
    :goto_69
    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->isIgnoreSettings()Z

    move-result p1

    if-nez p1, :cond_74

    if-gez v4, :cond_72

    goto :goto_74

    :cond_72
    move p1, v6

    goto :goto_75

    :cond_74
    :goto_74
    move p1, v5

    .line 3483
    :goto_75
    if-nez v0, :cond_81

    if-nez p1, :cond_81

    .line 3484
    if-eqz v2, :cond_80

    .line 3485
    const-string p1, "    Dropping sync operation: disallowed by settings/network."

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3487
    :cond_80
    return v5

    .line 3489
    :cond_81
    return v6
.end method

.method private deferActiveSyncH(Lcom/android/server/content/SyncManager$ActiveSyncContext;Ljava/lang/String;)V
    .registers 6

    .line 3140
    iget-object v0, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 3141
    const/4 v1, 0x0

    invoke-direct {p0, v1, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 3142
    const-wide/16 v1, 0x2710

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/android/server/content/SyncManager$SyncHandler;->deferSyncH(Lcom/android/server/content/SyncOperation;JLjava/lang/String;)V

    .line 3143
    return-void
.end method

.method private deferStoppedSyncH(Lcom/android/server/content/SyncOperation;J)V
    .registers 5

    .line 3129
    iget-boolean v0, p1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v0, :cond_e

    .line 3130
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->createOneTimeSyncOperation()Lcom/android/server/content/SyncOperation;

    move-result-object p1

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->access$2700(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V

    goto :goto_13

    .line 3132
    :cond_e
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/content/SyncManager;->access$2700(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V

    .line 3134
    :goto_13
    return-void
.end method

.method private deferSyncH(Lcom/android/server/content/SyncOperation;JLjava/lang/String;)V
    .registers 10

    .line 3113
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v0

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "deferSyncH() "

    aput-object v3, v1, v2

    iget-boolean v3, p1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v3, :cond_17

    const-string/jumbo v3, "periodic "

    goto :goto_19

    :cond_17
    const-string v3, ""

    :goto_19
    const/4 v4, 0x1

    aput-object v3, v1, v4

    const/4 v3, 0x2

    const-string/jumbo v4, "sync.  op="

    aput-object v4, v1, v3

    const/4 v3, 0x3

    aput-object p1, v1, v3

    const/4 v3, 0x4

    const-string v4, " delay="

    aput-object v4, v1, v3

    const/4 v3, 0x5

    .line 3114
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x6

    const-string v4, " why="

    aput-object v4, v1, v3

    const/4 v3, 0x7

    aput-object p4, v1, v3

    .line 3113
    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3115
    iget v0, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    invoke-static {v0, v2, p4}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZLjava/lang/String;)V

    .line 3116
    iget-boolean p4, p1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz p4, :cond_4f

    .line 3117
    iget-object p4, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->createOneTimeSyncOperation()Lcom/android/server/content/SyncOperation;

    move-result-object p1

    invoke-static {p4, p1, p2, p3}, Lcom/android/server/content/SyncManager;->access$2700(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V

    goto :goto_5b

    .line 3122
    :cond_4f
    iget-object p4, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    const-string v0, "deferSyncH()"

    invoke-static {p4, p1, v0}, Lcom/android/server/content/SyncManager;->access$1300(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 3123
    iget-object p4, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {p4, p1, p2, p3}, Lcom/android/server/content/SyncManager;->access$2700(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V

    .line 3125
    :goto_5b
    return-void
.end method

.method private dispatchSyncOperation(Lcom/android/server/content/SyncOperation;)Z
    .registers 15

    .line 3493
    const/4 v0, 0x2

    const-string v1, "SyncManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 3494
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchSyncOperation: we are going to sync "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3495
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "num active syncs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v3, v3, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3496
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v2, v2, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_42
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 3497
    invoke-virtual {v3}, Lcom/android/server/content/SyncManager$ActiveSyncContext;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3498
    goto :goto_42

    .line 3500
    :cond_56
    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->isAppStandbyExempted()Z

    move-result v2

    if-eqz v2, :cond_71

    .line 3501
    const-class v2, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStatsManagerInternal;

    .line 3503
    if-eqz v2, :cond_71

    .line 3504
    iget-object v3, p1, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/content/SyncOperation;->owningUid:I

    .line 3505
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 3504
    invoke-virtual {v2, v3, v4}, Landroid/app/usage/UsageStatsManagerInternal;->reportExemptedSyncStart(Ljava/lang/String;I)V

    .line 3512
    :cond_71
    iget-object v2, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 3513
    iget-object v3, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 3514
    invoke-static {v3, v4}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v3

    .line 3516
    iget-object v4, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v4, v4, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget v5, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v4, v3, v5}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v4

    .line 3517
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_bf

    .line 3518
    iget-object p1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {p1}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "dispatchSyncOperation() failed: no sync adapter info for "

    aput-object v4, v0, v6

    aput-object v3, v0, v5

    invoke-virtual {p1, v0}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3520
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "can\'t find a sync adapter for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", removing settings for it"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3522
    iget-object p1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {p1}, Lcom/android/server/content/SyncManager;->access$800(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/server/content/SyncStorageEngine;->removeAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 3523
    return v6

    .line 3525
    :cond_bf
    iget v12, v4, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    .line 3526
    iget-object v3, v4, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    .line 3527
    new-instance v4, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    iget-object v8, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 3528
    invoke-virtual {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->insertStartSyncEvent(Lcom/android/server/content/SyncOperation;)J

    move-result-wide v10

    move-object v7, v4

    move-object v9, p1

    invoke-direct/range {v7 .. v12}, Lcom/android/server/content/SyncManager$ActiveSyncContext;-><init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;JI)V

    .line 3529
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_ea

    .line 3530
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchSyncOperation: starting "

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3533
    :cond_ea
    iget-object p1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {p1}, Lcom/android/server/content/SyncManager;->access$800(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/android/server/content/SyncStorageEngine;->addActiveSync(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Landroid/content/SyncInfo;

    move-result-object p1

    iput-object p1, v4, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncInfo:Landroid/content/SyncInfo;

    .line 3534
    iget-object p1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object p1, p1, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3537
    iget-object p1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {p1, v4}, Lcom/android/server/content/SyncManager;->access$3000(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 3539
    iget p1, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v4, v3, p1}, Lcom/android/server/content/SyncManager$ActiveSyncContext;->bindToSyncAdapter(Landroid/content/ComponentName;I)Z

    move-result p1

    if-nez p1, :cond_133

    .line 3540
    iget-object p1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {p1}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "dispatchSyncOperation() failed: bind failed. target: "

    aput-object v2, v0, v6

    aput-object v3, v0, v5

    invoke-virtual {p1, v0}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3542
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bind attempt failed - target: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3543
    invoke-direct {p0, v4}, Lcom/android/server/content/SyncManager$SyncHandler;->closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 3544
    return v6

    .line 3547
    :cond_133
    return v5
.end method

.method private findActiveSyncContextH(I)Lcom/android/server/content/SyncManager$ActiveSyncContext;
    .registers 5

    .line 3225
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 3226
    iget-object v2, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 3227
    if-eqz v2, :cond_1d

    iget v2, v2, Lcom/android/server/content/SyncOperation;->jobId:I

    if-ne v2, p1, :cond_1d

    .line 3228
    return-object v1

    .line 3230
    :cond_1d
    goto :goto_8

    .line 3231
    :cond_1e
    const/4 p1, 0x0

    return-object p1
.end method

.method private getSyncWakeLock(Lcom/android/server/content/SyncOperation;)Landroid/os/PowerManager$WakeLock;
    .registers 5

    .line 3096
    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->wakeLockName()Ljava/lang/String;

    move-result-object p1

    .line 3097
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager$WakeLock;

    .line 3098
    if-nez v0, :cond_33

    .line 3099
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*sync*/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3100
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$3100(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 3101
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 3102
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3104
    :cond_33
    return-object v0
.end method

.method private handleSyncMessage(Landroid/os/Message;)V
    .registers 10

    .line 2927
    const/4 v0, 0x2

    const-string v1, "SyncManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    .line 2930
    :try_start_7
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v4, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v4}, Lcom/android/server/content/SyncManager;->access$400(Lcom/android/server/content/SyncManager;)Z

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/content/SyncManager;->access$302(Lcom/android/server/content/SyncManager;Z)Z

    .line 2931
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v3, v4, :cond_1fd

    const/4 v6, 0x4

    if-eq v3, v6, :cond_1cf

    const/4 v7, 0x5

    if-eq v3, v7, :cond_145

    const/4 v6, 0x6

    if-eq v3, v6, :cond_118

    const/4 v6, 0x0

    packed-switch v3, :pswitch_data_262

    goto/16 :goto_253

    .line 2981
    :pswitch_27  #0xe
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 2982
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, p1, v0}, Lcom/android/server/content/SyncManager$SyncHandler;->removePeriodicSyncH(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 2983
    goto/16 :goto_253

    .line 2975
    :pswitch_3c  #0xd
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;

    .line 2977
    iget-object v1, p1, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-wide v2, p1, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;->pollFrequency:J

    iget-wide v4, p1, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;->flex:J

    iget-object v6, p1, Lcom/android/server/content/SyncManager$UpdatePeriodicSyncMessagePayload;->extras:Landroid/os/Bundle;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/content/SyncManager$SyncHandler;->updateOrAddPeriodicSyncH(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V

    .line 2979
    goto/16 :goto_253

    .line 2940
    :pswitch_4e  #0xc
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;

    .line 2942
    iget-object v0, p1, Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;->syncOperation:Lcom/android/server/content/SyncOperation;

    .line 2943
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-wide v2, p1, Lcom/android/server/content/SyncManager$ScheduleSyncMessagePayload;->minDelayMillis:J

    invoke-static {v1, v0, v2, v3}, Lcom/android/server/content/SyncManager;->access$2700(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V

    .line 2944
    goto/16 :goto_253

    .line 2952
    :pswitch_5d  #0xb
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/content/SyncOperation;

    .line 2953
    if-eqz v2, :cond_68

    .line 2954
    const-string v3, "Stop sync received."

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2956
    :cond_68
    iget v3, v0, Lcom/android/server/content/SyncOperation;->jobId:I

    invoke-direct {p0, v3}, Lcom/android/server/content/SyncManager$SyncHandler;->findActiveSyncContextH(I)Lcom/android/server/content/SyncManager$ActiveSyncContext;

    move-result-object v3

    .line 2957
    if-eqz v3, :cond_253

    .line 2958
    invoke-direct {p0, v6, v3}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 2959
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_79

    move v3, v4

    goto :goto_7a

    :cond_79
    move v3, v5

    .line 2960
    :goto_7a
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_7f

    goto :goto_80

    :cond_7f
    move v4, v5

    .line 2961
    :goto_80
    if-eqz v2, :cond_9e

    .line 2962
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping sync. Reschedule: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "Backoff: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2965
    :cond_9e
    if-eqz v4, :cond_a7

    .line 2966
    iget-object p1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v1, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-static {p1, v1}, Lcom/android/server/content/SyncManager;->access$2800(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 2968
    :cond_a7
    if-eqz v3, :cond_ae

    .line 2969
    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/content/SyncManager$SyncHandler;->deferStoppedSyncH(Lcom/android/server/content/SyncOperation;J)V

    .line 2971
    :cond_ae
    goto/16 :goto_253

    .line 2947
    :pswitch_b0  #0xa
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/content/SyncOperation;

    .line 2948
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->startSyncH(Lcom/android/server/content/SyncOperation;)V

    .line 2949
    goto/16 :goto_253

    .line 2933
    :pswitch_b9  #0x9
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 2934
    const-string v0, "handleSyncHandlerMessage: MESSAGE_ACCOUNTS_UPDATED"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2936
    :cond_c4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 2937
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->updateRunningAccountsH(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 2938
    goto/16 :goto_253

    .line 3068
    :pswitch_cd  #0x8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 3069
    if-eqz v2, :cond_eb

    .line 3070
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSyncHandlerMessage: MESSAGE_MONITOR_SYNC: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v2, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3074
    :cond_eb
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->isSyncNotUsingNetworkH(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z

    move-result v0

    if-eqz v0, :cond_111

    .line 3075
    const-string v0, "Detected sync making no progress for %s. cancelling."

    new-array v2, v4, [Ljava/lang/Object;

    .line 3077
    invoke-static {p1}, Lcom/android/server/content/SyncLogger;->logSafe(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 3075
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3078
    iget-object v0, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget v0, v0, Lcom/android/server/content/SyncOperation;->jobId:I

    const-string/jumbo v1, "no network activity"

    invoke-static {v0, v5, v1}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZLjava/lang/String;)V

    .line 3081
    invoke-direct {p0, v6, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    goto/16 :goto_253

    .line 3085
    :cond_111
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0, p1}, Lcom/android/server/content/SyncManager;->access$3000(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    goto/16 :goto_253

    .line 2986
    :cond_118
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 2987
    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object p1

    .line 2988
    if-eqz v2, :cond_13e

    .line 2989
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSyncHandlerMessage: MESSAGE_CANCEL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " bundle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2992
    :cond_13e
    const-string v1, "MESSAGE_CANCEL"

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->cancelActiveSyncH(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 2993
    goto/16 :goto_253

    .line 3032
    :cond_145
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/content/SyncManager$ServiceConnectionData;

    iget-object p1, p1, Lcom/android/server/content/SyncManager$ServiceConnectionData;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 3034
    if-eqz v2, :cond_161

    .line 3035
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSyncHandlerMessage: MESSAGE_SERVICE_DISCONNECTED: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3039
    :cond_161
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v1, p1}, Lcom/android/server/content/SyncManager;->access$2900(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z

    move-result v1
    :try_end_167
    .catchall {:try_start_7 .. :try_end_167} :catchall_25a

    if-eqz v1, :cond_253

    .line 3043
    :try_start_169
    iget-object v1, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    if-eqz v1, :cond_19b

    .line 3044
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "Calling cancelSync for SERVICE_DISCONNECTED "

    aput-object v3, v2, v5

    aput-object p1, v2, v4

    const-string v3, " adapter="

    aput-object v3, v2, v0

    const/4 v3, 0x3

    iget-object v6, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    aput-object v6, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3047
    iget-object v1, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    invoke-interface {v1, p1}, Landroid/content/ISyncAdapter;->cancelSync(Landroid/content/ISyncContext;)V

    .line 3048
    iget-object v1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "Canceled"

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V
    :try_end_19b
    .catch Landroid/os/RemoteException; {:try_start_169 .. :try_end_19b} :catch_19c
    .catchall {:try_start_169 .. :try_end_19b} :catchall_25a

    .line 3053
    :cond_19b
    goto :goto_1b2

    .line 3050
    :catch_19c
    move-exception v1

    .line 3051
    :try_start_19d
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "RemoteException "

    aput-object v3, v0, v5

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {v2, v0}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3057
    :goto_1b2
    new-instance v0, Landroid/content/SyncResult;

    invoke-direct {v0}, Landroid/content/SyncResult;-><init>()V

    .line 3058
    iget-object v1, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v2, v1, Landroid/content/SyncStats;->numIoExceptions:J

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    iput-wide v2, v1, Landroid/content/SyncStats;->numIoExceptions:J

    .line 3059
    iget-object v1, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget v1, v1, Lcom/android/server/content/SyncOperation;->jobId:I

    const-string/jumbo v2, "service disconnected"

    invoke-static {v1, v5, v2}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZLjava/lang/String;)V

    .line 3062
    invoke-direct {p0, v0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 3063
    goto/16 :goto_253

    .line 3017
    :cond_1cf
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/content/SyncManager$ServiceConnectionData;

    .line 3018
    if-eqz v2, :cond_1eb

    .line 3019
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSyncHandlerMessage: MESSAGE_SERVICE_CONNECTED: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/content/SyncManager$ServiceConnectionData;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3023
    :cond_1eb
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v1, p1, Lcom/android/server/content/SyncManager$ServiceConnectionData;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    invoke-static {v0, v1}, Lcom/android/server/content/SyncManager;->access$2900(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z

    move-result v0

    if-eqz v0, :cond_253

    .line 3024
    iget-object v0, p1, Lcom/android/server/content/SyncManager$ServiceConnectionData;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    iget-object p1, p1, Lcom/android/server/content/SyncManager$ServiceConnectionData;->adapter:Landroid/os/IBinder;

    invoke-direct {p0, v0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->runBoundToAdapterH(Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/os/IBinder;)V

    goto :goto_253

    .line 2996
    :cond_1fd
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;

    .line 2998
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v3, p1, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    invoke-static {v0, v3}, Lcom/android/server/content/SyncManager;->access$2900(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z

    move-result v0

    if-nez v0, :cond_224

    .line 2999
    if-eqz v2, :cond_253

    .line 3000
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSyncHandlerMessage: dropping since the sync is no longer active: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_253

    .line 3006
    :cond_224
    if-eqz v2, :cond_23f

    .line 3007
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "syncFinished"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    iget-object v2, v2, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3009
    :cond_23f
    iget-object v0, p1, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    iget-object v0, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget v0, v0, Lcom/android/server/content/SyncOperation;->jobId:I

    const-string/jumbo v1, "sync finished"

    invoke-static {v0, v5, v1}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZLjava/lang/String;)V

    .line 3012
    iget-object v0, p1, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;->syncResult:Landroid/content/SyncResult;

    iget-object p1, p1, Lcom/android/server/content/SyncManager$SyncFinishedOrCancelledMessagePayload;->activeSyncContext:Lcom/android/server/content/SyncManager$ActiveSyncContext;

    invoke-direct {p0, v0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    :try_end_252
    .catchall {:try_start_19d .. :try_end_252} :catchall_25a

    .line 3014
    nop

    .line 3091
    :cond_253
    :goto_253
    iget-object p1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    invoke-virtual {p1}, Lcom/android/server/content/SyncManager$SyncTimeTracker;->update()V

    .line 3092
    nop

    .line 3093
    return-void

    .line 3091
    :catchall_25a
    move-exception p1

    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->mSyncTimeTracker:Lcom/android/server/content/SyncManager$SyncTimeTracker;

    invoke-virtual {v0}, Lcom/android/server/content/SyncManager$SyncTimeTracker;->update()V

    throw p1

    nop

    :pswitch_data_262
    .packed-switch 0x8
        :pswitch_cd  #00000008
        :pswitch_b9  #00000009
        :pswitch_b0  #0000000a
        :pswitch_5d  #0000000b
        :pswitch_4e  #0000000c
        :pswitch_3c  #0000000d
        :pswitch_27  #0000000e
    .end packed-switch
.end method

.method private installHandleTooManyDeletesNotification(Landroid/accounts/Account;Ljava/lang/String;JI)V
    .registers 14

    .line 3802
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$4700(Lcom/android/server/content/SyncManager;)Landroid/app/NotificationManager;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 3804
    :cond_9
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$2000(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 3806
    if-nez v0, :cond_1b

    .line 3807
    return-void

    .line 3809
    :cond_1b
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$2000(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3811
    new-instance v4, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$2000(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/content/SyncActivityTooManyDeletes;

    invoke-direct {v4, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3812
    const-string v2, "account"

    invoke-virtual {v4, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3813
    const-string v2, "authority"

    invoke-virtual {v4, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3814
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "provider"

    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3815
    const-string/jumbo v2, "numDeletes"

    invoke-virtual {v4, v2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3817
    invoke-direct {p0, v4}, Lcom/android/server/content/SyncManager$SyncHandler;->isActivityAvailable(Landroid/content/Intent;)Z

    move-result p3

    if-nez p3, :cond_5e

    .line 3818
    const-string p1, "SyncManager"

    const-string p2, "No activity found to handle too many deletes."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3819
    return-void

    .line 3822
    :cond_5e
    new-instance p3, Landroid/os/UserHandle;

    invoke-direct {p3, p5}, Landroid/os/UserHandle;-><init>(I)V

    .line 3823
    iget-object p4, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 3824
    invoke-static {p4}, Lcom/android/server/content/SyncManager;->access$2000(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v5, 0x10000000

    const/4 v6, 0x0

    move-object v7, p3

    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p4

    .line 3827
    iget-object p5, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {p5}, Lcom/android/server/content/SyncManager;->access$2000(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    const v2, 0x10401ba

    invoke-virtual {p5, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p5

    .line 3830
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2, p3}, Lcom/android/server/content/SyncManager;->access$4800(Lcom/android/server/content/SyncManager;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    .line 3831
    new-instance v3, Landroid/app/Notification$Builder;

    sget-object v4, Lcom/android/internal/notification/SystemNotificationChannels;->ACCOUNT:Ljava/lang/String;

    invoke-direct {v3, v2, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v4, 0x10807e0

    .line 3833
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    .line 3834
    invoke-static {v4}, Lcom/android/server/content/SyncManager;->access$2000(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x10401b8

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 3835
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x106001c

    .line 3836
    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x10401b9

    .line 3838
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 3841
    invoke-interface {p5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p5

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    invoke-static {p5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    .line 3840
    invoke-virtual {v2, p5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p5

    .line 3842
    invoke-virtual {p5, p4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p4

    .line 3843
    invoke-virtual {p4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p4

    .line 3844
    iget p5, p4, Landroid/app/Notification;->flags:I

    or-int/lit8 p5, p5, 0x2

    iput p5, p4, Landroid/app/Notification;->flags:I

    .line 3845
    iget-object p5, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {p5}, Lcom/android/server/content/SyncManager;->access$4700(Lcom/android/server/content/SyncManager;)Landroid/app/NotificationManager;

    move-result-object p5

    .line 3846
    invoke-virtual {p1}, Landroid/accounts/Account;->hashCode()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    xor-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x12

    .line 3845
    invoke-virtual {p5, p1, p2, p4, p3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 3849
    return-void
.end method

.method private isActivityAvailable(Landroid/content/Intent;)Z
    .registers 7

    .line 3858
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$2000(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3859
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 3860
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 3861
    move v2, v1

    :goto_14
    if-ge v2, v0, :cond_2a

    .line 3862
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 3863
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_27

    .line 3865
    return v4

    .line 3861
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 3869
    :cond_2a
    return v1
.end method

.method private isSyncNotUsingNetworkH(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Z
    .registers 19

    .line 3417
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget v2, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapterUid:I

    .line 3418
    invoke-static {v1, v2}, Lcom/android/server/content/SyncManager;->access$4100(Lcom/android/server/content/SyncManager;I)J

    move-result-wide v1

    .line 3419
    iget-wide v3, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mBytesTransferredAtLastPoll:J

    sub-long/2addr v1, v3

    .line 3422
    const/4 v3, 0x3

    const-string v4, "SyncManager"

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_5c

    .line 3424
    nop

    .line 3425
    const-wide/32 v8, 0x100000

    div-long v10, v1, v8

    .line 3426
    rem-long v8, v1, v8

    .line 3427
    const-wide/16 v12, 0x400

    div-long v14, v8, v12

    .line 3428
    rem-long/2addr v8, v12

    .line 3429
    nop

    .line 3430
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    .line 3432
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    move-object/from16 v16, v4

    iget-wide v3, v0, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mLastPolledTimeElapsed:J

    sub-long/2addr v12, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v12, v3

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v7

    .line 3434
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x2

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v5, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v3, 0x3

    aput-object v0, v5, v3

    .line 3430
    const-string v0, "Time since last update: %ds. Delta transferred: %dMBs,%dKBs,%dBs"

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, v16

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3437
    :cond_5c
    const-wide/16 v3, 0xa

    cmp-long v0, v1, v3

    if-gtz v0, :cond_63

    goto :goto_64

    :cond_63
    move v6, v7

    :goto_64
    return v6
.end method

.method private maybeUpdateSyncPeriodH(Lcom/android/server/content/SyncOperation;JJ)V
    .registers 14

    .line 3300
    iget-wide v0, p1, Lcom/android/server/content/SyncOperation;->periodMillis:J

    cmp-long v0, p2, v0

    if-nez v0, :cond_c

    iget-wide v0, p1, Lcom/android/server/content/SyncOperation;->flexMillis:J

    cmp-long v0, p4, v0

    if-eqz v0, :cond_4c

    .line 3302
    :cond_c
    const/4 v0, 0x2

    const-string v1, "SyncManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 3303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updating period "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " and flex to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3306
    :cond_3a
    new-instance v0, Lcom/android/server/content/SyncOperation;

    move-object v2, v0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncOperation;JJ)V

    .line 3308
    iget p1, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    iput p1, v0, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 3309
    iget-object p1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {p1, v0}, Lcom/android/server/content/SyncManager;->access$3700(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V

    .line 3311
    :cond_4c
    return-void
.end method

.method private removePeriodicSyncH(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 8

    .line 3406
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$3800(Lcom/android/server/content/SyncManager;)V

    .line 3407
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$1200(Lcom/android/server/content/SyncManager;)Ljava/util/List;

    move-result-object v0

    .line 3408
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncOperation;

    .line 3409
    iget-boolean v2, v1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v2, :cond_33

    iget-object v2, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v2, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, v1, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const/4 v3, 0x1

    .line 3410
    invoke-static {v2, p2, v3}, Lcom/android/server/content/SyncManager;->syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 3411
    invoke-direct {p0, v1, p3}, Lcom/android/server/content/SyncManager$SyncHandler;->removePeriodicSyncInternalH(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 3413
    :cond_33
    goto :goto_f

    .line 3414
    :cond_34
    return-void
.end method

.method private removePeriodicSyncInternalH(Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V
    .registers 9

    .line 3390
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$1200(Lcom/android/server/content/SyncManager;)Ljava/util/List;

    move-result-object v0

    .line 3391
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncOperation;

    .line 3392
    iget v2, v1, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    iget v3, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    if-eq v2, v3, :cond_22

    iget v2, v1, Lcom/android/server/content/SyncOperation;->jobId:I

    iget v3, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    if-ne v2, v3, :cond_50

    .line 3393
    :cond_22
    iget v2, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    invoke-direct {p0, v2}, Lcom/android/server/content/SyncManager$SyncHandler;->findActiveSyncContextH(I)Lcom/android/server/content/SyncManager$ActiveSyncContext;

    move-result-object v2

    .line 3394
    const/4 v3, 0x0

    if-eqz v2, :cond_37

    .line 3395
    iget v4, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    const-string/jumbo v5, "removePeriodicSyncInternalH"

    invoke-static {v4, v3, v5}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZLjava/lang/String;)V

    .line 3397
    const/4 v4, 0x0

    invoke-direct {p0, v4, v2}, Lcom/android/server/content/SyncManager$SyncHandler;->runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 3399
    :cond_37
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "removePeriodicSyncInternalH-canceling: "

    aput-object v5, v4, v3

    const/4 v3, 0x1

    aput-object v1, v4, v3

    invoke-virtual {v2, v4}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3400
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2, v1, p2}, Lcom/android/server/content/SyncManager;->access$1300(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 3402
    :cond_50
    goto :goto_a

    .line 3403
    :cond_51
    return-void
.end method

.method private reschedulePeriodicSyncH(Lcom/android/server/content/SyncOperation;)V
    .registers 5

    .line 3617
    nop

    .line 3618
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$1200(Lcom/android/server/content/SyncManager;)Ljava/util/List;

    move-result-object v0

    .line 3619
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncOperation;

    .line 3620
    iget-boolean v2, v1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v2, :cond_23

    invoke-virtual {p1, v1}, Lcom/android/server/content/SyncOperation;->matchesPeriodicOperation(Lcom/android/server/content/SyncOperation;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 3621
    nop

    .line 3622
    goto :goto_25

    .line 3624
    :cond_23
    goto :goto_b

    .line 3619
    :cond_24
    const/4 v1, 0x0

    .line 3625
    :goto_25
    if-nez v1, :cond_28

    .line 3626
    return-void

    .line 3628
    :cond_28
    iget-object p1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {p1, v1}, Lcom/android/server/content/SyncManager;->access$3700(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V

    .line 3629
    return-void
.end method

.method private runBoundToAdapterH(Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/os/IBinder;)V
    .registers 13

    .line 3552
    const-string v0, "SyncManager"

    iget-object v1, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 3554
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_7
    iput-boolean v4, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mIsLinkedToDeath:Z

    .line 3555
    invoke-interface {p2, p1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 3557
    iget-object v5, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v5}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v5

    const/16 v6, 0x9

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sync start: account="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v8, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    const-string v7, " authority="

    aput-object v7, v6, v4

    iget-object v7, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v7, v7, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    aput-object v7, v6, v2

    const/4 v7, 0x3

    const-string v8, " reason="

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const/4 v8, 0x0

    iget v9, v1, Lcom/android/server/content/SyncOperation;->reason:I

    .line 3559
    invoke-static {v8, v9}, Lcom/android/server/content/SyncOperation;->reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const-string v8, " extras="

    aput-object v8, v6, v7

    const/4 v7, 0x6

    iget-object v8, v1, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    .line 3560
    invoke-static {v8}, Lcom/android/server/content/SyncOperation;->extrasToString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x7

    const-string v8, " adapter="

    aput-object v8, v6, v7

    const/16 v7, 0x8

    iget-object v8, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    aput-object v8, v6, v7

    .line 3557
    invoke-virtual {v5, v6}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3563
    invoke-static {p2}, Landroid/content/ISyncAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/ISyncAdapter;

    move-result-object p2

    iput-object p2, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    .line 3564
    iget-object p2, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    iget-object v5, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v5, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v6, v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v7, v1, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    .line 3565
    invoke-interface {p2, p1, v5, v6, v7}, Landroid/content/ISyncAdapter;->startSync(Landroid/content/ISyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;)V

    .line 3568
    iget-object p2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {p2}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object p2

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "Sync is running now..."

    aput-object v6, v5, v3

    invoke-virtual {p2, v5}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V
    :try_end_86
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_86} :catch_b9
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_86} :catch_87

    goto :goto_e3

    .line 3575
    :catch_87
    move-exception p2

    .line 3576
    iget-object v5, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v5}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "Sync failed with RuntimeException: "

    aput-object v6, v2, v3

    invoke-virtual {p2}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v5, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3577
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 3578
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caught RuntimeException while starting the sync "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3579
    invoke-static {v1}, Lcom/android/server/content/SyncLogger;->logSafe(Lcom/android/server/content/SyncOperation;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3578
    invoke-static {v0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e4

    .line 3569
    :catch_b9
    move-exception p2

    .line 3570
    iget-object v5, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v5}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "Sync failed with RemoteException: "

    aput-object v6, v2, v3

    invoke-virtual {p2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v5, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3571
    const-string v2, "maybeStartNextSync: caught a RemoteException, rescheduling"

    invoke-static {v0, v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3572
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 3573
    iget-object p1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object p2, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-static {p1, p2}, Lcom/android/server/content/SyncManager;->access$2800(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 3574
    iget-object p1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {p1, v1}, Lcom/android/server/content/SyncManager;->access$3700(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V

    .line 3580
    :goto_e3
    nop

    .line 3581
    :goto_e4
    return-void
.end method

.method private runSyncFinishedOrCanceledH(Landroid/content/SyncResult;Lcom/android/server/content/SyncManager$ActiveSyncContext;)V
    .registers 19

    .line 3633
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v1, p2

    const/4 v2, 0x2

    const-string v0, "SyncManager"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    .line 3635
    iget-object v12, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    .line 3636
    iget-object v13, v12, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 3638
    iget-boolean v4, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mIsLinkedToDeath:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_21

    .line 3639
    iget-object v4, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    invoke-interface {v4}, Landroid/content/ISyncAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v4, v1, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 3640
    iput-boolean v5, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mIsLinkedToDeath:Z

    .line 3642
    :cond_21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    sub-long v8, v6, v8

    .line 3647
    iget-object v4, v10, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v4}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v4

    const/4 v6, 0x4

    new-array v7, v6, [Ljava/lang/Object;

    const-string/jumbo v14, "runSyncFinishedOrCanceledH() op="

    aput-object v14, v7, v5

    const/4 v14, 0x1

    aput-object v12, v7, v14

    const-string v15, " result="

    aput-object v15, v7, v2

    const/4 v15, 0x3

    aput-object v11, v7, v15

    invoke-virtual {v4, v7}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3649
    if-eqz v11, :cond_fb

    .line 3650
    if-eqz v3, :cond_65

    .line 3651
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "runSyncFinishedOrCanceled [finished]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3657
    :cond_65
    invoke-direct {v10, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    .line 3661
    iget-boolean v2, v12, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v2, :cond_74

    .line 3662
    iget-object v2, v10, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    const-string/jumbo v3, "runSyncFinishedOrCanceledH()-finished"

    invoke-static {v2, v12, v3}, Lcom/android/server/content/SyncManager;->access$1300(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 3665
    :cond_74
    invoke-virtual/range {p1 .. p1}, Landroid/content/SyncResult;->hasError()Z

    move-result v2

    if-nez v2, :cond_94

    .line 3666
    nop

    .line 3668
    nop

    .line 3669
    nop

    .line 3670
    iget-object v0, v10, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v2, v12, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const-string/jumbo v3, "sync success"

    invoke-static {v0, v2, v3}, Lcom/android/server/content/SyncManager;->access$4200(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    .line 3675
    invoke-virtual {v12}, Lcom/android/server/content/SyncOperation;->isDerivedFromFailedPeriodicSync()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 3676
    invoke-direct {v10, v12}, Lcom/android/server/content/SyncManager$SyncHandler;->reschedulePeriodicSyncH(Lcom/android/server/content/SyncOperation;)V

    .line 3703
    :cond_90
    const-string/jumbo v0, "success"

    goto :goto_f0

    .line 3679
    :cond_94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed sync operation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3680
    invoke-static {v12}, Lcom/android/server/content/SyncLogger;->logSafe(Lcom/android/server/content/SyncOperation;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3679
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3682
    iget v0, v12, Lcom/android/server/content/SyncOperation;->retries:I

    add-int/2addr v0, v14

    iput v0, v12, Lcom/android/server/content/SyncOperation;->retries:I

    .line 3683
    iget v0, v12, Lcom/android/server/content/SyncOperation;->retries:I

    iget-object v2, v10, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$4300(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncManagerConstants;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/content/SyncManagerConstants;->getMaxRetriesWithAppStandbyExemption()I

    move-result v2

    if-le v0, v2, :cond_c9

    .line 3684
    iput v5, v12, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    .line 3688
    :cond_c9
    iget-object v0, v10, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v2, v12, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-static {v0, v2}, Lcom/android/server/content/SyncManager;->access$2800(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 3689
    iget-boolean v0, v12, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v0, :cond_da

    .line 3691
    iget-object v0, v10, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0, v11, v12}, Lcom/android/server/content/SyncManager;->access$4400(Lcom/android/server/content/SyncManager;Landroid/content/SyncResult;Lcom/android/server/content/SyncOperation;)V

    goto :goto_e5

    .line 3694
    :cond_da
    iget-object v0, v10, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-virtual {v12}, Lcom/android/server/content/SyncOperation;->createOneTimeSyncOperation()Lcom/android/server/content/SyncOperation;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-static {v0, v2, v3, v4}, Lcom/android/server/content/SyncManager;->access$4500(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;J)V

    .line 3697
    :goto_e5
    nop

    .line 3698
    invoke-direct/range {p0 .. p1}, Lcom/android/server/content/SyncManager$SyncHandler;->syncResultToErrorNumber(Landroid/content/SyncResult;)I

    move-result v0

    .line 3697
    invoke-static {v0}, Landroid/content/ContentResolver;->syncErrorToString(I)Ljava/lang/String;

    move-result-object v0

    .line 3700
    nop

    .line 3701
    nop

    .line 3703
    :goto_f0
    iget-object v2, v10, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v3, v12, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-wide v4, v11, Landroid/content/SyncResult;->delayUntil:J

    invoke-static {v2, v3, v4, v5}, Lcom/android/server/content/SyncManager;->access$4600(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V

    move-object v5, v0

    goto :goto_16f

    .line 3705
    :cond_fb
    if-eqz v3, :cond_112

    .line 3706
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "runSyncFinishedOrCanceled [canceled]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3709
    :cond_112
    iget-boolean v0, v12, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v0, :cond_11e

    .line 3710
    iget-object v0, v10, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    const-string/jumbo v3, "runSyncFinishedOrCanceledH()-canceled"

    invoke-static {v0, v12, v3}, Lcom/android/server/content/SyncManager;->access$1300(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 3713
    :cond_11e
    iget-object v0, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    if-eqz v0, :cond_166

    .line 3715
    :try_start_122
    iget-object v0, v10, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v0

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "Calling cancelSync for runSyncFinishedOrCanceled "

    aput-object v4, v3, v5

    aput-object v1, v3, v14

    const-string v4, "  adapter="

    aput-object v4, v3, v2

    iget-object v4, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    aput-object v4, v3, v15

    invoke-virtual {v0, v3}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3717
    iget-object v0, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncAdapter:Landroid/content/ISyncAdapter;

    invoke-interface {v0, v1}, Landroid/content/ISyncAdapter;->cancelSync(Landroid/content/ISyncContext;)V

    .line 3718
    iget-object v0, v10, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v0

    new-array v3, v14, [Ljava/lang/Object;

    const-string v4, "Canceled"

    aput-object v4, v3, v5

    invoke-virtual {v0, v3}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V
    :try_end_14f
    .catch Landroid/os/RemoteException; {:try_start_122 .. :try_end_14f} :catch_150

    .line 3722
    goto :goto_166

    .line 3719
    :catch_150
    move-exception v0

    .line 3720
    iget-object v3, v10, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "RemoteException "

    aput-object v4, v2, v5

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v14

    invoke-virtual {v3, v2}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3724
    :cond_166
    :goto_166
    nop

    .line 3725
    nop

    .line 3726
    nop

    .line 3729
    invoke-direct {v10, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->closeActiveSyncContext(Lcom/android/server/content/SyncManager$ActiveSyncContext;)V

    const-string v0, "canceled"

    move-object v5, v0

    .line 3732
    :goto_16f
    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-wide v2, v1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mHistoryRowId:J

    move-object/from16 v1, p0

    move-object v4, v12

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/content/SyncManager$SyncHandler;->stopSyncEvent(JLcom/android/server/content/SyncOperation;Ljava/lang/String;IIJ)V

    .line 3735
    if-eqz v11, :cond_18f

    iget-boolean v0, v11, Landroid/content/SyncResult;->tooManyDeletions:Z

    if-eqz v0, :cond_18f

    .line 3736
    iget-object v2, v13, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v3, v13, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    iget-object v0, v11, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v0, Landroid/content/SyncStats;->numDeletes:J

    iget v6, v13, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/content/SyncManager$SyncHandler;->installHandleTooManyDeletesNotification(Landroid/accounts/Account;Ljava/lang/String;JI)V

    goto :goto_1b2

    .line 3740
    :cond_18f
    iget-object v0, v10, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$4700(Lcom/android/server/content/SyncManager;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, v13, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 3741
    invoke-virtual {v1}, Landroid/accounts/Account;->hashCode()I

    move-result v1

    iget-object v2, v13, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    new-instance v3, Landroid/os/UserHandle;

    iget v4, v13, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 3740
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 3745
    :goto_1b2
    if-eqz v11, :cond_1da

    iget-boolean v0, v11, Landroid/content/SyncResult;->fullSyncRequested:Z

    if-eqz v0, :cond_1da

    .line 3746
    iget-object v0, v10, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    new-instance v14, Lcom/android/server/content/SyncOperation;

    iget-object v2, v13, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v3, v13, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget v4, v12, Lcom/android/server/content/SyncOperation;->owningUid:I

    iget-object v5, v12, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget v6, v12, Lcom/android/server/content/SyncOperation;->reason:I

    iget v7, v12, Lcom/android/server/content/SyncOperation;->syncSource:I

    iget-object v8, v13, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    iget-boolean v10, v12, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    iget v11, v12, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    move-object v1, v14

    invoke-direct/range {v1 .. v11}, Lcom/android/server/content/SyncOperation;-><init>(Landroid/accounts/Account;IILjava/lang/String;IILjava/lang/String;Landroid/os/Bundle;ZI)V

    invoke-static {v0, v14}, Lcom/android/server/content/SyncManager;->access$3700(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V

    .line 3754
    :cond_1da
    return-void
.end method

.method private startSyncH(Lcom/android/server/content/SyncOperation;)V
    .registers 9

    .line 3146
    const/4 v0, 0x2

    const-string v1, "SyncManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    .line 3147
    if-eqz v2, :cond_10

    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3151
    :cond_10
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$800(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/content/SyncStorageEngine;->setClockValid()V

    .line 3153
    iget v3, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    invoke-static {v3}, Lcom/android/server/content/SyncJobService;->markSyncStarted(I)V

    .line 3155
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$000(Lcom/android/server/content/SyncManager;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 3156
    const-wide/32 v0, 0x36ee80

    const-string/jumbo v2, "storage low"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/content/SyncManager$SyncHandler;->deferSyncH(Lcom/android/server/content/SyncOperation;JLjava/lang/String;)V

    .line 3157
    return-void

    .line 3160
    :cond_30
    iget-boolean v3, p1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_93

    .line 3163
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$1200(Lcom/android/server/content/SyncManager;)Ljava/util/List;

    move-result-object v3

    .line 3164
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncOperation;

    .line 3165
    iget v5, v5, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    iget v6, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    if-ne v5, v6, :cond_5a

    .line 3166
    iget p1, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    const-string/jumbo v0, "periodic sync, pending"

    invoke-static {p1, v4, v0}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZLjava/lang/String;)V

    .line 3168
    return-void

    .line 3170
    :cond_5a
    goto :goto_3f

    .line 3173
    :cond_5b
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v3, v3, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_63
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_81

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 3174
    iget-object v5, v5, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget v5, v5, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    iget v6, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    if-ne v5, v6, :cond_80

    .line 3175
    iget p1, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    const-string/jumbo v0, "periodic sync, already running"

    invoke-static {p1, v4, v0}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZLjava/lang/String;)V

    .line 3177
    return-void

    .line 3179
    :cond_80
    goto :goto_63

    .line 3181
    :cond_81
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v5, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-static {v3, v5}, Lcom/android/server/content/SyncManager;->access$3200(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v3

    if-eqz v3, :cond_93

    .line 3182
    const-wide/16 v0, 0x0

    const-string v2, "backing off"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/content/SyncManager$SyncHandler;->deferSyncH(Lcom/android/server/content/SyncOperation;JLjava/lang/String;)V

    .line 3183
    return-void

    .line 3188
    :cond_93
    iget-object v3, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v3, v3, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ec

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 3189
    iget-object v6, v5, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    invoke-virtual {v6, p1}, Lcom/android/server/content/SyncOperation;->isConflict(Lcom/android/server/content/SyncOperation;)Z

    move-result v6

    if-eqz v6, :cond_eb

    .line 3192
    iget-object v3, v5, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    invoke-virtual {v3}, Lcom/android/server/content/SyncOperation;->findPriority()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->findPriority()I

    move-result v6

    if-lt v3, v6, :cond_dd

    .line 3193
    if-eqz v2, :cond_d5

    .line 3194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rescheduling sync due to conflict "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3196
    :cond_d5
    const-wide/16 v0, 0x2710

    const-string v2, "delay on conflict"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/content/SyncManager$SyncHandler;->deferSyncH(Lcom/android/server/content/SyncOperation;JLjava/lang/String;)V

    .line 3197
    return-void

    .line 3199
    :cond_dd
    if-eqz v2, :cond_e4

    .line 3200
    const-string v2, "Pushing back running sync due to a higher priority sync"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3202
    :cond_e4
    const-string/jumbo v1, "preempted"

    invoke-direct {p0, v5, v1}, Lcom/android/server/content/SyncManager$SyncHandler;->deferActiveSyncH(Lcom/android/server/content/SyncManager$ActiveSyncContext;Ljava/lang/String;)V

    .line 3203
    goto :goto_ec

    .line 3206
    :cond_eb
    goto :goto_9b

    .line 3208
    :cond_ec
    :goto_ec
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->computeSyncOpState(Lcom/android/server/content/SyncOperation;)I

    move-result v1

    .line 3209
    const/4 v2, 0x1

    if-eq v1, v2, :cond_10a

    if-eq v1, v0, :cond_10a

    .line 3217
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->dispatchSyncOperation(Lcom/android/server/content/SyncOperation;)Z

    move-result v0

    if-nez v0, :cond_102

    .line 3218
    iget v0, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    const-string v1, "dispatchSyncOperation() failed"

    invoke-static {v0, v4, v1}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZLjava/lang/String;)V

    .line 3221
    :cond_102
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object p1, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-static {v0, p1}, Lcom/android/server/content/SyncManager;->access$3300(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 3222
    return-void

    .line 3212
    :cond_10a
    iget p1, p1, Lcom/android/server/content/SyncOperation;->jobId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid op state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v4, v0}, Lcom/android/server/content/SyncJobService;->callJobFinished(IZLjava/lang/String;)V

    .line 3214
    return-void
.end method

.method private syncResultToErrorNumber(Landroid/content/SyncResult;)I
    .registers 6

    .line 3781
    iget-boolean v0, p1, Landroid/content/SyncResult;->syncAlreadyInProgress:Z

    if-eqz v0, :cond_6

    .line 3782
    const/4 p1, 0x1

    return p1

    .line 3783
    :cond_6
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_12

    .line 3784
    const/4 p1, 0x2

    return p1

    .line 3785
    :cond_12
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numIoExceptions:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1c

    .line 3786
    const/4 p1, 0x3

    return p1

    .line 3787
    :cond_1c
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numParseExceptions:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_26

    .line 3788
    const/4 p1, 0x4

    return p1

    .line 3789
    :cond_26
    iget-object v0, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_30

    .line 3790
    const/4 p1, 0x5

    return p1

    .line 3791
    :cond_30
    iget-boolean v0, p1, Landroid/content/SyncResult;->tooManyDeletions:Z

    if-eqz v0, :cond_36

    .line 3792
    const/4 p1, 0x6

    return p1

    .line 3793
    :cond_36
    iget-boolean v0, p1, Landroid/content/SyncResult;->tooManyRetries:Z

    if-eqz v0, :cond_3c

    .line 3794
    const/4 p1, 0x7

    return p1

    .line 3795
    :cond_3c
    iget-boolean v0, p1, Landroid/content/SyncResult;->databaseError:Z

    if-eqz v0, :cond_43

    .line 3796
    const/16 p1, 0x8

    return p1

    .line 3797
    :cond_43
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "we are not in an error state, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateOrAddPeriodicSyncH(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V
    .registers 32

    .line 3315
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v14, p2

    move-wide/from16 v12, p4

    const/4 v11, 0x2

    const-string v2, "SyncManager"

    invoke-static {v2, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    .line 3316
    iget-object v4, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v4}, Lcom/android/server/content/SyncManager;->access$3800(Lcom/android/server/content/SyncManager;)V

    .line 3317
    const-wide/16 v4, 0x3e8

    mul-long v16, v14, v4

    .line 3318
    mul-long v18, v12, v4

    .line 3319
    const-string v4, " extras: "

    const-string v5, " flexMillis: "

    const-string v6, " period: "

    if-eqz v3, :cond_4c

    .line 3320
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Addition to periodic syncs requested: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3323
    invoke-virtual/range {p6 .. p6}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3320
    invoke-static {v2, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3325
    :cond_4c
    iget-object v7, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v7}, Lcom/android/server/content/SyncManager;->access$1200(Lcom/android/server/content/SyncManager;)Ljava/util/List;

    move-result-object v7

    .line 3326
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_56
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v10, 0x1

    if-eqz v8, :cond_87

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/content/SyncOperation;

    .line 3327
    iget-boolean v9, v8, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v9, :cond_83

    iget-object v9, v8, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v9, v0}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v9

    if-eqz v9, :cond_83

    iget-object v9, v8, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    .line 3328
    move-object/from16 v11, p6

    invoke-static {v9, v11, v10}, Lcom/android/server/content/SyncManager;->syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z

    move-result v9

    if-eqz v9, :cond_85

    .line 3329
    move-object/from16 p1, v8

    move-wide/from16 p2, v16

    move-wide/from16 p4, v18

    invoke-direct/range {p0 .. p5}, Lcom/android/server/content/SyncManager$SyncHandler;->maybeUpdateSyncPeriodH(Lcom/android/server/content/SyncOperation;JJ)V

    .line 3330
    return-void

    .line 3327
    :cond_83
    move-object/from16 v11, p6

    .line 3332
    :cond_85
    const/4 v11, 0x2

    goto :goto_56

    .line 3334
    :cond_87
    move-object/from16 v11, p6

    if-eqz v3, :cond_b5

    .line 3335
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Adding new periodic sync: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3338
    invoke-virtual/range {p6 .. p6}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3335
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3342
    :cond_b5
    iget-object v2, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v2, v2, Lcom/android/server/content/SyncManager;->mSyncAdapters:Landroid/content/SyncAdaptersCache;

    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 3343
    invoke-static {v3, v4}, Landroid/content/SyncAdapterType;->newKey(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SyncAdapterType;

    move-result-object v3

    iget v4, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 3342
    invoke-virtual {v2, v3, v4}, Landroid/content/SyncAdaptersCache;->getServiceInfo(Ljava/lang/Object;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v2

    .line 3346
    if-nez v2, :cond_cc

    .line 3347
    return-void

    .line 3350
    :cond_cc
    new-instance v9, Lcom/android/server/content/SyncOperation;

    iget v4, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    iget-object v3, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->componentName:Landroid/content/ComponentName;

    .line 3351
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x4

    const/4 v7, 0x4

    iget-object v2, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v2, Landroid/content/SyncAdapterType;

    .line 3353
    invoke-virtual {v2}, Landroid/content/SyncAdapterType;->allowParallelSyncs()Z

    move-result v20

    const/16 v21, 0x1

    const/16 v22, -0x1

    const/16 v23, 0x0

    move-object v2, v9

    move-object/from16 v3, p1

    move-object/from16 v8, p6

    move-object/from16 v24, v9

    move/from16 v9, v20

    move/from16 v10, v21

    move/from16 v11, v22

    move-wide/from16 v12, v16

    move-wide/from16 v14, v18

    move/from16 v16, v23

    invoke-direct/range {v2 .. v16}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZZIJJI)V

    .line 3356
    move-object/from16 v2, v24

    invoke-direct {v1, v2}, Lcom/android/server/content/SyncManager$SyncHandler;->computeSyncOpState(Lcom/android/server/content/SyncOperation;)I

    move-result v3

    .line 3357
    const/4 v4, 0x1

    if-eq v3, v4, :cond_14d

    const/4 v5, 0x2

    if-eq v3, v5, :cond_119

    .line 3380
    iget-object v3, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v3, v2}, Lcom/android/server/content/SyncManager;->access$3700(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;)V

    .line 3381
    iget-object v1, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$800(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v1

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v1, v4, v0}, Lcom/android/server/content/SyncStorageEngine;->reportChange(II)V

    .line 3383
    return-void

    .line 3359
    :cond_119
    iget-object v8, v2, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    .line 3360
    iget v3, v2, Lcom/android/server/content/SyncOperation;->owningUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 3362
    iget-object v3, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v3, v8, v9}, Lcom/android/server/content/SyncManager;->access$3900(Lcom/android/server/content/SyncManager;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_12a

    .line 3363
    return-void

    .line 3365
    :cond_12a
    iget-object v3, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v3}, Lcom/android/server/content/SyncManager;->access$4000(Lcom/android/server/content/SyncManager;)Landroid/accounts/AccountManagerInternal;

    move-result-object v10

    iget-object v2, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v11, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    new-instance v12, Landroid/os/RemoteCallback;

    new-instance v13, Lcom/android/server/content/-$$Lambda$SyncManager$SyncHandler$7-vThHsPImW4qB6AnVEnnD3dGhM;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/content/-$$Lambda$SyncManager$SyncHandler$7-vThHsPImW4qB6AnVEnnD3dGhM;-><init>(Lcom/android/server/content/SyncManager$SyncHandler;Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V

    invoke-direct {v12, v13}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-virtual {v10, v11, v8, v9, v12}, Landroid/accounts/AccountManagerInternal;->requestAccountAccess(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    .line 3373
    return-void

    .line 3376
    :cond_14d
    return-void
.end method

.method private updateRunningAccountsH(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .registers 23

    .line 3235
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$3400(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;

    move-result-object v2

    .line 3236
    iget-object v3, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountManagerService;->getRunningAccounts()[Landroid/accounts/AccountAndUser;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/content/SyncManager;->access$3402(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;)[Landroid/accounts/AccountAndUser;

    .line 3237
    const/4 v3, 0x2

    const-string v4, "SyncManager"

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3c

    .line 3238
    const-string v5, "Accounts list: "

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3239
    iget-object v5, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v5}, Lcom/android/server/content/SyncManager;->access$3400(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;

    move-result-object v5

    array-length v7, v5

    move v8, v6

    :goto_2e
    if-ge v8, v7, :cond_3c

    aget-object v9, v5, v8

    .line 3240
    invoke-virtual {v9}, Landroid/accounts/AccountAndUser;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3239
    add-int/lit8 v8, v8, 0x1

    goto :goto_2e

    .line 3243
    :cond_3c
    iget-object v5, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v5}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/content/SyncLogger;->enabled()Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_65

    .line 3244
    iget-object v5, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v5}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v5

    new-array v8, v3, [Ljava/lang/Object;

    const-string/jumbo v9, "updateRunningAccountsH: "

    aput-object v9, v8, v6

    iget-object v9, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v9}, Lcom/android/server/content/SyncManager;->access$3400(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-virtual {v5, v8}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3246
    :cond_65
    iget-object v5, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v5}, Lcom/android/server/content/SyncManager;->access$3500(Lcom/android/server/content/SyncManager;)V

    .line 3248
    iget-object v5, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v5}, Lcom/android/server/content/SyncManager;->access$3400(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;

    move-result-object v5

    .line 3249
    iget-object v8, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v8, v8, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_78
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .line 3250
    iget-object v10, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v11, v9, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v11, v11, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v11, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v12, v9, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v12, v12, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v12, v12, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-static {v10, v5, v11, v12}, Lcom/android/server/content/SyncManager;->access$3600(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    move-result v10

    if-nez v10, :cond_a3

    .line 3253
    const-string v10, "canceling sync since the account is no longer running"

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3254
    iget-object v10, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    const/4 v11, 0x0

    invoke-static {v10, v9, v11}, Lcom/android/server/content/SyncManager;->access$1900(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$ActiveSyncContext;Landroid/content/SyncResult;)V

    .line 3257
    :cond_a3
    goto :goto_78

    .line 3259
    :cond_a4
    if-eqz v1, :cond_ef

    .line 3261
    iget-object v5, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v5}, Lcom/android/server/content/SyncManager;->access$3400(Lcom/android/server/content/SyncManager;)[Landroid/accounts/AccountAndUser;

    move-result-object v5

    array-length v8, v5

    move v9, v6

    :goto_ae
    if-ge v9, v8, :cond_ef

    aget-object v10, v5, v9

    .line 3262
    iget-object v11, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v12, v10, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget v13, v10, Landroid/accounts/AccountAndUser;->userId:I

    invoke-static {v11, v2, v12, v13}, Lcom/android/server/content/SyncManager;->access$3600(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    move-result v11

    if-nez v11, :cond_ec

    .line 3263
    const/4 v2, 0x3

    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_e0

    .line 3264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Account "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v10, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " added, checking sync restore data"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3267
    :cond_e0
    iget-object v2, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$2000(Lcom/android/server/content/SyncManager;)Landroid/content/Context;

    move-result-object v2

    iget v4, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-static {v2, v4}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;->accountAdded(Landroid/content/Context;I)V

    .line 3268
    goto :goto_ef

    .line 3261
    :cond_ec
    add-int/lit8 v9, v9, 0x1

    goto :goto_ae

    .line 3274
    :cond_ef
    :goto_ef
    invoke-static {}, Lcom/android/server/accounts/AccountManagerService;->getSingleton()Lcom/android/server/accounts/AccountManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountManagerService;->getAllAccounts()[Landroid/accounts/AccountAndUser;

    move-result-object v2

    .line 3275
    iget-object v4, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v4}, Lcom/android/server/content/SyncManager;->access$1200(Lcom/android/server/content/SyncManager;)Ljava/util/List;

    move-result-object v4

    .line 3276
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_101
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_137

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/content/SyncOperation;

    .line 3277
    iget-object v8, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v9, v5, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v9, v9, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v10, v5, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v10, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-static {v8, v2, v9, v10}, Lcom/android/server/content/SyncManager;->access$3600(Lcom/android/server/content/SyncManager;[Landroid/accounts/AccountAndUser;Landroid/accounts/Account;I)Z

    move-result v8

    if-nez v8, :cond_136

    .line 3278
    iget-object v8, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v8}, Lcom/android/server/content/SyncManager;->access$700(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncLogger;

    move-result-object v8

    new-array v9, v3, [Ljava/lang/Object;

    const-string v10, "canceling: "

    aput-object v10, v9, v6

    aput-object v5, v9, v7

    invoke-virtual {v8, v9}, Lcom/android/server/content/SyncLogger;->log([Ljava/lang/Object;)V

    .line 3279
    iget-object v8, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    const-string/jumbo v9, "updateRunningAccountsH()"

    invoke-static {v8, v5, v9}, Lcom/android/server/content/SyncManager;->access$1300(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncOperation;Ljava/lang/String;)V

    .line 3281
    :cond_136
    goto :goto_101

    .line 3283
    :cond_137
    if-eqz v1, :cond_152

    .line 3284
    iget-object v10, v0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v11, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v12, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    const/4 v13, -0x2

    iget-object v14, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, 0x0

    .line 3287
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v18

    const/16 v19, -0x4

    const/16 v20, 0x0

    .line 3284
    invoke-virtual/range {v10 .. v20}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;IIIILjava/lang/String;)V

    .line 3289
    :cond_152
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 2918
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$2600(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2920
    :try_start_9
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$SyncHandler;->handleSyncMessage(Landroid/os/Message;)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_17

    .line 2922
    iget-object p1, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {p1}, Lcom/android/server/content/SyncManager;->access$2600(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2923
    nop

    .line 2924
    return-void

    .line 2922
    :catchall_17
    move-exception p1

    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$2600(Lcom/android/server/content/SyncManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    throw p1
.end method

.method public insertStartSyncEvent(Lcom/android/server/content/SyncOperation;)J
    .registers 6

    .line 3873
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3874
    nop

    .line 3875
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/server/content/SyncOperation;->toEventLog(I)[Ljava/lang/Object;

    move-result-object v2

    .line 3874
    const/16 v3, 0xaa0

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3876
    iget-object v2, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v2}, Lcom/android/server/content/SyncManager;->access$800(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/server/content/SyncStorageEngine;->insertStartSyncEvent(Lcom/android/server/content/SyncOperation;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic lambda$updateOrAddPeriodicSyncH$0$SyncManager$SyncHandler(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 15

    .line 3367
    if-eqz p7, :cond_13

    .line 3368
    const-string v0, "booleanResult"

    invoke-virtual {p7, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p7

    if-eqz p7, :cond_13

    .line 3369
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/content/SyncManager;->updateOrAddPeriodicSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJLandroid/os/Bundle;)V

    .line 3371
    :cond_13
    return-void
.end method

.method public stopSyncEvent(JLcom/android/server/content/SyncOperation;Ljava/lang/String;IIJ)V
    .registers 22

    .line 3881
    move-object/from16 v0, p3

    .line 3882
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncOperation;->toEventLog(I)[Ljava/lang/Object;

    move-result-object v1

    .line 3881
    const/16 v2, 0xaa0

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3883
    move-object v1, p0

    iget-object v1, v1, Lcom/android/server/content/SyncManager$SyncHandler;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$800(Lcom/android/server/content/SyncManager;)Lcom/android/server/content/SyncStorageEngine;

    move-result-object v2

    move/from16 v1, p6

    int-to-long v8, v1

    move/from16 v1, p5

    int-to-long v10, v1

    iget-object v0, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v12, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    move-wide v3, p1

    move-wide/from16 v5, p7

    move-object/from16 v7, p4

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/content/SyncStorageEngine;->stopSyncEvent(JJLjava/lang/String;JJI)V

    .line 3886
    return-void
.end method
