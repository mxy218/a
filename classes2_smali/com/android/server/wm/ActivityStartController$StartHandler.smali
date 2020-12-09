.class final Lcom/android/server/wm/ActivityStartController$StartHandler;
.super Landroid/os/Handler;
.source "ActivityStartController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityStartController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StartHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/ActivityStartController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityStartController;Landroid/os/Looper;)V
    .registers 4

    .line 99
    iput-object p1, p0, Lcom/android/server/wm/ActivityStartController$StartHandler;->this$0:Lcom/android/server/wm/ActivityStartController;

    .line 100
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 101
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 105
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    goto :goto_1b

    .line 107
    :cond_6
    iget-object p1, p0, Lcom/android/server/wm/ActivityStartController$StartHandler;->this$0:Lcom/android/server/wm/ActivityStartController;

    invoke-static {p1}, Lcom/android/server/wm/ActivityStartController;->access$000(Lcom/android/server/wm/ActivityStartController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 108
    iget-object v1, p0, Lcom/android/server/wm/ActivityStartController$StartHandler;->this$0:Lcom/android/server/wm/ActivityStartController;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityStartController;->doPendingActivityLaunches(Z)V

    .line 109
    monitor-exit p1
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 112
    :goto_1b
    return-void

    .line 109
    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit p1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method
