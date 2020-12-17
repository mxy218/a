.class Lcom/android/server/wm/FlymeWindowModeControllerImpl$4;
.super Ljava/lang/Object;
.source "FlymeWindowModeControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/FlymeWindowModeControllerImpl;->removeActivityStackDelay(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/WindowProcessController;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/FlymeWindowModeControllerImpl;

.field final synthetic val$activityStack:Lcom/android/server/wm/ActivityStack;

.field final synthetic val$app:Lcom/android/server/wm/WindowProcessController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/FlymeWindowModeControllerImpl;Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/WindowProcessController;)V
    .registers 4
    .param p1, "this$0"  # Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    .line 1269
    iput-object p1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$4;->this$0:Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    iput-object p2, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$4;->val$activityStack:Lcom/android/server/wm/ActivityStack;

    iput-object p3, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$4;->val$app:Lcom/android/server/wm/WindowProcessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .line 1272
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$4;->this$0:Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    invoke-static {v0}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->access$200(Lcom/android/server/wm/FlymeWindowModeControllerImpl;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1273
    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$4;->val$activityStack:Lcom/android/server/wm/ActivityStack;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_83

    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$4;->val$activityStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStack;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_83

    .line 1274
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeActivityStackDelay activityStack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$4;->val$activityStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$4;->val$activityStack:Lcom/android/server/wm/ActivityStack;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    .line 1276
    .local v1, "t":Landroid/view/SurfaceControl$Transaction;
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_3c
    iget-object v4, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$4;->val$activityStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_75

    .line 1277
    iget-object v4, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$4;->val$activityStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/ActivityStack;->getChildAt(I)Lcom/android/server/wm/TaskRecord;

    move-result-object v4

    .line 1278
    .local v4, "taskRecord":Lcom/android/server/wm/TaskRecord;
    move v5, v2

    .local v5, "j":I
    :goto_4b
    invoke-virtual {v4}, Lcom/android/server/wm/TaskRecord;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_72

    .line 1279
    invoke-virtual {v4, v5}, Lcom/android/server/wm/TaskRecord;->getChildAt(I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    .line 1280
    .local v6, "activityRecord":Lcom/android/server/wm/ActivityRecord;
    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v7}, Lcom/android/server/wm/AppWindowToken;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1281
    iget-object v7, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$4;->val$activityStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v7, v6}, Lcom/android/server/wm/ActivityStack;->stopActivityLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 1282
    iget-object v7, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$4;->val$activityStack:Lcom/android/server/wm/ActivityStack;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "exitSpaceMode"

    const/4 v12, 0x0

    move-object v8, v6

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/wm/ActivityStack;->finishActivityLocked(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 1278
    nop

    .end local v6  # "activityRecord":Lcom/android/server/wm/ActivityRecord;
    add-int/lit8 v5, v5, 0x1

    goto :goto_4b

    .line 1276
    .end local v4  # "taskRecord":Lcom/android/server/wm/TaskRecord;
    .end local v5  # "j":I
    :cond_72
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    .line 1285
    .end local v3  # "i":I
    :cond_75
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1286
    iget-object v2, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$4;->val$app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v2, :cond_83

    .line 1287
    iget-object v2, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$4;->val$activityStack:Lcom/android/server/wm/ActivityStack;

    iget-object v3, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$4;->val$app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityStack;->handleAppDiedLocked(Lcom/android/server/wm/WindowProcessController;)Z

    .line 1290
    .end local v1  # "t":Landroid/view/SurfaceControl$Transaction;
    :cond_83
    monitor-exit v0
    :try_end_84
    .catchall {:try_start_9 .. :try_end_84} :catchall_88

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1291
    return-void

    .line 1290
    :catchall_88
    move-exception v1

    :try_start_89
    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
