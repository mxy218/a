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

    .line 1417
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 1418
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 1419
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 9

    .line 1424
    const/4 v0, 0x0

    :try_start_1
    instance-of v1, p1, Landroid/view/MotionEvent;

    if-eqz v1, :cond_7f

    .line 1425
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_7f

    .line 1426
    move-object v1, p1

    check-cast v1, Landroid/view/MotionEvent;

    .line 1427
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_7f

    .line 1429
    nop

    .line 1430
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->access$1000(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_84

    .line 1431
    :try_start_1e
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v2}, Lcom/android/server/wm/DisplayPolicy;->access$1700(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    move-result-object v2

    if-nez v2, :cond_2b

    .line 1432
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_7c

    .line 1464
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 1432
    return-void

    .line 1439
    :cond_2b
    :try_start_2b
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v2}, Lcom/android/server/wm/DisplayPolicy;->access$1800(Lcom/android/server/wm/DisplayPolicy;)I

    move-result v2

    or-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    or-int/2addr v2, v3

    or-int/lit8 v2, v2, 0x4

    .line 1443
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v4}, Lcom/android/server/wm/DisplayPolicy;->access$1800(Lcom/android/server/wm/DisplayPolicy;)I

    move-result v4

    if-eq v4, v2, :cond_46

    .line 1444
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v4, v2}, Lcom/android/server/wm/DisplayPolicy;->access$1802(Lcom/android/server/wm/DisplayPolicy;I)I

    .line 1445
    move v2, v3

    goto :goto_47

    .line 1443
    :cond_46
    move v2, v0

    .line 1450
    :goto_47
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v4}, Lcom/android/server/wm/DisplayPolicy;->access$1600(Lcom/android/server/wm/DisplayPolicy;)I

    move-result v4

    or-int/lit8 v4, v4, 0x2

    .line 1452
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v5}, Lcom/android/server/wm/DisplayPolicy;->access$1600(Lcom/android/server/wm/DisplayPolicy;)I

    move-result v5

    if-eq v5, v4, :cond_6f

    .line 1453
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v2, v4}, Lcom/android/server/wm/DisplayPolicy;->access$1602(Lcom/android/server/wm/DisplayPolicy;I)I

    .line 1454
    nop

    .line 1455
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v2}, Lcom/android/server/wm/DisplayPolicy;->access$1500(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v4}, Lcom/android/server/wm/DisplayPolicy;->access$1900(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move v2, v3

    .line 1457
    :cond_6f
    if-eqz v2, :cond_7a

    .line 1458
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v2}, Lcom/android/server/wm/DisplayPolicy;->access$1100(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->reevaluateStatusBarVisibility()V

    .line 1460
    :cond_7a
    monitor-exit v1

    goto :goto_7f

    :catchall_7c
    move-exception v2

    monitor-exit v1
    :try_end_7e
    .catchall {:try_start_2b .. :try_end_7e} :catchall_7c

    :try_start_7e
    throw v2
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_84

    .line 1464
    :cond_7f
    :goto_7f
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 1465
    nop

    .line 1466
    return-void

    .line 1464
    :catchall_84
    move-exception v1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v1
.end method
