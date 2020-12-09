.class final Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;
.super Ljava/lang/Object;
.source "MagnificationGestureHandler.java"

# interfaces
.implements Lcom/android/server/accessibility/MagnificationGestureHandler$State;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/MagnificationGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DetectingState"
.end annotation


# static fields
.field private static final MESSAGE_ON_TRIPLE_TAP_AND_HOLD:I = 0x1

.field private static final MESSAGE_TRANSITION_TO_DELEGATING_STATE:I = 0x2


# instance fields
.field private mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

.field mHandler:Landroid/os/Handler;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mLastDown:Landroid/view/MotionEvent;

.field private mLastUp:Landroid/view/MotionEvent;

.field final mLongTapMinDelay:I

.field final mMultiTapMaxDelay:I

.field final mMultiTapMaxDistance:I

.field private mPreLastDown:Landroid/view/MotionEvent;

.field private mPreLastUp:Landroid/view/MotionEvent;

.field mShortcutTriggered:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field final mSwipeMinDistance:I

.field final synthetic this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/MagnificationGestureHandler;Landroid/content/Context;)V
    .registers 5

    .line 629
    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 627
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    .line 630
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mLongTapMinDelay:I

    .line 631
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result p1

    .line 632
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mMultiTapMaxDelay:I

    .line 634
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mSwipeMinDistance:I

    .line 635
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result p1

    iput p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mMultiTapMaxDistance:I

    .line 636
    return-void
.end method

.method private cacheDelayedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 6

    .line 819
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_11

    .line 820
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mPreLastDown:Landroid/view/MotionEvent;

    .line 821
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    goto :goto_22

    .line 822
    :cond_11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    .line 823
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mLastUp:Landroid/view/MotionEvent;

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mPreLastUp:Landroid/view/MotionEvent;

    .line 824
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mLastUp:Landroid/view/MotionEvent;

    .line 827
    :cond_22
    :goto_22
    invoke-static {p1, p2, p3}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->obtain(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    move-result-object p1

    .line 829
    iget-object p2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    if-nez p2, :cond_2d

    .line 830
    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    goto :goto_3c

    .line 832
    :cond_2d
    nop

    .line 833
    :goto_2e
    invoke-static {p2}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->access$600(Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;)Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    move-result-object p3

    if-eqz p3, :cond_39

    .line 834
    invoke-static {p2}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->access$600(Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;)Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    move-result-object p2

    goto :goto_2e

    .line 836
    :cond_39
    invoke-static {p2, p1}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->access$602(Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;)Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    .line 838
    :goto_3c
    return-void
.end method

.method private clearDelayedMotionEvents()V
    .registers 3

    .line 852
    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    if-eqz v0, :cond_f

    .line 853
    nop

    .line 854
    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->access$600(Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;)Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    .line 855
    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->recycle()V

    .line 856
    goto :goto_0

    .line 857
    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mPreLastDown:Landroid/view/MotionEvent;

    .line 858
    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mPreLastUp:Landroid/view/MotionEvent;

    .line 859
    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    .line 860
    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mLastUp:Landroid/view/MotionEvent;

    .line 861
    return-void
.end method

.method private isMultiTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .registers 5

    .line 762
    iget v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mMultiTapMaxDelay:I

    iget v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mMultiTapMaxDistance:I

    invoke-static {p1, p2, v0, v1}, Lcom/android/server/accessibility/GestureUtils;->isMultiTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;II)Z

    move-result p1

    return p1
.end method

.method private onTripleTap(Landroid/view/MotionEvent;)V
    .registers 4

    .line 875
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->clear()V

    .line 878
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v1}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$300(Lcom/android/server/accessibility/MagnificationGestureHandler;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 879
    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {p1}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$400(Lcom/android/server/accessibility/MagnificationGestureHandler;)V

    goto :goto_26

    .line 881
    :cond_19
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$800(Lcom/android/server/accessibility/MagnificationGestureHandler;FF)V

    .line 883
    :goto_26
    return-void
.end method

.method private removePendingDelayedMessages()V
    .registers 3

    .line 813
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 814
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 815
    return-void
.end method

.method private sendDelayedMotionEvents()V
    .registers 7

    .line 841
    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    if-eqz v0, :cond_1c

    .line 842
    nop

    .line 843
    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->access$600(Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;)Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    .line 845
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v2, v1, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDelegatingState:Lcom/android/server/accessibility/MagnificationGestureHandler$DelegatingState;

    iget-object v3, v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->event:Landroid/view/MotionEvent;

    iget-object v4, v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->rawEvent:Landroid/view/MotionEvent;

    iget v5, v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->policyFlags:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$700(Lcom/android/server/accessibility/MagnificationGestureHandler;Lcom/android/server/accessibility/MagnificationGestureHandler$State;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 847
    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->recycle()V

    .line 848
    goto :goto_0

    .line 849
    :cond_1c
    return-void
.end method

.method private timeBetween(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)J
    .registers 5

    .line 770
    if-nez p1, :cond_7

    if-nez p2, :cond_7

    const-wide/16 p1, 0x0

    return-wide p1

    .line 771
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->timeOf(Landroid/view/MotionEvent;)J

    move-result-wide v0

    invoke-direct {p0, p2}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->timeOf(Landroid/view/MotionEvent;)J

    move-result-wide p1

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    return-wide p1
.end method

.method private timeOf(Landroid/view/MotionEvent;)J
    .registers 4

    .line 783
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    goto :goto_9

    :cond_7
    const-wide/high16 v0, -0x8000000000000000L

    :goto_9
    return-wide v0
.end method


# virtual methods
.method public afterLongTapTimeoutTransitionToDraggingState(Landroid/view/MotionEvent;)V
    .registers 5

    .line 799
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    .line 801
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 800
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 802
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    .line 799
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 803
    return-void
.end method

.method public afterMultiTapTimeoutTransitionToDelegatingState()V
    .registers 5

    .line 792
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mMultiTapMaxDelay:I

    int-to-long v1, v1

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 795
    return-void
.end method

.method public clear()V
    .registers 2

    .line 807
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->setShortcutTriggered(Z)V

    .line 808
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->removePendingDelayedMessages()V

    .line 809
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->clearDelayedMotionEvents()V

    .line 810
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 5

    .line 640
    iget v0, p1, Landroid/os/Message;->what:I

    .line 641
    const/4 v1, 0x1

    if-eq v0, v1, :cond_23

    const/4 p1, 0x2

    if-ne v0, p1, :cond_c

    .line 649
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    .line 651
    goto :goto_2e

    .line 653
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 643
    :cond_23
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/MotionEvent;

    .line 644
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->transitionToViewportDraggingStateAndClear(Landroid/view/MotionEvent;)V

    .line 645
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 647
    nop

    .line 656
    :goto_2e
    return v1
.end method

.method public isFingerDown()Z
    .registers 2

    .line 766
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isMultiTapTriggered(I)Z
    .registers 5

    .line 753
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mShortcutTriggered:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->tapCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    if-lt v0, p1, :cond_f

    goto :goto_10

    :cond_f
    move v1, v2

    :goto_10
    return v1

    .line 755
    :cond_11
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-boolean v0, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectTripleTap:Z

    if-eqz v0, :cond_32

    .line 756
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->tapCount()I

    move-result v0

    if-lt v0, p1, :cond_32

    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mPreLastDown:Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    .line 757
    invoke-direct {p0, p1, v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->isMultiTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_32

    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mPreLastUp:Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mLastUp:Landroid/view/MotionEvent;

    .line 758
    invoke-direct {p0, p1, v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->isMultiTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_32

    goto :goto_33

    :cond_32
    move v1, v2

    .line 755
    :goto_33
    return v1
.end method

.method isTapOutOfDistanceSlop()Z
    .registers 7

    .line 928
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-boolean v0, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectTripleTap:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 929
    :cond_8
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mPreLastDown:Landroid/view/MotionEvent;

    if-eqz v0, :cond_38

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    if-nez v2, :cond_11

    goto :goto_38

    .line 932
    :cond_11
    nop

    .line 933
    invoke-static {v0, v2}, Lcom/android/server/accessibility/GestureUtils;->distance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)D

    move-result-wide v2

    iget v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mMultiTapMaxDistance:I

    int-to-double v4, v0

    cmpl-double v0, v2, v4

    const/4 v2, 0x1

    if-lez v0, :cond_20

    move v0, v2

    goto :goto_21

    :cond_20
    move v0, v1

    .line 934
    :goto_21
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->tapCount()I

    move-result v3

    if-lez v3, :cond_28

    .line 935
    return v0

    .line 939
    :cond_28
    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mPreLastDown:Landroid/view/MotionEvent;

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    iget v4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mMultiTapMaxDelay:I

    .line 940
    invoke-static {v0, v3, v4}, Lcom/android/server/accessibility/GestureUtils;->isTimedOut(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z

    move-result v0

    if-nez v0, :cond_37

    .line 941
    return v2

    .line 943
    :cond_37
    return v1

    .line 930
    :cond_38
    :goto_38
    return v1
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .registers 8

    .line 661
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->cacheDelayedMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 662
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    const/4 p3, 0x2

    if-eqz p2, :cond_af

    const/4 v0, 0x1

    if-eq p2, v0, :cond_58

    if-eq p2, p3, :cond_35

    const/4 p1, 0x5

    if-eq p2, p1, :cond_14

    goto/16 :goto_102

    .line 697
    :cond_14
    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object p1, p1, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    iget-object p2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {p2}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$300(Lcom/android/server/accessibility/MagnificationGestureHandler;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying(I)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 698
    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object p2, p1, Lcom/android/server/accessibility/MagnificationGestureHandler;->mPanningScalingState:Lcom/android/server/accessibility/MagnificationGestureHandler$PanningScalingState;

    invoke-static {p1, p2}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$200(Lcom/android/server/accessibility/MagnificationGestureHandler;Lcom/android/server/accessibility/MagnificationGestureHandler$State;)V

    .line 699
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->clear()V

    goto/16 :goto_102

    .line 701
    :cond_30
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    .line 704
    goto/16 :goto_102

    .line 706
    :cond_35
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->isFingerDown()Z

    move-result p2

    if-eqz p2, :cond_102

    iget-object p2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    .line 707
    invoke-static {p2, p1}, Lcom/android/server/accessibility/GestureUtils;->distance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)D

    move-result-wide v0

    iget p2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mSwipeMinDistance:I

    int-to-double v2, p2

    cmpl-double p2, v0, v2

    if-lez p2, :cond_102

    .line 714
    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->isMultiTapTriggered(I)Z

    move-result p2

    if-eqz p2, :cond_53

    .line 715
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->transitionToViewportDraggingStateAndClear(Landroid/view/MotionEvent;)V

    goto/16 :goto_102

    .line 717
    :cond_53
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    goto/16 :goto_102

    .line 724
    :cond_58
    iget-object p2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 726
    iget-object p2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object p2, p2, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    iget-object p3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    .line 727
    invoke-static {p3}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$300(Lcom/android/server/accessibility/MagnificationGestureHandler;)I

    move-result p3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 726
    invoke-virtual {p2, p3, v0, v1}, Lcom/android/server/accessibility/MagnificationController;->magnificationRegionContains(IFF)Z

    move-result p2

    if-nez p2, :cond_7a

    .line 729
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    goto/16 :goto_102

    .line 731
    :cond_7a
    const/4 p2, 0x3

    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->isMultiTapTriggered(I)Z

    move-result p2

    if-eqz p2, :cond_86

    .line 733
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->onTripleTap(Landroid/view/MotionEvent;)V

    goto/16 :goto_102

    .line 735
    :cond_86
    nop

    .line 737
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->isFingerDown()Z

    move-result p1

    if-eqz p1, :cond_102

    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    iget-object p2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mLastUp:Landroid/view/MotionEvent;

    .line 739
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->timeBetween(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)J

    move-result-wide p1

    iget p3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mLongTapMinDelay:I

    int-to-long v0, p3

    cmp-long p1, p1, v0

    if-gez p1, :cond_ab

    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mLastDown:Landroid/view/MotionEvent;

    iget-object p2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mLastUp:Landroid/view/MotionEvent;

    .line 740
    invoke-static {p1, p2}, Lcom/android/server/accessibility/GestureUtils;->distance(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)D

    move-result-wide p1

    iget p3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mSwipeMinDistance:I

    int-to-double v0, p3

    cmpl-double p1, p1, v0

    if-ltz p1, :cond_102

    .line 742
    :cond_ab
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    goto :goto_102

    .line 665
    :cond_af
    iget-object p2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 667
    iget-object p2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object p2, p2, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    .line 668
    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$300(Lcom/android/server/accessibility/MagnificationGestureHandler;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 667
    invoke-virtual {p2, v0, v1, v2}, Lcom/android/server/accessibility/MagnificationController;->magnificationRegionContains(IFF)Z

    move-result p2

    if-nez p2, :cond_d0

    .line 670
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    goto :goto_102

    .line 672
    :cond_d0
    invoke-virtual {p0, p3}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->isMultiTapTriggered(I)Z

    move-result p2

    if-eqz p2, :cond_da

    .line 675
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->afterLongTapTimeoutTransitionToDraggingState(Landroid/view/MotionEvent;)V

    goto :goto_102

    .line 677
    :cond_da
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->isTapOutOfDistanceSlop()Z

    move-result p1

    if-eqz p1, :cond_e4

    .line 679
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    goto :goto_102

    .line 681
    :cond_e4
    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-boolean p1, p1, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectTripleTap:Z

    if-nez p1, :cond_ff

    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object p1, p1, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    iget-object p2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    .line 685
    invoke-static {p2}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$300(Lcom/android/server/accessibility/MagnificationGestureHandler;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying(I)Z

    move-result p1

    if-eqz p1, :cond_fb

    goto :goto_ff

    .line 692
    :cond_fb
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->transitionToDelegatingStateAndClear()V

    .line 695
    goto :goto_102

    .line 687
    :cond_ff
    :goto_ff
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->afterMultiTapTimeoutTransitionToDelegatingState()V

    .line 748
    :cond_102
    :goto_102
    return-void
.end method

.method setShortcutTriggered(Z)V
    .registers 4

    .line 912
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mShortcutTriggered:Z

    if-ne v0, p1, :cond_5

    .line 913
    return-void

    .line 917
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mShortcutTriggered:Z

    .line 918
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-static {v1}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$300(Lcom/android/server/accessibility/MagnificationGestureHandler;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/accessibility/MagnificationController;->setForceShowMagnifiableBounds(IZ)V

    .line 919
    return-void
.end method

.method public tapCount()I
    .registers 3

    .line 787
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->countOf(Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DetectingState{tapCount()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->tapCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mShortcutTriggered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mShortcutTriggered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDelayedEventQueue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mDelayedEventQueue:Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    .line 903
    invoke-static {v1}, Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;->toString(Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 900
    return-object v0
.end method

.method toggleShortcutTriggered()V
    .registers 2

    .line 908
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->mShortcutTriggered:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->setShortcutTriggered(Z)V

    .line 909
    return-void
.end method

.method transitionToDelegatingStateAndClear()V
    .registers 3

    .line 864
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v1, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDelegatingState:Lcom/android/server/accessibility/MagnificationGestureHandler$DelegatingState;

    invoke-static {v0, v1}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$200(Lcom/android/server/accessibility/MagnificationGestureHandler;Lcom/android/server/accessibility/MagnificationGestureHandler$State;)V

    .line 865
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->sendDelayedMotionEvents()V

    .line 866
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->removePendingDelayedMessages()V

    .line 867
    return-void
.end method

.method transitionToViewportDraggingStateAndClear(Landroid/view/MotionEvent;)V
    .registers 5

    .line 888
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->clear()V

    .line 890
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v0, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v1, v1, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    .line 891
    invoke-static {v2}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$300(Lcom/android/server/accessibility/MagnificationGestureHandler;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;->mZoomedInBeforeDrag:Z

    .line 893
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$800(Lcom/android/server/accessibility/MagnificationGestureHandler;FF)V

    .line 895
    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingState;->this$0:Lcom/android/server/accessibility/MagnificationGestureHandler;

    iget-object v0, p1, Lcom/android/server/accessibility/MagnificationGestureHandler;->mViewportDraggingState:Lcom/android/server/accessibility/MagnificationGestureHandler$ViewportDraggingState;

    invoke-static {p1, v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->access$200(Lcom/android/server/accessibility/MagnificationGestureHandler;Lcom/android/server/accessibility/MagnificationGestureHandler$State;)V

    .line 896
    return-void
.end method
