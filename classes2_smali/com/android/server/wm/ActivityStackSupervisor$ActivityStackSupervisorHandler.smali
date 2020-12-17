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
    .param p2, "looper"  # Landroid/os/Looper;

    .line 2713
    iput-object p1, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 2714
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2715
    return-void
.end method


# virtual methods
.method activityIdleInternal(Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 8
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "processPausingActivities"  # Z

    .line 2718
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2719
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v2, 0x0

    if-eqz p1, :cond_12

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    goto :goto_13

    :cond_12
    move-object v3, v2

    :goto_13
    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4, p2, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->activityIdleInternalLocked(Landroid/os/IBinder;ZZLandroid/content/res/Configuration;)Lcom/android/server/wm/ActivityRecord;

    .line 2721
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2722
    return-void

    .line 2721
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "msg"  # Landroid/os/Message;

    .line 2726
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_216

    packed-switch v0, :pswitch_data_224

    goto/16 :goto_214

    .line 2815
    :pswitch_c  #0xd9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    .line 2816
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity top resumed state loss timeout for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2817
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_2d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2818
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v3

    if-eqz v3, :cond_52

    .line 2819
    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-wide v5, v0, Lcom/android/server/wm/ActivityRecord;->topResumedStateLossTime:J

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "top state loss for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/wm/ActivityTaskManagerService;->logAppTooSlow(Lcom/android/server/wm/WindowProcessController;JLjava/lang/String;)V

    .line 2822
    :cond_52
    monitor-exit v1
    :try_end_53
    .catchall {:try_start_2d .. :try_end_53} :catchall_5d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2823
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->handleTopResumedStateReleased(Z)V

    goto/16 :goto_214

    .line 2822
    :catchall_5d
    move-exception v2

    :try_start_5e
    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 2807
    .end local v0  # "r":Lcom/android/server/wm/ActivityRecord;
    :pswitch_63  #0xd8
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_6a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2808
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mHandler:Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v2, 0xd8

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 2811
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const-string v2, "homeChanged"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootActivityContainer;->startHomeOnEmptyDisplays(Ljava/lang/String;)V

    .line 2812
    monitor-exit v0
    :try_end_80
    .catchall {:try_start_6a .. :try_end_80} :catchall_85

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2813
    goto/16 :goto_214

    .line 2812
    :catchall_85
    move-exception v1

    :try_start_86
    monitor-exit v0
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 2736
    :pswitch_8b  #0xd7
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_92
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2737
    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStackSupervisor;->mPipModeChangedActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    .local v3, "i":I
    :goto_9e
    if-ltz v3, :cond_b4

    .line 2738
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mPipModeChangedActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 2739
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    iget-object v4, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v4, v4, Lcom/android/server/wm/ActivityStackSupervisor;->mPipModeChangedTargetStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v4, v1}, Lcom/android/server/wm/ActivityRecord;->updatePictureInPictureMode(Landroid/graphics/Rect;Z)V

    .line 2737
    .end local v2  # "r":Lcom/android/server/wm/ActivityRecord;
    add-int/lit8 v3, v3, -0x1

    goto :goto_9e

    .line 2742
    .end local v3  # "i":I
    :cond_b4
    monitor-exit v0
    :try_end_b5
    .catchall {:try_start_92 .. :try_end_b5} :catchall_ba

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2743
    goto/16 :goto_214

    .line 2742
    :catchall_ba
    move-exception v1

    :try_start_bb
    monitor-exit v0
    :try_end_bc
    .catchall {:try_start_bb .. :try_end_bc} :catchall_ba

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 2728
    :pswitch_c0  #0xd6
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_c7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2729
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_d3
    if-ltz v1, :cond_e5

    .line 2730
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 2731
    .restart local v2  # "r":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->updateMultiWindowMode()V

    .line 2729
    .end local v2  # "r":Lcom/android/server/wm/ActivityRecord;
    add-int/lit8 v1, v1, -0x1

    goto :goto_d3

    .line 2733
    .end local v1  # "i":I
    :cond_e5
    monitor-exit v0
    :try_end_e6
    .catchall {:try_start_c7 .. :try_end_e6} :catchall_eb

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2734
    goto/16 :goto_214

    .line 2733
    :catchall_eb
    move-exception v1

    :try_start_ec
    monitor-exit v0
    :try_end_ed
    .catchall {:try_start_ec .. :try_end_ed} :catchall_eb

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 2791
    :pswitch_f1  #0xd5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    .line 2792
    .restart local v0  # "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    .line 2793
    .local v1, "processName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2794
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_fe
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2795
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v4

    if-eqz v4, :cond_119

    sget-object v4, Lcom/android/server/wm/ActivityStack$ActivityState;->RESTARTING_PROCESS:Lcom/android/server/wm/ActivityStack$ActivityState;

    .line 2796
    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityStack$ActivityState;)Z

    move-result v4

    if-eqz v4, :cond_119

    .line 2797
    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v4, v4, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    move-object v1, v4

    .line 2798
    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v4, v4, Lcom/android/server/wm/WindowProcessController;->mUid:I

    move v2, v4

    .line 2800
    :cond_119
    monitor-exit v3
    :try_end_11a
    .catchall {:try_start_fe .. :try_end_11a} :catchall_12c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2801
    if-eqz v1, :cond_12a

    .line 2802
    iget-object v3, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v4, "restartActivityProcessTimeout"

    invoke-virtual {v3, v1, v2, v4}, Landroid/app/ActivityManagerInternal;->killProcess(Ljava/lang/String;ILjava/lang/String;)V

    .line 2805
    .end local v0  # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v1  # "processName":Ljava/lang/String;
    .end local v2  # "uid":I
    :cond_12a
    goto/16 :goto_214

    .line 2800
    .restart local v0  # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v1  # "processName":Ljava/lang/String;
    .restart local v2  # "uid":I
    :catchall_12c
    move-exception v4

    :try_start_12d
    monitor-exit v3
    :try_end_12e
    .catchall {:try_start_12d .. :try_end_12e} :catchall_12c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2783
    .end local v0  # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v1  # "processName":Ljava/lang/String;
    .end local v2  # "uid":I
    :pswitch_132  #0xd4
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_139
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2784
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    invoke-static {v1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2785
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_14b

    .line 2786
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-static {v2, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->access$000(Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityRecord;)V

    .line 2788
    .end local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_14b
    monitor-exit v0
    :try_end_14c
    .catchall {:try_start_139 .. :try_end_14c} :catchall_151

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2789
    goto/16 :goto_214

    .line 2788
    :catchall_151
    move-exception v1

    :try_start_152
    monitor-exit v0
    :try_end_153
    .catchall {:try_start_152 .. :try_end_153} :catchall_151

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 2771
    :pswitch_157  #0xcc
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_15e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2772
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_179

    .line 2773
    const-string v1, "ActivityTaskManager"

    const-string v2, "Launch timeout has expired, giving up wake lock!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2778
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2780
    :cond_179
    monitor-exit v0
    :try_end_17a
    .catchall {:try_start_15e .. :try_end_17a} :catchall_17f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2781
    goto/16 :goto_214

    .line 2780
    :catchall_17f
    move-exception v1

    :try_start_180
    monitor-exit v0
    :try_end_181
    .catchall {:try_start_180 .. :try_end_181} :catchall_17f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 2763
    :pswitch_185  #0xcb
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_18c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2764
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingOrShuttingDownLocked()Z

    move-result v2

    if-eqz v2, :cond_1a5

    .line 2765
    const-string v2, "ActivityTaskManager"

    const-string v3, "Sleep timeout!  Sleeping now."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2766
    iget-object v2, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityStackSupervisor;->checkReadyForSleepLocked(Z)V

    .line 2768
    :cond_1a5
    monitor-exit v0
    :try_end_1a6
    .catchall {:try_start_18c .. :try_end_1a6} :catchall_1aa

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2769
    goto :goto_214

    .line 2768
    :catchall_1aa
    move-exception v1

    :try_start_1ab
    monitor-exit v0
    :try_end_1ac
    .catchall {:try_start_1ab .. :try_end_1ac} :catchall_1aa

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 2758
    :pswitch_1b0  #0xca
    iget-object v0, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStackSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_1b7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2759
    iget-object v1, p0, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->this$0:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStackSupervisor;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootActivityContainer;->resumeFocusedStacksTopActivities()Z

    .line 2760
    monitor-exit v0
    :try_end_1c2
    .catchall {:try_start_1b7 .. :try_end_1c2} :catchall_1c6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2761
    goto :goto_214

    .line 2760
    :catchall_1c6
    move-exception v1

    :try_start_1c7
    monitor-exit v0
    :try_end_1c8
    .catchall {:try_start_1c7 .. :try_end_1c8} :catchall_1c6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 2753
    :pswitch_1cc  #0xc9
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_IDLE:Z

    if-eqz v0, :cond_1e8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: IDLE_NOW_MSG: r="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2754
    :cond_1e8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->activityIdleInternal(Lcom/android/server/wm/ActivityRecord;Z)V

    .line 2756
    goto :goto_214

    .line 2745
    :pswitch_1f0  #0xc8
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_IDLE:Z

    if-eqz v0, :cond_20c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: IDLE_TIMEOUT_MSG: r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2749
    :cond_20c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/ActivityStackSupervisor$ActivityStackSupervisorHandler;->activityIdleInternal(Lcom/android/server/wm/ActivityRecord;Z)V

    .line 2751
    nop

    .line 2826
    :goto_214
    return-void

    nop

    :pswitch_data_216
    .packed-switch 0xc8
        :pswitch_1f0  #000000c8
        :pswitch_1cc  #000000c9
        :pswitch_1b0  #000000ca
        :pswitch_185  #000000cb
        :pswitch_157  #000000cc
    .end packed-switch

    :pswitch_data_224
    .packed-switch 0xd4
        :pswitch_132  #000000d4
        :pswitch_f1  #000000d5
        :pswitch_c0  #000000d6
        :pswitch_8b  #000000d7
        :pswitch_63  #000000d8
        :pswitch_c  #000000d9
    .end packed-switch
.end method
