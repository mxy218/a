.class Lcom/android/server/accessibility/AccessibilityInputFilter$KeyboardEventStreamState;
.super Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;
.source "AccessibilityInputFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityInputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyboardEventStreamState"
.end annotation


# instance fields
.field private mEventSequenceStartedMap:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 663
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;-><init>()V

    .line 661
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$KeyboardEventStreamState;->mEventSequenceStartedMap:Landroid/util/SparseBooleanArray;

    .line 664
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$KeyboardEventStreamState;->reset()V

    .line 665
    return-void
.end method


# virtual methods
.method public inputSourceValid()Z
    .registers 2

    .line 685
    const/4 v0, 0x1

    return v0
.end method

.method public final reset()V
    .registers 2

    .line 669
    invoke-super {p0}, Lcom/android/server/accessibility/AccessibilityInputFilter$EventStreamState;->reset()V

    .line 670
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$KeyboardEventStreamState;->mEventSequenceStartedMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 671
    return-void
.end method

.method public final shouldProcessKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 6

    .line 691
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    .line 692
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$KeyboardEventStreamState;->mEventSequenceStartedMap:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_f

    .line 693
    return v3

    .line 695
    :cond_f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_16

    move v2, v3

    .line 696
    :cond_16
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityInputFilter$KeyboardEventStreamState;->mEventSequenceStartedMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 697
    return v2
.end method

.method public updateInputSource(I)Z
    .registers 2

    .line 679
    const/4 p1, 0x0

    return p1
.end method
