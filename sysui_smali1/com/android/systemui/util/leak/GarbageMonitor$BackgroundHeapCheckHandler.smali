.class Lcom/android/systemui/util/leak/GarbageMonitor$BackgroundHeapCheckHandler;
.super Landroid/os/Handler;
.source "GarbageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/leak/GarbageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundHeapCheckHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/util/leak/GarbageMonitor;


# direct methods
.method constructor <init>(Lcom/android/systemui/util/leak/GarbageMonitor;Landroid/os/Looper;)V
    .registers 3

    .line 563
    iput-object p1, p0, Lcom/android/systemui/util/leak/GarbageMonitor$BackgroundHeapCheckHandler;->this$0:Lcom/android/systemui/util/leak/GarbageMonitor;

    .line 564
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 565
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    return-void

    .line 566
    :cond_10
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "BackgroundHeapCheckHandler may not run on the ui thread"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 573
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_1a

    const/16 v0, 0xbb8

    if-eq p1, v0, :cond_b

    goto :goto_37

    .line 584
    :cond_b
    iget-object p1, p0, Lcom/android/systemui/util/leak/GarbageMonitor$BackgroundHeapCheckHandler;->this$0:Lcom/android/systemui/util/leak/GarbageMonitor;

    invoke-static {p1}, Lcom/android/systemui/util/leak/GarbageMonitor;->access$1200(Lcom/android/systemui/util/leak/GarbageMonitor;)V

    .line 585
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/32 v1, 0xea60

    .line 586
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_37

    .line 575
    :cond_1a
    iget-object p1, p0, Lcom/android/systemui/util/leak/GarbageMonitor$BackgroundHeapCheckHandler;->this$0:Lcom/android/systemui/util/leak/GarbageMonitor;

    invoke-static {p1}, Lcom/android/systemui/util/leak/GarbageMonitor;->access$1100(Lcom/android/systemui/util/leak/GarbageMonitor;)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 576
    iget-object p1, p0, Lcom/android/systemui/util/leak/GarbageMonitor$BackgroundHeapCheckHandler;->this$0:Lcom/android/systemui/util/leak/GarbageMonitor;

    new-instance v1, Lcom/android/systemui/util/leak/-$$Lambda$XMHjUeThvUDRPlJmBo9djG71pM8;

    invoke-direct {v1, p1}, Lcom/android/systemui/util/leak/-$$Lambda$XMHjUeThvUDRPlJmBo9djG71pM8;-><init>(Lcom/android/systemui/util/leak/GarbageMonitor;)V

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 579
    :cond_2e
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/32 v1, 0xdbba0

    .line 580
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_37
    return-void
.end method