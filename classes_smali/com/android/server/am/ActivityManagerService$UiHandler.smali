.class final Lcom/android/server/am/ActivityManagerService$UiHandler;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "UiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 5
    .param p1, "this$0"  # Lcom/android/server/am/ActivityManagerService;

    .line 1668
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 1669
    invoke-static {}, Lcom/android/server/UiThread;->get()Lcom/android/server/UiThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/UiThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1670
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"  # Landroid/os/Message;

    .line 1674
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_111

    const/4 v2, 0x2

    if-eq v0, v2, :cond_104

    const/4 v2, 0x6

    if-eq v0, v2, :cond_c8

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_50

    const/16 v1, 0x35

    if-eq v0, v1, :cond_49

    const/16 v1, 0x44

    if-eq v0, v1, :cond_42

    const/16 v1, 0x46

    if-eq v0, v1, :cond_37

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_30

    const/16 v1, 0x20

    if-eq v0, v1, :cond_25

    goto/16 :goto_11e

    .line 1734
    :cond_25
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1735
    .local v0, "pid":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 1736
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v2, v0, v1}, Lcom/android/server/am/ActivityManagerService;->access$300(Lcom/android/server/am/ActivityManagerService;II)V

    .line 1737
    goto/16 :goto_11e

    .line 1730
    .end local v0  # "pid":I
    .end local v1  # "uid":I
    :cond_30
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$200(Lcom/android/server/am/ActivityManagerService;)V

    .line 1731
    goto/16 :goto_11e

    .line 1746
    :cond_37
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->dispatchOomAdjObserver(Ljava/lang/String;)V

    .line 1747
    goto/16 :goto_11e

    .line 1749
    :cond_42
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->pushTempWhitelist()V

    goto/16 :goto_11e

    .line 1743
    :cond_49
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->dispatchUidsChanged()V

    .line 1744
    goto/16 :goto_11e

    .line 1684
    :cond_50
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    .line 1685
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_57
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1686
    const-string v1, "app"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 1687
    .local v1, "proc":Lcom/android/server/am/ProcessRecord;
    if-nez v1, :cond_71

    .line 1688
    const-string v3, "ActivityManager"

    const-string v4, "App not found when showing strict mode dialog."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    monitor-exit v2
    :try_end_6c
    .catchall {:try_start_57 .. :try_end_6c} :catchall_c2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_11e

    .line 1691
    :cond_71
    :try_start_71
    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_90

    .line 1692
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "App already has strict mode dialog: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    monitor-exit v2
    :try_end_8c
    .catchall {:try_start_71 .. :try_end_8c} :catchall_c2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1695
    :cond_90
    :try_start_90
    const-string/jumbo v3, "result"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/AppErrorResult;

    .line 1696
    .local v3, "res":Lcom/android/server/am/AppErrorResult;
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->showStrictModeViolationDialog()Z

    move-result v4

    if-eqz v4, :cond_b4

    .line 1697
    new-instance v4, Lcom/android/server/am/StrictModeViolationDialog;

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mUiContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v4, v5, v6, v3, v1}, Lcom/android/server/am/StrictModeViolationDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V

    .line 1699
    .local v4, "d":Landroid/app/Dialog;
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 1700
    iput-object v4, v1, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 1701
    .end local v4  # "d":Landroid/app/Dialog;
    goto :goto_b8

    .line 1704
    :cond_b4
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 1706
    .end local v1  # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v3  # "res":Lcom/android/server/am/AppErrorResult;
    :goto_b8
    monitor-exit v2
    :try_end_b9
    .catchall {:try_start_90 .. :try_end_b9} :catchall_c2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1707
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    .line 1708
    .end local v0  # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_11e

    .line 1706
    .restart local v0  # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_c2
    move-exception v1

    :try_start_c3
    monitor-exit v2
    :try_end_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_c2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 1710
    .end local v0  # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_c8
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_cb
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1711
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 1712
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_ed

    .line 1713
    iget-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    if-nez v3, :cond_f9

    .line 1714
    new-instance v3, Lcom/android/server/am/AppWaitingForDebuggerDialog;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mUiContext:Landroid/content/Context;

    invoke-direct {v3, v4, v5, v2}, Lcom/android/server/am/AppWaitingForDebuggerDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)V

    .line 1717
    .local v3, "d":Landroid/app/Dialog;
    iput-object v3, v2, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    .line 1718
    iput-boolean v1, v2, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    .line 1719
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 1720
    .end local v3  # "d":Landroid/app/Dialog;
    goto :goto_f9

    .line 1722
    :cond_ed
    iget-object v1, v2, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_f9

    .line 1723
    iget-object v1, v2, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 1724
    const/4 v1, 0x0

    iput-object v1, v2, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    .line 1727
    .end local v2  # "app":Lcom/android/server/am/ProcessRecord;
    :cond_f9
    :goto_f9
    monitor-exit v0
    :try_end_fa
    .catchall {:try_start_cb .. :try_end_fa} :catchall_fe

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1728
    goto :goto_11e

    .line 1727
    :catchall_fe
    move-exception v1

    :try_start_ff
    monitor-exit v0
    :try_end_100
    .catchall {:try_start_ff .. :try_end_100} :catchall_fe

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 1680
    :cond_104
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppErrors;->handleShowAnrUi(Landroid/os/Message;)V

    .line 1681
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    .line 1682
    goto :goto_11e

    .line 1676
    :cond_111
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppErrors;->handleShowAppErrorUi(Landroid/os/Message;)V

    .line 1677
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    .line 1678
    nop

    .line 1752
    :goto_11e
    return-void
.end method
