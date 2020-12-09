.class Lcom/android/server/AlarmManagerService$6;
.super Lcom/android/server/AppStateTracker$Listener;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .registers 2

    .line 4460
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$6;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Lcom/android/server/AppStateTracker$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidForeground(IZ)V
    .registers 5

    .line 4484
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$6;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4485
    if-eqz p2, :cond_f

    .line 4486
    :try_start_7
    iget-object p2, p0, Lcom/android/server/AlarmManagerService$6;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object p2, p2, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 4491
    :cond_f
    monitor-exit v0

    .line 4492
    return-void

    .line 4491
    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public unblockAlarmsForUid(I)V
    .registers 5

    .line 4470
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$6;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4471
    :try_start_5
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$6;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/AlarmManagerService;->sendPendingBackgroundAlarmsLocked(ILjava/lang/String;)V

    .line 4472
    monitor-exit v0

    .line 4473
    return-void

    .line 4472
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public unblockAlarmsForUidPackage(ILjava/lang/String;)V
    .registers 5

    .line 4477
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$6;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4478
    :try_start_5
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$6;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/AlarmManagerService;->sendPendingBackgroundAlarmsLocked(ILjava/lang/String;)V

    .line 4479
    monitor-exit v0

    .line 4480
    return-void

    .line 4479
    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public unblockAllUnrestrictedAlarms()V
    .registers 3

    .line 4463
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$6;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4464
    :try_start_5
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$6;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService;->sendAllUnrestrictedPendingBackgroundAlarmsLocked()V

    .line 4465
    monitor-exit v0

    .line 4466
    return-void

    .line 4465
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v1
.end method
