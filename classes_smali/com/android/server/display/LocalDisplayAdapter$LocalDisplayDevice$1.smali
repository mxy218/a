.class Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;
.super Ljava/lang/Object;
.source "LocalDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->requestDisplayStateLocked(II)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

.field final synthetic val$brightness:I

.field final synthetic val$brightnessChanged:Z

.field final synthetic val$delayBrightness:Z

.field final synthetic val$oldState:I

.field final synthetic val$physicalDisplayId:J

.field final synthetic val$state:I

.field final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;IIZZIJLandroid/os/IBinder;)V
    .registers 10
    .param p1, "this$1"  # Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 530
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iput p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$oldState:I

    iput p3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    iput-boolean p4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$brightnessChanged:Z

    iput-boolean p5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$delayBrightness:Z

    iput p6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$brightness:I

    iput-wide p7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$physicalDisplayId:J

    iput-object p9, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$token:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setDisplayBrightness(I)V
    .registers 8
    .param p1, "brightness"  # I

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDisplayBrightness(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$physicalDisplayId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", brightness="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "LocalDisplayAdapter"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$physicalDisplayId:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x20000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 659
    :try_start_46
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->access$000(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Lcom/android/server/lights/Light;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/lights/Light;->setBrightness(I)V

    .line 660
    const-string v0, "ScreenBrightness"

    invoke-static {v1, v2, v0, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V
    :try_end_54
    .catchall {:try_start_46 .. :try_end_54} :catchall_59

    .line 663
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 664
    nop

    .line 665
    return-void

    .line 663
    :catchall_59
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private setDisplayState(I)V
    .registers 11
    .param p1, "state"  # I

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDisplayState(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$physicalDisplayId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", state="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 596
    const-string v4, "LocalDisplayAdapter"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->access$100(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Z

    move-result v0

    const/4 v4, 0x0

    const-wide/32 v5, 0x20000

    if-eqz v0, :cond_53

    .line 604
    const-string v0, "SidekickInternal#endDisplayControl"

    invoke-static {v5, v6, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 607
    :try_start_3b
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->access$200(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Landroid/hardware/sidekick/SidekickInternal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/sidekick/SidekickInternal;->endDisplayControl()V
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_4e

    .line 609
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 610
    nop

    .line 611
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v0, v4}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->access$102(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;Z)Z

    goto :goto_53

    .line 609
    :catchall_4e
    move-exception v0

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    .line 615
    :cond_53
    :goto_53
    invoke-static {}, Lcom/android/server/display/MzDisplayUtils;->isAODOn()Z

    move-result v0

    if-eqz v0, :cond_7e

    const/4 v0, 0x2

    if-ne p1, v0, :cond_7e

    .line 616
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/LocalDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v7, v7, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v7}, Lcom/android/server/display/LocalDisplayAdapter;->access$300(Lcom/android/server/display/LocalDisplayAdapter;)Ljava/lang/Runnable;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 617
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/LocalDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/display/MzDisplayUtils;->getInstance(Landroid/content/Context;)Lcom/android/server/display/MzDisplayUtils;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/display/MzDisplayUtils;->setAODShownAfterScreenOff(Z)V

    .line 619
    :cond_7e
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/LocalDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/display/MzDisplayUtils;->getInstance(Landroid/content/Context;)Lcom/android/server/display/MzDisplayUtils;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v4, v4, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v4}, Lcom/android/server/display/LocalDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {p1}, Lcom/android/server/display/LocalDisplayAdapter;->getPowerModeForState(I)I

    move-result v7

    invoke-virtual {v0, v4, v7}, Lcom/android/server/display/MzDisplayUtils;->updateAODPowerMode(Landroid/content/Context;I)I

    move-result v0

    .line 621
    .local v0, "mode":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$physicalDisplayId:J

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 621
    invoke-static {v5, v6, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 625
    :try_start_bb
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$token:Landroid/os/IBinder;

    invoke-static {v1, v0}, Landroid/view/SurfaceControl;->setDisplayPowerMode(Landroid/os/IBinder;I)V

    .line 626
    const-string v1, "DisplayPowerMode"

    invoke-static {v5, v6, v1, v0}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V
    :try_end_c5
    .catchall {:try_start_bb .. :try_end_c5} :catchall_121

    .line 628
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 629
    nop

    .line 631
    const/4 v1, 0x1

    if-ne v0, v1, :cond_eb

    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v2, v2, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v2}, Lcom/android/server/display/LocalDisplayAdapter;->access$400(Lcom/android/server/display/LocalDisplayAdapter;)Z

    move-result v2

    if-nez v2, :cond_eb

    .line 632
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v2, v2, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v2}, Lcom/android/server/display/LocalDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v3, v3, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v3}, Lcom/android/server/display/LocalDisplayAdapter;->access$300(Lcom/android/server/display/LocalDisplayAdapter;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v7, 0x1f4

    invoke-virtual {v2, v3, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 637
    :cond_eb
    invoke-static {p1}, Landroid/view/Display;->isSuspendedState(I)Z

    move-result v2

    if-eqz v2, :cond_120

    if-eq p1, v1, :cond_120

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 638
    invoke-static {v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->access$200(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Landroid/hardware/sidekick/SidekickInternal;

    move-result-object v1

    if-eqz v1, :cond_120

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->access$100(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Z

    move-result v1

    if-nez v1, :cond_120

    .line 639
    const-string v1, "SidekickInternal#startDisplayControl"

    invoke-static {v5, v6, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 642
    :try_start_108
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->access$200(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Landroid/hardware/sidekick/SidekickInternal;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/hardware/sidekick/SidekickInternal;->startDisplayControl(I)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->access$102(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;Z)Z
    :try_end_117
    .catchall {:try_start_108 .. :try_end_117} :catchall_11b

    .line 644
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 645
    goto :goto_120

    .line 644
    :catchall_11b
    move-exception v1

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    throw v1

    .line 647
    :cond_120
    :goto_120
    return-void

    .line 628
    :catchall_121
    move-exception v1

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    throw v1
.end method

.method private setVrMode(Z)V
    .registers 5
    .param p1, "isVrEnabled"  # Z

    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setVrMode(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$physicalDisplayId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    .line 589
    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 587
    const-string v1, "LocalDisplayAdapter"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->access$000(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Lcom/android/server/lights/Light;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/lights/Light;->setVrMode(Z)V

    .line 592
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 534
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$oldState:I

    .line 535
    .local v0, "currentState":I
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$oldState:I

    invoke-static {v1}, Landroid/view/Display;->isSuspendedState(I)Z

    move-result v1

    if-nez v1, :cond_e

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$oldState:I

    if-nez v1, :cond_3a

    .line 537
    :cond_e
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    invoke-static {v1}, Landroid/view/Display;->isSuspendedState(I)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 538
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    invoke-direct {p0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setDisplayState(I)V

    .line 539
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    goto :goto_3a

    .line 540
    :cond_1e
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_35

    iget v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$oldState:I

    if-ne v3, v2, :cond_28

    goto :goto_35

    .line 544
    :cond_28
    const/4 v2, 0x6

    if-eq v1, v2, :cond_2f

    if-ne v3, v2, :cond_2e

    goto :goto_2f

    .line 549
    :cond_2e
    return-void

    .line 546
    :cond_2f
    :goto_2f
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setDisplayState(I)V

    .line 547
    const/4 v0, 0x2

    goto :goto_3a

    .line 542
    :cond_35
    :goto_35
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setDisplayState(I)V

    .line 543
    const/4 v0, 0x3

    .line 556
    :cond_3a
    :goto_3a
    const/4 v1, 0x0

    .line 557
    .local v1, "vrModeChange":Z
    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_42

    if-ne v0, v3, :cond_4f

    :cond_42
    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    if-eq v0, v2, :cond_4f

    .line 559
    if-ne v2, v3, :cond_4a

    const/4 v2, 0x1

    goto :goto_4b

    :cond_4a
    const/4 v2, 0x0

    :goto_4b
    invoke-direct {p0, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setVrMode(Z)V

    .line 560
    const/4 v1, 0x1

    .line 565
    :cond_4f
    iget-boolean v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$brightnessChanged:Z

    if-nez v2, :cond_55

    if-eqz v1, :cond_86

    .line 568
    :cond_55
    iget-boolean v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$delayBrightness:Z

    if-eqz v2, :cond_81

    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v2, v2, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 569
    invoke-virtual {v2}, Lcom/android/server/display/LocalDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/display/MzDisplayUtils;->getInstance(Landroid/content/Context;)Lcom/android/server/display/MzDisplayUtils;

    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v2, v2, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v2}, Lcom/android/server/display/LocalDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/display/MzDisplayUtils;->isOpenDisplayDirectCurrentLight(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 570
    const-string v2, "LocalDisplayAdapter"

    const-string v3, "delay brightness"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    const-wide/16 v2, 0x10

    :try_start_7b
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7e
    .catch Ljava/lang/InterruptedException; {:try_start_7b .. :try_end_7e} :catch_7f

    .line 573
    :goto_7e
    goto :goto_81

    :catch_7f
    move-exception v2

    goto :goto_7e

    .line 576
    :cond_81
    :goto_81
    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$brightness:I

    invoke-direct {p0, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setDisplayBrightness(I)V

    .line 580
    :cond_86
    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    if-eq v2, v0, :cond_8d

    .line 581
    invoke-direct {p0, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setDisplayState(I)V

    .line 583
    :cond_8d
    return-void
.end method
