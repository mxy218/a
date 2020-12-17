.class Lcom/android/server/wm/AppWindowToken$1;
.super Ljava/lang/Object;
.source "AppWindowToken.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AppWindowToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/AppWindowToken;


# direct methods
.method constructor <init>(Lcom/android/server/wm/AppWindowToken;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/wm/AppWindowToken;

    .line 2255
    iput-object p1, p0, Lcom/android/server/wm/AppWindowToken$1;->this$0:Lcom/android/server/wm/AppWindowToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 2261
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken$1;->this$0:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2263
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken$1;->this$0:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2265
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken$1;->this$0:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    if-nez v1, :cond_3a

    .line 2267
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v1, :cond_35

    .line 2268
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startingData was nulled out before handling mAddStartingWindow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken$1;->this$0:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2271
    :cond_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_137

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2273
    :cond_3a
    :try_start_3a
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken$1;->this$0:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 2274
    .local v1, "startingData":Lcom/android/server/wm/StartingData;
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_137

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2276
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v0, :cond_64

    .line 2277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add starting "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": startingData="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WindowManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2280
    :cond_64
    const/4 v0, 0x0

    .line 2282
    .local v0, "surface":Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;
    :try_start_65
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken$1;->this$0:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/StartingData;->createStartingSurface(Lcom/android/server/wm/AppWindowToken;)Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    move-result-object v2
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_6b} :catch_6d

    move-object v0, v2

    .line 2285
    goto :goto_75

    .line 2283
    :catch_6d
    move-exception v2

    .line 2284
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "WindowManager"

    const-string v4, "Exception when adding starting window"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2286
    .end local v2  # "e":Ljava/lang/Exception;
    :goto_75
    if-eqz v0, :cond_118

    .line 2287
    const/4 v2, 0x0

    .line 2288
    .local v2, "abort":Z
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken$1;->this$0:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_7f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2291
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken$1;->this$0:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v4, v4, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-nez v4, :cond_94

    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken$1;->this$0:Lcom/android/server/wm/AppWindowToken;

    iget-object v4, v4, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    if-nez v4, :cond_8f

    goto :goto_94

    .line 2300
    :cond_8f
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken$1;->this$0:Lcom/android/server/wm/AppWindowToken;

    iput-object v0, v4, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    goto :goto_d2

    .line 2292
    :cond_94
    :goto_94
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v4, :cond_c8

    .line 2293
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Aborted starting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/AppWindowToken$1;->this$0:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": removed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/AppWindowToken$1;->this$0:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v6, v6, Lcom/android/server/wm/AppWindowToken;->removed:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " startingData="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/AppWindowToken$1;->this$0:Lcom/android/server/wm/AppWindowToken;

    iget-object v6, v6, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2296
    :cond_c8
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken$1;->this$0:Lcom/android/server/wm/AppWindowToken;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 2297
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken$1;->this$0:Lcom/android/server/wm/AppWindowToken;

    iput-object v5, v4, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 2298
    const/4 v2, 0x1

    .line 2302
    :goto_d2
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v4, :cond_108

    if-nez v2, :cond_108

    .line 2303
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Added starting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/AppWindowToken$1;->this$0:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": startingWindow="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/AppWindowToken$1;->this$0:Lcom/android/server/wm/AppWindowToken;

    iget-object v6, v6, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " startingView="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/AppWindowToken$1;->this$0:Lcom/android/server/wm/AppWindowToken;

    iget-object v6, v6, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2307
    :cond_108
    monitor-exit v3
    :try_end_109
    .catchall {:try_start_7f .. :try_end_109} :catchall_112

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2308
    if-eqz v2, :cond_135

    .line 2309
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;->remove()V

    goto :goto_135

    .line 2307
    :catchall_112
    move-exception v4

    :try_start_113
    monitor-exit v3
    :try_end_114
    .catchall {:try_start_113 .. :try_end_114} :catchall_112

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2311
    .end local v2  # "abort":Z
    :cond_118
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v2, :cond_135

    .line 2312
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Surface returned was null: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken$1;->this$0:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_136

    .line 2311
    :cond_135
    :goto_135
    nop

    .line 2314
    :goto_136
    return-void

    .line 2274
    .end local v0  # "surface":Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;
    .end local v1  # "startingData":Lcom/android/server/wm/StartingData;
    :catchall_137
    move-exception v1

    :try_start_138
    monitor-exit v0
    :try_end_139
    .catchall {:try_start_138 .. :try_end_139} :catchall_137

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
