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
    .registers 4

    .line 1582
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 1583
    invoke-static {}, Lcom/android/server/UiThread;->get()Lcom/android/server/UiThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/UiThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1584
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 1588
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

    .line 1648
    :cond_25
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1649
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 1650
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v1, v0, p1}, Lcom/android/server/am/ActivityManagerService;->access$300(Lcom/android/server/am/ActivityManagerService;II)V

    .line 1651
    goto/16 :goto_11e

    .line 1644
    :cond_30
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p1}, Lcom/android/server/am/ActivityManagerService;->access$200(Lcom/android/server/am/ActivityManagerService;)V

    .line 1645
    goto/16 :goto_11e

    .line 1660
    :cond_37
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->dispatchOomAdjObserver(Ljava/lang/String;)V

    .line 1661
    goto/16 :goto_11e

    .line 1663
    :cond_42
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityManagerService;->pushTempWhitelist()V

    goto/16 :goto_11e

    .line 1657
    :cond_49
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityManagerService;->dispatchUidsChanged()V

    .line 1658
    goto/16 :goto_11e

    .line 1598
    :cond_50
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/HashMap;

    .line 1599
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_57
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1600
    const-string v1, "app"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 1601
    if-nez v1, :cond_71

    .line 1602
    const-string p1, "ActivityManager"

    const-string v1, "App not found when showing strict mode dialog."

    invoke-static {p1, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_57 .. :try_end_6c} :catchall_c2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_11e

    .line 1605
    :cond_71
    :try_start_71
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_90

    .line 1606
    const-string p1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App already has strict mode dialog: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_71 .. :try_end_8c} :catchall_c2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1609
    :cond_90
    :try_start_90
    const-string/jumbo v2, "result"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/AppErrorResult;

    .line 1610
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->showStrictModeViolationDialog()Z

    move-result v2

    if-eqz v2, :cond_b4

    .line 1611
    new-instance v2, Lcom/android/server/am/StrictModeViolationDialog;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUiContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v2, v3, v4, p1, v1}, Lcom/android/server/am/StrictModeViolationDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V

    .line 1613
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 1614
    iput-object v2, v1, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 1615
    goto :goto_b8

    .line 1618
    :cond_b4
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 1620
    :goto_b8
    monitor-exit v0
    :try_end_b9
    .catchall {:try_start_90 .. :try_end_b9} :catchall_c2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1621
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    .line 1622
    goto :goto_11e

    .line 1620
    :catchall_c2
    move-exception p1

    :try_start_c3
    monitor-exit v0
    :try_end_c4
    .catchall {:try_start_c3 .. :try_end_c4} :catchall_c2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 1624
    :cond_c8
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_cb
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1625
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 1626
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_ed

    .line 1627
    iget-boolean p1, v2, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    if-nez p1, :cond_f9

    .line 1628
    new-instance p1, Lcom/android/server/am/AppWaitingForDebuggerDialog;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUiContext:Landroid/content/Context;

    invoke-direct {p1, v3, v4, v2}, Lcom/android/server/am/AppWaitingForDebuggerDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)V

    .line 1631
    iput-object p1, v2, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    .line 1632
    iput-boolean v1, v2, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    .line 1633
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 1634
    goto :goto_f9

    .line 1636
    :cond_ed
    iget-object p1, v2, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_f9

    .line 1637
    iget-object p1, v2, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 1638
    const/4 p1, 0x0

    iput-object p1, v2, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    .line 1641
    :cond_f9
    :goto_f9
    monitor-exit v0
    :try_end_fa
    .catchall {:try_start_cb .. :try_end_fa} :catchall_fe

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1642
    goto :goto_11e

    .line 1641
    :catchall_fe
    move-exception p1

    :try_start_ff
    monitor-exit v0
    :try_end_100
    .catchall {:try_start_ff .. :try_end_100} :catchall_fe

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1

    .line 1594
    :cond_104
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppErrors;->handleShowAnrUi(Landroid/os/Message;)V

    .line 1595
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    .line 1596
    goto :goto_11e

    .line 1590
    :cond_111
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppErrors;->handleShowAppErrorUi(Landroid/os/Message;)V

    .line 1591
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    .line 1592
    nop

    .line 1666
    :goto_11e
    return-void
.end method
