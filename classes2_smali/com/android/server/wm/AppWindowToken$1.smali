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

    .line 2200
    iput-object p1, p0, Lcom/android/server/wm/AppWindowToken$1;->this$0:Lcom/android/server/wm/AppWindowToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 2206
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken$1;->this$0:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2208
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken$1;->this$0:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2210
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken$1;->this$0:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    if-nez v1, :cond_1e

    .line 2216
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_71

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2218
    :cond_1e
    :try_start_1e
    iget-object v1, p0, Lcom/android/server/wm/AppWindowToken$1;->this$0:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 2219
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_71

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2225
    nop

    .line 2227
    const/4 v0, 0x0

    :try_start_28
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken$1;->this$0:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/StartingData;->createStartingSurface(Lcom/android/server/wm/AppWindowToken;)Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    move-result-object v1
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2e} :catch_2f

    .line 2230
    goto :goto_38

    .line 2228
    :catch_2f
    move-exception v1

    .line 2229
    const-string v2, "WindowManager"

    const-string v3, "Exception when adding starting window"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v0

    .line 2231
    :goto_38
    if-eqz v1, :cond_70

    .line 2232
    const/4 v2, 0x0

    .line 2233
    iget-object v3, p0, Lcom/android/server/wm/AppWindowToken$1;->this$0:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_42
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2236
    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken$1;->this$0:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v4, v4, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-nez v4, :cond_57

    iget-object v4, p0, Lcom/android/server/wm/AppWindowToken$1;->this$0:Lcom/android/server/wm/AppWindowToken;

    iget-object v4, v4, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    if-nez v4, :cond_52

    goto :goto_57

    .line 2245
    :cond_52
    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken$1;->this$0:Lcom/android/server/wm/AppWindowToken;

    iput-object v1, v0, Lcom/android/server/wm/AppWindowToken;->startingSurface:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    goto :goto_60

    .line 2241
    :cond_57
    :goto_57
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken$1;->this$0:Lcom/android/server/wm/AppWindowToken;

    iput-object v0, v2, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 2242
    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken$1;->this$0:Lcom/android/server/wm/AppWindowToken;

    iput-object v0, v2, Lcom/android/server/wm/AppWindowToken;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 2243
    const/4 v2, 0x1

    .line 2252
    :goto_60
    monitor-exit v3
    :try_end_61
    .catchall {:try_start_42 .. :try_end_61} :catchall_6a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2253
    if-eqz v2, :cond_70

    .line 2254
    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;->remove()V

    goto :goto_70

    .line 2252
    :catchall_6a
    move-exception v0

    :try_start_6b
    monitor-exit v3
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2259
    :cond_70
    :goto_70
    return-void

    .line 2219
    :catchall_71
    move-exception v1

    :try_start_72
    monitor-exit v0
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
