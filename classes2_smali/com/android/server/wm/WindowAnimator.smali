.class public Lcom/android/server/wm/WindowAnimator;
.super Ljava/lang/Object;
.source "WindowAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final mAfterPrepareSurfacesRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimating:Z

.field final mAnimationFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field private mAnimationFrameCallbackScheduled:Z

.field mBulkUpdateParams:I

.field private mChoreographer:Landroid/view/Choreographer;

.field final mContext:Landroid/content/Context;

.field mCurrentTime:J

.field mDisplayContentsAnimators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mInExecuteAfterPrepareSurfacesRunnables:Z

.field private mInitialized:Z

.field private mLastRootAnimating:Z

.field mLastWindowFreezeSource:Ljava/lang/Object;

.field final mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

.field private mRemoveReplacedWindows:Z

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTransaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 5

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 63
    new-instance v1, Landroid/util/SparseArray;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    .line 65
    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    .line 69
    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mRemoveReplacedWindows:Z

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mAfterPrepareSurfacesRunnables:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 89
    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 90
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mContext:Landroid/content/Context;

    .line 91
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 92
    invoke-static {}, Lcom/android/server/AnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$WindowAnimator$U3Fu5_RzEyNo8Jt6zTb2ozdXiqM;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$WindowAnimator$U3Fu5_RzEyNo8Jt6zTb2ozdXiqM;-><init>(Lcom/android/server/wm/WindowAnimator;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 95
    new-instance p1, Lcom/android/server/wm/-$$Lambda$WindowAnimator$ddXU8gK8rmDqri0OZVMNa3Y4GHk;

    invoke-direct {p1, p0}, Lcom/android/server/wm/-$$Lambda$WindowAnimator$ddXU8gK8rmDqri0OZVMNa3Y4GHk;-><init>(Lcom/android/server/wm/WindowAnimator;)V

    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 101
    return-void
.end method

.method private animate(J)V
    .registers 12

    .line 132
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 133
    iget-boolean v1, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    if-nez v1, :cond_11

    .line 134
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_173

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 138
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lcom/android/server/wm/WindowAnimator;->scheduleAnimation()V

    .line 139
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_173

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 141
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_1d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 142
    const-wide/32 v2, 0xf4240

    div-long/2addr p1, v2

    iput-wide p1, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    .line 143
    const/4 p1, 0x4

    iput p1, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 144
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 150
    iget-object p2, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V
    :try_end_31
    .catchall {:try_start_1d .. :try_end_31} :catchall_16d

    .line 152
    const/4 p2, 0x1

    :try_start_32
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 154
    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 155
    move v3, p1

    :goto_3d
    if-ge v3, v2, :cond_87

    .line 156
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 157
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 158
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 160
    iget-object v6, v5, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 162
    if-eqz v6, :cond_7b

    invoke-virtual {v6}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v7

    if-eqz v7, :cond_7b

    .line 163
    iget-wide v7, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-virtual {v6, v7, v8}, Lcom/android/server/wm/ScreenRotationAnimation;->stepAnimationLocked(J)Z

    move-result v7

    if-eqz v7, :cond_6b

    .line 164
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowAnimator;->setAnimating(Z)V

    goto :goto_7b

    .line 166
    :cond_6b
    iget v7, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/2addr v7, p2

    iput v7, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 167
    invoke-virtual {v6}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 168
    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 171
    if-eqz v0, :cond_7b

    .line 174
    invoke-virtual {v0, v4}, Lcom/android/server/wm/AccessibilityController;->onRotationChangedLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 181
    :cond_7b
    :goto_7b
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->updateWindowsForAnimator()V

    .line 182
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->updateBackgroundForAnimator()V

    .line 183
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->prepareSurfaces()V

    .line 155
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    .line 186
    :cond_87
    move v3, p1

    :goto_88
    if-ge v3, v2, :cond_c1

    .line 187
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 188
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    .line 190
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->checkAppWindowsReadyToShow()V

    .line 192
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    .line 193
    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    iget-object v6, v6, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 194
    if-eqz v6, :cond_ac

    .line 195
    iget-object v7, p0, Lcom/android/server/wm/WindowAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v6, v7}, Lcom/android/server/wm/ScreenRotationAnimation;->updateSurfaces(Landroid/view/SurfaceControl$Transaction;)V

    .line 197
    :cond_ac
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-virtual {v5, v6, v7}, Lcom/android/server/wm/DockedStackDividerController;->animate(J)Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowAnimator;->orAnimating(Z)V

    .line 198
    if-eqz v0, :cond_be

    .line 199
    invoke-virtual {v0, v4}, Lcom/android/server/wm/AccessibilityController;->drawMagnifiedRegionBorderIfNeededLocked(I)V

    .line 186
    :cond_be
    add-int/lit8 v3, v3, 0x1

    goto :goto_88

    .line 203
    :cond_c1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    if-nez v0, :cond_c8

    .line 204
    invoke-direct {p0}, Lcom/android/server/wm/WindowAnimator;->cancelAnimation()V

    .line 207
    :cond_c8
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    if-eqz v0, :cond_d5

    .line 208
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    invoke-virtual {v0}, Lcom/android/server/wm/Watermark;->drawIfNeeded()V

    .line 211
    :cond_d5
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v0}, Landroid/view/SurfaceControl;->mergeToGlobalTransaction(Landroid/view/SurfaceControl$Transaction;)V
    :try_end_da
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_da} :catch_e2
    .catchall {:try_start_32 .. :try_end_da} :catchall_df

    .line 215
    :try_start_da
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v2, "WindowAnimator"
    :try_end_de
    .catchall {:try_start_da .. :try_end_de} :catchall_16d

    goto :goto_ee

    :catchall_df
    move-exception p1

    goto/16 :goto_165

    .line 212
    :catch_e2
    move-exception v0

    .line 213
    :try_start_e3
    const-string v2, "WindowManager"

    const-string v3, "Unhandled exception in Window Manager"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ea
    .catchall {:try_start_e3 .. :try_end_ea} :catchall_df

    .line 215
    :try_start_ea
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v2, "WindowAnimator"

    :goto_ee
    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 217
    nop

    .line 219
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/RootWindowContainer;->hasPendingLayoutChanges(Lcom/android/server/wm/WindowAnimator;)Z

    move-result v0

    .line 220
    nop

    .line 221
    iget v2, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    if-eqz v2, :cond_108

    .line 222
    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->copyAnimToLayoutParams()Z

    move-result v2

    goto :goto_109

    .line 221
    :cond_108
    move v2, p1

    .line 225
    :goto_109
    if-nez v0, :cond_10d

    if-eqz v2, :cond_114

    .line 226
    :cond_10d
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 229
    :cond_114
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->isSelfOrChildAnimating()Z

    move-result v0

    .line 230
    const-wide/16 v2, 0x20

    if-eqz v0, :cond_130

    iget-boolean v4, p0, Lcom/android/server/wm/WindowAnimator;->mLastRootAnimating:Z

    if-nez v4, :cond_130

    .line 235
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v4, p2}, Lcom/android/server/wm/TaskSnapshotController;->setPersisterPaused(Z)V

    .line 236
    const-string p2, "animating"

    invoke-static {v2, v3, p2, p1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 238
    :cond_130
    if-nez v0, :cond_149

    iget-boolean p2, p0, Lcom/android/server/wm/WindowAnimator;->mLastRootAnimating:Z

    if-eqz p2, :cond_149

    .line 239
    iget-object p2, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 240
    iget-object p2, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/TaskSnapshotController;->setPersisterPaused(Z)V

    .line 241
    const-string p2, "animating"

    invoke-static {v2, v3, p2, p1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 244
    :cond_149
    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mLastRootAnimating:Z

    .line 246
    iget-boolean p2, p0, Lcom/android/server/wm/WindowAnimator;->mRemoveReplacedWindows:Z

    if-eqz p2, :cond_158

    .line 247
    iget-object p2, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p2}, Lcom/android/server/wm/RootWindowContainer;->removeReplacedWindows()V

    .line 248
    iput-boolean p1, p0, Lcom/android/server/wm/WindowAnimator;->mRemoveReplacedWindows:Z

    .line 251
    :cond_158
    iget-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->destroyPreservedSurfaceLocked()V

    .line 253
    invoke-virtual {p0}, Lcom/android/server/wm/WindowAnimator;->executeAfterPrepareSurfacesRunnables()V

    .line 260
    monitor-exit v1
    :try_end_161
    .catchall {:try_start_ea .. :try_end_161} :catchall_16d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 261
    return-void

    .line 215
    :goto_165
    :try_start_165
    iget-object p2, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v0, "WindowAnimator"

    invoke-virtual {p2, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    throw p1

    .line 260
    :catchall_16d
    move-exception p1

    monitor-exit v1
    :try_end_16f
    .catchall {:try_start_165 .. :try_end_16f} :catchall_16d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 139
    :catchall_173
    move-exception p1

    :try_start_174
    monitor-exit v0
    :try_end_175
    .catchall {:try_start_174 .. :try_end_175} :catchall_173

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method private static bulkUpdateParamsToString(I)Ljava/lang/String;
    .registers 3

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 265
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_10

    .line 266
    const-string v1, " UPDATE_ROTATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    :cond_10
    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_19

    .line 269
    const-string p0, " ORIENTATION_CHANGE_COMPLETE"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    :cond_19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private cancelAnimation()V
    .registers 3

    .line 372
    iget-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallbackScheduled:Z

    if-eqz v0, :cond_e

    .line 373
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallbackScheduled:Z

    .line 374
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 376
    :cond_e
    return-void
.end method

.method private getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .registers 5

    .line 327
    const/4 v0, 0x0

    if-gez p1, :cond_4

    .line 328
    return-object v0

    .line 331
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 336
    if-nez v1, :cond_22

    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 337
    new-instance v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;-><init>(Lcom/android/server/wm/WindowAnimator;Lcom/android/server/wm/WindowAnimator$1;)V

    .line 338
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 340
    :cond_22
    return-object v1
.end method


# virtual methods
.method addAfterPrepareSurfacesRunnable(Ljava/lang/Runnable;)V
    .registers 3

    .line 409
    iget-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mInExecuteAfterPrepareSurfacesRunnables:Z

    if-eqz v0, :cond_8

    .line 410
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 411
    return-void

    .line 414
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mAfterPrepareSurfacesRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    invoke-virtual {p0}, Lcom/android/server/wm/WindowAnimator;->scheduleAnimation()V

    .line 416
    return-void
.end method

.method addDisplayLocked(I)V
    .registers 2

    .line 106
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 107
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 10

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 278
    const/4 v2, 0x0

    :goto_21
    iget-object v3, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_7a

    .line 279
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "DisplayContentsAnimator #"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 280
    iget-object v3, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 281
    const-string v3, ":"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 282
    iget-object v3, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 283
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    .line 284
    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 285
    invoke-virtual {v4, p1, v0}, Lcom/android/server/wm/DisplayContent;->dumpWindowAnimators(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 286
    iget-object v4, v3, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v4, :cond_6a

    .line 287
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "mScreenRotationAnimation:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 288
    iget-object v3, v3, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v3, v1, p1}, Lcom/android/server/wm/ScreenRotationAnimation;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_74

    .line 289
    :cond_6a
    if-eqz p3, :cond_74

    .line 290
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "no ScreenRotationAnimation "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 292
    :cond_74
    :goto_74
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 278
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 295
    :cond_7a
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 297
    if-eqz p3, :cond_90

    .line 298
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mCurrentTime="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 299
    iget-wide v0, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 301
    :cond_90
    iget p3, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    if-eqz p3, :cond_ae

    .line 302
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mBulkUpdateParams=0x"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 303
    iget p2, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 304
    iget p2, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    invoke-static {p2}, Lcom/android/server/wm/WindowAnimator;->bulkUpdateParamsToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 306
    :cond_ae
    return-void
.end method

.method executeAfterPrepareSurfacesRunnables()V
    .registers 5

    .line 421
    iget-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mInExecuteAfterPrepareSurfacesRunnables:Z

    if-eqz v0, :cond_5

    .line 422
    return-void

    .line 424
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mInExecuteAfterPrepareSurfacesRunnables:Z

    .line 427
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mAfterPrepareSurfacesRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 428
    const/4 v1, 0x0

    move v2, v1

    :goto_10
    if-ge v2, v0, :cond_20

    .line 429
    iget-object v3, p0, Lcom/android/server/wm/WindowAnimator;->mAfterPrepareSurfacesRunnables:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 428
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 431
    :cond_20
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mAfterPrepareSurfacesRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 432
    iput-boolean v1, p0, Lcom/android/server/wm/WindowAnimator;->mInExecuteAfterPrepareSurfacesRunnables:Z

    .line 433
    return-void
.end method

.method getChoreographer()Landroid/view/Choreographer;
    .registers 2

    .line 391
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mChoreographer:Landroid/view/Choreographer;

    return-object v0
.end method

.method getPendingLayoutChanges(I)I
    .registers 4

    .line 309
    const/4 v0, 0x0

    if-gez p1, :cond_4

    .line 310
    return v0

    .line 312
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    .line 313
    if-eqz p1, :cond_10

    iget v0, p1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    :cond_10
    return v0
.end method

.method getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;
    .registers 3

    .line 352
    const/4 v0, 0x0

    if-gez p1, :cond_4

    .line 353
    return-object v0

    .line 356
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object p1

    .line 357
    if-eqz p1, :cond_c

    iget-object v0, p1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    :cond_c
    return-object v0
.end method

.method isAnimating()Z
    .registers 2

    .line 383
    iget-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    return v0
.end method

.method isAnimationScheduled()Z
    .registers 2

    .line 387
    iget-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallbackScheduled:Z

    return v0
.end method

.method public synthetic lambda$new$0$WindowAnimator()V
    .registers 2

    .line 93
    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mChoreographer:Landroid/view/Choreographer;

    return-void
.end method

.method public synthetic lambda$new$1$WindowAnimator(J)V
    .registers 5

    .line 96
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 97
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallbackScheduled:Z

    .line 98
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowAnimator;->animate(J)V

    .line 100
    return-void

    .line 98
    :catchall_13
    move-exception p1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method orAnimating(Z)V
    .registers 3

    .line 399
    iget-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 400
    return-void
.end method

.method ready()V
    .registers 2

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    .line 123
    return-void
.end method

.method removeDisplayLocked(I)V
    .registers 4

    .line 110
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 111
    if-eqz v0, :cond_16

    .line 112
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v1, :cond_16

    .line 113
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 114
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 118
    :cond_16
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 119
    return-void
.end method

.method requestRemovalOfReplacedWindows(Lcom/android/server/wm/WindowState;)V
    .registers 2

    .line 361
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/WindowAnimator;->mRemoveReplacedWindows:Z

    .line 362
    return-void
.end method

.method scheduleAnimation()V
    .registers 3

    .line 365
    iget-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallbackScheduled:Z

    if-nez v0, :cond_e

    .line 366
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallbackScheduled:Z

    .line 367
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 369
    :cond_e
    return-void
.end method

.method setAnimating(Z)V
    .registers 2

    .line 395
    iput-boolean p1, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 396
    return-void
.end method

.method setPendingLayoutChanges(II)V
    .registers 4

    .line 317
    if-gez p1, :cond_3

    .line 318
    return-void

    .line 320
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    .line 321
    if-eqz p1, :cond_12

    .line 322
    iget v0, p1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr p2, v0

    iput p2, p1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 324
    :cond_12
    return-void
.end method

.method setScreenRotationAnimationLocked(ILcom/android/server/wm/ScreenRotationAnimation;)V
    .registers 3

    .line 344
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object p1

    .line 346
    if-eqz p1, :cond_8

    .line 347
    iput-object p2, p1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 349
    :cond_8
    return-void
.end method
