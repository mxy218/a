.class Lcom/android/server/wm/RecentsAnimationController$2;
.super Landroid/view/IRecentsAnimationController$Stub;
.source "RecentsAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/RecentsAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/RecentsAnimationController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/RecentsAnimationController;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/wm/RecentsAnimationController;

    .line 175
    iput-object p1, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-direct {p0}, Landroid/view/IRecentsAnimationController$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cleanupScreenshot()V
    .registers 4

    .line 319
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RecentsAnimationController;->access$500(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 320
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    iget-object v1, v1, Lcom/android/server/wm/RecentsAnimationController;->mRecentScreenshotAnimator:Lcom/android/server/wm/SurfaceAnimator;

    if-eqz v1, :cond_1e

    .line 321
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    iget-object v1, v1, Lcom/android/server/wm/RecentsAnimationController;->mRecentScreenshotAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation()V

    .line 322
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/wm/RecentsAnimationController;->mRecentScreenshotAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 324
    :cond_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 325
    return-void

    .line 324
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public finish(ZZ)V
    .registers 8
    .param p1, "moveHomeToTop"  # Z
    .param p2, "sendUserLeaveHint"  # Z

    .line 209
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_RECENTS_ANIMATIONS:Z

    if-eqz v0, :cond_2a

    invoke-static {}, Lcom/android/server/wm/RecentsAnimationController;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "): mCanceled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    .line 210
    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController;->access$100(Lcom/android/server/wm/RecentsAnimationController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 209
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_2a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 213
    .local v0, "token":J
    :try_start_2e
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController;->access$500(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_39
    .catchall {:try_start_2e .. :try_end_39} :catchall_6a

    .line 214
    :try_start_39
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v3}, Lcom/android/server/wm/RecentsAnimationController;->access$100(Lcom/android/server/wm/RecentsAnimationController;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 215
    monitor-exit v2
    :try_end_42
    .catchall {:try_start_39 .. :try_end_42} :catchall_67

    .line 227
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 215
    return-void

    .line 217
    :cond_46
    :try_start_46
    monitor-exit v2
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_67

    .line 221
    :try_start_47
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController;->access$800(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz p1, :cond_52

    .line 222
    move v4, v3

    goto :goto_53

    .line 223
    :cond_52
    const/4 v4, 0x2

    :goto_53
    nop

    .line 221
    invoke-interface {v2, v4, v3, p2}, Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;->onAnimationFinished(IZZ)V

    .line 225
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController;->access$000(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mBoundsAnimationController:Lcom/android/server/wm/BoundsAnimationController;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/BoundsAnimationController;->setAnimationType(I)V
    :try_end_62
    .catchall {:try_start_47 .. :try_end_62} :catchall_6a

    .line 227
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 228
    nop

    .line 229
    return-void

    .line 217
    :catchall_67
    move-exception v3

    :try_start_68
    monitor-exit v2
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    .end local v0  # "token":J
    .end local p0  # "this":Lcom/android/server/wm/RecentsAnimationController$2;
    .end local p1  # "moveHomeToTop":Z
    .end local p2  # "sendUserLeaveHint":Z
    :try_start_69
    throw v3
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_6a

    .line 227
    .restart local v0  # "token":J
    .restart local p0  # "this":Lcom/android/server/wm/RecentsAnimationController$2;
    .restart local p1  # "moveHomeToTop":Z
    .restart local p2  # "sendUserLeaveHint":Z
    :catchall_6a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public hideCurrentInputMethod()V
    .registers 4

    .line 290
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 292
    .local v0, "token":J
    :try_start_4
    const-class v2, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 293
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 294
    .local v2, "inputMethodManagerInternal":Lcom/android/server/inputmethod/InputMethodManagerInternal;
    if-eqz v2, :cond_11

    .line 295
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->hideCurrentInputMethod()V
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_16

    .line 298
    .end local v2  # "inputMethodManagerInternal":Lcom/android/server/inputmethod/InputMethodManagerInternal;
    :cond_11
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 299
    nop

    .line 300
    return-void

    .line 298
    :catchall_16
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public screenshotTask(I)Landroid/app/ActivityManager$TaskSnapshot;
    .registers 11
    .param p1, "taskId"  # I

    .line 179
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_RECENTS_ANIMATIONS:Z

    if-eqz v0, :cond_2a

    invoke-static {}, Lcom/android/server/wm/RecentsAnimationController;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screenshotTask("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): mCanceled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    .line 180
    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController;->access$100(Lcom/android/server/wm/RecentsAnimationController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 179
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_2a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 183
    .local v0, "token":J
    :try_start_2e
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController;->access$500(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_39
    .catchall {:try_start_2e .. :try_end_39} :catchall_94

    .line 184
    :try_start_39
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v3}, Lcom/android/server/wm/RecentsAnimationController;->access$100(Lcom/android/server/wm/RecentsAnimationController;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_47

    .line 185
    monitor-exit v2
    :try_end_43
    .catchall {:try_start_39 .. :try_end_43} :catchall_91

    .line 203
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 185
    return-object v4

    .line 187
    :cond_47
    :try_start_47
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v3}, Lcom/android/server/wm/RecentsAnimationController;->access$600(Lcom/android/server/wm/RecentsAnimationController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    .local v3, "i":I
    :goto_53
    if-ltz v3, :cond_8c

    .line 188
    iget-object v6, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v6}, Lcom/android/server/wm/RecentsAnimationController;->access$600(Lcom/android/server/wm/RecentsAnimationController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    .line 189
    .local v6, "adapter":Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
    invoke-static {v6}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->access$700(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object v7

    .line 190
    .local v7, "task":Lcom/android/server/wm/Task;
    iget v8, v7, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v8, p1, :cond_89

    .line 191
    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    .line 192
    invoke-static {v4}, Lcom/android/server/wm/RecentsAnimationController;->access$500(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 193
    .local v4, "snapshotController":Lcom/android/server/wm/TaskSnapshotController;
    new-array v5, v5, [Lcom/android/server/wm/Task;

    const/4 v8, 0x0

    aput-object v7, v5, v8

    invoke-static {v5}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v5

    .line 194
    .local v5, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v4, v5}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;)V

    .line 195
    invoke-virtual {v4, v5}, Lcom/android/server/wm/TaskSnapshotController;->addSkipClosingAppSnapshotTasks(Landroid/util/ArraySet;)V

    .line 196
    invoke-virtual {v4, p1, v8, v8, v8}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshot(IIZZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v8

    monitor-exit v2
    :try_end_85
    .catchall {:try_start_47 .. :try_end_85} :catchall_91

    .line 203
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 196
    return-object v8

    .line 187
    .end local v4  # "snapshotController":Lcom/android/server/wm/TaskSnapshotController;
    .end local v5  # "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/Task;>;"
    .end local v6  # "adapter":Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;
    .end local v7  # "task":Lcom/android/server/wm/Task;
    :cond_89
    add-int/lit8 v3, v3, -0x1

    goto :goto_53

    .line 200
    .end local v3  # "i":I
    :cond_8c
    :try_start_8c
    monitor-exit v2
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_91

    .line 203
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 200
    return-object v4

    .line 201
    :catchall_91
    move-exception v3

    :try_start_92
    monitor-exit v2
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_91

    .end local v0  # "token":J
    .end local p0  # "this":Lcom/android/server/wm/RecentsAnimationController$2;
    .end local p1  # "taskId":I
    :try_start_93
    throw v3
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_94

    .line 203
    .restart local v0  # "token":J
    .restart local p0  # "this":Lcom/android/server/wm/RecentsAnimationController$2;
    .restart local p1  # "taskId":I
    :catchall_94
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setAnimationTargetsBehindSystemBars(Z)V
    .registers 9
    .param p1, "behindSystemBars"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 234
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 236
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController;->access$500(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_53

    .line 237
    :try_start_f
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v3}, Lcom/android/server/wm/RecentsAnimationController;->access$600(Lcom/android/server/wm/RecentsAnimationController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_1b
    if-ltz v3, :cond_3f

    .line 238
    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v4}, Lcom/android/server/wm/RecentsAnimationController;->access$600(Lcom/android/server/wm/RecentsAnimationController;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    invoke-static {v4}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->access$700(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object v4

    .line 239
    .local v4, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v6}, Lcom/android/server/wm/RecentsAnimationController;->access$900(Lcom/android/server/wm/RecentsAnimationController;)I

    move-result v6

    if-eq v5, v6, :cond_3c

    .line 240
    invoke-virtual {v4, p1}, Lcom/android/server/wm/Task;->setCanAffectSystemUiFlags(Z)V

    .line 237
    .end local v4  # "task":Lcom/android/server/wm/Task;
    :cond_3c
    add-int/lit8 v3, v3, -0x1

    goto :goto_1b

    .line 243
    .end local v3  # "i":I
    :cond_3f
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v3}, Lcom/android/server/wm/RecentsAnimationController;->access$500(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 244
    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_f .. :try_end_4b} :catchall_50

    .line 246
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 247
    nop

    .line 248
    return-void

    .line 244
    :catchall_50
    move-exception v3

    :try_start_51
    monitor-exit v2
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    .end local v0  # "token":J
    .end local p0  # "this":Lcom/android/server/wm/RecentsAnimationController$2;
    .end local p1  # "behindSystemBars":Z
    :try_start_52
    throw v3
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_53

    .line 246
    .restart local v0  # "token":J
    .restart local p0  # "this":Lcom/android/server/wm/RecentsAnimationController$2;
    .restart local p1  # "behindSystemBars":Z
    :catchall_53
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setCancelWithDeferredScreenshot(Z)V
    .registers 5
    .param p1, "screenshot"  # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 305
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RecentsAnimationController;->access$500(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 306
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/android/server/wm/RecentsAnimationController;->setDeferredCancel(ZZ)V

    .line 307
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 308
    return-void

    .line 307
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setDeferCancelUntilNextTransition(ZZ)V
    .registers 5
    .param p1, "defer"  # Z
    .param p2, "screenshot"  # Z

    .line 312
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RecentsAnimationController;->access$500(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 313
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/RecentsAnimationController;->setDeferredCancel(ZZ)V

    .line 314
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 315
    return-void

    .line 314
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setInputConsumerEnabled(Z)V
    .registers 7
    .param p1, "enabled"  # Z

    .line 252
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_RECENTS_ANIMATIONS:Z

    if-eqz v0, :cond_2a

    invoke-static {}, Lcom/android/server/wm/RecentsAnimationController;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInputConsumerEnabled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "): mCanceled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    .line 253
    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController;->access$100(Lcom/android/server/wm/RecentsAnimationController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 252
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_2a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 256
    .local v0, "token":J
    :try_start_2e
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController;->access$500(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_39
    .catchall {:try_start_2e .. :try_end_39} :catchall_6b

    .line 257
    :try_start_39
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v3}, Lcom/android/server/wm/RecentsAnimationController;->access$100(Lcom/android/server/wm/RecentsAnimationController;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 258
    monitor-exit v2
    :try_end_42
    .catchall {:try_start_39 .. :try_end_42} :catchall_68

    .line 267
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 258
    return-void

    .line 261
    :cond_46
    :try_start_46
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v3, p1}, Lcom/android/server/wm/RecentsAnimationController;->access$1002(Lcom/android/server/wm/RecentsAnimationController;Z)Z

    .line 262
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v3}, Lcom/android/server/wm/RecentsAnimationController;->access$000(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v3

    .line 263
    .local v3, "inputMonitor":Lcom/android/server/wm/InputMonitor;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 264
    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v4}, Lcom/android/server/wm/RecentsAnimationController;->access$500(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 265
    .end local v3  # "inputMonitor":Lcom/android/server/wm/InputMonitor;
    monitor-exit v2
    :try_end_63
    .catchall {:try_start_46 .. :try_end_63} :catchall_68

    .line 267
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 268
    nop

    .line 269
    return-void

    .line 265
    :catchall_68
    move-exception v3

    :try_start_69
    monitor-exit v2
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    .end local v0  # "token":J
    .end local p0  # "this":Lcom/android/server/wm/RecentsAnimationController$2;
    .end local p1  # "enabled":Z
    :try_start_6a
    throw v3
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_6b

    .line 267
    .restart local v0  # "token":J
    .restart local p0  # "this":Lcom/android/server/wm/RecentsAnimationController$2;
    .restart local p1  # "enabled":Z
    :catchall_6b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setSplitScreenMinimized(Z)V
    .registers 7
    .param p1, "minimized"  # Z

    .line 273
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 275
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController;->access$500(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_34

    .line 276
    :try_start_f
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v3}, Lcom/android/server/wm/RecentsAnimationController;->access$100(Lcom/android/server/wm/RecentsAnimationController;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 277
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_31

    .line 284
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 277
    return-void

    .line 280
    :cond_1c
    :try_start_1c
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v3, p1}, Lcom/android/server/wm/RecentsAnimationController;->access$1102(Lcom/android/server/wm/RecentsAnimationController;Z)Z

    .line 281
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v3}, Lcom/android/server/wm/RecentsAnimationController;->access$500(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->checkSplitScreenMinimizedChanged(Z)V

    .line 282
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_1c .. :try_end_2c} :catchall_31

    .line 284
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 285
    nop

    .line 286
    return-void

    .line 282
    :catchall_31
    move-exception v3

    :try_start_32
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    .end local v0  # "token":J
    .end local p0  # "this":Lcom/android/server/wm/RecentsAnimationController$2;
    .end local p1  # "minimized":Z
    :try_start_33
    throw v3
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_34

    .line 284
    .restart local v0  # "token":J
    .restart local p0  # "this":Lcom/android/server/wm/RecentsAnimationController$2;
    .restart local p1  # "minimized":Z
    :catchall_34
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
