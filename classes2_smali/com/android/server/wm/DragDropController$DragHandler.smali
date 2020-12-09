.class Lcom/android/server/wm/DragDropController$DragHandler;
.super Landroid/os/Handler;
.source "DragDropController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DragDropController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragHandler"
.end annotation


# instance fields
.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field final synthetic this$0:Lcom/android/server/wm/DragDropController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DragDropController;Lcom/android/server/wm/WindowManagerService;Landroid/os/Looper;)V
    .registers 4

    .line 335
    iput-object p1, p0, Lcom/android/server/wm/DragDropController$DragHandler;->this$0:Lcom/android/server/wm/DragDropController;

    .line 336
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 337
    iput-object p2, p0, Lcom/android/server/wm/DragDropController$DragHandler;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 338
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 342
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_59

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3c

    const/4 p1, 0x2

    if-eq v0, p1, :cond_c

    goto/16 :goto_84

    .line 372
    :cond_c
    iget-object p1, p0, Lcom/android/server/wm/DragDropController$DragHandler;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 373
    iget-object p1, p0, Lcom/android/server/wm/DragDropController$DragHandler;->this$0:Lcom/android/server/wm/DragDropController;

    invoke-static {p1}, Lcom/android/server/wm/DragDropController;->access$000(Lcom/android/server/wm/DragDropController;)Lcom/android/server/wm/DragState;

    move-result-object p1

    if-nez p1, :cond_28

    .line 374
    const-string p1, "WindowManager"

    const-string v1, "mDragState unexpectedly became null while plyaing animation"

    invoke-static {p1, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_11 .. :try_end_24} :catchall_36

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 378
    :cond_28
    :try_start_28
    iget-object p1, p0, Lcom/android/server/wm/DragDropController$DragHandler;->this$0:Lcom/android/server/wm/DragDropController;

    invoke-static {p1}, Lcom/android/server/wm/DragDropController;->access$000(Lcom/android/server/wm/DragDropController;)Lcom/android/server/wm/DragState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DragState;->closeLocked()V

    .line 379
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_28 .. :try_end_32} :catchall_36

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_84

    :catchall_36
    move-exception p1

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 362
    :cond_3c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/DragState$InputInterceptor;

    .line 364
    if-nez p1, :cond_43

    return-void

    .line 365
    :cond_43
    iget-object v0, p0, Lcom/android/server/wm/DragDropController$DragHandler;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_48
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 366
    invoke-virtual {p1}, Lcom/android/server/wm/DragState$InputInterceptor;->tearDown()V

    .line 367
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_48 .. :try_end_4f} :catchall_53

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 368
    goto :goto_84

    .line 367
    :catchall_53
    move-exception p1

    :try_start_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 344
    :cond_59
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/IBinder;

    .line 349
    iget-object p1, p0, Lcom/android/server/wm/DragDropController$DragHandler;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_62
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 351
    iget-object v0, p0, Lcom/android/server/wm/DragDropController$DragHandler;->this$0:Lcom/android/server/wm/DragDropController;

    invoke-static {v0}, Lcom/android/server/wm/DragDropController;->access$000(Lcom/android/server/wm/DragDropController;)Lcom/android/server/wm/DragState;

    move-result-object v0

    if-eqz v0, :cond_7f

    .line 352
    iget-object v0, p0, Lcom/android/server/wm/DragDropController$DragHandler;->this$0:Lcom/android/server/wm/DragDropController;

    invoke-static {v0}, Lcom/android/server/wm/DragDropController;->access$000(Lcom/android/server/wm/DragDropController;)Lcom/android/server/wm/DragState;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/DragState;->mDragResult:Z

    .line 353
    iget-object v0, p0, Lcom/android/server/wm/DragDropController$DragHandler;->this$0:Lcom/android/server/wm/DragDropController;

    invoke-static {v0}, Lcom/android/server/wm/DragDropController;->access$000(Lcom/android/server/wm/DragDropController;)Lcom/android/server/wm/DragState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DragState;->endDragLocked()V

    .line 355
    :cond_7f
    monitor-exit p1
    :try_end_80
    .catchall {:try_start_62 .. :try_end_80} :catchall_85

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 356
    nop

    .line 383
    :goto_84
    return-void

    .line 355
    :catchall_85
    move-exception v0

    :try_start_86
    monitor-exit p1
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method
