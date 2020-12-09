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

    invoke-static {v0}, Lcom/android/server/wm/RecentsAnimationController;->access$400(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

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
    .registers 7

    .line 211
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 213
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController;->access$400(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_40

    .line 214
    :try_start_f
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v3}, Lcom/android/server/wm/RecentsAnimationController;->access$100(Lcom/android/server/wm/RecentsAnimationController;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 215
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_3d

    .line 227
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 215
    return-void

    .line 217
    :cond_1c
    :try_start_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_3d

    .line 221
    :try_start_1d
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController;->access$700(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz p1, :cond_28

    .line 222
    move p1, v3

    goto :goto_29

    .line 223
    :cond_28
    const/4 p1, 0x2

    :goto_29
    nop

    .line 221
    invoke-interface {v2, p1, v3, p2}, Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;->onAnimationFinished(IZZ)V

    .line 225
    iget-object p1, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {p1}, Lcom/android/server/wm/RecentsAnimationController;->access$000(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mBoundsAnimationController:Lcom/android/server/wm/BoundsAnimationController;

    invoke-virtual {p1, v3}, Lcom/android/server/wm/BoundsAnimationController;->setAnimationType(I)V
    :try_end_38
    .catchall {:try_start_1d .. :try_end_38} :catchall_40

    .line 227
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 228
    nop

    .line 229
    return-void

    .line 217
    :catchall_3d
    move-exception p1

    :try_start_3e
    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    :try_start_3f
    throw p1
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_40

    .line 227
    :catchall_40
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public hideCurrentInputMethod()V
    .registers 4

    .line 290
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 292
    :try_start_4
    const-class v2, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 293
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 294
    if-eqz v2, :cond_11

    .line 295
    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->hideCurrentInputMethod()V
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_16

    .line 298
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
    .registers 10

    .line 181
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 183
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController;->access$400(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_6a

    .line 184
    :try_start_f
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v3}, Lcom/android/server/wm/RecentsAnimationController;->access$100(Lcom/android/server/wm/RecentsAnimationController;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1d

    .line 185
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_67

    .line 203
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 185
    return-object v4

    .line 187
    :cond_1d
    :try_start_1d
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v3}, Lcom/android/server/wm/RecentsAnimationController;->access$500(Lcom/android/server/wm/RecentsAnimationController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    :goto_29
    if-ltz v3, :cond_62

    .line 188
    iget-object v6, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v6}, Lcom/android/server/wm/RecentsAnimationController;->access$500(Lcom/android/server/wm/RecentsAnimationController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    .line 189
    invoke-static {v6}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->access$600(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object v6

    .line 190
    iget v7, v6, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v7, p1, :cond_5f

    .line 191
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    .line 192
    invoke-static {v3}, Lcom/android/server/wm/RecentsAnimationController;->access$400(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    .line 193
    new-array v4, v5, [Lcom/android/server/wm/Task;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    invoke-static {v4}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v4

    .line 194
    invoke-virtual {v3, v4}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;)V

    .line 195
    invoke-virtual {v3, v4}, Lcom/android/server/wm/TaskSnapshotController;->addSkipClosingAppSnapshotTasks(Landroid/util/ArraySet;)V

    .line 196
    invoke-virtual {v3, p1, v5, v5, v5}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshot(IIZZ)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object p1

    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_1d .. :try_end_5b} :catchall_67

    .line 203
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 196
    return-object p1

    .line 187
    :cond_5f
    add-int/lit8 v3, v3, -0x1

    goto :goto_29

    .line 200
    :cond_62
    :try_start_62
    monitor-exit v2
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_67

    .line 203
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 200
    return-object v4

    .line 201
    :catchall_67
    move-exception p1

    :try_start_68
    monitor-exit v2
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    :try_start_69
    throw p1
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_6a

    .line 203
    :catchall_6a
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setAnimationTargetsBehindSystemBars(Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 234
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 236
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController;->access$400(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_53

    .line 237
    :try_start_f
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v3}, Lcom/android/server/wm/RecentsAnimationController;->access$500(Lcom/android/server/wm/RecentsAnimationController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1b
    if-ltz v3, :cond_3f

    .line 238
    iget-object v4, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v4}, Lcom/android/server/wm/RecentsAnimationController;->access$500(Lcom/android/server/wm/RecentsAnimationController;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;

    invoke-static {v4}, Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;->access$600(Lcom/android/server/wm/RecentsAnimationController$TaskAnimationAdapter;)Lcom/android/server/wm/Task;

    move-result-object v4

    .line 239
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v6}, Lcom/android/server/wm/RecentsAnimationController;->access$800(Lcom/android/server/wm/RecentsAnimationController;)I

    move-result v6

    if-eq v5, v6, :cond_3c

    .line 240
    invoke-virtual {v4, p1}, Lcom/android/server/wm/Task;->setCanAffectSystemUiFlags(Z)V

    .line 237
    :cond_3c
    add-int/lit8 v3, v3, -0x1

    goto :goto_1b

    .line 243
    :cond_3f
    iget-object p1, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {p1}, Lcom/android/server/wm/RecentsAnimationController;->access$400(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

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
    move-exception p1

    :try_start_51
    monitor-exit v2
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    :try_start_52
    throw p1
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_53

    .line 246
    :catchall_53
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setCancelWithDeferredScreenshot(Z)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 305
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RecentsAnimationController;->access$400(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

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
    move-exception p1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setDeferCancelUntilNextTransition(ZZ)V
    .registers 5

    .line 312
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RecentsAnimationController;->access$400(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

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
    move-exception p1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setInputConsumerEnabled(Z)V
    .registers 6

    .line 254
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 256
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController;->access$400(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_41

    .line 257
    :try_start_f
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v3}, Lcom/android/server/wm/RecentsAnimationController;->access$100(Lcom/android/server/wm/RecentsAnimationController;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 258
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_3e

    .line 267
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 258
    return-void

    .line 261
    :cond_1c
    :try_start_1c
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v3, p1}, Lcom/android/server/wm/RecentsAnimationController;->access$902(Lcom/android/server/wm/RecentsAnimationController;Z)Z

    .line 262
    iget-object p1, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {p1}, Lcom/android/server/wm/RecentsAnimationController;->access$000(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object p1

    .line 263
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 264
    iget-object p1, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {p1}, Lcom/android/server/wm/RecentsAnimationController;->access$400(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 265
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_1c .. :try_end_39} :catchall_3e

    .line 267
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 268
    nop

    .line 269
    return-void

    .line 265
    :catchall_3e
    move-exception p1

    :try_start_3f
    monitor-exit v2
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    :try_start_40
    throw p1
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_41

    .line 267
    :catchall_41
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setSplitScreenMinimized(Z)V
    .registers 6

    .line 273
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 275
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {v2}, Lcom/android/server/wm/RecentsAnimationController;->access$400(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

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

    invoke-static {v3, p1}, Lcom/android/server/wm/RecentsAnimationController;->access$1002(Lcom/android/server/wm/RecentsAnimationController;Z)Z

    .line 281
    iget-object p1, p0, Lcom/android/server/wm/RecentsAnimationController$2;->this$0:Lcom/android/server/wm/RecentsAnimationController;

    invoke-static {p1}, Lcom/android/server/wm/RecentsAnimationController;->access$400(Lcom/android/server/wm/RecentsAnimationController;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p1

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowManagerService;->checkSplitScreenMinimizedChanged(Z)V

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
    move-exception p1

    :try_start_32
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    :try_start_33
    throw p1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_34

    .line 284
    :catchall_34
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method
