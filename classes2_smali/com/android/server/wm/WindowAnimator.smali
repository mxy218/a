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
    .registers 6
    .param p1, "service"  # Lcom/android/server/wm/WindowManagerService;

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
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 92
    invoke-static {}, Lcom/android/server/AnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/-$$Lambda$WindowAnimator$U3Fu5_RzEyNo8Jt6zTb2ozdXiqM;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$WindowAnimator$U3Fu5_RzEyNo8Jt6zTb2ozdXiqM;-><init>(Lcom/android/server/wm/WindowAnimator;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 95
    new-instance v0, Lcom/android/server/wm/-$$Lambda$WindowAnimator$ddXU8gK8rmDqri0OZVMNa3Y4GHk;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$WindowAnimator$ddXU8gK8rmDqri0OZVMNa3Y4GHk;-><init>(Lcom/android/server/wm/WindowAnimator;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 101
    return-void
.end method

.method private animate(J)V
    .registers 15
    .param p1, "frameTimeNs"  # J

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
    .catchall {:try_start_5 .. :try_end_d} :catchall_1ee

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 138
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lcom/android/server/wm/WindowAnimator;->scheduleAnimation()V

    .line 139
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_1ee

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 141
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_1d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 142
    const-wide/32 v2, 0xf4240

    div-long v2, p1, v2

    iput-wide v2, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    .line 143
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 145
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_TRACE:Z

    if-eqz v2, :cond_49

    .line 146
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!!! animate: entry time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_49
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v2, :cond_54

    const-string v2, "WindowManager"

    const-string v3, ">>> OPEN TRANSACTION animate"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_54
    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V
    :try_end_59
    .catchall {:try_start_1d .. :try_end_59} :catchall_1e8

    .line 152
    const/4 v2, 0x1

    :try_start_5a
    iget-object v3, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 154
    .local v3, "accessibilityController":Lcom/android/server/wm/AccessibilityController;
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 155
    .local v4, "numDisplays":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_65
    if-ge v5, v4, :cond_af

    .line 156
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 157
    .local v6, "displayId":I
    iget-object v7, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v7, v6}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    .line 158
    .local v7, "dc":Lcom/android/server/wm/DisplayContent;
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 160
    .local v8, "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v9, v8, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 162
    .local v9, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v9, :cond_a3

    invoke-virtual {v9}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v10

    if-eqz v10, :cond_a3

    .line 163
    iget-wide v10, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-virtual {v9, v10, v11}, Lcom/android/server/wm/ScreenRotationAnimation;->stepAnimationLocked(J)Z

    move-result v10

    if-eqz v10, :cond_93

    .line 164
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowAnimator;->setAnimating(Z)V

    goto :goto_a3

    .line 166
    :cond_93
    iget v10, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/2addr v10, v2

    iput v10, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 167
    invoke-virtual {v9}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 168
    const/4 v10, 0x0

    iput-object v10, v8, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 171
    if-eqz v3, :cond_a3

    .line 174
    invoke-virtual {v3, v7}, Lcom/android/server/wm/AccessibilityController;->onRotationChangedLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 181
    :cond_a3
    :goto_a3
    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->updateWindowsForAnimator()V

    .line 182
    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->updateBackgroundForAnimator()V

    .line 183
    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->prepareSurfaces()V

    .line 155
    .end local v6  # "displayId":I
    .end local v7  # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v8  # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v9  # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    add-int/lit8 v5, v5, 0x1

    goto :goto_65

    .line 186
    .end local v5  # "i":I
    :cond_af
    const/4 v5, 0x0

    .restart local v5  # "i":I
    :goto_b0
    if-ge v5, v4, :cond_e9

    .line 187
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 188
    .restart local v6  # "displayId":I
    iget-object v7, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v7, v6}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    .line 190
    .restart local v7  # "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->checkAppWindowsReadyToShow()V

    .line 192
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    .line 193
    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    iget-object v8, v8, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 194
    .local v8, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v8, :cond_d4

    .line 195
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v8, v9}, Lcom/android/server/wm/ScreenRotationAnimation;->updateSurfaces(Landroid/view/SurfaceControl$Transaction;)V

    .line 197
    :cond_d4
    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-virtual {v9, v10, v11}, Lcom/android/server/wm/DockedStackDividerController;->animate(J)Z

    move-result v9

    invoke-virtual {p0, v9}, Lcom/android/server/wm/WindowAnimator;->orAnimating(Z)V

    .line 198
    if-eqz v3, :cond_e6

    .line 199
    invoke-virtual {v3, v6}, Lcom/android/server/wm/AccessibilityController;->drawMagnifiedRegionBorderIfNeededLocked(I)V

    .line 186
    .end local v6  # "displayId":I
    .end local v7  # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v8  # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    :cond_e6
    add-int/lit8 v5, v5, 0x1

    goto :goto_b0

    .line 203
    .end local v5  # "i":I
    :cond_e9
    iget-boolean v5, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    if-nez v5, :cond_f0

    .line 204
    invoke-direct {p0}, Lcom/android/server/wm/WindowAnimator;->cancelAnimation()V

    .line 207
    :cond_f0
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    if-eqz v5, :cond_fd

    .line 208
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    invoke-virtual {v5}, Lcom/android/server/wm/Watermark;->drawIfNeeded()V

    .line 211
    :cond_fd
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v5}, Landroid/view/SurfaceControl;->mergeToGlobalTransaction(Landroid/view/SurfaceControl$Transaction;)V
    :try_end_102
    .catch Ljava/lang/RuntimeException; {:try_start_5a .. :try_end_102} :catch_118
    .catchall {:try_start_5a .. :try_end_102} :catchall_115

    .line 215
    .end local v3  # "accessibilityController":Lcom/android/server/wm/AccessibilityController;
    .end local v4  # "numDisplays":I
    :try_start_102
    iget-object v3, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v4, "WindowAnimator"

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 216
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v3, :cond_131

    const-string v3, "WindowManager"

    const-string v4, "<<< CLOSE TRANSACTION animate"

    :goto_111
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_114
    .catchall {:try_start_102 .. :try_end_114} :catchall_1e8

    goto :goto_131

    .line 215
    :catchall_115
    move-exception v0

    goto/16 :goto_1d5

    .line 212
    :catch_118
    move-exception v3

    .line 213
    .local v3, "e":Ljava/lang/RuntimeException;
    :try_start_119
    const-string v4, "WindowManager"

    const-string v5, "Unhandled exception in Window Manager"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_120
    .catchall {:try_start_119 .. :try_end_120} :catchall_115

    .line 215
    nop

    .end local v3  # "e":Ljava/lang/RuntimeException;
    :try_start_121
    iget-object v3, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v4, "WindowAnimator"

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 216
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v3, :cond_131

    const-string v3, "WindowManager"

    const-string v4, "<<< CLOSE TRANSACTION animate"

    goto :goto_111

    .line 219
    :cond_131
    :goto_131
    iget-object v3, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p0}, Lcom/android/server/wm/RootWindowContainer;->hasPendingLayoutChanges(Lcom/android/server/wm/WindowAnimator;)Z

    move-result v3

    .line 220
    .local v3, "hasPendingLayoutChanges":Z
    const/4 v4, 0x0

    .line 221
    .local v4, "doRequest":Z
    iget v5, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    if-eqz v5, :cond_147

    .line 222
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/RootWindowContainer;->copyAnimToLayoutParams()Z

    move-result v5

    move v4, v5

    .line 225
    :cond_147
    if-nez v3, :cond_14b

    if-eqz v4, :cond_152

    .line 226
    :cond_14b
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 229
    :cond_152
    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/RootWindowContainer;->isSelfOrChildAnimating()Z

    move-result v5

    .line 230
    .local v5, "rootAnimating":Z
    const-wide/16 v6, 0x20

    if-eqz v5, :cond_16e

    iget-boolean v8, p0, Lcom/android/server/wm/WindowAnimator;->mLastRootAnimating:Z

    if-nez v8, :cond_16e

    .line 235
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v8, v2}, Lcom/android/server/wm/TaskSnapshotController;->setPersisterPaused(Z)V

    .line 236
    const-string v2, "animating"

    invoke-static {v6, v7, v2, v0}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 238
    :cond_16e
    if-nez v5, :cond_187

    iget-boolean v2, p0, Lcom/android/server/wm/WindowAnimator;->mLastRootAnimating:Z

    if-eqz v2, :cond_187

    .line 239
    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 240
    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/TaskSnapshotController;->setPersisterPaused(Z)V

    .line 241
    const-string v2, "animating"

    invoke-static {v6, v7, v2, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 244
    :cond_187
    iput-boolean v5, p0, Lcom/android/server/wm/WindowAnimator;->mLastRootAnimating:Z

    .line 246
    iget-boolean v2, p0, Lcom/android/server/wm/WindowAnimator;->mRemoveReplacedWindows:Z

    if-eqz v2, :cond_196

    .line 247
    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->removeReplacedWindows()V

    .line 248
    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mRemoveReplacedWindows:Z

    .line 251
    :cond_196
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->destroyPreservedSurfaceLocked()V

    .line 253
    invoke-virtual {p0}, Lcom/android/server/wm/WindowAnimator;->executeAfterPrepareSurfacesRunnables()V

    .line 255
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_TRACE:Z

    if-eqz v0, :cond_1d0

    .line 256
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!!! animate: exit mAnimating="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mBulkUpdateParams="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 257
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " hasPendingLayoutChanges="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 256
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    .end local v3  # "hasPendingLayoutChanges":Z
    .end local v4  # "doRequest":Z
    .end local v5  # "rootAnimating":Z
    :cond_1d0
    monitor-exit v1
    :try_end_1d1
    .catchall {:try_start_121 .. :try_end_1d1} :catchall_1e8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 261
    return-void

    .line 215
    :goto_1d5
    :try_start_1d5
    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string v3, "WindowAnimator"

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 216
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v2, :cond_1e7

    const-string v2, "WindowManager"

    const-string v3, "<<< CLOSE TRANSACTION animate"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local p0  # "this":Lcom/android/server/wm/WindowAnimator;
    .end local p1  # "frameTimeNs":J
    :cond_1e7
    throw v0

    .line 260
    .restart local p0  # "this":Lcom/android/server/wm/WindowAnimator;
    .restart local p1  # "frameTimeNs":J
    :catchall_1e8
    move-exception v0

    monitor-exit v1
    :try_end_1ea
    .catchall {:try_start_1d5 .. :try_end_1ea} :catchall_1e8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 139
    :catchall_1ee
    move-exception v1

    :try_start_1ef
    monitor-exit v0
    :try_end_1f0
    .catchall {:try_start_1ef .. :try_end_1f0} :catchall_1ee

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private static bulkUpdateParamsToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "bulkUpdateParams"  # I

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 265
    .local v0, "builder":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_10

    .line 266
    const-string v1, " UPDATE_ROTATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    :cond_10
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_19

    .line 269
    const-string v1, " ORIENTATION_CHANGE_COMPLETE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    :cond_19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
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
    .param p1, "displayId"  # I

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
    .local v1, "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    if-nez v1, :cond_23

    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 337
    new-instance v2, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;-><init>(Lcom/android/server/wm/WindowAnimator;Lcom/android/server/wm/WindowAnimator$1;)V

    move-object v1, v2

    .line 338
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 340
    :cond_23
    return-object v1
.end method


# virtual methods
.method addAfterPrepareSurfacesRunnable(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "r"  # Ljava/lang/Runnable;

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
    .param p1, "displayId"  # I

    .line 106
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 107
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 10
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;
    .param p3, "dumpAll"  # Z

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, "subPrefix":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, "subSubPrefix":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
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
    .local v3, "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    .line 284
    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 285
    .local v4, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v4, p1, v0}, Lcom/android/server/wm/DisplayContent;->dumpWindowAnimators(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 286
    iget-object v5, v3, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v5, :cond_6a

    .line 287
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mScreenRotationAnimation:"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 288
    iget-object v5, v3, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v5, v1, p1}, Lcom/android/server/wm/ScreenRotationAnimation;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_74

    .line 289
    :cond_6a
    if-eqz p3, :cond_74

    .line 290
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "no ScreenRotationAnimation "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 292
    :cond_74
    :goto_74
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 278
    .end local v3  # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v4  # "dc":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 295
    .end local v2  # "i":I
    :cond_7a
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 297
    if-eqz p3, :cond_90

    .line 298
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mCurrentTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 299
    iget-wide v2, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 301
    :cond_90
    iget v2, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    if-eqz v2, :cond_ae

    .line 302
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mBulkUpdateParams=0x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 303
    iget v2, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 304
    iget v2, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    invoke-static {v2}, Lcom/android/server/wm/WindowAnimator;->bulkUpdateParamsToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 306
    :cond_ae
    return-void
.end method

.method executeAfterPrepareSurfacesRunnables()V
    .registers 4

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
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_1f

    .line 429
    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mAfterPrepareSurfacesRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 428
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 431
    .end local v1  # "i":I
    :cond_1f
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mAfterPrepareSurfacesRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 432
    const/4 v1, 0x0

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
    .param p1, "displayId"  # I

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

    move-result-object v1

    .line 313
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_10

    iget v0, v1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    :cond_10
    return v0
.end method

.method getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;
    .registers 4
    .param p1, "displayId"  # I

    .line 352
    const/4 v0, 0x0

    if-gez p1, :cond_4

    .line 353
    return-object v0

    .line 356
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v1

    .line 357
    .local v1, "animator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    if-eqz v1, :cond_c

    iget-object v0, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

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
    .param p1, "frameTimeNs"  # J

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
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method orAnimating(Z)V
    .registers 3
    .param p1, "animating"  # Z

    .line 399
    iget-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    or-int/2addr v0, p1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

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
    .param p1, "displayId"  # I

    .line 110
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 111
    .local v0, "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
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
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 119
    return-void
.end method

.method requestRemovalOfReplacedWindows(Lcom/android/server/wm/WindowState;)V
    .registers 3
    .param p1, "win"  # Lcom/android/server/wm/WindowState;

    .line 361
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mRemoveReplacedWindows:Z

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
    .param p1, "animating"  # Z

    .line 395
    iput-boolean p1, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 396
    return-void
.end method

.method setPendingLayoutChanges(II)V
    .registers 5
    .param p1, "displayId"  # I
    .param p2, "changes"  # I

    .line 317
    if-gez p1, :cond_3

    .line 318
    return-void

    .line 320
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 321
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_12

    .line 322
    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v1, p2

    iput v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 324
    :cond_12
    return-void
.end method

.method setScreenRotationAnimationLocked(ILcom/android/server/wm/ScreenRotationAnimation;)V
    .registers 4
    .param p1, "displayId"  # I
    .param p2, "animation"  # Lcom/android/server/wm/ScreenRotationAnimation;

    .line 344
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    .line 346
    .local v0, "animator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    if-eqz v0, :cond_8

    .line 347
    iput-object p2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 349
    :cond_8
    return-void
.end method
