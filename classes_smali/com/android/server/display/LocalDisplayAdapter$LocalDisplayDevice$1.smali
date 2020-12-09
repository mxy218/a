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

.field final synthetic val$oldState:I

.field final synthetic val$physicalDisplayId:J

.field final synthetic val$state:I

.field final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;IIZIJLandroid/os/IBinder;)V
    .registers 9

    .line 499
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iput p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$oldState:I

    iput p3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    iput-boolean p4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$brightnessChanged:Z

    iput p5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$brightness:I

    iput-wide p6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$physicalDisplayId:J

    iput-object p8, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$token:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setDisplayBrightness(I)V
    .registers 5

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDisplayBrightness(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$physicalDisplayId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", brightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x20000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 606
    :try_start_27
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->access$000(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Lcom/android/server/lights/Light;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/lights/Light;->setBrightness(I)V

    .line 607
    const-string v0, "ScreenBrightness"

    invoke-static {v1, v2, v0, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V
    :try_end_35
    .catchall {:try_start_27 .. :try_end_35} :catchall_3a

    .line 610
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 611
    nop

    .line 612
    return-void

    .line 610
    :catchall_3a
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method private setDisplayState(I)V
    .registers 8

    .line 562
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->access$100(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Z

    move-result v0

    const-wide/32 v1, 0x20000

    if-eqz v0, :cond_29

    .line 563
    const-string v0, "SidekickInternal#endDisplayControl"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 566
    :try_start_10
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->access$200(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Landroid/hardware/sidekick/SidekickInternal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/sidekick/SidekickInternal;->endDisplayControl()V
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_24

    .line 568
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 569
    nop

    .line 570
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->access$102(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;Z)Z

    goto :goto_29

    .line 568
    :catchall_24
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p1

    .line 572
    :cond_29
    :goto_29
    invoke-static {p1}, Lcom/android/server/display/LocalDisplayAdapter;->getPowerModeForState(I)I

    move-result v0

    .line 573
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDisplayState(id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$physicalDisplayId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 573
    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 577
    :try_start_55
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$token:Landroid/os/IBinder;

    invoke-static {v3, v0}, Landroid/view/SurfaceControl;->setDisplayPowerMode(Landroid/os/IBinder;I)V

    .line 578
    const-string v3, "DisplayPowerMode"

    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V
    :try_end_5f
    .catchall {:try_start_55 .. :try_end_5f} :catchall_9a

    .line 580
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 581
    nop

    .line 584
    invoke-static {p1}, Landroid/view/Display;->isSuspendedState(I)Z

    move-result v0

    if-eqz v0, :cond_99

    const/4 v0, 0x1

    if-eq p1, v0, :cond_99

    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 585
    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->access$200(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Landroid/hardware/sidekick/SidekickInternal;

    move-result-object v0

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->access$100(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Z

    move-result v0

    if-nez v0, :cond_99

    .line 586
    const-string v0, "SidekickInternal#startDisplayControl"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 589
    :try_start_81
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v3}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->access$200(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Landroid/hardware/sidekick/SidekickInternal;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/hardware/sidekick/SidekickInternal;->startDisplayControl(I)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->access$102(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;Z)Z
    :try_end_90
    .catchall {:try_start_81 .. :try_end_90} :catchall_94

    .line 591
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 592
    goto :goto_99

    .line 591
    :catchall_94
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p1

    .line 594
    :cond_99
    :goto_99
    return-void

    .line 580
    :catchall_9a
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method private setVrMode(Z)V
    .registers 3

    .line 550
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->access$000(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Lcom/android/server/lights/Light;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/lights/Light;->setVrMode(Z)V

    .line 551
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 503
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$oldState:I

    .line 504
    invoke-static {v0}, Landroid/view/Display;->isSuspendedState(I)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-nez v1, :cond_e

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$oldState:I

    if-nez v1, :cond_38

    .line 506
    :cond_e
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    invoke-static {v0}, Landroid/view/Display;->isSuspendedState(I)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 507
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    invoke-direct {p0, v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setDisplayState(I)V

    .line 508
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    goto :goto_38

    .line 509
    :cond_1e
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_34

    iget v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$oldState:I

    if-ne v4, v1, :cond_28

    goto :goto_34

    .line 513
    :cond_28
    const/4 v1, 0x6

    if-eq v0, v1, :cond_2f

    if-ne v4, v1, :cond_2e

    goto :goto_2f

    .line 518
    :cond_2e
    return-void

    .line 515
    :cond_2f
    :goto_2f
    invoke-direct {p0, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setDisplayState(I)V

    .line 516
    move v0, v2

    goto :goto_38

    .line 511
    :cond_34
    :goto_34
    invoke-direct {p0, v3}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setDisplayState(I)V

    .line 512
    move v0, v3

    .line 525
    :cond_38
    :goto_38
    nop

    .line 526
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x5

    if-eq v1, v4, :cond_42

    if-ne v0, v4, :cond_4d

    :cond_42
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    if-eq v0, v1, :cond_4d

    .line 528
    if-ne v1, v4, :cond_49

    move v3, v2

    :cond_49
    invoke-direct {p0, v3}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setVrMode(Z)V

    .line 529
    goto :goto_4e

    .line 534
    :cond_4d
    move v2, v3

    :goto_4e
    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$brightnessChanged:Z

    if-nez v1, :cond_54

    if-eqz v2, :cond_59

    .line 535
    :cond_54
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$brightness:I

    invoke-direct {p0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setDisplayBrightness(I)V

    .line 539
    :cond_59
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    if-eq v1, v0, :cond_60

    .line 540
    invoke-direct {p0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setDisplayState(I)V

    .line 542
    :cond_60
    return-void
.end method
