.class Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;
.super Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
.source "AccessibilityInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityInputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MouseEventStreamState"
.end annotation


# instance fields
.field private mMotionSequenceStarted:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 591
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;-><init>()V

    .line 592
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;->reset()V

    .line 593
    return-void
.end method


# virtual methods
.method public final reset()V
    .registers 2

    .line 597
    invoke-super {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    .line 598
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;->mMotionSequenceStarted:Z

    .line 599
    return-void
.end method

.method public final shouldProcessMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 608
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;->mMotionSequenceStarted:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 609
    return v1

    .line 612
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    .line 613
    if-eqz p1, :cond_11

    const/4 v0, 0x7

    if-ne p1, v0, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :cond_11
    :goto_11
    iput-boolean v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;->mMotionSequenceStarted:Z

    .line 615
    iget-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$MouseEventStreamState;->mMotionSequenceStarted:Z

    return p1
.end method

.method public final shouldProcessScroll()Z
    .registers 2

    .line 603
    const/4 v0, 0x1

    return v0
.end method
