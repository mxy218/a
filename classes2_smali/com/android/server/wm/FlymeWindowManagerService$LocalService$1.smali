.class Lcom/android/server/wm/FlymeWindowManagerService$LocalService$1;
.super Ljava/lang/Object;
.source "FlymeWindowManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->setColorFadeShow(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wm/FlymeWindowManagerService$LocalService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/FlymeWindowManagerService$LocalService;)V
    .registers 2
    .param p1, "this$1"  # Lcom/android/server/wm/FlymeWindowManagerService$LocalService;

    .line 605
    iput-object p1, p0, Lcom/android/server/wm/FlymeWindowManagerService$LocalService$1;->this$1:Lcom/android/server/wm/FlymeWindowManagerService$LocalService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 608
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowManagerService$LocalService$1;->this$1:Lcom/android/server/wm/FlymeWindowManagerService$LocalService;

    iget-object v0, v0, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->this$0:Lcom/android/server/wm/FlymeWindowManagerService;

    invoke-static {v0}, Lcom/android/server/wm/FlymeWindowManagerService;->access$200(Lcom/android/server/wm/FlymeWindowManagerService;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 609
    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowManagerService$LocalService$1;->this$1:Lcom/android/server/wm/FlymeWindowManagerService$LocalService;

    iget-object v1, v1, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->this$0:Lcom/android/server/wm/FlymeWindowManagerService;

    invoke-static {v1}, Lcom/android/server/wm/FlymeWindowManagerService;->access$200(Lcom/android/server/wm/FlymeWindowManagerService;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->assignChildLayers()V

    .line 610
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 611
    return-void

    .line 610
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
