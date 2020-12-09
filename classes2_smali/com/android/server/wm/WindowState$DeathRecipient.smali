.class Lcom/android/server/wm/WindowState$DeathRecipient;
.super Ljava/lang/Object;
.source "WindowState.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowState;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/WindowState;)V
    .registers 2

    .line 2524
    iput-object p1, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState$1;)V
    .registers 3

    .line 2524
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowState$DeathRecipient;-><init>(Lcom/android/server/wm/WindowState;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 7

    .line 2528
    nop

    .line 2529
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_8} :catch_a0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2530
    iget-object v1, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v3, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 2531
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 2532
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WIN DEATH: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2533
    if-eqz v1, :cond_70

    .line 2534
    iget-object v2, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 2535
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_51

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-ne v3, v1, :cond_51

    .line 2536
    iget-object v3, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget-object v5, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3, v5}, Lcom/android/server/wm/TaskSnapshotController;->onAppDied(Lcom/android/server/wm/AppWindowToken;)V

    .line 2538
    :cond_51
    iget-object v3, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    invoke-static {v3}, Lcom/android/server/wm/WindowState;->access$200(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    invoke-static {v1, v3}, Lcom/android/server/wm/WindowState;->access$300(Lcom/android/server/wm/WindowState;Z)V

    .line 2539
    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7f2

    if-ne v1, v3, :cond_6e

    .line 2544
    nop

    .line 2545
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 2546
    if-eqz v1, :cond_6c

    .line 2547
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->resetDockedStackToMiddle()V

    .line 2549
    :cond_6c
    const/4 v1, 0x1

    goto :goto_6f

    .line 2539
    :cond_6e
    move v1, v4

    .line 2551
    :goto_6f
    goto :goto_83

    :cond_70
    iget-object v1, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v1, :cond_82

    .line 2552
    const-string v1, "WindowManager"

    const-string v2, "!!! LEAK !!! Window removed but surface still valid."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2553
    iget-object v1, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->removeIfPossible()V

    .line 2555
    :cond_82
    move v1, v4

    :goto_83
    monitor-exit v0
    :try_end_84
    .catchall {:try_start_8 .. :try_end_84} :catchall_9a

    :try_start_84
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_87
    .catch Ljava/lang/IllegalArgumentException; {:try_start_84 .. :try_end_87} :catch_a0

    .line 2556
    if-eqz v1, :cond_99

    .line 2560
    :try_start_89
    iget-object v0, p0, Lcom/android/server/wm/WindowState$DeathRecipient;->this$0:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    invoke-interface {v0, v4}, Landroid/app/IActivityTaskManager;->setSplitScreenResizing(Z)V
    :try_end_92
    .catch Landroid/os/RemoteException; {:try_start_89 .. :try_end_92} :catch_93
    .catch Ljava/lang/IllegalArgumentException; {:try_start_89 .. :try_end_92} :catch_a0

    .line 2564
    goto :goto_99

    .line 2561
    :catch_93
    move-exception v0

    .line 2563
    :try_start_94
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_99
    .catch Ljava/lang/IllegalArgumentException; {:try_start_94 .. :try_end_99} :catch_a0

    .line 2568
    :cond_99
    :goto_99
    goto :goto_a1

    .line 2555
    :catchall_9a
    move-exception v1

    :try_start_9b
    monitor-exit v0
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_9a

    :try_start_9c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
    :try_end_a0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9c .. :try_end_a0} :catch_a0

    .line 2566
    :catch_a0
    move-exception v0

    .line 2569
    :goto_a1
    return-void
.end method
