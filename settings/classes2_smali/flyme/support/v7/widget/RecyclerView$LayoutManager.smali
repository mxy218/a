.class public abstract Lflyme/support/v7/widget/RecyclerView$LayoutManager;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LayoutManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/widget/RecyclerView$LayoutManager$Properties;,
        Lflyme/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;
    }
.end annotation


# instance fields
.field mAutoMeasure:Z

.field mChildHelper:Lflyme/support/v7/widget/ChildHelper;

.field private mHeight:I

.field private mHeightMode:I

.field mHorizontalBoundCheck:Lflyme/support/v7/widget/ViewBoundsCheck;

.field private final mHorizontalBoundCheckCallback:Lflyme/support/v7/widget/ViewBoundsCheck$Callback;

.field mIsAttachedToWindow:Z

.field private mItemPrefetchEnabled:Z

.field private mMeasurementCacheEnabled:Z

.field mPrefetchMaxCountObserved:I

.field mPrefetchMaxObservedInInitialPrefetch:Z

.field mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

.field mRequestedSimpleAnimations:Z

.field mSmoothScroller:Lflyme/support/v7/widget/RecyclerView$SmoothScroller;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field mVerticalBoundCheck:Lflyme/support/v7/widget/ViewBoundsCheck;

.field private final mVerticalBoundCheckCallback:Lflyme/support/v7/widget/ViewBoundsCheck$Callback;

.field private mWidth:I

.field private mWidthMode:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 6987
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6995
    new-instance v0, Lflyme/support/v7/widget/RecyclerView$LayoutManager$1;

    invoke-direct {v0, p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager$1;-><init>(Lflyme/support/v7/widget/RecyclerView$LayoutManager;)V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mHorizontalBoundCheckCallback:Lflyme/support/v7/widget/ViewBoundsCheck$Callback;

    .line 7041
    new-instance v0, Lflyme/support/v7/widget/RecyclerView$LayoutManager$2;

    invoke-direct {v0, p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager$2;-><init>(Lflyme/support/v7/widget/RecyclerView$LayoutManager;)V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mVerticalBoundCheckCallback:Lflyme/support/v7/widget/ViewBoundsCheck$Callback;

    .line 7091
    new-instance v0, Lflyme/support/v7/widget/ViewBoundsCheck;

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mHorizontalBoundCheckCallback:Lflyme/support/v7/widget/ViewBoundsCheck$Callback;

    invoke-direct {v0, v1}, Lflyme/support/v7/widget/ViewBoundsCheck;-><init>(Lflyme/support/v7/widget/ViewBoundsCheck$Callback;)V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mHorizontalBoundCheck:Lflyme/support/v7/widget/ViewBoundsCheck;

    .line 7092
    new-instance v0, Lflyme/support/v7/widget/ViewBoundsCheck;

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mVerticalBoundCheckCallback:Lflyme/support/v7/widget/ViewBoundsCheck$Callback;

    invoke-direct {v0, v1}, Lflyme/support/v7/widget/ViewBoundsCheck;-><init>(Lflyme/support/v7/widget/ViewBoundsCheck$Callback;)V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mVerticalBoundCheck:Lflyme/support/v7/widget/ViewBoundsCheck;

    const/4 v0, 0x0

    .line 7097
    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    .line 7099
    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    .line 7101
    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z

    const/4 v0, 0x1

    .line 7107
    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    .line 7109
    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    return-void
.end method

.method static synthetic access$1200(Lflyme/support/v7/widget/RecyclerView$LayoutManager;Lflyme/support/v7/widget/RecyclerView$SmoothScroller;)V
    .registers 2

    .line 6987
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onSmoothScrollerStopped(Lflyme/support/v7/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method

.method private addViewInt(Landroid/view/View;IZ)V
    .registers 8

    .line 7965
    invoke-static {p1}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-nez p3, :cond_15

    .line 7966
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result p3

    if-eqz p3, :cond_d

    goto :goto_15

    .line 7975
    :cond_d
    iget-object p3, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    iget-object p3, p3, Lflyme/support/v7/widget/RecyclerView;->mViewInfoStore:Lflyme/support/v7/widget/ViewInfoStore;

    invoke-virtual {p3, v0}, Lflyme/support/v7/widget/ViewInfoStore;->removeFromDisappearedInLayout(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_1c

    .line 7968
    :cond_15
    :goto_15
    iget-object p3, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    iget-object p3, p3, Lflyme/support/v7/widget/RecyclerView;->mViewInfoStore:Lflyme/support/v7/widget/ViewInfoStore;

    invoke-virtual {p3, v0}, Lflyme/support/v7/widget/ViewInfoStore;->addToDisappearedInLayout(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 7977
    :goto_1c
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    .line 7978
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_88

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_30

    goto :goto_88

    .line 7988
    :cond_30
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    if-ne v1, v3, :cond_70

    .line 7990
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v1, p1}, Lflyme/support/v7/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v3, -0x1

    if-ne p2, v3, :cond_47

    .line 7992
    iget-object p2, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {p2}, Lflyme/support/v7/widget/ChildHelper;->getChildCount()I

    move-result p2

    :cond_47
    if-eq v1, v3, :cond_53

    if-eq v1, p2, :cond_9e

    .line 8000
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, v1, p2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->moveView(II)V

    goto :goto_9e

    .line 7995
    :cond_53
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    .line 7997
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 8003
    :cond_70
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v1, p1, p2, v2}, Lflyme/support/v7/widget/ChildHelper;->addView(Landroid/view/View;IZ)V

    const/4 p2, 0x1

    .line 8004
    iput-boolean p2, p3, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 8005
    iget-object p2, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lflyme/support/v7/widget/RecyclerView$SmoothScroller;

    if-eqz p2, :cond_9e

    invoke-virtual {p2}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_9e

    .line 8006
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lflyme/support/v7/widget/RecyclerView$SmoothScroller;

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->onChildAttachedToWindow(Landroid/view/View;)V

    goto :goto_9e

    .line 7979
    :cond_88
    :goto_88
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_92

    .line 7980
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->unScrap()V

    goto :goto_95

    .line 7982
    :cond_92
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 7984
    :goto_95
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1, v2}, Lflyme/support/v7/widget/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 8009
    :cond_9e
    :goto_9e
    iget-boolean p0, p3, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    if-eqz p0, :cond_a9

    .line 8013
    iget-object p0, v0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 8014
    iput-boolean v2, p3, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    :cond_a9
    return-void
.end method

.method public static chooseSize(III)I
    .registers 5

    .line 7296
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 7297
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_15

    const/high16 v1, 0x40000000  # 2.0f

    if-eq v0, v1, :cond_14

    .line 7305
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    :cond_14
    return p0

    .line 7302
    :cond_15
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private detachViewInternal(ILandroid/view/View;)V
    .registers 3

    .line 8192
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/ChildHelper;->detachViewFromParent(I)V

    return-void
.end method

.method public static getChildMeasureSpec(IIIIZ)I
    .registers 9

    sub-int/2addr p0, p2

    const/4 p2, 0x0

    .line 8824
    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 v0, -0x2

    const/4 v1, -0x1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000  # 2.0f

    if-eqz p4, :cond_20

    if-ltz p3, :cond_11

    goto :goto_22

    :cond_11
    if-ne p3, v1, :cond_31

    if-eq p1, v2, :cond_1c

    if-eqz p1, :cond_19

    if-eq p1, v3, :cond_1c

    :cond_19
    move p1, p2

    move p3, p1

    goto :goto_1d

    :cond_1c
    move p3, p0

    :goto_1d
    move p2, p1

    move p0, p3

    goto :goto_32

    :cond_20
    if-ltz p3, :cond_25

    :goto_22
    move p0, p3

    move p2, v3

    goto :goto_32

    :cond_25
    if-ne p3, v1, :cond_29

    move p2, p1

    goto :goto_32

    :cond_29
    if-ne p3, v0, :cond_31

    if-eq p1, v2, :cond_2f

    if-ne p1, v3, :cond_32

    :cond_2f
    move p2, v2

    goto :goto_32

    :cond_31
    move p0, p2

    .line 8865
    :cond_32
    :goto_32
    invoke-static {p0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method private getChildRectangleOnScreenScrollAmount(Lflyme/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)[I
    .registers 11

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 9215
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result p4

    .line 9216
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v0

    .line 9217
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 9218
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 9219
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    move-result v4

    sub-int/2addr v3, v4

    .line 9220
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    move-result p2

    sub-int/2addr v4, p2

    .line 9221
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    add-int/2addr p2, v3

    .line 9222
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    add-int/2addr p3, v4

    sub-int/2addr v3, p4

    const/4 p4, 0x0

    .line 9224
    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int/2addr v4, v0

    .line 9225
    invoke-static {p4, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr p2, v1

    .line 9226
    invoke-static {p4, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr p3, v2

    .line 9227
    invoke-static {p4, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 9233
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result p0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_63

    if-eqz v1, :cond_5e

    goto :goto_6b

    .line 9235
    :cond_5e
    invoke-static {v5, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_6b

    :cond_63
    if-eqz v5, :cond_66

    goto :goto_6a

    .line 9238
    :cond_66
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    :goto_6a
    move v1, v5

    :goto_6b
    if-eqz v0, :cond_6e

    goto :goto_72

    .line 9244
    :cond_6e
    invoke-static {v4, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_72
    aput v1, p1, p4

    aput v0, p1, v2

    return-object p1
.end method

.method public static getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Lflyme/support/v7/widget/RecyclerView$LayoutManager$Properties;
    .registers 6

    .line 9989
    new-instance v0, Lflyme/support/v7/widget/RecyclerView$LayoutManager$Properties;

    invoke-direct {v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager$Properties;-><init>()V

    .line 9990
    sget-object v1, Lflyme/support/v7/R$styleable;->RecyclerView:[I

    invoke-virtual {p0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 9992
    sget p1, Lflyme/support/v7/R$styleable;->RecyclerView_android_orientation:I

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, v0, Lflyme/support/v7/widget/RecyclerView$LayoutManager$Properties;->orientation:I

    .line 9993
    sget p1, Lflyme/support/v7/R$styleable;->RecyclerView_spanCount:I

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, v0, Lflyme/support/v7/widget/RecyclerView$LayoutManager$Properties;->spanCount:I

    .line 9994
    sget p1, Lflyme/support/v7/R$styleable;->RecyclerView_reverseLayout:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, v0, Lflyme/support/v7/widget/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    .line 9995
    sget p1, Lflyme/support/v7/R$styleable;->RecyclerView_stackFromEnd:I

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, v0, Lflyme/support/v7/widget/RecyclerView$LayoutManager$Properties;->stackFromEnd:Z

    .line 9996
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method private isFocusedChildVisibleAfterScrolling(Lflyme/support/v7/widget/RecyclerView;II)Z
    .registers 10

    .line 9345
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return v0

    .line 9349
    :cond_8
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v1

    .line 9350
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v2

    .line 9351
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 9352
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 9353
    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    iget-object v5, v5, Lflyme/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 9354
    invoke-virtual {p0, p1, v5}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 9356
    iget p0, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, p2

    if-ge p0, v3, :cond_3e

    iget p0, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr p0, p2

    if-le p0, v1, :cond_3e

    iget p0, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, p3

    if-ge p0, v4, :cond_3e

    iget p0, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p3

    if-le p0, v2, :cond_3e

    const/4 v0, 0x1

    :cond_3e
    return v0
.end method

.method private static isMeasurementUpToDate(III)Z
    .registers 6

    .line 8718
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 8719
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/4 v1, 0x0

    if-lez p2, :cond_e

    if-eq p0, p2, :cond_e

    return v1

    :cond_e
    const/high16 p2, -0x80000000

    const/4 v2, 0x1

    if-eq v0, p2, :cond_1f

    if-eqz v0, :cond_1e

    const/high16 p2, 0x40000000  # 2.0f

    if-eq v0, p2, :cond_1a

    return v1

    :cond_1a
    if-ne p1, p0, :cond_1d

    move v1, v2

    :cond_1d
    return v1

    :cond_1e
    return v2

    :cond_1f
    if-lt p1, p0, :cond_22

    move v1, v2

    :cond_22
    return v1
.end method

.method private onSmoothScrollerStopped(Lflyme/support/v7/widget/RecyclerView$SmoothScroller;)V
    .registers 3

    .line 9667
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lflyme/support/v7/widget/RecyclerView$SmoothScroller;

    if-ne v0, p1, :cond_7

    const/4 p1, 0x0

    .line 9668
    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lflyme/support/v7/widget/RecyclerView$SmoothScroller;

    :cond_7
    return-void
.end method

.method private scrapOrRecycleView(Lflyme/support/v7/widget/RecyclerView$Recycler;ILandroid/view/View;)V
    .registers 6

    .line 8578
    invoke-static {p3}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 8579
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_b

    return-void

    .line 8585
    :cond_b
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_28

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    iget-object v1, v1, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    .line 8586
    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    if-nez v1, :cond_28

    .line 8587
    invoke-virtual {p0, p2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->removeViewAt(I)V

    .line 8588
    invoke-virtual {p1, v0}, Lflyme/support/v7/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_35

    .line 8590
    :cond_28
    invoke-virtual {p0, p2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->detachViewAt(I)V

    .line 8591
    invoke-virtual {p1, p3}, Lflyme/support/v7/widget/RecyclerView$Recycler;->scrapView(Landroid/view/View;)V

    .line 8592
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mViewInfoStore:Lflyme/support/v7/widget/ViewInfoStore;

    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/ViewInfoStore;->onViewDetached(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    :goto_35
    return-void
.end method


# virtual methods
.method public addDisappearingView(Landroid/view/View;)V
    .registers 3

    const/4 v0, -0x1

    .line 7920
    invoke-virtual {p0, p1, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->addDisappearingView(Landroid/view/View;I)V

    return-void
.end method

.method public addDisappearingView(Landroid/view/View;I)V
    .registers 4

    const/4 v0, 0x1

    .line 7938
    invoke-direct {p0, p1, p2, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    return-void
.end method

.method public addView(Landroid/view/View;)V
    .registers 3

    const/4 v0, -0x1

    .line 7949
    invoke-virtual {p0, p1, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .registers 4

    const/4 v0, 0x0

    .line 7961
    invoke-direct {p0, p1, p2, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->addViewInt(Landroid/view/View;IZ)V

    return-void
.end method

.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .registers 2

    .line 7317
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    if-eqz p0, :cond_7

    .line 7318
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public attachView(Landroid/view/View;I)V
    .registers 4

    .line 8226
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {p0, p1, p2, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->attachView(Landroid/view/View;ILflyme/support/v7/widget/RecyclerView$LayoutParams;)V

    return-void
.end method

.method public attachView(Landroid/view/View;ILflyme/support/v7/widget/RecyclerView$LayoutParams;)V
    .registers 6

    .line 8205
    invoke-static {p1}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 8206
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 8207
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    iget-object v1, v1, Lflyme/support/v7/widget/RecyclerView;->mViewInfoStore:Lflyme/support/v7/widget/ViewInfoStore;

    invoke-virtual {v1, v0}, Lflyme/support/v7/widget/ViewInfoStore;->addToDisappearedInLayout(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_19

    .line 8209
    :cond_12
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    iget-object v1, v1, Lflyme/support/v7/widget/RecyclerView;->mViewInfoStore:Lflyme/support/v7/widget/ViewInfoStore;

    invoke-virtual {v1, v0}, Lflyme/support/v7/widget/ViewInfoStore;->removeFromDisappearedInLayout(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 8211
    :goto_19
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lflyme/support/v7/widget/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    return-void
.end method

.method public calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 3

    .line 9084
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    if-nez p0, :cond_9

    const/4 p0, 0x0

    .line 9085
    invoke-virtual {p2, p0, p0, p0, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 9088
    :cond_9
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    .line 9089
    invoke-virtual {p2, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public canScrollHorizontally()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public canScrollVertically()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public checkLayoutParams(Lflyme/support/v7/widget/RecyclerView$LayoutParams;)Z
    .registers 2

    if-eqz p1, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method public collectAdjacentPrefetchPositions(IILflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .registers 5

    return-void
.end method

.method public collectInitialPrefetchPositions(ILflyme/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .registers 3

    return-void
.end method

.method public computeHorizontalScrollExtent(Lflyme/support/v7/widget/RecyclerView$State;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public computeHorizontalScrollOffset(Lflyme/support/v7/widget/RecyclerView$State;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public computeHorizontalScrollRange(Lflyme/support/v7/widget/RecyclerView$State;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public computeVerticalScrollExtent(Lflyme/support/v7/widget/RecyclerView$State;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public computeVerticalScrollOffset(Lflyme/support/v7/widget/RecyclerView$State;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public computeVerticalScrollRange(Lflyme/support/v7/widget/RecyclerView$State;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public detachAndScrapAttachedViews(Lflyme/support/v7/widget/RecyclerView$Recycler;)V
    .registers 4

    .line 8570
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_12

    .line 8572
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 8573
    invoke-direct {p0, p1, v0, v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->scrapOrRecycleView(Lflyme/support/v7/widget/RecyclerView$Recycler;ILandroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_12
    return-void
.end method

.method public detachViewAt(I)V
    .registers 3

    .line 8185
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->detachViewInternal(ILandroid/view/View;)V

    return-void
.end method

.method dispatchAttachedToWindow(Lflyme/support/v7/widget/RecyclerView;)V
    .registers 3

    const/4 v0, 0x1

    .line 7519
    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    .line 7520
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onAttachedToWindow(Lflyme/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method dispatchDetachedFromWindow(Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$Recycler;)V
    .registers 4

    const/4 v0, 0x0

    .line 7524
    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    .line 7525
    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$Recycler;)V

    return-void
.end method

.method public findContainingItemView(Landroid/view/View;)Landroid/view/View;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 8105
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 8108
    :cond_6
    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_d

    return-object v1

    .line 8112
    :cond_d
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_16

    return-object v1

    :cond_16
    return-object p1
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .registers 7

    .line 8132
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_32

    .line 8134
    invoke-virtual {p0, v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 8135
    invoke-static {v2}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-nez v3, :cond_12

    goto :goto_2f

    .line 8139
    :cond_12
    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_2f

    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_2f

    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    iget-object v4, v4, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    .line 8140
    invoke-virtual {v4}, Lflyme/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v4

    if-nez v4, :cond_2e

    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_2f

    :cond_2e
    return-object v2

    :cond_2f
    :goto_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_32
    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract generateDefaultLayoutParams()Lflyme/support/v7/widget/RecyclerView$LayoutParams;
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lflyme/support/v7/widget/RecyclerView$LayoutParams;
    .registers 3

    .line 7777
    new-instance p0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    invoke-direct {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lflyme/support/v7/widget/RecyclerView$LayoutParams;
    .registers 2

    .line 7753
    instance-of p0, p1, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz p0, :cond_c

    .line 7754
    new-instance p0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    check-cast p1, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    invoke-direct {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutParams;-><init>(Lflyme/support/v7/widget/RecyclerView$LayoutParams;)V

    return-object p0

    .line 7755
    :cond_c
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_18

    .line 7756
    new-instance p0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object p0

    .line 7758
    :cond_18
    new-instance p0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    invoke-direct {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public getBaseline()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method public getBottomDecorationHeight(Landroid/view/View;)I
    .registers 2

    .line 9119
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    return p0
.end method

.method public getChildAt(I)Landroid/view/View;
    .registers 2

    .line 8333
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public getChildCount()I
    .registers 1

    .line 8324
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lflyme/support/v7/widget/ChildHelper;->getChildCount()I

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public getClipToPadding()Z
    .registers 1

    .line 7636
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    if-eqz p0, :cond_a

    iget-boolean p0, p0, Lflyme/support/v7/widget/RecyclerView;->mClipToPadding:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public getColumnCountForAccessibility(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)I
    .registers 3

    .line 9884
    iget-object p1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    const/4 p2, 0x1

    if-eqz p1, :cond_18

    iget-object p1, p1, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    if-nez p1, :cond_a

    goto :goto_18

    .line 9887
    :cond_a
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result p1

    if-eqz p1, :cond_18

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p2

    :cond_18
    :goto_18
    return p2
.end method

.method public getDecoratedBottom(Landroid/view/View;)I
    .registers 3

    .line 9063
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 3

    .line 9015
    invoke-static {p1, p2}, Lflyme/support/v7/widget/RecyclerView;->getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method public getDecoratedLeft(Landroid/view/View;)I
    .registers 3

    .line 9027
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public getDecoratedMeasuredHeight(Landroid/view/View;)I
    .registers 3

    .line 8892
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 8893
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p0

    return p1
.end method

.method public getDecoratedMeasuredWidth(Landroid/view/View;)I
    .registers 3

    .line 8878
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 8879
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v0

    iget p0, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, p0

    return p1
.end method

.method public getDecoratedRight(Landroid/view/View;)I
    .registers 3

    .line 9051
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getDecoratedTop(Landroid/view/View;)I
    .registers 3

    .line 9039
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public getFocusedChild()Landroid/view/View;
    .registers 3

    .line 8470
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 8473
    :cond_6
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 8474
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_16

    :cond_15
    return-object v0

    :cond_16
    :goto_16
    return-object v1
.end method

.method public getHeight()I
    .registers 1

    .line 8387
    iget p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mHeight:I

    return p0
.end method

.method public getHeightMode()I
    .registers 1

    .line 8369
    iget p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mHeightMode:I

    return p0
.end method

.method public getLayoutDirection()I
    .registers 1

    .line 7891
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public getLeftDecorationWidth(Landroid/view/View;)I
    .registers 2

    .line 9134
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    return p0
.end method

.method public getMinimumHeight()I
    .registers 1

    .line 9639
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public getMinimumWidth()I
    .registers 1

    .line 9632
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getMinimumWidth(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public getPaddingBottom()I
    .registers 1

    .line 8423
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public getPaddingLeft()I
    .registers 1

    .line 8396
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public getPaddingRight()I
    .registers 1

    .line 8414
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public getPaddingTop()I
    .registers 1

    .line 8405
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public getPosition(Landroid/view/View;)I
    .registers 2

    .line 8075
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result p0

    return p0
.end method

.method public getRightDecorationWidth(Landroid/view/View;)I
    .registers 2

    .line 9149
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    return p0
.end method

.method public getRowCountForAccessibility(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)I
    .registers 3

    .line 9865
    iget-object p1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    const/4 p2, 0x1

    if-eqz p1, :cond_18

    iget-object p1, p1, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    if-nez p1, :cond_a

    goto :goto_18

    .line 9868
    :cond_a
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result p1

    if-eqz p1, :cond_18

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p2

    :cond_18
    :goto_18
    return p2
.end method

.method public getSelectionModeForAccessibility(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)I
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public getTopDecorationHeight(Landroid/view/View;)I
    .registers 2

    .line 9104
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    return p0
.end method

.method public getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .registers 8

    if-eqz p2, :cond_22

    .line 8983
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    iget-object p2, p2, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 8984
    iget v0, p2, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    .line 8985
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, p2

    .line 8984
    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2e

    .line 8987
    :cond_22
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p3, v1, v1, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 8990
    :goto_2e
    iget-object p2, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    if-eqz p2, :cond_6b

    .line 8991
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getMatrix(Landroid/view/View;)Landroid/graphics/Matrix;

    move-result-object p2

    if-eqz p2, :cond_6b

    .line 8992
    invoke-virtual {p2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_6b

    .line 8993
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mTempRectF:Landroid/graphics/RectF;

    .line 8994
    invoke-virtual {p0, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 8995
    invoke-virtual {p2, p0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 8996
    iget p2, p0, Landroid/graphics/RectF;->left:F

    float-to-double v0, p2

    .line 8997
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p2, v0

    iget v0, p0, Landroid/graphics/RectF;->top:F

    float-to-double v0, v0

    .line 8998
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p0, Landroid/graphics/RectF;->right:F

    float-to-double v1, v1

    .line 8999
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    float-to-double v2, p0

    .line 9000
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p0, v2

    .line 8996
    invoke-virtual {p3, p2, v0, v1, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 9004
    :cond_6b
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p3, p0, p1}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public getWidth()I
    .registers 1

    .line 8378
    iget p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mWidth:I

    return p0
.end method

.method public getWidthMode()I
    .registers 1

    .line 8351
    iget p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mWidthMode:I

    return p0
.end method

.method hasFlexibleChildInBothOrientations()Z
    .registers 6

    .line 10022
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_1d

    .line 10024
    invoke-virtual {p0, v2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 10025
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 10026
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v4, :cond_1a

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v3, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1d
    return v1
.end method

.method public isAttachedToWindow()Z
    .registers 1

    .line 7536
    iget-boolean p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mIsAttachedToWindow:Z

    return p0
.end method

.method public final isItemPrefetchEnabled()Z
    .registers 1

    .line 7464
    iget-boolean p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mItemPrefetchEnabled:Z

    return p0
.end method

.method public isLayoutHierarchical(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public isSmoothScrolling()Z
    .registers 1

    .line 7878
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lflyme/support/v7/widget/RecyclerView$SmoothScroller;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isViewPartiallyVisible(Landroid/view/View;ZZ)Z
    .registers 6
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 9325
    iget-object p3, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mHorizontalBoundCheck:Lflyme/support/v7/widget/ViewBoundsCheck;

    const/16 v0, 0x6003

    invoke-virtual {p3, p1, v0}, Lflyme/support/v7/widget/ViewBoundsCheck;->isViewWithinBoundFlags(Landroid/view/View;I)Z

    move-result p3

    const/4 v1, 0x1

    if-eqz p3, :cond_15

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mVerticalBoundCheck:Lflyme/support/v7/widget/ViewBoundsCheck;

    .line 9327
    invoke-virtual {p0, p1, v0}, Lflyme/support/v7/widget/ViewBoundsCheck;->isViewWithinBoundFlags(Landroid/view/View;I)Z

    move-result p0

    if-eqz p0, :cond_15

    move p0, v1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    if-eqz p2, :cond_19

    return p0

    :cond_19
    xor-int/2addr p0, v1

    return p0
.end method

.method public layoutDecoratedWithMargins(Landroid/view/View;IIII)V
    .registers 8

    .line 8963
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    .line 8964
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 8965
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, v1

    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p2, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p3, v1

    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, v1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p4, v1

    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr p4, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p5, v0

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr p5, p0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public measureChildWithMargins(Landroid/view/View;II)V
    .registers 9

    .line 8747
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    .line 8749
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v1, p1}, Lflyme/support/v7/widget/RecyclerView;->getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 8750
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/2addr p2, v2

    .line 8751
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    add-int/2addr p3, v2

    .line 8753
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getWidthMode()I

    move-result v2

    .line 8754
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p2

    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 8756
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v4

    .line 8753
    invoke-static {v1, v2, v3, p2, v4}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result p2

    .line 8757
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getHeightMode()I

    move-result v2

    .line 8758
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 8760
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v4

    .line 8757
    invoke-static {v1, v2, v3, p3, v4}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result p3

    .line 8761
    invoke-virtual {p0, p1, p2, p3, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->shouldMeasureChild(Landroid/view/View;IILflyme/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result p0

    if-eqz p0, :cond_65

    .line 8762
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    :cond_65
    return-void
.end method

.method public moveView(II)V
    .registers 4

    .line 8257
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 8262
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->detachViewAt(I)V

    .line 8263
    invoke-virtual {p0, v0, p2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->attachView(Landroid/view/View;I)V

    return-void

    .line 8259
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot move a child from non-existing index:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public offsetChildrenHorizontal(I)V
    .registers 2

    .line 8502
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    if-eqz p0, :cond_7

    .line 8503
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView;->offsetChildrenHorizontal(I)V

    :cond_7
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .registers 2

    .line 8514
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    if-eqz p0, :cond_7

    .line 8515
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView;->offsetChildrenVertical(I)V

    :cond_7
    return-void
.end method

.method public onAdapterChanged(Lflyme/support/v7/widget/RecyclerView$Adapter;Lflyme/support/v7/widget/RecyclerView$Adapter;)V
    .registers 3

    return-void
.end method

.method public onAddFocusables(Lflyme/support/v7/widget/RecyclerView;Ljava/util/ArrayList;II)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lflyme/support/v7/widget/RecyclerView;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public onAttachedToWindow(Lflyme/support/v7/widget/RecyclerView;)V
    .registers 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    return-void
.end method

.method public onDetachedFromWindow(Lflyme/support/v7/widget/RecyclerView;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onDetachedFromWindow(Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$Recycler;)V
    .registers 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 7627
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Lflyme/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .registers 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .line 9754
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    iget-object v1, v0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {p0, v1, v0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 5

    .line 9771
    invoke-static {p3}, Landroidx/core/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroidx/core/view/accessibility/AccessibilityRecordCompat;

    move-result-object p1

    .line 9772
    iget-object p2, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    if-eqz p2, :cond_3d

    if-nez p1, :cond_b

    goto :goto_3d

    :cond_b
    const/4 p3, 0x1

    .line 9775
    invoke-static {p2, p3}, Landroidx/core/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result p2

    if-nez p2, :cond_2d

    iget-object p2, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    const/4 v0, -0x1

    .line 9776
    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result p2

    if-nez p2, :cond_2d

    iget-object p2, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    .line 9777
    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result p2

    if-nez p2, :cond_2d

    iget-object p2, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    .line 9778
    invoke-static {p2, p3}, Landroidx/core/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result p2

    if-eqz p2, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 p3, 0x0

    .line 9775
    :cond_2d
    :goto_2d
    invoke-virtual {p1, p3}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setScrollable(Z)V

    .line 9780
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mAdapter:Lflyme/support/v7/widget/RecyclerView$Adapter;

    if-eqz p0, :cond_3d

    .line 9781
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setItemCount(I)V

    :cond_3d
    :goto_3d
    return-void
.end method

.method onInitializeAccessibilityNodeInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 4

    .line 9703
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    iget-object v1, v0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {p0, v1, v0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfo(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 7

    .line 9733
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_12

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    .line 9734
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_12
    const/16 v0, 0x2000

    .line 9735
    invoke-virtual {p3, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 9736
    invoke-virtual {p3, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 9738
    :cond_1a
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    .line 9739
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_32

    :cond_2a
    const/16 v0, 0x1000

    .line 9740
    invoke-virtual {p3, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 9741
    invoke-virtual {p3, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 9745
    :cond_32
    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getRowCountForAccessibility(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result v0

    .line 9746
    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getColumnCountForAccessibility(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result v1

    .line 9747
    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->isLayoutHierarchical(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)Z

    move-result v2

    .line 9748
    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getSelectionModeForAccessibility(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result p0

    .line 9745
    invoke-static {v0, v1, v2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object p0

    .line 9749
    invoke-virtual {p3, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    return-void
.end method

.method onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 5

    .line 9787
    invoke-static {p1}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 9789
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_1f

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Lflyme/support/v7/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 9790
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    iget-object v1, v0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {p0, v1, v0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    :cond_1f
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 11

    .line 9811
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_d

    invoke-virtual {p0, p3}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    move v0, p1

    goto :goto_e

    :cond_d
    move v0, p2

    .line 9812
    :goto_e
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result p1

    if-eqz p1, :cond_18

    invoke-virtual {p0, p3}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p2

    :cond_18
    move v2, p2

    const/4 v1, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 9814
    invoke-static/range {v0 .. v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object p0

    .line 9816
    invoke-virtual {p4, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    return-void
.end method

.method public onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public onItemsAdded(Lflyme/support/v7/widget/RecyclerView;II)V
    .registers 4

    return-void
.end method

.method public onItemsChanged(Lflyme/support/v7/widget/RecyclerView;)V
    .registers 2

    return-void
.end method

.method public onItemsMoved(Lflyme/support/v7/widget/RecyclerView;III)V
    .registers 5

    return-void
.end method

.method public onItemsRemoved(Lflyme/support/v7/widget/RecyclerView;II)V
    .registers 4

    return-void
.end method

.method public onItemsUpdated(Lflyme/support/v7/widget/RecyclerView;II)V
    .registers 4

    return-void
.end method

.method public onItemsUpdated(Lflyme/support/v7/widget/RecyclerView;IILjava/lang/Object;)V
    .registers 5

    .line 9489
    invoke-virtual {p0, p1, p2, p3}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onItemsUpdated(Lflyme/support/v7/widget/RecyclerView;II)V

    return-void
.end method

.method public onLayoutChildren(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)V
    .registers 3

    const-string p0, "RecyclerView"

    const-string p1, "You must override onLayoutChildren(Recycler recycler, State state) "

    .line 7691
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLayoutCompleted(Lflyme/support/v7/widget/RecyclerView$State;)V
    .registers 2

    return-void
.end method

.method public onMeasure(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;II)V
    .registers 5

    .line 9614
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {p0, p3, p4}, Lflyme/support/v7/widget/RecyclerView;->defaultOnMeasure(II)V

    return-void
.end method

.method public onRequestChildFocus(Lflyme/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9366
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->isSmoothScrolling()Z

    move-result p0

    if-nez p0, :cond_f

    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView;->isComputingLayout()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public onRequestChildFocus(Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroid/view/View;)Z
    .registers 5

    .line 9388
    invoke-virtual {p0, p1, p3, p4}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onRequestChildFocus(Lflyme/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 2

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public onScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method performAccessibilityAction(ILandroid/os/Bundle;)Z
    .registers 5

    .line 9906
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    iget-object v1, v0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {p0, v1, v0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->performAccessibilityAction(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public performAccessibilityAction(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;ILandroid/os/Bundle;)Z
    .registers 6

    .line 9922
    iget-object p1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    const/4 p2, 0x0

    if-nez p1, :cond_6

    return p2

    :cond_6
    const/16 p4, 0x1000

    const/4 v0, 0x1

    if-eq p3, p4, :cond_42

    const/16 p4, 0x2000

    if-eq p3, p4, :cond_12

    move p1, p2

    move p3, p1

    goto :goto_70

    :cond_12
    const/4 p3, -0x1

    .line 9928
    invoke-static {p1, p3}, Landroidx/core/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 9929
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result p4

    sub-int/2addr p1, p4

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result p4

    sub-int/2addr p1, p4

    neg-int p1, p1

    goto :goto_2a

    :cond_29
    move p1, p2

    .line 9931
    :goto_2a
    iget-object p4, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-static {p4, p3}, Landroidx/core/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result p3

    if-eqz p3, :cond_6f

    .line 9932
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result p4

    sub-int/2addr p3, p4

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result p4

    sub-int/2addr p3, p4

    neg-int p3, p3

    goto :goto_70

    .line 9936
    :cond_42
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_57

    .line 9937
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p1, p3

    goto :goto_58

    :cond_57
    move p1, p2

    .line 9939
    :goto_58
    iget-object p3, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-static {p3, v0}, Landroidx/core/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result p3

    if-eqz p3, :cond_6f

    .line 9940
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result p4

    sub-int/2addr p3, p4

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result p4

    sub-int/2addr p3, p4

    goto :goto_70

    :cond_6f
    move p3, p2

    :goto_70
    if-nez p1, :cond_75

    if-nez p3, :cond_75

    return p2

    .line 9947
    :cond_75
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {p0, p3, p1}, Lflyme/support/v7/widget/RecyclerView;->scrollBy(II)V

    return v0
.end method

.method performAccessibilityActionForItem(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 11

    .line 9953
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    iget-object v2, v0, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    iget-object v3, v0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->performAccessibilityActionForItem(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public performAccessibilityActionForItem(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 6

    const/4 p0, 0x0

    return p0
.end method

.method public removeAndRecycleAllViews(Lflyme/support/v7/widget/RecyclerView$Recycler;)V
    .registers 4

    .line 9693
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_1c

    .line 9694
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 9695
    invoke-static {v1}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-nez v1, :cond_19

    .line 9696
    invoke-virtual {p0, v0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleViewAt(ILflyme/support/v7/widget/RecyclerView$Recycler;)V

    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_1c
    return-void
.end method

.method removeAndRecycleScrapInt(Lflyme/support/v7/widget/RecyclerView$Recycler;)V
    .registers 8

    .line 8606
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$Recycler;->getScrapCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_6
    if-ltz v1, :cond_39

    .line 8609
    invoke-virtual {p1, v1}, Lflyme/support/v7/widget/RecyclerView$Recycler;->getScrapViewAt(I)Landroid/view/View;

    move-result-object v2

    .line 8610
    invoke-static {v2}, Lflyme/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 8611
    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-eqz v4, :cond_17

    goto :goto_36

    :cond_17
    const/4 v4, 0x0

    .line 8619
    invoke-virtual {v3, v4}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 8620
    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v5

    if-eqz v5, :cond_26

    .line 8621
    iget-object v5, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v5, v2, v4}, Lflyme/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 8623
    :cond_26
    iget-object v4, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    iget-object v4, v4, Lflyme/support/v7/widget/RecyclerView;->mItemAnimator:Lflyme/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v4, :cond_2f

    .line 8624
    invoke-virtual {v4, v3}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->endAnimation(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_2f
    const/4 v4, 0x1

    .line 8626
    invoke-virtual {v3, v4}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 8627
    invoke-virtual {p1, v2}, Lflyme/support/v7/widget/RecyclerView$Recycler;->quickRecycleScrapView(Landroid/view/View;)V

    :goto_36
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 8629
    :cond_39
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$Recycler;->clearScrap()V

    if-lez v0, :cond_43

    .line 8631
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_43
    return-void
.end method

.method public removeAndRecycleView(Landroid/view/View;Lflyme/support/v7/widget/RecyclerView$Recycler;)V
    .registers 3

    .line 8301
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->removeView(Landroid/view/View;)V

    .line 8302
    invoke-virtual {p2, p1}, Lflyme/support/v7/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    return-void
.end method

.method public removeAndRecycleViewAt(ILflyme/support/v7/widget/RecyclerView$Recycler;)V
    .registers 4

    .line 8312
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 8313
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->removeViewAt(I)V

    .line 8314
    invoke-virtual {p2, v0}, Lflyme/support/v7/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    return-void
.end method

.method public removeCallbacks(Ljava/lang/Runnable;)Z
    .registers 2

    .line 7570
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    if-eqz p0, :cond_9

    .line 7571
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public removeView(Landroid/view/View;)V
    .registers 2

    .line 8027
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/ChildHelper;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public removeViewAt(I)V
    .registers 3

    .line 8039
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 8041
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/ChildHelper;->removeViewAt(I)V

    :cond_b
    return-void
.end method

.method public requestChildRectangleOnScreen(Lflyme/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 9266
    invoke-virtual/range {v0 .. v5}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->requestChildRectangleOnScreen(Lflyme/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    move-result p0

    return p0
.end method

.method public requestChildRectangleOnScreen(Lflyme/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .registers 8

    .line 9286
    invoke-direct {p0, p1, p2, p3, p4}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildRectangleOnScreenScrollAmount(Lflyme/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)[I

    move-result-object p2

    const/4 p3, 0x0

    .line 9288
    aget v0, p2, p3

    const/4 v1, 0x1

    .line 9289
    aget p2, p2, v1

    if-eqz p5, :cond_12

    .line 9290
    invoke-direct {p0, p1, v0, p2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->isFocusedChildVisibleAfterScrolling(Lflyme/support/v7/widget/RecyclerView;II)Z

    move-result p0

    if-eqz p0, :cond_17

    :cond_12
    if-nez v0, :cond_18

    if-eqz p2, :cond_17

    goto :goto_18

    :cond_17
    return p3

    :cond_18
    :goto_18
    if-eqz p4, :cond_1e

    .line 9293
    invoke-virtual {p1, v0, p2}, Lflyme/support/v7/widget/RecyclerView;->scrollBy(II)V

    goto :goto_21

    .line 9295
    :cond_1e
    invoke-virtual {p1, v0, p2}, Lflyme/support/v7/widget/RecyclerView;->smoothScrollBy(II)V

    :goto_21
    return v1
.end method

.method public requestLayout()V
    .registers 1

    .line 7267
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    if-eqz p0, :cond_7

    .line 7268
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->requestLayout()V

    :cond_7
    return-void
.end method

.method public requestSimpleAnimationsInNextLayout()V
    .registers 2

    const/4 v0, 0x1

    .line 9830
    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    return-void
.end method

.method public scrollHorizontallyBy(ILflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)I
    .registers 4

    const/4 p0, 0x0

    return p0
.end method

.method public scrollToPosition(I)V
    .registers 2

    return-void
.end method

.method public scrollVerticallyBy(ILflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)I
    .registers 4

    const/4 p0, 0x0

    return p0
.end method

.method public setAutoMeasureEnabled(Z)V
    .registers 2

    .line 7387
    iput-boolean p1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z

    return-void
.end method

.method setExactMeasureSpecsFrom(Lflyme/support/v7/widget/RecyclerView;)V
    .registers 4

    .line 10002
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000  # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 10003
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 10001
    invoke-virtual {p0, v0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    return-void
.end method

.method setMeasureSpecs(II)V
    .registers 4

    .line 7178
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 7179
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iput p1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mWidthMode:I

    .line 7180
    iget p1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mWidthMode:I

    const/4 v0, 0x0

    if-nez p1, :cond_17

    sget-boolean p1, Lflyme/support/v7/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    if-nez p1, :cond_17

    .line 7181
    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 7184
    :cond_17
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mHeight:I

    .line 7185
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iput p1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mHeightMode:I

    .line 7186
    iget p1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mHeightMode:I

    if-nez p1, :cond_2d

    sget-boolean p1, Lflyme/support/v7/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    if-nez p1, :cond_2d

    .line 7187
    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mHeight:I

    :cond_2d
    return-void
.end method

.method public setMeasuredDimension(II)V
    .registers 3

    .line 9625
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-static {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView;->access$1000(Lflyme/support/v7/widget/RecyclerView;II)V

    return-void
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .registers 6

    .line 7256
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 7257
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v1

    add-int/2addr p1, v1

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v1

    add-int/2addr p1, v1

    .line 7258
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getMinimumWidth()I

    move-result v1

    invoke-static {p2, v0, v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result p2

    .line 7259
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getMinimumHeight()I

    move-result v0

    invoke-static {p3, p1, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result p1

    .line 7260
    invoke-virtual {p0, p2, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->setMeasuredDimension(II)V

    return-void
.end method

.method setMeasuredDimensionFromChildren(II)V
    .registers 11

    .line 7205
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_c

    .line 7207
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView;->defaultOnMeasure(II)V

    return-void

    :cond_c
    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    const v3, 0x7fffffff

    move v4, v2

    move v5, v4

    move v2, v3

    :goto_15
    if-ge v1, v0, :cond_39

    .line 7216
    invoke-virtual {p0, v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 7217
    iget-object v7, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    iget-object v7, v7, Lflyme/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 7218
    invoke-virtual {p0, v6, v7}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 7219
    iget v6, v7, Landroid/graphics/Rect;->left:I

    if-ge v6, v3, :cond_27

    move v3, v6

    .line 7222
    :cond_27
    iget v6, v7, Landroid/graphics/Rect;->right:I

    if-le v6, v4, :cond_2c

    move v4, v6

    .line 7225
    :cond_2c
    iget v6, v7, Landroid/graphics/Rect;->top:I

    if-ge v6, v2, :cond_31

    move v2, v6

    .line 7228
    :cond_31
    iget v6, v7, Landroid/graphics/Rect;->bottom:I

    if-le v6, v5, :cond_36

    move v5, v6

    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 7232
    :cond_39
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 7233
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->setMeasuredDimension(Landroid/graphics/Rect;II)V

    return-void
.end method

.method setRecyclerView(Lflyme/support/v7/widget/RecyclerView;)V
    .registers 3

    if-nez p1, :cond_d

    const/4 p1, 0x0

    .line 7163
    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    .line 7164
    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    const/4 p1, 0x0

    .line 7165
    iput p1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 7166
    iput p1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mHeight:I

    goto :goto_1f

    .line 7168
    :cond_d
    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    .line 7169
    iget-object v0, p1, Lflyme/support/v7/widget/RecyclerView;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mChildHelper:Lflyme/support/v7/widget/ChildHelper;

    .line 7170
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 7171
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iput p1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mHeight:I

    :goto_1f
    const/high16 p1, 0x40000000  # 2.0f

    .line 7173
    iput p1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mWidthMode:I

    .line 7174
    iput p1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mHeightMode:I

    return-void
.end method

.method shouldMeasureChild(Landroid/view/View;IILflyme/support/v7/widget/RecyclerView$LayoutParams;)Z
    .registers 6

    .line 8685
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_25

    iget-boolean p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    if-eqz p0, :cond_25

    .line 8687
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    iget v0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p0, p2, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 8688
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    iget p1, p4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p0, p3, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result p0

    if-nez p0, :cond_23

    goto :goto_25

    :cond_23
    const/4 p0, 0x0

    goto :goto_26

    :cond_25
    :goto_25
    const/4 p0, 0x1

    :goto_26
    return p0
.end method

.method shouldMeasureTwice()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method shouldReMeasureChild(Landroid/view/View;IILflyme/support/v7/widget/RecyclerView$LayoutParams;)Z
    .registers 6

    .line 8671
    iget-boolean p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mMeasurementCacheEnabled:Z

    if-eqz p0, :cond_1f

    .line 8672
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    iget v0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p0, p2, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result p0

    if-eqz p0, :cond_1f

    .line 8673
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    iget p1, p4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p0, p3, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->isMeasurementUpToDate(III)Z

    move-result p0

    if-nez p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    :goto_20
    return p0
.end method

.method public smoothScrollToPosition(Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$State;I)V
    .registers 4

    const-string p0, "RecyclerView"

    const-string p1, "You must override smoothScrollToPosition to support smooth scrolling"

    .line 7857
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startSmoothScroll(Lflyme/support/v7/widget/RecyclerView$SmoothScroller;)V
    .registers 3

    .line 7866
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lflyme/support/v7/widget/RecyclerView$SmoothScroller;

    if-eqz v0, :cond_11

    if-eq p1, v0, :cond_11

    .line 7867
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 7868
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lflyme/support/v7/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->stop()V

    .line 7870
    :cond_11
    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lflyme/support/v7/widget/RecyclerView$SmoothScroller;

    .line 7871
    iget-object p1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lflyme/support/v7/widget/RecyclerView$SmoothScroller;

    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v0, p0}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->start(Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method stopSmoothScroller()V
    .registers 1

    .line 9661
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Lflyme/support/v7/widget/RecyclerView$SmoothScroller;

    if-eqz p0, :cond_7

    .line 9662
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->stop()V

    :cond_7
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
