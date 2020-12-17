.class public Lcom/meizu/common/datetimepicker/date/MonthView$MonthViewTouchHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "MonthView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/datetimepicker/date/MonthView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MonthViewTouchHelper"
.end annotation


# instance fields
.field private final mTempCalendar:Ljava/util/Calendar;

.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/meizu/common/datetimepicker/date/MonthView;


# direct methods
.method public constructor <init>(Lcom/meizu/common/datetimepicker/date/MonthView;Landroid/view/View;)V
    .registers 3

    .line 748
    iput-object p1, p0, Lcom/meizu/common/datetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/meizu/common/datetimepicker/date/MonthView;

    .line 749
    invoke-direct {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 745
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/meizu/common/datetimepicker/date/MonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    .line 746
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/common/datetimepicker/date/MonthView$MonthViewTouchHelper;->mTempCalendar:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method public clearFocusedVirtualView()V
    .registers 4

    .line 758
    invoke-virtual {p0}, Landroidx/customview/widget/ExploreByTouchHelper;->getFocusedVirtualView()I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_14

    .line 760
    iget-object v1, p0, Lcom/meizu/common/datetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/meizu/common/datetimepicker/date/MonthView;

    invoke-virtual {p0, v1}, Landroidx/customview/widget/ExploreByTouchHelper;->getAccessibilityNodeProvider(Landroid/view/View;)Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;

    move-result-object p0

    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeProviderCompat;->performAction(IILandroid/os/Bundle;)Z

    :cond_14
    return-void
.end method

.method protected getItemBounds(ILandroid/graphics/Rect;)V
    .registers 9

    .line 822
    iget-object v0, p0, Lcom/meizu/common/datetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/meizu/common/datetimepicker/date/MonthView;

    iget v1, v0, Lcom/meizu/common/datetimepicker/date/MonthView;->mEdgePadding:I

    .line 823
    invoke-virtual {v0}, Lcom/meizu/common/datetimepicker/date/MonthView;->getMonthHeaderSize()I

    move-result v0

    .line 824
    iget-object v2, p0, Lcom/meizu/common/datetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/meizu/common/datetimepicker/date/MonthView;

    iget v3, v2, Lcom/meizu/common/datetimepicker/date/MonthView;->mRowHeight:I

    .line 825
    iget v4, v2, Lcom/meizu/common/datetimepicker/date/MonthView;->mWidth:I

    iget v5, v2, Lcom/meizu/common/datetimepicker/date/MonthView;->mEdgePadding:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, v2, Lcom/meizu/common/datetimepicker/date/MonthView;->mNumDays:I

    div-int/2addr v4, v5

    add-int/lit8 p1, p1, -0x1

    .line 826
    invoke-virtual {v2}, Lcom/meizu/common/datetimepicker/date/MonthView;->findDayOffset()I

    move-result v2

    add-int/2addr p1, v2

    .line 827
    iget-object p0, p0, Lcom/meizu/common/datetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/meizu/common/datetimepicker/date/MonthView;

    iget p0, p0, Lcom/meizu/common/datetimepicker/date/MonthView;->mNumDays:I

    div-int v2, p1, p0

    .line 828
    rem-int/2addr p1, p0

    mul-int/2addr p1, v4

    add-int/2addr v1, p1

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    add-int/2addr v4, v1

    add-int/2addr v3, v0

    .line 832
    invoke-virtual {p2, v1, v0, v4, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method protected getItemDescription(I)Ljava/lang/CharSequence;
    .registers 5

    .line 844
    iget-object v0, p0, Lcom/meizu/common/datetimepicker/date/MonthView$MonthViewTouchHelper;->mTempCalendar:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/meizu/common/datetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/meizu/common/datetimepicker/date/MonthView;

    iget v2, v1, Lcom/meizu/common/datetimepicker/date/MonthView;->mYear:I

    iget v1, v1, Lcom/meizu/common/datetimepicker/date/MonthView;->mMonth:I

    invoke-virtual {v0, v2, v1, p1}, Ljava/util/Calendar;->set(III)V

    .line 845
    iget-object v0, p0, Lcom/meizu/common/datetimepicker/date/MonthView$MonthViewTouchHelper;->mTempCalendar:Ljava/util/Calendar;

    .line 846
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-string v2, "dd MMMM yyyy"

    .line 845
    invoke-static {v2, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    .line 848
    iget-object p0, p0, Lcom/meizu/common/datetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/meizu/common/datetimepicker/date/MonthView;

    iget v1, p0, Lcom/meizu/common/datetimepicker/date/MonthView;->mSelectedDay:I

    if-ne p1, v1, :cond_2e

    .line 849
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/meizu/common/R$string;->item_is_selected:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2e
    return-object v0
.end method

.method protected getVirtualViewAt(FF)I
    .registers 3

    .line 769
    iget-object p0, p0, Lcom/meizu/common/datetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/meizu/common/datetimepicker/date/MonthView;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/common/datetimepicker/date/MonthView;->getDayFromLocation(FF)I

    move-result p0

    if-ltz p0, :cond_9

    return p0

    :cond_9
    const/high16 p0, -0x80000000

    return p0
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 778
    :goto_1
    iget-object v1, p0, Lcom/meizu/common/datetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/meizu/common/datetimepicker/date/MonthView;

    iget v1, v1, Lcom/meizu/common/datetimepicker/date/MonthView;->mNumCells:I

    if-gt v0, v1, :cond_11

    .line 779
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .registers 4

    const/16 p3, 0x10

    if-eq p2, p3, :cond_6

    const/4 p0, 0x0

    return p0

    .line 808
    :cond_6
    iget-object p0, p0, Lcom/meizu/common/datetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/meizu/common/datetimepicker/date/MonthView;

    invoke-static {p0, p1}, Lcom/meizu/common/datetimepicker/date/MonthView;->access$000(Lcom/meizu/common/datetimepicker/date/MonthView;I)V

    const/4 p0, 0x1

    return p0
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    .line 785
    invoke-virtual {p0, p1}, Lcom/meizu/common/datetimepicker/date/MonthView$MonthViewTouchHelper;->getItemDescription(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 4

    .line 791
    iget-object v0, p0, Lcom/meizu/common/datetimepicker/date/MonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/meizu/common/datetimepicker/date/MonthView$MonthViewTouchHelper;->getItemBounds(ILandroid/graphics/Rect;)V

    .line 793
    invoke-virtual {p0, p1}, Lcom/meizu/common/datetimepicker/date/MonthView$MonthViewTouchHelper;->getItemDescription(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 794
    iget-object v0, p0, Lcom/meizu/common/datetimepicker/date/MonthView$MonthViewTouchHelper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    const/16 v0, 0x10

    .line 795
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 797
    iget-object p0, p0, Lcom/meizu/common/datetimepicker/date/MonthView$MonthViewTouchHelper;->this$0:Lcom/meizu/common/datetimepicker/date/MonthView;

    iget p0, p0, Lcom/meizu/common/datetimepicker/date/MonthView;->mSelectedDay:I

    if-ne p1, p0, :cond_20

    const/4 p0, 0x1

    .line 798
    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setSelected(Z)V

    :cond_20
    return-void
.end method
