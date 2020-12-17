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
    .param p1, "service"  # Lcom/android/server/wm/WindowManagerService;

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
    new-instance v0, Lcom/android/server/wm/-$$Lambda$WindowSurfacePlacer$4Hbamt-LFcbu8AoZBoOZN_LveKQ;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$WindowSurfacePlacer$4Hbamt-LFcbu8AoZBoOZN_LveKQ;-><init>(Lcom/android/server/wm/WindowSurfacePlacer;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPerformSurfacePlacement:Ljava/lang/Runnable;

    .line 65
    return-void
.end method

.method private performSurfacePlacementLoop()V
    .registers 11

    .line 113
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    if-eqz v0, :cond_2c

    .line 114
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG:Z

    if-nez v0, :cond_24

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

    .line 115
    :cond_24
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Recursive call!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_2c
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 124
    .local v0, "defaultDisplay":Lcom/android/server/wm/DisplayContent;
    iget-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    if-eqz v1, :cond_37

    .line 128
    return-void

    .line 131
    :cond_37
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-nez v1, :cond_3e

    .line 133
    return-void

    .line 136
    :cond_3e
    const-wide/16 v1, 0x20

    const-string v3, "wmLayout"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 137
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    .line 139
    const/4 v4, 0x0

    .line 140
    .local v4, "recoveringMemory":Z
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_9f

    .line 141
    const/4 v5, 0x1

    .line 143
    .end local v4  # "recoveringMemory":Z
    .local v5, "recoveringMemory":Z
    :goto_55
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_83

    .line 144
    iget-object v4, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 145
    .local v4, "ws":Lcom/android/server/wm/WindowState;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Force removing: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "WindowManager"

    invoke-static {v8, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->removeImmediately()V

    .line 147
    .end local v4  # "ws":Lcom/android/server/wm/WindowState;
    goto :goto_55

    .line 148
    :cond_83
    const-string v4, "WindowManager"

    const-string v7, "Due to memory failure, waiting a bit for next layout"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v7, v4

    .line 150
    .local v7, "tmp":Ljava/lang/Object;
    monitor-enter v7

    .line 152
    const-wide/16 v8, 0xfa

    :try_start_93
    invoke-virtual {v7, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_96
    .catch Ljava/lang/InterruptedException; {:try_start_93 .. :try_end_96} :catch_99
    .catchall {:try_start_93 .. :try_end_96} :catchall_97

    .line 154
    goto :goto_9a

    .line 155
    :catchall_97
    move-exception v1

    goto :goto_9d

    .line 153
    :catch_99
    move-exception v4

    .line 155
    :goto_9a
    :try_start_9a
    monitor-exit v7

    move v4, v5

    goto :goto_9f

    :goto_9d
    monitor-exit v7
    :try_end_9e
    .catchall {:try_start_9a .. :try_end_9e} :catchall_97

    throw v1

    .line 159
    .end local v5  # "recoveringMemory":Z
    .end local v7  # "tmp":Ljava/lang/Object;
    .local v4, "recoveringMemory":Z
    :cond_9f
    :goto_9f
    :try_start_9f
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/RootWindowContainer;->performSurfacePlacement(Z)V

    .line 161
    iput-boolean v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    .line 163
    iget-object v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v5

    if-eqz v5, :cond_c8

    .line 164
    iget v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    const/4 v3, 0x6

    if-ge v5, v3, :cond_be

    .line 165
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    goto :goto_ca

    .line 167
    :cond_be
    const-string v3, "WindowManager"

    const-string v5, "Performed 6 layouts in a row. Skipping"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iput v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    goto :goto_ca

    .line 171
    :cond_c8
    iput v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mLayoutRepeatCount:I

    .line 174
    :goto_ca
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    if-eqz v3, :cond_ea

    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_ea

    .line 175
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v5, 0x13

    invoke-virtual {v3, v5}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 176
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v3, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z
    :try_end_ea
    .catch Ljava/lang/RuntimeException; {:try_start_9f .. :try_end_ea} :catch_eb

    .line 181
    :cond_ea
    goto :goto_f5

    .line 178
    :catch_eb
    move-exception v3

    .line 179
    .local v3, "e":Ljava/lang/RuntimeException;
    iput-boolean v6, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mInLayout:Z

    .line 180
    const-string v5, "WindowManager"

    const-string v6, "Unhandled exception while laying out windows"

    invoke-static {v5, v6, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    .end local v3  # "e":Ljava/lang/RuntimeException;
    :goto_f5
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

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
    .param p1, "msg"  # Ljava/lang/String;
    .param p2, "pendingLayoutChanges"  # I

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

    const-string v1, ", mPendingLayoutChanges = 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

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
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mDeferDepth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
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

    .line 209
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

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mObscuringWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
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
    .registers 6
    .param p1, "force"  # Z

    .line 99
    iget v0, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mDeferDepth:I

    if-lez v0, :cond_7

    if-nez p1, :cond_7

    .line 100
    return-void

    .line 102
    :cond_7
    const/4 v0, 0x6

    .line 104
    .local v0, "loopCount":I
    :cond_8
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    .line 105
    invoke-direct {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacementLoop()V

    .line 106
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mPerformSurfacePlacement:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 107
    add-int/lit8 v0, v0, -0x1

    .line 108
    iget-boolean v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mTraversalScheduled:Z

    if-eqz v2, :cond_1f

    if-gtz v0, :cond_8

    .line 109
    :cond_1f
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfacePlacer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iput-boolean v1, v2, Lcom/android/server/wm/RootWindowContainer;->mWallpaperActionPending:Z

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
