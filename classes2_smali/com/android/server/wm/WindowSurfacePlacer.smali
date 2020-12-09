.class Lcom/android/server/wm/WindowSurfacePlacer;
.super Ljava/lang/Object;
.source "WindowSurfacePlacer.java"


# static fields
.field static final SET_ORIENTATION_CHANGE_COMPLETE:I = 0x4

.field static final SET_UPDATE_ROTATION:I = 0x1

.field static final SET_WALLPAPER_ACTION_PENDING:I = 0x8

.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private mDeferDepth:I

.field private mInLayout:Z

.field private mLayoutRepeatCount:I

.field private final mPerformSurfacePlacement:Ljava/lang/Runnable;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTempTransitionReasons:Landroid/util/SparseIntArray;

.field private mTraversalScheduled:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    .line 52
    iput v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    .line 54
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTempTransitionReasons:Landroid/util/SparseIntArray;

    .line 59
    iput-object p1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 60
    new-instance p1, Lcom/android/server/wm/-$$Lambda$WindowSurfacePlacer$4Hbamt-LFcbu8AoZBoOZN_LveKQ;

    invoke-direct {p1, p0}, Lcom/android/server/wm/-$$Lambda$WindowSurfacePlacer$4Hbamt-LFcbu8AoZBoOZN_LveKQ;-><init>(Lcom/android/server/wm/WindowSurfacePlacer;)V

    iput-object p1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPerformSurfacePlacement:Ljava/lang/Runnable;

    .line 65
    return-void
.end method

.method private performSurfacePlacementLoop()V
    .registers 8

    .line 113
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    if-eqz v0, :cond_20

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "performLayoutAndPlaceSurfacesLocked called while in layout. Callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    .line 118
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void

    .line 123
    :cond_20
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 124
    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    if-eqz v0, :cond_2b

    .line 128
    return-void

    .line 131
    :cond_2b
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-nez v0, :cond_32

    .line 133
    return-void

    .line 136
    :cond_32
    const-wide/16 v0, 0x20

    const-string v2, "wmLayout"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 137
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    .line 139
    nop

    .line 140
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_92

    .line 141
    nop

    .line 143
    :goto_49
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_77

    .line 144
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 145
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Force removing: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "WindowManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->removeImmediately()V

    .line 147
    goto :goto_49

    .line 148
    :cond_77
    const-string v3, "WindowManager"

    const-string v5, "Due to memory failure, waiting a bit for next layout"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 150
    monitor-enter v3

    .line 152
    const-wide/16 v5, 0xfa

    :try_start_86
    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_89
    .catch Ljava/lang/InterruptedException; {:try_start_86 .. :try_end_89} :catch_8c
    .catchall {:try_start_86 .. :try_end_89} :catchall_8a

    .line 154
    goto :goto_8d

    .line 155
    :catchall_8a
    move-exception v0

    goto :goto_90

    .line 153
    :catch_8c
    move-exception v5

    .line 155
    :goto_8d
    :try_start_8d
    monitor-exit v3

    move v3, v2

    goto :goto_93

    :goto_90
    monitor-exit v3
    :try_end_91
    .catchall {:try_start_8d .. :try_end_91} :catchall_8a

    throw v0

    .line 140
    :cond_92
    move v3, v4

    .line 159
    :goto_93
    :try_start_93
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5, v3}, Lcom/android/server/wm/RootWindowContainer;->performSurfacePlacement(Z)V

    .line 161
    iput-boolean v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    .line 163
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v3

    if-eqz v3, :cond_bc

    .line 164
    iget v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    const/4 v2, 0x6

    if-ge v3, v2, :cond_b2

    .line 165
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    goto :goto_be

    .line 167
    :cond_b2
    const-string v2, "WindowManager"

    const-string v3, "Performed 6 layouts in a row. Skipping"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iput v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    goto :goto_be

    .line 171
    :cond_bc
    iput v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    .line 174
    :goto_be
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    if-eqz v2, :cond_de

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_de

    .line 175
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 176
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z
    :try_end_de
    .catch Ljava/lang/RuntimeException; {:try_start_93 .. :try_end_de} :catch_df

    .line 181
    :cond_de
    goto :goto_e9

    .line 178
    :catch_df
    move-exception v2

    .line 179
    iput-boolean v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    .line 180
    const-string v3, "WindowManager"

    const-string v4, "Unhandled exception while laying out windows"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    :goto_e9
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 184
    return-void
.end method


# virtual methods
.method continueLayout()V
    .registers 2

    .line 78
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    .line 79
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    if-gtz v0, :cond_d

    .line 80
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 82
    :cond_d
    return-void
.end method

.method debugLayoutRepeats(Ljava/lang/String;I)V
    .registers 5

    .line 187
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_27

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Layouts looping: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", mPendingLayoutChanges = 0x"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 188
    const-string p2, "WindowManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_27
    return-void
.end method

.method deferLayout()V
    .registers 2

    .line 71
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    .line 72
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mTraversalScheduled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mHoldScreenWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "mObscuringWindow="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object p2, p2, Lcom/android/server/wm/RootWindowContainer;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method isInLayout()Z
    .registers 2

    .line 194
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    return v0
.end method

.method isLayoutDeferred()Z
    .registers 2

    .line 85
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public synthetic lambda$new$0$WindowSurfacePlacer()V
    .registers 3

    .line 61
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 62
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 63
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 64
    return-void

    .line 63
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method final performSurfacePlacement()V
    .registers 2

    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement(Z)V

    .line 96
    return-void
.end method

.method final performSurfacePlacement(Z)V
    .registers 5

    .line 99
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    if-lez v0, :cond_7

    if-nez p1, :cond_7

    .line 100
    return-void

    .line 102
    :cond_7
    const/4 p1, 0x6

    .line 104
    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    .line 105
    invoke-direct {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacementLoop()V

    .line 106
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPerformSurfacePlacement:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 107
    add-int/lit8 p1, p1, -0x1

    .line 108
    iget-boolean v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    if-eqz v1, :cond_1f

    if-gtz p1, :cond_8

    .line 109
    :cond_1f
    iget-object p1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iput-boolean v0, p1, Lcom/android/server/wm/RootWindowContainer;->mWallpaperActionPending:Z

    .line 110
    return-void
.end method

.method performSurfacePlacementIfScheduled()V
    .registers 2

    .line 89
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    if-eqz v0, :cond_7

    .line 90
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 92
    :cond_7
    return-void
.end method

.method requestTraversal()V
    .registers 3

    .line 198
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    if-nez v0, :cond_10

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    .line 200
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPerformSurfacePlacement:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 202
    :cond_10
    return-void
.end method
