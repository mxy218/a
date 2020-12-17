.class public Lcom/android/systemui/statusbar/CommandQueue;
.super Lcom/android/internal/statusbar/IStatusBar$Stub;
.source "CommandQueue.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/CommandQueue$CommandQueueStart;,
        Lcom/android/systemui/statusbar/CommandQueue$H;,
        Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/statusbar/IStatusBar$Stub;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/android/systemui/statusbar/CommandQueue$Callbacks;",
        ">;",
        "Landroid/hardware/display/DisplayManager$DisplayListener;"
    }
.end annotation


# instance fields
.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/CommandQueue$Callbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayDisabled:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mLastUpdatedImeDisplayId:I

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 298
    invoke-direct {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;-><init>()V

    .line 129
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    .line 131
    new-instance v0, Lcom/android/systemui/statusbar/CommandQueue$H;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/CommandQueue$H;-><init>(Lcom/android/systemui/statusbar/CommandQueue;Landroid/os/Looper;Lcom/android/systemui/statusbar/CommandQueue$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    .line 133
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mDisplayDisabled:Landroid/util/SparseArray;

    const/4 v0, -0x1

    .line 138
    iput v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLastUpdatedImeDisplayId:I

    .line 299
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0, v0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    const/4 p1, 0x0

    .line 301
    invoke-direct {p0, p1, p1, p1}, Lcom/android/systemui/statusbar/CommandQueue;->setDisabled(III)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/CommandQueue;)Ljava/util/ArrayList;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/CommandQueue;ILandroid/os/IBinder;IIZ)V
    .registers 6

    .line 66
    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/statusbar/CommandQueue;->handleShowImeButton(ILandroid/os/IBinder;IIZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/CommandQueue;)Landroid/os/Handler;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private getDisabled(I)Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 416
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mDisplayDisabled:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-nez v0, :cond_1d

    .line 418
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 419
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mDisplayDisabled:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1d
    return-object v0
.end method

.method private getDisabled1(I)I
    .registers 2

    .line 408
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/CommandQueue;->getDisabled(I)Landroid/util/Pair;

    move-result-object p0

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private getDisabled2(I)I
    .registers 2

    .line 412
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/CommandQueue;->getDisabled(I)Landroid/util/Pair;

    move-result-object p0

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private handleShowImeButton(ILandroid/os/IBinder;IIZ)V
    .registers 14

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    return-void

    .line 807
    :cond_4
    sget-boolean v1, Landroid/view/inputmethod/InputMethodSystemProperty;->MULTI_CLIENT_IME_ENABLED:Z

    if-nez v1, :cond_11

    iget v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLastUpdatedImeDisplayId:I

    if-eq v1, p1, :cond_11

    if-eq v1, v0, :cond_11

    .line 812
    invoke-direct {p0}, Lcom/android/systemui/statusbar/CommandQueue;->sendImeInvisibleStatusForPrevNavBar()V

    :cond_11
    const/4 v0, 0x0

    .line 814
    :goto_12
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2e

    .line 815
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setImeWindowStatus(ILandroid/os/IBinder;IIZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 818
    :cond_2e
    iput p1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLastUpdatedImeDisplayId:I

    return-void
.end method

.method private sendImeInvisibleStatusForPrevNavBar()V
    .registers 9

    const/4 v0, 0x0

    .line 822
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 823
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    iget v3, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLastUpdatedImeDisplayId:I

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setImeWindowStatus(ILandroid/os/IBinder;IIZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1e
    return-void
.end method

.method private setDisabled(III)V
    .registers 5

    .line 404
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mDisplayDisabled:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {v0, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V
    .registers 7

    .line 332
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    move v1, v0

    .line 334
    :goto_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mDisplayDisabled:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 335
    iget-object v2, p0, Lcom/android/systemui/statusbar/CommandQueue;->mDisplayDisabled:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 336
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/CommandQueue;->getDisabled1(I)I

    move-result v3

    .line 337
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/CommandQueue;->getDisabled2(I)I

    move-result v4

    .line 338
    invoke-interface {p1, v2, v3, v4, v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->disable(IIIZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_23
    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .registers 2

    .line 66
    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    return-void
.end method

.method public addQsTile(Landroid/content/ComponentName;)V
    .registers 4

    .line 661
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 662
    :try_start_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x1b0000

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 663
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public animateCollapsePanels()V
    .registers 4

    .line 432
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 433
    :try_start_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x40000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 434
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 435
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public animateCollapsePanels(IZ)V
    .registers 6

    .line 439
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 440
    :try_start_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x40000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 441
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    if-eqz p2, :cond_10

    const/4 p2, 0x1

    goto :goto_11

    :cond_10
    const/4 p2, 0x0

    :goto_11
    invoke-virtual {p0, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 442
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public animateExpandNotificationsPanel()V
    .registers 4

    .line 425
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 426
    :try_start_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x30000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 427
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 428
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public animateExpandSettingsPanel(Ljava/lang/String;)V
    .registers 5

    .line 453
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 454
    :try_start_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x50000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 455
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 456
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public appTransitionCancelled(I)V
    .registers 5

    .line 602
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 603
    :try_start_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x140000

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 604
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 605
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public appTransitionFinished(I)V
    .registers 5

    .line 631
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 632
    :try_start_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x1f0000

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 633
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 634
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public appTransitionPending(I)V
    .registers 3

    const/4 v0, 0x0

    .line 586
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/CommandQueue;->appTransitionPending(IZ)V

    return-void
.end method

.method public appTransitionPending(IZ)V
    .registers 5

    .line 594
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 595
    :try_start_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x130000

    if-eqz p2, :cond_b

    const/4 p2, 0x1

    goto :goto_c

    :cond_b
    const/4 p2, 0x0

    :goto_c
    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 596
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 597
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public appTransitionStarting(IJJ)V
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 610
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/CommandQueue;->appTransitionStarting(IJJZ)V

    return-void
.end method

.method public appTransitionStarting(IJJZ)V
    .registers 9

    .line 619
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 620
    :try_start_3
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    .line 621
    iput p1, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-eqz p6, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    .line 622
    :goto_e
    iput p1, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 623
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 624
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 625
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 p1, 0x150000

    invoke-virtual {p0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 626
    monitor-exit v0

    return-void

    :catchall_29
    move-exception p0

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public cancelPreloadRecentApps()V
    .registers 5

    .line 539
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 540
    :try_start_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0xb0000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 541
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 542
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public clickQsTile(Landroid/content/ComponentName;)V
    .registers 4

    .line 675
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 676
    :try_start_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x1d0000

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 677
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public disable(III)V
    .registers 5

    const/4 v0, 0x1

    .line 388
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/CommandQueue;->disable(IIIZ)V

    return-void
.end method

.method public disable(IIIZ)V
    .registers 8

    .line 367
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 368
    :try_start_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/CommandQueue;->setDisabled(III)V

    .line 369
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x20000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 370
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    .line 371
    iput p1, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 372
    iput p2, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 373
    iput p3, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    if-eqz p4, :cond_1b

    const/4 p1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    .line 374
    :goto_1c
    iput p1, v1, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 375
    iget-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 376
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    iget-object p3, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    if-ne p2, p3, :cond_39

    .line 378
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 379
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    goto :goto_3c

    .line 381
    :cond_39
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 383
    :goto_3c
    monitor-exit v0

    return-void

    :catchall_3e
    move-exception p0

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw p0
.end method

.method public dismissKeyboardShortcutsMenu()V
    .registers 4

    .line 547
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 548
    :try_start_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x200000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 549
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 550
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public handleSystemKey(I)V
    .registers 5

    .line 682
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 683
    :try_start_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x210000

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 684
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public hideBiometricDialog()V
    .registers 3

    .line 783
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 784
    :try_start_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x2b0000

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 785
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public hideRecentApps(ZZ)V
    .registers 6

    .line 507
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 508
    :try_start_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0xe0000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 509
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    if-eqz p2, :cond_10

    const/4 p2, 0x1

    goto :goto_11

    :cond_10
    const/4 p2, 0x0

    :goto_11
    const/4 v1, 0x0

    invoke-virtual {p0, v2, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 511
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 512
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public onBiometricAuthenticated(ZLjava/lang/String;)V
    .registers 5

    .line 759
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 760
    :try_start_3
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    .line 761
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 762
    iput-object p2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 763
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 p1, 0x280000

    invoke-virtual {p0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 764
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public onBiometricError(Ljava/lang/String;)V
    .registers 4

    .line 776
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 777
    :try_start_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x2a0000

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 778
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public onBiometricHelp(Ljava/lang/String;)V
    .registers 4

    .line 769
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 770
    :try_start_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x290000

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 771
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public onCameraLaunchGestureDetected(I)V
    .registers 5

    .line 653
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 654
    :try_start_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x180000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 655
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {p0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 656
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public onDisplayAdded(I)V
    .registers 2

    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 2

    return-void
.end method

.method public onDisplayReady(I)V
    .registers 5

    .line 790
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 791
    :try_start_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x70000

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 792
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public onDisplayRemoved(I)V
    .registers 4

    .line 309
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 310
    :try_start_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mDisplayDisabled:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 311
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_22

    .line 314
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_11
    if-ltz v0, :cond_21

    .line 315
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-interface {v1, p1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->onDisplayRemoved(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    :cond_21
    return-void

    :catchall_22
    move-exception p0

    .line 311
    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public onProposedRotationChanged(IZ)V
    .registers 6

    .line 735
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 736
    :try_start_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x260000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 737
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    if-eqz p2, :cond_10

    const/4 p2, 0x1

    goto :goto_11

    :cond_10
    const/4 p2, 0x0

    :goto_11
    const/4 v1, 0x0

    invoke-virtual {p0, v2, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 738
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 739
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public onRecentsAnimationStateChanged(Z)V
    .registers 5

    .line 797
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 798
    :try_start_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x2f0000

    const/4 v2, 0x0

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    move p1, v2

    :goto_d
    invoke-virtual {p0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 799
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 800
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public panelsEnabled()Z
    .registers 4

    const/4 v0, 0x0

    .line 324
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/CommandQueue;->getDisabled1(I)I

    move-result v1

    .line 325
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/CommandQueue;->getDisabled2(I)I

    move-result p0

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-nez v1, :cond_17

    and-int/lit8 p0, p0, 0x4

    if-nez p0, :cond_17

    .line 326
    sget-boolean p0, Lcom/android/systemui/statusbar/phone/StatusBar;->ONLY_CORE_APPS:Z

    if-nez p0, :cond_17

    const/4 v0, 0x1

    :cond_17
    return v0
.end method

.method public preloadRecentApps()V
    .registers 5

    .line 532
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 533
    :try_start_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0xa0000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 534
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 535
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public recomputeDisableFlags(IZ)V
    .registers 5

    .line 398
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/CommandQueue;->getDisabled1(I)I

    move-result v0

    .line 399
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/CommandQueue;->getDisabled2(I)I

    move-result v1

    .line 400
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/systemui/statusbar/CommandQueue;->disable(IIIZ)V

    return-void
.end method

.method public remQsTile(Landroid/content/ComponentName;)V
    .registers 4

    .line 668
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 669
    :try_start_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x1c0000

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 670
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V
    .registers 2

    .line 343
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .registers 2

    .line 66
    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    return-void
.end method

.method public removeIcon(Ljava/lang/String;)V
    .registers 6

    .line 355
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 357
    :try_start_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x10000

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 358
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .registers 8

    .line 347
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 349
    :try_start_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x10000

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 350
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 351
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public setImeWindowStatus(ILandroid/os/IBinder;IIZ)V
    .registers 9

    .line 485
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 486
    :try_start_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 487
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    .line 488
    iput p1, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 489
    iput p3, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 490
    iput p4, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    if-eqz p5, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    .line 491
    :goto_19
    iput p1, v1, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 492
    iput-object p2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 493
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 494
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 495
    monitor-exit v0

    return-void

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public setSystemUiVisibility(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .registers 11

    .line 463
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 466
    :try_start_3
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    .line 467
    iput p1, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 468
    iput p2, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 469
    iput p3, v1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 470
    iput p4, v1, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 471
    iput p5, v1, Lcom/android/internal/os/SomeArgs;->argi5:I

    if-eqz p8, :cond_15

    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    .line 472
    :goto_16
    iput p1, v1, Lcom/android/internal/os/SomeArgs;->argi6:I

    .line 473
    iput-object p6, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 474
    iput-object p7, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 475
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 p1, 0x60000

    invoke-virtual {p0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 476
    monitor-exit v0

    return-void

    :catchall_29
    move-exception p0

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public setTopAppHidesStatusBar(Z)V
    .registers 4

    .line 712
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x250000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 713
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 714
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setWindowState(III)V
    .registers 6

    .line 571
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 573
    :try_start_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0xc0000

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, v1, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 574
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public showAssistDisclosure()V
    .registers 4

    .line 638
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 639
    :try_start_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x160000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 640
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 641
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public showBiometricDialog(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;IZI)V
    .registers 8

    .line 745
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 746
    :try_start_3
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    .line 747
    iput-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 748
    iput-object p2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 749
    iput p3, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 750
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 751
    iput p5, v1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 752
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 p1, 0x270000

    invoke-virtual {p0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 753
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 754
    monitor-exit v0

    return-void

    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public showGlobalActionsMenu()V
    .registers 4

    .line 704
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 705
    :try_start_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x220000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 706
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 707
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public showPictureInPictureMenu()V
    .registers 4

    .line 563
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 564
    :try_start_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x1a0000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 565
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 566
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public showPinningEnterExitToast(Z)V
    .registers 4

    .line 689
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 690
    :try_start_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x2d0000

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 691
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public showPinningEscapeToast()V
    .registers 3

    .line 696
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 697
    :try_start_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x2e0000

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 698
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public showRecentApps(Z)V
    .registers 6

    .line 499
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 500
    :try_start_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0xd0000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 501
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    move p1, v1

    :goto_12
    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, v1, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 502
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 503
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public showScreenPinningRequest(I)V
    .registers 6

    .line 578
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 579
    :try_start_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x120000

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 580
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 581
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public showShutdownUi(ZLjava/lang/String;)V
    .registers 6

    .line 719
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 720
    :try_start_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x240000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 721
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    move p1, v1

    :goto_12
    invoke-virtual {p0, v2, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 722
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 723
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public showWirelessChargingAnimation(I)V
    .registers 4

    .line 728
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x2c0000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 729
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 730
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public startAssist(Landroid/os/Bundle;)V
    .registers 5

    .line 645
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 646
    :try_start_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x170000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 647
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 648
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public toggleKeyboardShortcutsMenu(I)V
    .registers 5

    .line 555
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 556
    :try_start_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x190000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 557
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {p0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 558
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public togglePanel()V
    .registers 4

    .line 446
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 447
    :try_start_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x230000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 448
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 449
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public toggleRecentApps()V
    .registers 5

    .line 523
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 524
    :try_start_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x90000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 525
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const/4 v1, 0x1

    .line 526
    invoke-virtual {p0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 527
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 528
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public toggleSplitScreen()V
    .registers 5

    .line 516
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 517
    :try_start_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x1e0000

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 518
    iget-object p0, p0, Lcom/android/systemui/statusbar/CommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 519
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public topAppWindowChanged(IZ)V
    .registers 3

    return-void
.end method
