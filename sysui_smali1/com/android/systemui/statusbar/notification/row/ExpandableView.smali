.class public abstract Lcom/android/systemui/statusbar/notification/row/ExpandableView;
.super Landroid/widget/FrameLayout;
.source "ExpandableView.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;
    }
.end annotation


# static fields
.field private static mClipRect:Landroid/graphics/Rect;


# instance fields
.field protected mActualHeight:I

.field private mChangingPosition:Z

.field protected mClipBottomAmount:I

.field private mClipToActualHeight:Z

.field protected mClipTopAmount:I

.field protected mExtraWidthForClipping:F

.field private mInShelf:Z

.field private mMatchParentViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMinClipTopAmount:I

.field protected mMinimumHeightForClipping:I

.field protected mOnHeightChangedListener:Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;

.field private mTransformingInShelf:Z

.field private mTransientContainer:Landroid/view/ViewGroup;

.field private final mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

.field private mWillBeGone:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 51
    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mMinimumHeightForClipping:I

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mExtraWidthForClipping:F

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mMatchParentViews:Ljava/util/ArrayList;

    .line 56
    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mMinClipTopAmount:I

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipToActualHeight:Z

    .line 58
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mChangingPosition:Z

    .line 66
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->createExpandableViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->extra_clipping_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mExtraWidthForClipping:F

    return-void
.end method


# virtual methods
.method public applyViewState()V
    .registers 3

    .line 566
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->gone:Z

    if-nez v1, :cond_9

    .line 567
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    :cond_9
    return-void
.end method

.method public areChildrenExpanded()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected createExpandableViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;
    .registers 1

    .line 529
    new-instance p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;-><init>()V

    return-object p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public getActualHeight()I
    .registers 1

    .line 167
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    return p0
.end method

.method public getBoundsOnScreen(Landroid/graphics/Rect;Z)V
    .registers 5

    .line 374
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    .line 375
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    add-float/2addr p2, v0

    const/4 v0, 0x0

    cmpg-float p2, p2, v0

    if-gez p2, :cond_23

    .line 377
    iget p2, p1, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    add-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 379
    :cond_23
    iget p2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 380
    iget p2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipTopAmount()I

    move-result p0

    add-int/2addr p2, p0

    iput p2, p1, Landroid/graphics/Rect;->top:I

    return-void
.end method

.method public getClipBottomAmount()I
    .registers 1

    .line 274
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipBottomAmount:I

    return p0
.end method

.method public getClipTopAmount()I
    .registers 1

    .line 270
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipTopAmount:I

    return p0
.end method

.method public getCollapsedHeight()I
    .registers 1

    .line 206
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method public getDrawingRect(Landroid/graphics/Rect;)V
    .registers 4

    .line 365
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 366
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 367
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 368
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 369
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipTopAmount()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v1, p0

    add-float/2addr v0, v1

    float-to-int p0, v0

    iput p0, p1, Landroid/graphics/Rect;->top:I

    return-void
.end method

.method public getExtraBottomPadding()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getHeaderVisibleAmount()F
    .registers 1

    const/high16 p0, 0x3f800000  # 1.0f

    return p0
.end method

.method public getIncreasedPaddingAmount()F
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getIntrinsicHeight()I
    .registers 1

    .line 243
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method public getMaxContentHeight()I
    .registers 1

    .line 178
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method public getMinHeight()I
    .registers 2

    const/4 v0, 0x0

    .line 186
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMinHeight(Z)I

    move-result p0

    return p0
.end method

.method public getMinHeight(Z)I
    .registers 2

    .line 197
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method public getOutlineAlpha()F
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getOutlineTranslation()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getPinnedHeadsUpHeight()I
    .registers 1

    .line 330
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result p0

    return p0
.end method

.method public getTransientContainer()Landroid/view/ViewGroup;
    .registers 1

    .line 494
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mTransientContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getTranslation()F
    .registers 1

    .line 345
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result p0

    return p0
.end method

.method public getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 561
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    return-object p0
.end method

.method public hasExpandingChild()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public hasNoContentHeight()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public hasOverlappingRendering()Z
    .registers 2

    .line 453
    invoke-super {p0}, Landroid/widget/FrameLayout;->hasOverlappingRendering()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    if-gt v0, p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public isAboveShelf()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isChangingPosition()Z
    .registers 1

    .line 486
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mChangingPosition:Z

    return p0
.end method

.method public isChildInGroup()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isContentExpandable()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isExpandAnimationRunning()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isGroupExpanded()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isGroupExpansionChanging()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isInShelf()Z
    .registers 1

    .line 588
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mInShelf:Z

    return p0
.end method

.method public isPinned()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isRemoved()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isSummaryWithChildren()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isTransformingIntoShelf()Z
    .registers 1

    .line 600
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mTransformingInShelf:Z

    return p0
.end method

.method public isTransparent()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public mustStayOnScreen()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public notifyHeightChanged(Z)V
    .registers 3

    .line 289
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;

    if-eqz v0, :cond_7

    .line 290
    invoke-interface {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;->onHeightChanged(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    :cond_7
    return-void
.end method

.method public onHeightReset()V
    .registers 2

    .line 349
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;

    if-eqz v0, :cond_7

    .line 350
    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;->onReset(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    :cond_7
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 122
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 123
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->updateClipping()V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 15

    .line 74
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 75
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingStart()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingEnd()I

    move-result v2

    add-int/2addr v1, v2

    .line 77
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const v2, 0x7fffffff

    if-eqz p2, :cond_1c

    if-eqz v0, :cond_1c

    .line 79
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_1c
    const/high16 v3, -0x80000000

    .line 81
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 83
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_28
    const/high16 v7, 0x40000000  # 2.0f

    if-ge v5, v4, :cond_6b

    .line 85
    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 86
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_39

    goto :goto_68

    .line 90
    :cond_39
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 91
    iget v10, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_63

    if-ltz v10, :cond_50

    if-le v10, v2, :cond_4b

    .line 95
    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto :goto_51

    .line 96
    :cond_4b
    invoke-static {v10, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto :goto_51

    :cond_50
    move v7, v3

    .line 98
    :goto_51
    iget v9, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v1, v9}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result v9

    invoke-virtual {v8, v9, v7}, Landroid/view/View;->measure(II)V

    .line 101
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 102
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_68

    .line 104
    :cond_63
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mMatchParentViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_68
    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    :cond_6b
    if-ne p2, v7, :cond_6e

    goto :goto_72

    .line 108
    :cond_6e
    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 109
    :goto_72
    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 110
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mMatchParentViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_96

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 112
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 111
    invoke-static {p1, v1, v4}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result v4

    invoke-virtual {v3, v4, p2}, Landroid/view/View;->measure(II)V

    goto :goto_7c

    .line 115
    :cond_96
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mMatchParentViews:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 116
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 117
    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public abstract performAddAnimation(JJZ)V
.end method

.method public abstract performRemoveAnimation(JJFZFLjava/lang/Runnable;Landroid/animation/AnimatorListenerAdapter;)J
.end method

.method public pointInView(FFF)Z
    .registers 7

    .line 128
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipTopAmount:I

    int-to-float v0, v0

    .line 129
    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    int-to-float v1, v1

    neg-float v2, p3

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_22

    sub-float/2addr v0, p3

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_22

    .line 130
    iget v0, p0, Landroid/widget/FrameLayout;->mRight:I

    iget p0, p0, Landroid/widget/FrameLayout;->mLeft:I

    sub-int/2addr v0, p0

    int-to-float p0, v0

    add-float/2addr p0, p3

    cmpg-float p0, p1, p0

    if-gez p0, :cond_22

    add-float/2addr v1, p3

    cmpg-float p0, p2, v1

    if-gez p0, :cond_22

    const/4 p0, 0x1

    goto :goto_23

    :cond_22
    const/4 p0, 0x0

    :goto_23
    return p0
.end method

.method public resetViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;
    .registers 5

    .line 535
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->height:I

    .line 536
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v1, v3, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    move v1, v2

    :goto_16
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->gone:Z

    .line 537
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    const/4 v1, -0x1

    .line 538
    iput v1, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->notGoneIndex:I

    .line 539
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    .line 540
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 541
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->scaleX:F

    .line 542
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScaleY()F

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->scaleY:F

    .line 543
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->inShelf:Z

    .line 544
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->headsUpIsVisible:Z

    .line 547
    instance-of v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_66

    .line 548
    move-object v0, p0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 549
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v1

    .line 550
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v0

    if-eqz v0, :cond_66

    if-eqz v1, :cond_66

    .line 551
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_56
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 552
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->resetViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    goto :goto_56

    .line 557
    :cond_66
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mViewState:Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    return-object p0
.end method

.method public setActualHeight(I)V
    .registers 3

    const/4 v0, 0x1

    .line 158
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setActualHeight(IZ)V

    return-void
.end method

.method public setActualHeight(IZ)V
    .registers 3

    .line 142
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mActualHeight:I

    .line 143
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->updateClipping()V

    if-eqz p2, :cond_b

    const/4 p1, 0x0

    .line 145
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->notifyHeightChanged(Z)V

    :cond_b
    return-void
.end method

.method public setActualHeightAnimating(Z)V
    .registers 2

    return-void
.end method

.method public setBelowSpeedBump(Z)V
    .registers 2

    return-void
.end method

.method public setChangingPosition(Z)V
    .registers 2

    .line 482
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mChangingPosition:Z

    return-void
.end method

.method public setClipBottomAmount(I)V
    .registers 2

    .line 265
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipBottomAmount:I

    .line 266
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->updateClipping()V

    return-void
.end method

.method public setClipToActualHeight(Z)V
    .registers 2

    .line 423
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipToActualHeight:Z

    .line 424
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->updateClipping()V

    return-void
.end method

.method public setClipTopAmount(I)V
    .registers 2

    .line 253
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipTopAmount:I

    .line 254
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->updateClipping()V

    return-void
.end method

.method public setDimmed(ZZ)V
    .registers 3

    return-void
.end method

.method public setDistanceToTopRoundness(F)V
    .registers 2

    return-void
.end method

.method public setExtraWidthForClipping(F)V
    .registers 2

    .line 411
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->updateClipping()V

    return-void
.end method

.method public setFakeShadowIntensity(FFII)V
    .registers 5

    return-void
.end method

.method public setHeadsUpIsVisible()V
    .registers 1

    return-void
.end method

.method public setHideSensitive(ZZJJ)V
    .registers 7

    return-void
.end method

.method public setHideSensitiveForIntrinsicHeight(Z)V
    .registers 2

    return-void
.end method

.method public setInShelf(Z)V
    .registers 2

    .line 584
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mInShelf:Z

    return-void
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .registers 4

    .line 445
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->hasOverlappingRendering()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 446
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_9
    return-void
.end method

.method public setMinClipTopAmount(I)V
    .registers 2

    .line 440
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mMinClipTopAmount:I

    return-void
.end method

.method public setMinimumHeightForClipping(I)V
    .registers 2

    .line 405
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mMinimumHeightForClipping:I

    .line 406
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->updateClipping()V

    return-void
.end method

.method public setOnHeightChangedListener(Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;)V
    .registers 2

    .line 278
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;

    return-void
.end method

.method public setTransformingInShelf(Z)V
    .registers 2

    .line 596
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mTransformingInShelf:Z

    return-void
.end method

.method public setTransientContainer(Landroid/view/ViewGroup;)V
    .registers 2

    .line 490
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mTransientContainer:Landroid/view/ViewGroup;

    return-void
.end method

.method public setWillBeGone(Z)V
    .registers 2

    .line 432
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mWillBeGone:Z

    return-void
.end method

.method protected shouldClipToActualHeight()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public showingPulsing()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected updateClipping()V
    .registers 7

    .line 392
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipToActualHeight:Z

    if-eqz v0, :cond_41

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->shouldClipToActualHeight()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isPinned()Z

    move-result v0

    if-nez v0, :cond_41

    .line 393
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipTopAmount()I

    move-result v0

    .line 394
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getExtraBottomPadding()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipBottomAmount:I

    sub-int/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mMinimumHeightForClipping:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 396
    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mExtraWidthForClipping:F

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 397
    sget-object v3, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipRect:Landroid/graphics/Rect;

    neg-int v4, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v4, v0, v5, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 398
    sget-object v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipBounds(Landroid/graphics/Rect;)V

    goto :goto_45

    :cond_41
    const/4 v0, 0x0

    .line 400
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipBounds(Landroid/graphics/Rect;)V

    :goto_45
    return-void
.end method

.method public willBeGone()Z
    .registers 1

    .line 428
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mWillBeGone:Z

    return p0
.end method
