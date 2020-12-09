.class Lcom/android/server/wm/DisplayPolicy$2;
.super Ljava/lang/Object;
.source "DisplayPolicy.java"

# interfaces
.implements Lcom/android/server/wm/SystemGesturesPointerEventListener$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/DisplayPolicy;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/DisplayPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayPolicy;)V
    .registers 2

    .line 489
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getOrientationListener()Lcom/android/server/policy/WindowOrientationListener;
    .registers 2

    .line 550
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->access$1100(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v0

    .line 551
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getOrientationListener()Lcom/android/server/policy/WindowOrientationListener;

    move-result-object v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return-object v0
.end method


# virtual methods
.method public onDebug()V
    .registers 1

    .line 547
    return-void
.end method

.method public onDown()V
    .registers 2

    .line 556
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy$2;->getOrientationListener()Lcom/android/server/policy/WindowOrientationListener;

    move-result-object v0

    .line 557
    if-eqz v0, :cond_9

    .line 558
    invoke-virtual {v0}, Lcom/android/server/policy/WindowOrientationListener;->onTouchStart()V

    .line 560
    :cond_9
    return-void
.end method

.method public onFling(I)V
    .registers 4

    .line 538
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->access$1400(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_16

    .line 539
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->access$1400(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    .line 542
    :cond_16
    return-void
.end method

.method public onMouseHoverAtBottom()V
    .registers 5

    .line 580
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->access$1500(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 581
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->access$1500(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 582
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 583
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->access$1500(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 584
    return-void
.end method

.method public onMouseHoverAtTop()V
    .registers 5

    .line 572
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->access$1500(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 573
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->access$1500(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 574
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 575
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->access$1500(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 576
    return-void
.end method

.method public onMouseLeaveFromEdge()V
    .registers 3

    .line 588
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->access$1500(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 589
    return-void
.end method

.method public onSwipeFromBottom()V
    .registers 3

    .line 499
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->access$300(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->access$900(Lcom/android/server/wm/DisplayPolicy;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1a

    .line 500
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->access$300(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wm/DisplayPolicy;->access$400(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/WindowState;)V

    .line 502
    :cond_1a
    return-void
.end method

.method public onSwipeFromLeft()V
    .registers 5

    .line 522
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    .line 523
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->access$1000(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 524
    :try_start_b
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v2}, Lcom/android/server/wm/DisplayPolicy;->access$1100(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/android/server/wm/DisplayContent;->calculateSystemGestureExclusion(Landroid/graphics/Region;Landroid/graphics/Region;)Z

    .line 526
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_4e

    .line 527
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->access$1200(Lcom/android/server/wm/DisplayPolicy;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2a

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 528
    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->access$900(Lcom/android/server/wm/DisplayPolicy;)I

    move-result v1

    if-ne v1, v2, :cond_28

    goto :goto_2a

    :cond_28
    const/4 v2, 0x0

    goto :goto_2b

    :cond_2a
    :goto_2a
    nop

    .line 529
    :goto_2b
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->access$300(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_4a

    if-eqz v2, :cond_4a

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 530
    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->access$1300(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/SystemGesturesPointerEventListener;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->currentGestureStartedInRegion(Landroid/graphics/Region;)Z

    move-result v1

    if-nez v1, :cond_4a

    .line 531
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->access$300(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wm/DisplayPolicy;->access$400(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/WindowState;)V

    .line 533
    :cond_4a
    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    .line 534
    return-void

    .line 526
    :catchall_4e
    move-exception v0

    :try_start_4f
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v0
.end method

.method public onSwipeFromRight()V
    .registers 5

    .line 506
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    .line 507
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->access$1000(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 508
    :try_start_b
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v2}, Lcom/android/server/wm/DisplayPolicy;->access$1100(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/android/server/wm/DisplayContent;->calculateSystemGestureExclusion(Landroid/graphics/Region;Landroid/graphics/Region;)Z

    .line 510
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_4e

    .line 511
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->access$1200(Lcom/android/server/wm/DisplayPolicy;)Z

    move-result v1

    if-nez v1, :cond_2a

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 512
    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->access$900(Lcom/android/server/wm/DisplayPolicy;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_28

    goto :goto_2a

    :cond_28
    const/4 v1, 0x0

    goto :goto_2b

    :cond_2a
    :goto_2a
    const/4 v1, 0x1

    .line 513
    :goto_2b
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v2}, Lcom/android/server/wm/DisplayPolicy;->access$300(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_4a

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 514
    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->access$1300(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/SystemGesturesPointerEventListener;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->currentGestureStartedInRegion(Landroid/graphics/Region;)Z

    move-result v1

    if-nez v1, :cond_4a

    .line 515
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->access$300(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/wm/DisplayPolicy;->access$400(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/WindowState;)V

    .line 517
    :cond_4a
    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    .line 518
    return-void

    .line 510
    :catchall_4e
    move-exception v0

    :try_start_4f
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v0
.end method

.method public onSwipeFromTop()V
    .registers 3

    .line 492
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->access$200(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 493
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->access$200(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wm/DisplayPolicy;->access$400(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/WindowState;)V

    .line 495
    :cond_11
    return-void
.end method

.method public onUpOrCancel()V
    .registers 2

    .line 564
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy$2;->getOrientationListener()Lcom/android/server/policy/WindowOrientationListener;

    move-result-object v0

    .line 565
    if-eqz v0, :cond_9

    .line 566
    invoke-virtual {v0}, Lcom/android/server/policy/WindowOrientationListener;->onTouchEnd()V

    .line 568
    :cond_9
    return-void
.end method
