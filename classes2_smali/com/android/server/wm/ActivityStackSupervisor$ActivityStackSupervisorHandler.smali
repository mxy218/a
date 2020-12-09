.class final Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;
.super Landroid/os/Handler;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActivityStackSupervisorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/ActivityStackSupervisor;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityStackSupervisor;Landroid/os/Looper;)V
    .registers 3

    .line 2591
    iput-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 2592
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2593
    return-void
.end method


# virtual methods
.method activityIdleInternal(Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 7

    .line 2596
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2597
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v2, 0x0

    if-eqz p1, :cond_12

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    goto :goto_13

    :cond_12
    move-object p1, v2

    :goto_13
    const/4 v3, 0x1

    invoke-virtual {v1, p1, v3, p2, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->activityIdleInternalLocked(Landroid/os/IBinder;ZZLandroid/content/res/Configuration;)Lcom/android/server/wm/ActivityRecord;

    .line 2599
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2600
    return-void

    .line 2599
    :catchall_1c
    move-exception p1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    .line 2604
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_1da

    packed-switch v0, :pswitch_data_1e8

    goto/16 :goto_1d9

    .line 2693
    :pswitch_c  #0xd9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 2694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity top resumed state loss timeout for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2695
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_2d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2696
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v1

    if-eqz v1, :cond_52

    .line 2697
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-wide v4, p1, Lcom/android/server/wm/ActivityRecord;->topResumedStateLossTime:J

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "top state loss for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, v4, v5, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->logAppTooSlow(Lcom/android/server/wm/WindowProcessController;JLjava/lang/String;)V

    .line 2700
    :cond_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_2d .. :try_end_53} :catchall_5d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2701
    iget-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->handleTopResumedStateReleased(Z)V

    goto/16 :goto_1d9

    .line 2700
    :catchall_5d
    move-exception p1

    :try_start_5e
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 2685
    :pswitch_63  #0xd8
    iget-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_6a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2686
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0xd8

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 2689
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const-string v1, "homeChanged"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootActivityContainer;->startHomeOnEmptyDisplays(Ljava/lang/String;)V

    .line 2690
    monitor-exit p1
    :try_end_80
    .catchall {:try_start_6a .. :try_end_80} :catchall_85

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2691
    goto/16 :goto_1d9

    .line 2690
    :catchall_85
    move-exception v0

    :try_start_86
    monitor-exit p1
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2614
    :pswitch_8b  #0xd7
    iget-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_92
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2615
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mPipModeChangedActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_9e
    if-ltz v0, :cond_b4

    .line 2616
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mPipModeChangedActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 2617
    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStackSupervisor;->mPipModeChangedTargetStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/ActivityRecord;->updatePictureInPictureMode(Landroid/graphics/Rect;Z)V

    .line 2615
    add-int/lit8 v0, v0, -0x1

    goto :goto_9e

    .line 2620
    :cond_b4
    monitor-exit p1
    :try_end_b5
    .catchall {:try_start_92 .. :try_end_b5} :catchall_ba

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2621
    goto/16 :goto_1d9

    .line 2620
    :catchall_ba
    move-exception v0

    :try_start_bb
    monitor-exit p1
    :try_end_bc
    .catchall {:try_start_bb .. :try_end_bc} :catchall_ba

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2606
    :pswitch_c0  #0xd6
    iget-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_c7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2607
    iget-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityStackSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v2

    :goto_d3
    if-ltz p1, :cond_e5

    .line 2608
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 2609
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->updateMultiWindowMode()V

    .line 2607
    add-int/lit8 p1, p1, -0x1

    goto :goto_d3

    .line 2611
    :cond_e5
    monitor-exit v0
    :try_end_e6
    .catchall {:try_start_c7 .. :try_end_e6} :catchall_eb

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2612
    goto/16 :goto_1d9

    .line 2611
    :catchall_eb
    move-exception p1

    :try_start_ec
    monitor-exit v0
    :try_end_ed
    .catchall {:try_start_ec .. :try_end_ed} :catchall_eb

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 2669
    :pswitch_f1  #0xd5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 2670
    const/4 v0, 0x0

    .line 2671
    nop

    .line 2672
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_fe
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2673
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v3

    if-eqz v3, :cond_117

    sget-object v3, Lcom/android/server/wm/ActivityStack$ActivityState;->RESTARTING_PROCESS:Lcom/android/server/wm/ActivityStack$ActivityState;

    .line 2674
    invoke-virtual {p1, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v3

    if-eqz v3, :cond_117

    .line 2675
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v0, v0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    .line 2676
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v1, p1, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 2678
    :cond_117
    monitor-exit v2
    :try_end_118
    .catchall {:try_start_fe .. :try_end_118} :catchall_12a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2679
    if-eqz v0, :cond_128

    .line 2680
    iget-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v2, "restartActivityProcessTimeout"

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/ActivityManagerInternal;->killProcess(Ljava/lang/String;ILjava/lang/String;)V

    .line 2683
    :cond_128
    goto/16 :goto_1d9

    .line 2678
    :catchall_12a
    move-exception p1

    :try_start_12b
    monitor-exit v2
    :try_end_12c
    .catchall {:try_start_12b .. :try_end_12c} :catchall_12a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 2661
    :pswitch_130  #0xd4
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_137
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2662
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/IBinder;

    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 2663
    if-eqz p1, :cond_149

    .line 2664
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-static {v1, p1}, Lcom/android/server/wm/ActivityStackSupervisor;->access$000(Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityRecord;)V

    .line 2666
    :cond_149
    monitor-exit v0
    :try_end_14a
    .catchall {:try_start_137 .. :try_end_14a} :catchall_14f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2667
    goto/16 :goto_1d9

    .line 2666
    :catchall_14f
    move-exception p1

    :try_start_150
    monitor-exit v0
    :try_end_151
    .catchall {:try_start_150 .. :try_end_151} :catchall_14f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 2649
    :pswitch_155  #0xcc
    iget-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_15c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2650
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_177

    .line 2651
    const-string v0, "ActivityTaskManager"

    const-string v1, "Launch timeout has expired, giving up wake lock!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2656
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2658
    :cond_177
    monitor-exit p1
    :try_end_178
    .catchall {:try_start_15c .. :try_end_178} :catchall_17c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2659
    goto :goto_1d9

    .line 2658
    :catchall_17c
    move-exception v0

    :try_start_17d
    monitor-exit p1
    :try_end_17e
    .catchall {:try_start_17d .. :try_end_17e} :catchall_17c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2641
    :pswitch_182  #0xcb
    iget-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_189
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2642
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingOrShuttingDownLocked()Z

    move-result v0

    if-eqz v0, :cond_1a2

    .line 2643
    const-string v0, "ActivityTaskManager"

    const-string v2, "Sleep timeout!  Sleeping now."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2644
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->checkReadyForSleepLocked(Z)V

    .line 2646
    :cond_1a2
    monitor-exit p1
    :try_end_1a3
    .catchall {:try_start_189 .. :try_end_1a3} :catchall_1a7

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2647
    goto :goto_1d9

    .line 2646
    :catchall_1a7
    move-exception v0

    :try_start_1a8
    monitor-exit p1
    :try_end_1a9
    .catchall {:try_start_1a8 .. :try_end_1a9} :catchall_1a7

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2636
    :pswitch_1ad  #0xca
    iget-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_1b4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2637
    iget-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 2638
    monitor-exit v0
    :try_end_1bf
    .catchall {:try_start_1b4 .. :try_end_1bf} :catchall_1c3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2639
    goto :goto_1d9

    .line 2638
    :catchall_1c3
    move-exception p1

    :try_start_1c4
    monitor-exit v0
    :try_end_1c5
    .catchall {:try_start_1c4 .. :try_end_1c5} :catchall_1c3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 2632
    :pswitch_1c9  #0xc9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->activityIdleInternal(Lcom/android/server/wm/ActivityRecord;Z)V

    .line 2634
    goto :goto_1d9

    .line 2627
    :pswitch_1d1  #0xc8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->activityIdleInternal(Lcom/android/server/wm/ActivityRecord;Z)V

    .line 2629
    nop

    .line 2704
    :goto_1d9
    return-void

    :pswitch_data_1da
    .packed-switch 0xc8
        :pswitch_1d1  #000000c8
        :pswitch_1c9  #000000c9
        :pswitch_1ad  #000000ca
        :pswitch_182  #000000cb
        :pswitch_155  #000000cc
    .end packed-switch

    :pswitch_data_1e8
    .packed-switch 0xd4
        :pswitch_130  #000000d4
        :pswitch_f1  #000000d5
        :pswitch_c0  #000000d6
        :pswitch_8b  #000000d7
        :pswitch_63  #000000d8
        :pswitch_c  #000000d9
    .end packed-switch
.end method
