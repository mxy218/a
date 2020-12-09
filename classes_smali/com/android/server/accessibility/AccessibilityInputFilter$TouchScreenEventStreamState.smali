.class Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;
.super Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
.source "AccessibilityInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityInputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TouchScreenEventStreamState"
.end annotation


# instance fields
.field private mHoverSequenceStarted:Z

.field private mTouchSequenceStarted:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 626
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;-><init>()V

    .line 627
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;->reset()V

    .line 628
    return-void
.end method


# virtual methods
.method public final reset()V
    .registers 2

    .line 632
    invoke-super {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    .line 633
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;->mTouchSequenceStarted:Z

    .line 634
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;->mHoverSequenceStarted:Z

    .line 635
    return-void
.end method

.method public final shouldProcessMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 640
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_19

    .line 641
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;->mTouchSequenceStarted:Z

    if-eqz v0, :cond_d

    .line 642
    return v2

    .line 644
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_14

    move v1, v2

    :cond_14
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;->mTouchSequenceStarted:Z

    .line 645
    iget-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;->mTouchSequenceStarted:Z

    return p1

    .line 649
    :cond_19
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;->mHoverSequenceStarted:Z

    if-eqz v0, :cond_1e

    .line 650
    return v2

    .line 652
    :cond_1e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_27

    move v1, v2

    :cond_27
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;->mHoverSequenceStarted:Z

    .line 653
    iget-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$TouchScreenEventStreamState;->mHoverSequenceStarted:Z

    return p1
.end method
