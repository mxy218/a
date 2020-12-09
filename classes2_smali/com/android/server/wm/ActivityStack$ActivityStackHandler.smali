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

    .line 438
    iput-object p1, p0, Lcom/android/server/wm/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/wm/ActivityStack;

    .line 439
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 440
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    .line 444
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_150

    goto/16 :goto_14e

    .line 493
    :pswitch_8  #0x6a
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/wm/ActivityStack;

    iget-object p1, p1, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 494
    iget-object p1, p0, Lcom/android/server/wm/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityStack;->notifyActivityDrawnLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 495
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_14e

    :catchall_1d
    move-exception p1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 487
    :pswitch_23  #0x69
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/ActivityStack$ScheduleDestroyArgs;

    .line 488
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/wm/ActivityStack;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_2e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 489
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/wm/ActivityStack;

    iget-object v2, p1, Lcom/android/server/wm/ActivityStack$ScheduleDestroyArgs;->mOwner:Lcom/android/server/wm/WindowProcessController;

    iget-object p1, p1, Lcom/android/server/wm/ActivityStack$ScheduleDestroyArgs;->mReason:Ljava/lang/String;

    invoke-static {v1, v2, p1}, Lcom/android/server/wm/ActivityStack;->access$000(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V

    .line 490
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_2e .. :try_end_3b} :catchall_40

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 491
    goto/16 :goto_14e

    .line 490
    :catchall_40
    move-exception p1

    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 475
    :pswitch_46  #0x68
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity stop timeout for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/wm/ActivityStack;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_67
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 480
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isInHistory()Z

    move-result v2

    if-eqz v2, :cond_73

    .line 481
    invoke-virtual {p1, v1, v1, v1}, Lcom/android/server/wm/ActivityRecord;->activityStoppedLocked(Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V

    .line 484
    :cond_73
    monitor-exit v0
    :try_end_74
    .catchall {:try_start_67 .. :try_end_74} :catchall_79

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 485
    goto/16 :goto_14e

    .line 484
    :catchall_79
    move-exception p1

    :try_start_7a
    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 458
    :pswitch_7f  #0x67
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 459
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/wm/ActivityStack;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_8a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 460
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->continueLaunchTickingLocked()Z

    move-result v1

    if-eqz v1, :cond_af

    .line 461
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/wm/ActivityStack;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-wide v3, p1, Lcom/android/server/wm/ActivityRecord;->launchTickTime:J

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "launching "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, v3, v4, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->logAppTooSlow(Lcom/android/server/wm/WindowProcessController;JLjava/lang/String;)V

    .line 463
    :cond_af
    monitor-exit v0
    :try_end_b0
    .catchall {:try_start_8a .. :try_end_b0} :catchall_b5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 464
    goto/16 :goto_14e

    .line 463
    :catchall_b5
    move-exception p1

    :try_start_b6
    monitor-exit v0
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 466
    :pswitch_bb  #0x66
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity destroy timeout for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/wm/ActivityStack;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_dc
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 471
    iget-object v2, p0, Lcom/android/server/wm/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/wm/ActivityStack;

    if-eqz p1, :cond_e5

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :cond_e5
    const-string p1, "destroyTimeout"

    invoke-virtual {v2, v1, p1}, Lcom/android/server/wm/ActivityStack;->activityDestroyedLocked(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 472
    monitor-exit v0
    :try_end_eb
    .catchall {:try_start_dc .. :try_end_eb} :catchall_ef

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 473
    goto :goto_14e

    .line 472
    :catchall_ef
    move-exception p1

    :try_start_f0
    monitor-exit v0
    :try_end_f1
    .catchall {:try_start_f0 .. :try_end_f1} :catchall_ef

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 446
    :pswitch_f5  #0x65
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity pause timeout for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v0, p0, Lcom/android/server/wm/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/wm/ActivityStack;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_116
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 451
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v1

    if-eqz v1, :cond_13b

    .line 452
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/wm/ActivityStack;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-wide v3, p1, Lcom/android/server/wm/ActivityRecord;->pauseTime:J

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pausing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->logAppTooSlow(Lcom/android/server/wm/WindowProcessController;JLjava/lang/String;)V

    .line 454
    :cond_13b
    iget-object v1, p0, Lcom/android/server/wm/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/wm/ActivityStack;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/ActivityStack;->activityPausedLocked(Landroid/os/IBinder;Z)V

    .line 455
    monitor-exit v0
    :try_end_144
    .catchall {:try_start_116 .. :try_end_144} :catchall_148

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 456
    goto :goto_14e

    .line 455
    :catchall_148
    move-exception p1

    :try_start_149
    monitor-exit v0
    :try_end_14a
    .catchall {:try_start_149 .. :try_end_14a} :catchall_148

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 498
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
