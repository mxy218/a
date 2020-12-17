.class public Lcom/meizu/common/widget/AutoScrollListView;
.super Landroid/widget/ListView;
.source "AutoScrollListView.java"


# instance fields
.field private mRequestedScrollPosition:I

.field private mSmoothScrollRequested:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 43
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 39
    iput p1, p0, Lcom/meizu/common/widget/AutoScrollListView;->mRequestedScrollPosition:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 39
    iput p1, p0, Lcom/meizu/common/widget/AutoScrollListView;->mRequestedScrollPosition:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 39
    iput p1, p0, Lcom/meizu/common/widget/AutoScrollListView;->mRequestedScrollPosition:I

    return-void
.end method


# virtual methods
.method protected layoutChildren()V
    .registers 6

    .line 69
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 70
    iget v0, p0, Lcom/meizu/common/widget/AutoScrollListView;->mRequestedScrollPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    return-void

    .line 75
    :cond_9
    iput v1, p0, Lcom/meizu/common/widget/AutoScrollListView;->mRequestedScrollPosition:I

    .line 77
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 78
    invoke-virtual {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    if-lt v0, v1, :cond_1a

    if-gt v0, v2, :cond_1a

    return-void

    .line 83
    :cond_1a
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3ea8f5c3  # 0.33f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 84
    iget-boolean v4, p0, Lcom/meizu/common/widget/AutoScrollListView;->mSmoothScrollRequested:Z

    if-nez v4, :cond_2f

    .line 85
    invoke-virtual {p0, v0, v3}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 90
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    goto :goto_5b

    :cond_2f
    sub-int v4, v2, v1

    mul-int/lit8 v4, v4, 0x2

    if-ge v0, v1, :cond_4b

    add-int/2addr v4, v0

    .line 99
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-lt v4, v2, :cond_42

    .line 100
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    :cond_42
    if-ge v4, v1, :cond_58

    .line 103
    invoke-virtual {p0, v4}, Landroid/widget/ListView;->setSelection(I)V

    .line 104
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    goto :goto_58

    :cond_4b
    sub-int v1, v0, v4

    if-gez v1, :cond_50

    const/4 v1, 0x0

    :cond_50
    if-le v1, v2, :cond_58

    .line 112
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 113
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 117
    :cond_58
    :goto_58
    invoke-virtual {p0, v0, v3}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(II)V

    :goto_5b
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 2

    .line 123
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 124
    const-class p0, Lcom/meizu/common/widget/AutoScrollListView;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method
