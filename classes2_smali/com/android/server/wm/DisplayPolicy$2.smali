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
    .param p1, "this$0"  # Lcom/android/server/wm/DisplayPolicy;

    .line 527
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getOrientationListener()Lcom/android/server/policy/WindowOrientationListener;
    .registers 3

    .line 725
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->access$900(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v0

    .line 726
    .local v0, "rotation":Lcom/android/server/wm/DisplayRotation;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getOrientationListener()Lcom/android/server/policy/WindowOrientationListener;

    move-result-object v1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return-object v1
.end method


# virtual methods
.method public onDebug()V
    .registers 1

    .line 722
    return-void
.end method

.method public onDown()V
    .registers 4

    .line 731
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy$2;->getOrientationListener()Lcom/android/server/policy/WindowOrientationListener;

    move-result-object v0

    .line 732
    .local v0, "listener":Lcom/android/server/policy/WindowOrientationListener;
    if-eqz v0, :cond_9

    .line 733
    invoke-virtual {v0}, Lcom/android/server/policy/WindowOrientationListener;->onTouchStart()V

    .line 735
    :cond_9
    invoke-static {}, Lcom/android/server/wm/DisplayPolicy;->access$1600()Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostFling:Landroid/util/BoostFramework;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 736
    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->access$1700(Lcom/android/server/wm/DisplayPolicy;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 737
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v1, v1, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostFling:Landroid/util/BoostFramework;

    invoke-virtual {v1}, Landroid/util/BoostFramework;->perfLockRelease()I

    .line 738
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/wm/DisplayPolicy;->access$1702(Lcom/android/server/wm/DisplayPolicy;Z)Z

    .line 740
    :cond_2a
    return-void
.end method

.method public onFling(I)V
    .registers 6
    .param p1, "duration"  # I

    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFling-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x4

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 593
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->access$1400(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_2c

    .line 594
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->access$1400(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, p1}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    .line 599
    :cond_2c
    invoke-static {}, Landroid/perf/IntelligentEngineManager;->getInstance()Landroid/perf/IntelligentEngineManager;

    move-result-object v0

    const-string v3, "OverScroll"

    invoke-virtual {v0, v3, p1}, Landroid/perf/IntelligentEngineManager;->migrateToBigCore(Ljava/lang/String;I)V

    .line 601
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 602
    return-void
.end method

.method public onHorizontalFling(I)V
    .registers 10
    .param p1, "duration"  # I

    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHorizontalFling-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x4

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 636
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->access$1500(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/String;

    move-result-object v0

    .line 637
    .local v0, "currentPackage":Ljava/lang/String;
    const-string v3, "WindowManager"

    if-nez v0, :cond_29

    .line 638
    const-string v4, "Error: package name null"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 640
    return-void

    .line 642
    :cond_29
    invoke-static {}, Lcom/android/server/wm/DisplayPolicy;->access$1600()Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 643
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v4, v4, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostFling:Landroid/util/BoostFramework;

    if-nez v4, :cond_44

    .line 644
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    new-instance v5, Landroid/util/BoostFramework;

    invoke-direct {v5}, Landroid/util/BoostFramework;-><init>()V

    iput-object v5, v4, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostFling:Landroid/util/BoostFramework;

    .line 645
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/server/wm/DisplayPolicy;->access$1702(Lcom/android/server/wm/DisplayPolicy;Z)Z

    .line 647
    :cond_44
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v4, v4, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostFling:Landroid/util/BoostFramework;

    if-nez v4, :cond_53

    .line 648
    const-string v4, "Error: boost object null"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 650
    return-void

    .line 652
    :cond_53
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v4, v3, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostFling:Landroid/util/BoostFramework;

    invoke-static {v3, v0, v4}, Lcom/android/server/wm/DisplayPolicy;->access$1800(Lcom/android/server/wm/DisplayPolicy;Ljava/lang/String;Landroid/util/BoostFramework;)Z

    move-result v3

    .line 653
    .local v3, "isGame":Z
    if-nez v3, :cond_6f

    .line 654
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v4, v4, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostFling:Landroid/util/BoostFramework;

    const/16 v5, 0x1080

    add-int/lit16 v6, p1, 0xa0

    const/4 v7, 0x2

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 656
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/server/wm/DisplayPolicy;->access$1702(Lcom/android/server/wm/DisplayPolicy;Z)Z

    .line 659
    .end local v3  # "isGame":Z
    :cond_6f
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 660
    return-void
.end method

.method public onMouseHoverAtBottom()V
    .registers 5

    .line 760
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->access$1900(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 761
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->access$1900(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 762
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 763
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->access$1900(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 764
    return-void
.end method

.method public onMouseHoverAtTop()V
    .registers 5

    .line 752
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->access$1900(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 753
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->access$1900(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 754
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 755
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v1}, Lcom/android/server/wm/DisplayPolicy;->access$1900(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 756
    return-void
.end method

.method public onMouseLeaveFromEdge()V
    .registers 3

    .line 768
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->access$1900(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 769
    return-void
.end method

.method public onScroll(Z)V
    .registers 11
    .param p1, "started"  # Z

    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScroll-started-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x4

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 665
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->access$1500(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/String;

    move-result-object v0

    .line 666
    .local v0, "currentPackage":Ljava/lang/String;
    const-string v3, "WindowManager"

    if-nez v0, :cond_29

    .line 667
    const-string v4, "Error: package name null"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 669
    return-void

    .line 678
    :cond_29
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v5, v4, Lcom/android/server/wm/DisplayPolicy;->mPerf:Landroid/util/BoostFramework;

    invoke-static {v4, v0, v5}, Lcom/android/server/wm/DisplayPolicy;->access$1800(Lcom/android/server/wm/DisplayPolicy;Ljava/lang/String;Landroid/util/BoostFramework;)Z

    move-result v4

    .line 680
    .local v4, "isGame":Z
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v5, v5, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostDrag:Landroid/util/BoostFramework;

    if-nez v5, :cond_40

    .line 681
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    new-instance v6, Landroid/util/BoostFramework;

    invoke-direct {v6}, Landroid/util/BoostFramework;-><init>()V

    iput-object v6, v5, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostDrag:Landroid/util/BoostFramework;

    .line 683
    :cond_40
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v5, v5, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostDrag:Landroid/util/BoostFramework;

    const-string v6, "Error: boost object null"

    if-nez v5, :cond_4f

    .line 684
    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 686
    return-void

    .line 688
    :cond_4f
    invoke-static {}, Lcom/android/server/wm/DisplayPolicy;->access$1600()Z

    move-result v5

    const/4 v7, -0x1

    if-eqz v5, :cond_7e

    .line 689
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v5, v5, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostPrefling:Landroid/util/BoostFramework;

    if-nez v5, :cond_65

    .line 690
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    new-instance v8, Landroid/util/BoostFramework;

    invoke-direct {v8}, Landroid/util/BoostFramework;-><init>()V

    iput-object v8, v5, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostPrefling:Landroid/util/BoostFramework;

    .line 692
    :cond_65
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v5, v5, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostPrefling:Landroid/util/BoostFramework;

    if-nez v5, :cond_72

    .line 693
    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 695
    return-void

    .line 701
    :cond_72
    if-nez v4, :cond_7e

    .line 702
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostPrefling:Landroid/util/BoostFramework;

    const/16 v5, 0x1080

    const/4 v6, 0x4

    invoke-virtual {v3, v5, v0, v7, v6}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 710
    :cond_7e
    if-nez v4, :cond_8d

    if-eqz p1, :cond_8d

    .line 711
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostDrag:Landroid/util/BoostFramework;

    const/16 v5, 0x1087

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v0, v7, v6}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    goto :goto_94

    .line 714
    :cond_8d
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v3, v3, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostDrag:Landroid/util/BoostFramework;

    invoke-virtual {v3}, Landroid/util/BoostFramework;->perfLockRelease()I

    .line 716
    :goto_94
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 717
    return-void
.end method

.method public onSwipeFromBottom()V
    .registers 6

    .line 547
    const-wide/16 v0, 0x4

    const-string v2, "onSwipeFromBottom"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 549
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v2}, Lcom/android/server/wm/DisplayPolicy;->access$900(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_24

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 550
    invoke-static {v2}, Lcom/android/server/wm/DisplayPolicy;->access$900(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_22

    goto :goto_24

    :cond_22
    const/4 v3, 0x0

    goto :goto_25

    :cond_24
    :goto_24
    nop

    :goto_25
    move v2, v3

    .line 552
    .local v2, "landscape":Z
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v3}, Lcom/android/server/wm/DisplayPolicy;->access$300(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-eqz v3, :cond_42

    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v3}, Lcom/android/server/wm/DisplayPolicy;->access$1000(Lcom/android/server/wm/DisplayPolicy;)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_42

    if-nez v2, :cond_42

    .line 553
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v3}, Lcom/android/server/wm/DisplayPolicy;->access$300(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/wm/DisplayPolicy;->access$400(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/WindowState;)V

    .line 555
    :cond_42
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 556
    return-void
.end method

.method public onSwipeFromLeft()V
    .registers 7

    .line 576
    const-wide/16 v0, 0x4

    const-string v2, "onSwipeFromLeft"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 578
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v2}, Lcom/android/server/wm/DisplayPolicy;->access$1100(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 579
    :try_start_e
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v3}, Lcom/android/server/wm/DisplayPolicy;->access$900(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->calculateSystemGestureExclusion()Landroid/graphics/Region;

    move-result-object v3

    .line 580
    .local v3, "excludedRegion":Landroid/graphics/Region;
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_52

    .line 581
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v2}, Lcom/android/server/wm/DisplayPolicy;->access$1200(Lcom/android/server/wm/DisplayPolicy;)Z

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_2d

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 582
    invoke-static {v2}, Lcom/android/server/wm/DisplayPolicy;->access$1000(Lcom/android/server/wm/DisplayPolicy;)I

    move-result v2

    if-ne v2, v4, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 v4, 0x0

    goto :goto_2e

    :cond_2d
    :goto_2d
    nop

    :goto_2e
    move v2, v4

    .line 583
    .local v2, "sideAllowed":Z
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v4}, Lcom/android/server/wm/DisplayPolicy;->access$300(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-eqz v4, :cond_4e

    if-eqz v2, :cond_4e

    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 584
    invoke-static {v4}, Lcom/android/server/wm/DisplayPolicy;->access$1300(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/SystemGesturesPointerEventListener;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->currentGestureStartedInRegion(Landroid/graphics/Region;)Z

    move-result v4

    if-nez v4, :cond_4e

    .line 585
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v4}, Lcom/android/server/wm/DisplayPolicy;->access$300(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/wm/DisplayPolicy;->access$400(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/WindowState;)V

    .line 587
    :cond_4e
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 588
    return-void

    .line 580
    .end local v2  # "sideAllowed":Z
    .end local v3  # "excludedRegion":Landroid/graphics/Region;
    :catchall_52
    move-exception v0

    :try_start_53
    monitor-exit v2
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v0
.end method

.method public onSwipeFromRight()V
    .registers 7

    .line 560
    const-wide/16 v0, 0x4

    const-string v2, "onSwipeFromRight"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 562
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v2}, Lcom/android/server/wm/DisplayPolicy;->access$1100(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 563
    :try_start_e
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v3}, Lcom/android/server/wm/DisplayPolicy;->access$900(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->calculateSystemGestureExclusion()Landroid/graphics/Region;

    move-result-object v3

    .line 564
    .local v3, "excludedRegion":Landroid/graphics/Region;
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_51

    .line 565
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v2}, Lcom/android/server/wm/DisplayPolicy;->access$1200(Lcom/android/server/wm/DisplayPolicy;)Z

    move-result v2

    if-nez v2, :cond_2d

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 566
    invoke-static {v2}, Lcom/android/server/wm/DisplayPolicy;->access$1000(Lcom/android/server/wm/DisplayPolicy;)I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 v2, 0x0

    goto :goto_2e

    :cond_2d
    :goto_2d
    const/4 v2, 0x1

    .line 567
    .local v2, "sideAllowed":Z
    :goto_2e
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v4}, Lcom/android/server/wm/DisplayPolicy;->access$300(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-eqz v4, :cond_4d

    if-eqz v2, :cond_4d

    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 568
    invoke-static {v4}, Lcom/android/server/wm/DisplayPolicy;->access$1300(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/SystemGesturesPointerEventListener;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/wm/SystemGesturesPointerEventListener;->currentGestureStartedInRegion(Landroid/graphics/Region;)Z

    move-result v4

    if-nez v4, :cond_4d

    .line 569
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v4}, Lcom/android/server/wm/DisplayPolicy;->access$300(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/wm/DisplayPolicy;->access$400(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/WindowState;)V

    .line 571
    :cond_4d
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 572
    return-void

    .line 564
    .end local v2  # "sideAllowed":Z
    .end local v3  # "excludedRegion":Landroid/graphics/Region;
    :catchall_51
    move-exception v0

    :try_start_52
    monitor-exit v2
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw v0
.end method

.method public onSwipeFromTop()V
    .registers 5

    .line 530
    const-wide/16 v0, 0x4

    const-string v2, "onSwipeFromTop"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 532
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v2}, Lcom/android/server/wm/DisplayPolicy;->access$800(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/policy/gamemode/GameModeController;

    move-result-object v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 533
    invoke-static {v2}, Lcom/android/server/wm/DisplayPolicy;->access$800(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/policy/gamemode/GameModeController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/policy/gamemode/GameModeController;->isGameMode()Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 534
    invoke-static {v2}, Lcom/android/server/wm/DisplayPolicy;->access$800(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/policy/gamemode/GameModeController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/policy/gamemode/GameModeController;->isStatusBarDisabled()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 535
    const-string v0, "WindowManager"

    const-string v1, "status bar disabled by mGameModeController"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    return-void

    .line 539
    :cond_2f
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v2}, Lcom/android/server/wm/DisplayPolicy;->access$200(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_40

    .line 540
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v2}, Lcom/android/server/wm/DisplayPolicy;->access$200(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/WindowState;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/wm/DisplayPolicy;->access$400(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/WindowState;)V

    .line 542
    :cond_40
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 543
    return-void
.end method

.method public onUpOrCancel()V
    .registers 2

    .line 744
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy$2;->getOrientationListener()Lcom/android/server/policy/WindowOrientationListener;

    move-result-object v0

    .line 745
    .local v0, "listener":Lcom/android/server/policy/WindowOrientationListener;
    if-eqz v0, :cond_9

    .line 746
    invoke-virtual {v0}, Lcom/android/server/policy/WindowOrientationListener;->onTouchEnd()V

    .line 748
    :cond_9
    return-void
.end method

.method public onVerticalFling(I)V
    .registers 10
    .param p1, "duration"  # I

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVerticalFling-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x4

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 607
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->access$1500(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/String;

    move-result-object v0

    .line 608
    .local v0, "currentPackage":Ljava/lang/String;
    const-string v3, "WindowManager"

    if-nez v0, :cond_29

    .line 609
    const-string v4, "Error: package name null"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 611
    return-void

    .line 613
    :cond_29
    invoke-static {}, Lcom/android/server/wm/DisplayPolicy;->access$1600()Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 614
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v4, v4, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostFling:Landroid/util/BoostFramework;

    if-nez v4, :cond_44

    .line 615
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    new-instance v5, Landroid/util/BoostFramework;

    invoke-direct {v5}, Landroid/util/BoostFramework;-><init>()V

    iput-object v5, v4, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostFling:Landroid/util/BoostFramework;

    .line 616
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/server/wm/DisplayPolicy;->access$1702(Lcom/android/server/wm/DisplayPolicy;Z)Z

    .line 618
    :cond_44
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v4, v4, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostFling:Landroid/util/BoostFramework;

    if-nez v4, :cond_53

    .line 619
    const-string v4, "Error: boost object null"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 621
    return-void

    .line 623
    :cond_53
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v4, v3, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostFling:Landroid/util/BoostFramework;

    invoke-static {v3, v0, v4}, Lcom/android/server/wm/DisplayPolicy;->access$1800(Lcom/android/server/wm/DisplayPolicy;Ljava/lang/String;Landroid/util/BoostFramework;)Z

    move-result v3

    .line 624
    .local v3, "isGame":Z
    if-nez v3, :cond_6e

    .line 625
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v4, v4, Lcom/android/server/wm/DisplayPolicy;->mPerfBoostFling:Landroid/util/BoostFramework;

    const/16 v5, 0x1080

    add-int/lit16 v6, p1, 0xa0

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 627
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy$2;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v4, v7}, Lcom/android/server/wm/DisplayPolicy;->access$1702(Lcom/android/server/wm/DisplayPolicy;Z)Z

    .line 630
    .end local v3  # "isGame":Z
    :cond_6e
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 631
    return-void
.end method
