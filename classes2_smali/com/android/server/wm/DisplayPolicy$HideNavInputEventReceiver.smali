.class final Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "DisplayPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HideNavInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/DisplayPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayPolicy;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .registers 4
    .param p2, "inputChannel"  # Landroid/view/InputChannel;
    .param p3, "looper"  # Landroid/os/Looper;

    .line 1581
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 1582
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 1583
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 11
    .param p1, "event"  # Landroid/view/InputEvent;

    .line 1588
    const/4 v0, 0x0

    :try_start_1
    instance-of v1, p1, Landroid/view/MotionEvent;

    if-eqz v1, :cond_7c

    .line 1589
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_7c

    .line 1590
    move-object v1, p1

    check-cast v1, Landroid/view/MotionEvent;

    .line 1591
    .local v1, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_7c

    .line 1593
    const/4 v2, 0x0

    .line 1594
    .local v2, "changed":Z
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v3}, Lcom/android/server/wm/DisplayPolicy;->access$1100(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_81

    .line 1595
    :try_start_1e
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v4}, Lcom/android/server/wm/DisplayPolicy;->access$2100(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    move-result-object v4

    if-nez v4, :cond_2b

    .line 1596
    monitor-exit v3
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_79

    .line 1628
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 1596
    return-void

    .line 1603
    :cond_2b
    :try_start_2b
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v4}, Lcom/android/server/wm/DisplayPolicy;->access$2200(Lcom/android/server/wm/DisplayPolicy;)I

    move-result v4

    or-int/lit8 v4, v4, 0x2

    or-int/lit8 v4, v4, 0x1

    or-int/lit8 v4, v4, 0x4

    .line 1607
    .local v4, "newVal":I
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v5}, Lcom/android/server/wm/DisplayPolicy;->access$2200(Lcom/android/server/wm/DisplayPolicy;)I

    move-result v5

    if-eq v5, v4, :cond_45

    .line 1608
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v5, v4}, Lcom/android/server/wm/DisplayPolicy;->access$2202(Lcom/android/server/wm/DisplayPolicy;I)I

    .line 1609
    const/4 v2, 0x1

    .line 1614
    :cond_45
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v5}, Lcom/android/server/wm/DisplayPolicy;->access$2000(Lcom/android/server/wm/DisplayPolicy;)I

    move-result v5

    or-int/lit8 v4, v5, 0x2

    .line 1616
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v5}, Lcom/android/server/wm/DisplayPolicy;->access$2000(Lcom/android/server/wm/DisplayPolicy;)I

    move-result v5

    if-eq v5, v4, :cond_6c

    .line 1617
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v5, v4}, Lcom/android/server/wm/DisplayPolicy;->access$2002(Lcom/android/server/wm/DisplayPolicy;I)I

    .line 1618
    const/4 v2, 0x1

    .line 1619
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v5}, Lcom/android/server/wm/DisplayPolicy;->access$1900(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v6}, Lcom/android/server/wm/DisplayPolicy;->access$2300(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Runnable;

    move-result-object v6

    const-wide/16 v7, 0x3e8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1621
    :cond_6c
    if-eqz v2, :cond_77

    .line 1622
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v5}, Lcom/android/server/wm/DisplayPolicy;->access$900(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->reevaluateStatusBarVisibility()V

    .line 1624
    .end local v4  # "newVal":I
    :cond_77
    monitor-exit v3

    goto :goto_7c

    :catchall_79
    move-exception v4

    monitor-exit v3
    :try_end_7b
    .catchall {:try_start_2b .. :try_end_7b} :catchall_79

    .end local p0  # "this":Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;
    .end local p1  # "event":Landroid/view/InputEvent;
    :try_start_7b
    throw v4
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_81

    .line 1628
    .end local v1  # "motionEvent":Landroid/view/MotionEvent;
    .end local v2  # "changed":Z
    .restart local p0  # "this":Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;
    .restart local p1  # "event":Landroid/view/InputEvent;
    :cond_7c
    :goto_7c
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 1629
    nop

    .line 1630
    return-void

    .line 1628
    :catchall_81
    move-exception v1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v1
.end method
