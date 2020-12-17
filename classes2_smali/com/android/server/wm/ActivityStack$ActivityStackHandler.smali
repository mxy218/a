.class Lcom/android/server/wm/ActivityStack$ActivityStackHandler;
.super Landroid/os/Handler;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityStackHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/ActivityStack;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityStack;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"  # Landroid/os/Looper;

    .line 458
    iput-object p1, p0, Lcom/android/server/wm/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/wm/ActivityStack;

    .line 459
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 460
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"  # Landroid/os/Message;

    .line 464
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_150

    goto/16 :goto_14e

    .line 513
    :pswitch_8  #0x6a
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/wm/ActivityStack;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 514
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityStack;->notifyActivityDrawnLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 515
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_14e

    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 507
    :pswitch_23  #0x69
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/ActivityStack$ScheduleDestroyArgs;

    .line 508
    .local v0, "args":Lcom/android/server/wm/ActivityStack$ScheduleDestroyArgs;
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/wm/ActivityStack;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_2e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 509
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/wm/ActivityStack;

    iget-object v3, v0, Lcom/android/server/wm/ActivityStack$ScheduleDestroyArgs;->mOwner:Lcom/android/server/wm/WindowProcessController;

    iget-object v4, v0, Lcom/android/server/wm/ActivityStack$ScheduleDestroyArgs;->mReason:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/android/server/wm/ActivityStack;->access$000(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V

    .line 510
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_2e .. :try_end_3b} :catchall_40

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 511
    .end local v0  # "args":Lcom/android/server/wm/ActivityStack$ScheduleDestroyArgs;
    goto/16 :goto_14e

    .line 510
    .restart local v0  # "args":Lcom/android/server/wm/ActivityStack$ScheduleDestroyArgs;
    :catchall_40
    move-exception v1

    :try_start_41
    monitor-exit v2
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 495
    .end local v0  # "args":Lcom/android/server/wm/ActivityStack$ScheduleDestroyArgs;
    :pswitch_46  #0x68
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    .line 498
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity stop timeout for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/wm/ActivityStack;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_67
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 500
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isInHistory()Z

    move-result v3

    if-eqz v3, :cond_73

    .line 501
    invoke-virtual {v0, v1, v1, v1}, Lcom/android/server/wm/ActivityRecord;->activityStoppedLocked(Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V

    .line 504
    :cond_73
    monitor-exit v2
    :try_end_74
    .catchall {:try_start_67 .. :try_end_74} :catchall_79

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 505
    .end local v0  # "r":Lcom/android/server/wm/ActivityRecord;
    goto/16 :goto_14e

    .line 504
    .restart local v0  # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_79
    move-exception v1

    :try_start_7a
    monitor-exit v2
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 478
    .end local v0  # "r":Lcom/android/server/wm/ActivityRecord;
    :pswitch_7f  #0x67
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    .line 479
    .restart local v0  # "r":Lcom/android/server/wm/ActivityRecord;
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/wm/ActivityStack;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_8a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 480
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->continueLaunchTickingLocked()Z

    move-result v1

    if-eqz v1, :cond_af

    .line 481
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/wm/ActivityStack;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-wide v4, v0, Lcom/android/server/wm/ActivityRecord;->launchTickTime:J

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "launching "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/android/server/wm/ActivityTaskManagerService;->logAppTooSlow(Lcom/android/server/wm/WindowProcessController;JLjava/lang/String;)V

    .line 483
    :cond_af
    monitor-exit v2
    :try_end_b0
    .catchall {:try_start_8a .. :try_end_b0} :catchall_b5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 484
    .end local v0  # "r":Lcom/android/server/wm/ActivityRecord;
    goto/16 :goto_14e

    .line 483
    .restart local v0  # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_b5
    move-exception v1

    :try_start_b6
    monitor-exit v2
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 486
    .end local v0  # "r":Lcom/android/server/wm/ActivityRecord;
    :pswitch_bb  #0x66
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    .line 489
    .restart local v0  # "r":Lcom/android/server/wm/ActivityRecord;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity destroy timeout for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/wm/ActivityStack;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_dc
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 491
    iget-object v3, p0, Lcom/android/server/wm/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/wm/ActivityStack;

    if-eqz v0, :cond_e5

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :cond_e5
    const-string v4, "destroyTimeout"

    invoke-virtual {v3, v1, v4}, Lcom/android/server/wm/ActivityStack;->activityDestroyedLocked(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 492
    monitor-exit v2
    :try_end_eb
    .catchall {:try_start_dc .. :try_end_eb} :catchall_ef

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 493
    .end local v0  # "r":Lcom/android/server/wm/ActivityRecord;
    goto :goto_14e

    .line 492
    .restart local v0  # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_ef
    move-exception v1

    :try_start_f0
    monitor-exit v2
    :try_end_f1
    .catchall {:try_start_f0 .. :try_end_f1} :catchall_ef

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 466
    .end local v0  # "r":Lcom/android/server/wm/ActivityRecord;
    :pswitch_f5  #0x65
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    .line 469
    .restart local v0  # "r":Lcom/android/server/wm/ActivityRecord;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity pause timeout for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/wm/ActivityStack;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_116
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 471
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v2

    if-eqz v2, :cond_13b

    .line 472
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/wm/ActivityStack;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-wide v4, v0, Lcom/android/server/wm/ActivityRecord;->pauseTime:J

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pausing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/wm/ActivityTaskManagerService;->logAppTooSlow(Lcom/android/server/wm/WindowProcessController;JLjava/lang/String;)V

    .line 474
    :cond_13b
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/wm/ActivityStack;

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/ActivityStack;->activityPausedLocked(Landroid/os/IBinder;Z)V

    .line 475
    monitor-exit v1
    :try_end_144
    .catchall {:try_start_116 .. :try_end_144} :catchall_148

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 476
    .end local v0  # "r":Lcom/android/server/wm/ActivityRecord;
    goto :goto_14e

    .line 475
    .restart local v0  # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_148
    move-exception v2

    :try_start_149
    monitor-exit v1
    :try_end_14a
    .catchall {:try_start_149 .. :try_end_14a} :catchall_148

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 518
    .end local v0  # "r":Lcom/android/server/wm/ActivityRecord;
    :goto_14e
    return-void

    nop

    :pswitch_data_150
    .packed-switch 0x65
        :pswitch_f5  #00000065
        :pswitch_bb  #00000066
        :pswitch_7f  #00000067
        :pswitch_46  #00000068
        :pswitch_23  #00000069
        :pswitch_8  #0000006a
    .end packed-switch
.end method
