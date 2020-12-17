.class public Lflyme/support/v7/widget/StaggeredGridLayoutManager;
.super Lflyme/support/v7/widget/RecyclerView$LayoutManager;
.source "StaggeredGridLayoutManager.java"

# interfaces
.implements Lflyme/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;,
        Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;,
        Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;,
        Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;,
        Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;
    }
.end annotation


# instance fields
.field private final mAnchorInfo:Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;

.field private final mCheckForGapsRunnable:Ljava/lang/Runnable;

.field private mFullSizeSpec:I

.field private mGapStrategy:I

.field private mLaidOutInvalidFullSpan:Z

.field private mLastLayoutFromEnd:Z

.field private mLastLayoutRTL:Z

.field private final mLayoutState:Lflyme/support/v7/widget/LayoutState;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field mLazySpanLookup:Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

.field private mOrientation:I

.field private mPendingSavedState:Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;

.field mPendingScrollPosition:I

.field mPendingScrollPositionOffset:I

.field private mPrefetchDistances:[I

.field mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mRemainingSpans:Ljava/util/BitSet;

.field mReverseLayout:Z

.field mSecondaryOrientation:Lflyme/support/v7/widget/OrientationHelper;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field mShouldReverseLayout:Z

.field private mSizePerSpan:I

.field private mSmoothScrollbarEnabled:Z

.field private mSpanCount:I

.field mSpans:[Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8

    .line 235
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;-><init>()V

    const/4 v0, -0x1

    .line 113
    iput v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    const/4 v1, 0x0

    .line 136
    iput-boolean v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    .line 141
    iput-boolean v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    .line 152
    iput v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    const/high16 v0, -0x80000000

    .line 158
    iput v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 164
    new-instance v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-direct {v0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    const/4 v0, 0x2

    .line 169
    iput v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    .line 195
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    .line 200
    new-instance v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;

    invoke-direct {v0, p0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;-><init>(Lflyme/support/v7/widget/StaggeredGridLayoutManager;)V

    iput-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mAnchorInfo:Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;

    .line 208
    iput-boolean v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    const/4 v0, 0x1

    .line 214
    iput-boolean v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    .line 222
    new-instance v2, Lflyme/support/v7/widget/StaggeredGridLayoutManager$1;

    invoke-direct {v2, p0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$1;-><init>(Lflyme/support/v7/widget/StaggeredGridLayoutManager;)V

    iput-object v2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    .line 236
    invoke-static {p1, p2, p3, p4}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Lflyme/support/v7/widget/RecyclerView$LayoutManager$Properties;

    move-result-object p1

    .line 237
    iget p2, p1, Lflyme/support/v7/widget/RecyclerView$LayoutManager$Properties;->orientation:I

    invoke-virtual {p0, p2}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->setOrientation(I)V

    .line 238
    iget p2, p1, Lflyme/support/v7/widget/RecyclerView$LayoutManager$Properties;->spanCount:I

    invoke-virtual {p0, p2}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->setSpanCount(I)V

    .line 239
    iget-boolean p1, p1, Lflyme/support/v7/widget/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->setReverseLayout(Z)V

    .line 240
    iget p1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    if-eqz p1, :cond_4d

    goto :goto_4e

    :cond_4d
    move v0, v1

    :goto_4e
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->setAutoMeasureEnabled(Z)V

    .line 241
    new-instance p1, Lflyme/support/v7/widget/LayoutState;

    invoke-direct {p1}, Lflyme/support/v7/widget/LayoutState;-><init>()V

    iput-object p1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LayoutState;

    .line 242
    invoke-direct {p0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->createOrientationHelpers()V

    return-void
.end method

.method private appendViewToAllSpans(Landroid/view/View;)V
    .registers 4

    .line 1774
    iget v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-ltz v0, :cond_10

    .line 1775
    iget-object v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->appendToSpan(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_10
    return-void
.end method

.method private applyPendingSavedState(Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;)V
    .registers 6

    .line 788
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v1, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-lez v1, :cond_45

    .line 789
    iget v2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ne v1, v2, :cond_3c

    const/4 v0, 0x0

    .line 790
    :goto_b
    iget v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_45

    .line 791
    iget-object v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->clear()V

    .line 792
    iget-object v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v2, v1, Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    aget v2, v2, v0

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_32

    .line 794
    iget-boolean v1, v1, Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    if-eqz v1, :cond_2b

    .line 795
    iget-object v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v1}, Lflyme/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    goto :goto_31

    .line 797
    :cond_2b
    iget-object v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v1}, Lflyme/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    :goto_31
    add-int/2addr v2, v1

    .line 800
    :cond_32
    iget-object v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->setLine(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 803
    :cond_3c
    invoke-virtual {v0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;->invalidateSpanInfo()V

    .line 804
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v1, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    iput v1, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 807
    :cond_45
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v1, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    iput-boolean v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    .line 808
    iget-boolean v0, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->setReverseLayout(Z)V

    .line 809
    invoke-direct {p0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    .line 811
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v1, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_61

    .line 812
    iput v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 813
    iget-boolean v0, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean v0, p1, Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    goto :goto_65

    .line 815
    :cond_61
    iget-boolean v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v0, p1, Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 817
    :goto_65
    iget-object p1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, p1, Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_76

    .line 818
    iget-object p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v0, p1, Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    iput-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    .line 819
    iget-object p1, p1, Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    iput-object p1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    :cond_76
    return-void
.end method

.method private attachViewToSpans(Landroid/view/View;Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;Lflyme/support/v7/widget/LayoutState;)V
    .registers 5

    .line 1718
    iget p3, p3, Lflyme/support/v7/widget/LayoutState;->mLayoutDirection:I

    const/4 v0, 0x1

    if-ne p3, v0, :cond_13

    .line 1719
    iget-boolean p3, p2, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz p3, :cond_d

    .line 1720
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->appendViewToAllSpans(Landroid/view/View;)V

    goto :goto_20

    .line 1722
    :cond_d
    iget-object p0, p2, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->appendToSpan(Landroid/view/View;)V

    goto :goto_20

    .line 1725
    :cond_13
    iget-boolean p3, p2, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz p3, :cond_1b

    .line 1726
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->prependViewToAllSpans(Landroid/view/View;)V

    goto :goto_20

    .line 1728
    :cond_1b
    iget-object p0, p2, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->prependToSpan(Landroid/view/View;)V

    :goto_20
    return-void
.end method

.method private calculateScrollDirectionForPosition(I)I
    .registers 5

    .line 2011
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-nez v0, :cond_e

    .line 2012
    iget-boolean p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz p0, :cond_d

    move v1, v2

    :cond_d
    return v1

    .line 2014
    :cond_e
    invoke-virtual {p0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v0

    if-ge p1, v0, :cond_16

    move p1, v2

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    .line 2015
    :goto_17
    iget-boolean p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eq p1, p0, :cond_1c

    goto :goto_1d

    :cond_1c
    move v1, v2

    :goto_1d
    return v1
.end method

.method private checkSpanForGap(Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;)Z
    .registers 4

    .line 404
    iget-boolean v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 405
    invoke-virtual {p1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->getEndLine()I

    move-result v0

    iget-object p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {p0}, Lflyme/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p0

    if-ge v0, p0, :cond_45

    .line 407
    iget-object p0, p1, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 408
    invoke-virtual {p1, p0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object p0

    .line 409
    iget-boolean p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 411
    :cond_28
    invoke-virtual {p1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->getStartLine()I

    move-result v0

    iget-object p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {p0}, Lflyme/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p0

    if-le v0, p0, :cond_45

    .line 413
    iget-object p0, p1, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 414
    invoke-virtual {p1, p0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object p0

    .line 415
    iget-boolean p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_45
    return v1
.end method

.method private computeScrollExtent(Lflyme/support/v7/widget/RecyclerView$State;)I
    .registers 8

    .line 1094
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 1097
    :cond_8
    iget-object v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    iget-boolean v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    .line 1098
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    .line 1099
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v0, p1

    move-object v4, p0

    .line 1097
    invoke-static/range {v0 .. v5}, Lflyme/support/v7/widget/ScrollbarHelper;->computeScrollExtent(Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Lflyme/support/v7/widget/RecyclerView$LayoutManager;Z)I

    move-result p0

    return p0
.end method

.method private computeScrollOffset(Lflyme/support/v7/widget/RecyclerView$State;)I
    .registers 9

    .line 1074
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 1077
    :cond_8
    iget-object v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    iget-boolean v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    .line 1078
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    .line 1079
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    iget-boolean v6, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    move-object v0, p1

    move-object v4, p0

    .line 1077
    invoke-static/range {v0 .. v6}, Lflyme/support/v7/widget/ScrollbarHelper;->computeScrollOffset(Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Lflyme/support/v7/widget/RecyclerView$LayoutManager;ZZ)I

    move-result p0

    return p0
.end method

.method private computeScrollRange(Lflyme/support/v7/widget/RecyclerView$State;)I
    .registers 8

    .line 1114
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 1117
    :cond_8
    iget-object v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    iget-boolean v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    .line 1118
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    .line 1119
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v0, p1

    move-object v4, p0

    .line 1117
    invoke-static/range {v0 .. v5}, Lflyme/support/v7/widget/ScrollbarHelper;->computeScrollRange(Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Lflyme/support/v7/widget/RecyclerView$LayoutManager;Z)I

    move-result p0

    return p0
.end method

.method private convertFocusDirectionToLayoutDirection(I)I
    .registers 6

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_43

    const/4 v2, 0x2

    if-eq p1, v2, :cond_36

    const/16 v2, 0x11

    const/high16 v3, -0x80000000

    if-eq p1, v2, :cond_2f

    const/16 v2, 0x21

    if-eq p1, v2, :cond_28

    const/16 v0, 0x42

    if-eq p1, v0, :cond_21

    const/16 v0, 0x82

    if-eq p1, v0, :cond_1a

    return v3

    .line 2379
    :cond_1a
    iget p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne p0, v1, :cond_1f

    goto :goto_20

    :cond_1f
    move v1, v3

    :goto_20
    return v1

    .line 2385
    :cond_21
    iget p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez p0, :cond_26

    goto :goto_27

    :cond_26
    move v1, v3

    :goto_27
    return v1

    .line 2376
    :cond_28
    iget p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne p0, v1, :cond_2d

    goto :goto_2e

    :cond_2d
    move v0, v3

    :goto_2e
    return v0

    .line 2382
    :cond_2f
    iget p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez p0, :cond_34

    goto :goto_35

    :cond_34
    move v0, v3

    :goto_35
    return v0

    .line 2368
    :cond_36
    iget p1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne p1, v1, :cond_3b

    return v1

    .line 2370
    :cond_3b
    invoke-virtual {p0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result p0

    if-eqz p0, :cond_42

    return v0

    :cond_42
    return v1

    .line 2360
    :cond_43
    iget p1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne p1, v1, :cond_48

    return v0

    .line 2362
    :cond_48
    invoke-virtual {p0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result p0

    if-eqz p0, :cond_4f

    return v1

    :cond_4f
    return v0
.end method

.method private createFullSpanItemFromEnd(I)Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .registers 6

    .line 1700
    new-instance v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    invoke-direct {v0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    .line 1701
    iget v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v1, v1, [I

    iput-object v1, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    const/4 v1, 0x0

    .line 1702
    :goto_c
    iget v2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_21

    .line 1703
    iget-object v2, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    iget-object v3, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v3

    sub-int v3, p1, v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_21
    return-object v0
.end method

.method private createFullSpanItemFromStart(I)Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .registers 6

    .line 1709
    new-instance v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    invoke-direct {v0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    .line 1710
    iget v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array v1, v1, [I

    iput-object v1, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    const/4 v1, 0x0

    .line 1711
    :goto_c
    iget v2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_20

    .line 1712
    iget-object v2, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapPerSpan:[I

    iget-object v3, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v3

    sub-int/2addr v3, p1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_20
    return-object v0
.end method

.method private createOrientationHelpers()V
    .registers 2

    .line 261
    iget v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    invoke-static {p0, v0}, Lflyme/support/v7/widget/OrientationHelper;->createOrientationHelper(Lflyme/support/v7/widget/RecyclerView$LayoutManager;I)Lflyme/support/v7/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    .line 262
    iget v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    rsub-int/lit8 v0, v0, 0x1

    .line 263
    invoke-static {p0, v0}, Lflyme/support/v7/widget/OrientationHelper;->createOrientationHelper(Lflyme/support/v7/widget/RecyclerView$LayoutManager;I)Lflyme/support/v7/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    return-void
.end method

.method private fill(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/LayoutState;Lflyme/support/v7/widget/RecyclerView$State;)I
    .registers 20

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    .line 1543
    iget-object v0, v6, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    iget v1, v6, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v1, v10}, Ljava/util/BitSet;->set(IIZ)V

    .line 1548
    iget-object v0, v6, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LayoutState;

    iget-boolean v0, v0, Lflyme/support/v7/widget/LayoutState;->mInfinite:Z

    if-eqz v0, :cond_20

    .line 1549
    iget v0, v8, Lflyme/support/v7/widget/LayoutState;->mLayoutDirection:I

    if-ne v0, v10, :cond_1d

    const v0, 0x7fffffff

    goto :goto_2f

    :cond_1d
    const/high16 v0, -0x80000000

    goto :goto_2f

    .line 1555
    :cond_20
    iget v0, v8, Lflyme/support/v7/widget/LayoutState;->mLayoutDirection:I

    if-ne v0, v10, :cond_2a

    .line 1556
    iget v0, v8, Lflyme/support/v7/widget/LayoutState;->mEndLine:I

    iget v1, v8, Lflyme/support/v7/widget/LayoutState;->mAvailable:I

    add-int/2addr v0, v1

    goto :goto_2f

    .line 1558
    :cond_2a
    iget v0, v8, Lflyme/support/v7/widget/LayoutState;->mStartLine:I

    iget v1, v8, Lflyme/support/v7/widget/LayoutState;->mAvailable:I

    sub-int/2addr v0, v1

    :goto_2f
    move v11, v0

    .line 1562
    iget v0, v8, Lflyme/support/v7/widget/LayoutState;->mLayoutDirection:I

    invoke-direct {v6, v0, v11}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->updateAllRemainingSpans(II)V

    .line 1569
    iget-boolean v0, v6, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_40

    iget-object v0, v6, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    .line 1570
    invoke-virtual {v0}, Lflyme/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    goto :goto_46

    :cond_40
    iget-object v0, v6, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    .line 1571
    invoke-virtual {v0}, Lflyme/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    :goto_46
    move v12, v0

    move v0, v9

    .line 1573
    :goto_48
    invoke-virtual/range {p2 .. p3}, Lflyme/support/v7/widget/LayoutState;->hasMore(Lflyme/support/v7/widget/RecyclerView$State;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_1c7

    iget-object v1, v6, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LayoutState;

    iget-boolean v1, v1, Lflyme/support/v7/widget/LayoutState;->mInfinite:Z

    if-nez v1, :cond_5d

    iget-object v1, v6, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    .line 1574
    invoke-virtual {v1}, Ljava/util/BitSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1c7

    .line 1575
    :cond_5d
    invoke-virtual {v8, v7}, Lflyme/support/v7/widget/LayoutState;->next(Lflyme/support/v7/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v13

    .line 1576
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 1577
    invoke-virtual {v14}, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v0

    .line 1578
    iget-object v1, v6, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v1, v0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->getSpan(I)I

    move-result v1

    if-ne v1, v2, :cond_76

    move v3, v10

    goto :goto_77

    :cond_76
    move v3, v9

    :goto_77
    if-eqz v3, :cond_8c

    .line 1582
    iget-boolean v1, v14, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v1, :cond_82

    iget-object v1, v6, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v9

    goto :goto_86

    :cond_82
    invoke-direct {v6, v8}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->getNextSpan(Lflyme/support/v7/widget/LayoutState;)Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    move-result-object v1

    .line 1583
    :goto_86
    iget-object v4, v6, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v4, v0, v1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->setSpan(ILflyme/support/v7/widget/StaggeredGridLayoutManager$Span;)V

    goto :goto_90

    .line 1591
    :cond_8c
    iget-object v4, v6, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v4, v1

    :goto_90
    move-object v15, v1

    .line 1594
    iput-object v15, v14, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    .line 1595
    iget v1, v8, Lflyme/support/v7/widget/LayoutState;->mLayoutDirection:I

    if-ne v1, v10, :cond_9b

    .line 1596
    invoke-virtual {v6, v13}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;)V

    goto :goto_9e

    .line 1598
    :cond_9b
    invoke-virtual {v6, v13, v9}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    .line 1600
    :goto_9e
    invoke-direct {v6, v13, v14, v9}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;Z)V

    .line 1604
    iget v1, v8, Lflyme/support/v7/widget/LayoutState;->mLayoutDirection:I

    if-ne v1, v10, :cond_cf

    .line 1605
    iget-boolean v1, v14, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v1, :cond_ae

    invoke-direct {v6, v12}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->getMaxEnd(I)I

    move-result v1

    goto :goto_b2

    .line 1606
    :cond_ae
    invoke-virtual {v15, v12}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v1

    .line 1607
    :goto_b2
    iget-object v4, v6, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v4, v13}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v4

    add-int/2addr v4, v1

    if-eqz v3, :cond_cc

    .line 1608
    iget-boolean v5, v14, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v5, :cond_cc

    .line 1610
    invoke-direct {v6, v1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->createFullSpanItemFromEnd(I)Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v5

    .line 1611
    iput v2, v5, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    .line 1612
    iput v0, v5, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    .line 1613
    iget-object v9, v6, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v9, v5}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->addFullSpanItem(Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    :cond_cc
    move v5, v4

    move v4, v1

    goto :goto_f8

    .line 1616
    :cond_cf
    iget-boolean v1, v14, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v1, :cond_d8

    invoke-direct {v6, v12}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->getMinStart(I)I

    move-result v1

    goto :goto_dc

    .line 1617
    :cond_d8
    invoke-virtual {v15, v12}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v1

    .line 1618
    :goto_dc
    iget-object v4, v6, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v4, v13}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v4

    sub-int v4, v1, v4

    if-eqz v3, :cond_f7

    .line 1619
    iget-boolean v5, v14, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v5, :cond_f7

    .line 1621
    invoke-direct {v6, v1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->createFullSpanItemFromStart(I)Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v5

    .line 1622
    iput v10, v5, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    .line 1623
    iput v0, v5, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    .line 1624
    iget-object v9, v6, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v9, v5}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->addFullSpanItem(Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    :cond_f7
    move v5, v1

    .line 1629
    :goto_f8
    iget-boolean v1, v14, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v1, :cond_121

    iget v1, v8, Lflyme/support/v7/widget/LayoutState;->mItemDirection:I

    if-ne v1, v2, :cond_121

    if-eqz v3, :cond_105

    .line 1631
    iput-boolean v10, v6, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    goto :goto_121

    .line 1634
    :cond_105
    iget v1, v8, Lflyme/support/v7/widget/LayoutState;->mLayoutDirection:I

    if-ne v1, v10, :cond_10e

    .line 1635
    invoke-virtual/range {p0 .. p0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->areAllEndsEqual()Z

    move-result v1

    goto :goto_112

    .line 1637
    :cond_10e
    invoke-virtual/range {p0 .. p0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->areAllStartsEqual()Z

    move-result v1

    :goto_112
    xor-int/2addr v1, v10

    if-eqz v1, :cond_121

    .line 1640
    iget-object v1, v6, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 1641
    invoke-virtual {v1, v0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFullSpanItem(I)Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    if-eqz v0, :cond_11f

    .line 1643
    iput-boolean v10, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mHasUnwantedGapAfter:Z

    .line 1645
    :cond_11f
    iput-boolean v10, v6, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 1649
    :cond_121
    :goto_121
    invoke-direct {v6, v13, v14, v8}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->attachViewToSpans(Landroid/view/View;Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;Lflyme/support/v7/widget/LayoutState;)V

    .line 1652
    invoke-virtual/range {p0 .. p0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_154

    iget v0, v6, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v0, v10, :cond_154

    .line 1653
    iget-boolean v0, v14, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_139

    iget-object v0, v6, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    goto :goto_149

    :cond_139
    iget-object v0, v6, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    .line 1654
    invoke-virtual {v0}, Lflyme/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    iget v1, v6, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    sub-int/2addr v1, v10

    iget v2, v15, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    sub-int/2addr v1, v2

    iget v2, v6, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 1656
    :goto_149
    iget-object v1, v6, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v1, v13}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    sub-int v1, v0, v1

    move v9, v0

    move v3, v1

    goto :goto_174

    .line 1658
    :cond_154
    iget-boolean v0, v14, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_15f

    iget-object v0, v6, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    goto :goto_16b

    :cond_15f
    iget v0, v15, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    iget v1, v6, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    mul-int/2addr v0, v1

    iget-object v1, v6, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    .line 1660
    invoke-virtual {v1}, Lflyme/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    add-int/2addr v0, v1

    .line 1661
    :goto_16b
    iget-object v1, v6, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v1, v13}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    move v3, v0

    move v9, v1

    .line 1664
    :goto_174
    iget v0, v6, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v0, v10, :cond_182

    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v3

    move v3, v4

    move v4, v9

    .line 1665
    invoke-virtual/range {v0 .. v5}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    goto :goto_18b

    :cond_182
    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v4

    move v4, v5

    move v5, v9

    .line 1667
    invoke-virtual/range {v0 .. v5}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 1670
    :goto_18b
    iget-boolean v0, v14, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_197

    .line 1671
    iget-object v0, v6, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LayoutState;

    iget v0, v0, Lflyme/support/v7/widget/LayoutState;->mLayoutDirection:I

    invoke-direct {v6, v0, v11}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->updateAllRemainingSpans(II)V

    goto :goto_19e

    .line 1673
    :cond_197
    iget-object v0, v6, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LayoutState;

    iget v0, v0, Lflyme/support/v7/widget/LayoutState;->mLayoutDirection:I

    invoke-direct {v6, v15, v0, v11}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->updateRemainingSpans(Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;II)V

    .line 1675
    :goto_19e
    iget-object v0, v6, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LayoutState;

    invoke-direct {v6, v7, v0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->recycle(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/LayoutState;)V

    .line 1676
    iget-object v0, v6, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LayoutState;

    iget-boolean v0, v0, Lflyme/support/v7/widget/LayoutState;->mStopInFocusable:Z

    if-eqz v0, :cond_1c2

    invoke-virtual {v13}, Landroid/view/View;->hasFocusable()Z

    move-result v0

    if-eqz v0, :cond_1c2

    .line 1677
    iget-boolean v0, v14, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_1b9

    .line 1678
    iget-object v0, v6, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    goto :goto_1c2

    .line 1680
    :cond_1b9
    iget-object v0, v6, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    iget v1, v15, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_1c3

    :cond_1c2
    :goto_1c2
    const/4 v3, 0x0

    :goto_1c3
    move v9, v3

    move v0, v10

    goto/16 :goto_48

    :cond_1c7
    move v3, v9

    if-nez v0, :cond_1cf

    .line 1686
    iget-object v0, v6, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LayoutState;

    invoke-direct {v6, v7, v0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->recycle(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/LayoutState;)V

    .line 1689
    :cond_1cf
    iget-object v0, v6, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LayoutState;

    iget v0, v0, Lflyme/support/v7/widget/LayoutState;->mLayoutDirection:I

    if-ne v0, v2, :cond_1e7

    .line 1690
    iget-object v0, v6, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    invoke-direct {v6, v0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->getMinStart(I)I

    move-result v0

    .line 1691
    iget-object v1, v6, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v1}, Lflyme/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    sub-int/2addr v1, v0

    goto :goto_1f9

    .line 1693
    :cond_1e7
    iget-object v0, v6, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    invoke-direct {v6, v0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->getMaxEnd(I)I

    move-result v0

    .line 1694
    iget-object v1, v6, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v1}, Lflyme/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    sub-int v1, v0, v1

    :goto_1f9
    if-lez v1, :cond_202

    .line 1696
    iget v0, v8, Lflyme/support/v7/widget/LayoutState;->mAvailable:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    move v3, v9

    :cond_202
    return v3
.end method

.method private findFirstReferenceChildPosition(I)I
    .registers 6

    .line 2184
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_18

    .line 2186
    invoke-virtual {p0, v2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2187
    invoke-virtual {p0, v3}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    if-ltz v3, :cond_15

    if-ge v3, p1, :cond_15

    return v3

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_18
    return v1
.end method

.method private findLastReferenceChildPosition(I)I
    .registers 4

    .line 2201
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_18

    .line 2202
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2203
    invoke-virtual {p0, v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    if-ltz v1, :cond_15

    if-ge v1, p1, :cond_15

    return v1

    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method private fixEndGap(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Z)V
    .registers 6

    const/high16 v0, -0x80000000

    .line 1379
    invoke-direct {p0, v0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->getMaxEnd(I)I

    move-result v1

    if-ne v1, v0, :cond_9

    return-void

    .line 1383
    :cond_9
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    sub-int/2addr v0, v1

    if-lez v0, :cond_22

    neg-int v1, v0

    .line 1386
    invoke-virtual {p0, v1, p1, p2}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->scrollBy(ILflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result p1

    neg-int p1, p1

    sub-int/2addr v0, p1

    if-eqz p3, :cond_22

    if-lez v0, :cond_22

    .line 1392
    iget-object p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/OrientationHelper;->offsetChildren(I)V

    :cond_22
    return-void
.end method

.method private fixStartGap(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Z)V
    .registers 6

    const v0, 0x7fffffff

    .line 1398
    invoke-direct {p0, v0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->getMinStart(I)I

    move-result v1

    if-ne v1, v0, :cond_a

    return-void

    .line 1402
    :cond_a
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    sub-int/2addr v1, v0

    if-lez v1, :cond_22

    .line 1405
    invoke-virtual {p0, v1, p1, p2}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->scrollBy(ILflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result p1

    sub-int/2addr v1, p1

    if-eqz p3, :cond_22

    if-lez v1, :cond_22

    .line 1411
    iget-object p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    neg-int p1, v1

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/OrientationHelper;->offsetChildren(I)V

    :cond_22
    return-void
.end method

.method private getMaxEnd(I)I
    .registers 5

    .line 1853
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v0

    const/4 v1, 0x1

    .line 1854
    :goto_a
    iget v2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_1c

    .line 1855
    iget-object v2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v2

    if-le v2, v0, :cond_19

    move v0, v2

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1c
    return v0
.end method

.method private getMaxStart(I)I
    .registers 5

    .line 1811
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v0

    const/4 v1, 0x1

    .line 1812
    :goto_a
    iget v2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_1c

    .line 1813
    iget-object v2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v2

    if-le v2, v0, :cond_19

    move v0, v2

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1c
    return v0
.end method

.method private getMinEnd(I)I
    .registers 5

    .line 1864
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v0

    const/4 v1, 0x1

    .line 1865
    :goto_a
    iget v2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_1c

    .line 1866
    iget-object v2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v2

    if-ge v2, v0, :cond_19

    move v0, v2

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1c
    return v0
.end method

.method private getMinStart(I)I
    .registers 5

    .line 1822
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v0

    const/4 v1, 0x1

    .line 1823
    :goto_a
    iget v2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v2, :cond_1c

    .line 1824
    iget-object v2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v2

    if-ge v2, v0, :cond_19

    move v0, v2

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1c
    return v0
.end method

.method private getNextSpan(Lflyme/support/v7/widget/LayoutState;)Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;
    .registers 9

    .line 1948
    iget v0, p1, Lflyme/support/v7/widget/LayoutState;->mLayoutDirection:I

    invoke-direct {p0, v0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->preferLastSpan(I)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_f

    .line 1951
    iget v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    sub-int/2addr v0, v2

    move v3, v1

    goto :goto_13

    :cond_f
    const/4 v0, 0x0

    .line 1956
    iget v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    move v3, v2

    .line 1959
    :goto_13
    iget p1, p1, Lflyme/support/v7/widget/LayoutState;->mLayoutDirection:I

    const/4 v4, 0x0

    if-ne p1, v2, :cond_32

    const p1, 0x7fffffff

    .line 1962
    iget-object v2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v2}, Lflyme/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    :goto_21
    if-eq v0, v1, :cond_31

    .line 1964
    iget-object v5, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v5, v5, v0

    .line 1965
    invoke-virtual {v5, v2}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v6

    if-ge v6, p1, :cond_2f

    move-object v4, v5

    move p1, v6

    :cond_2f
    add-int/2addr v0, v3

    goto :goto_21

    :cond_31
    return-object v4

    :cond_32
    const/high16 p1, -0x80000000

    .line 1975
    iget-object v2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v2}, Lflyme/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    :goto_3a
    if-eq v0, v1, :cond_4a

    .line 1977
    iget-object v5, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v5, v5, v0

    .line 1978
    invoke-virtual {v5, v2}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v6

    if-le v6, p1, :cond_48

    move-object v4, v5

    move p1, v6

    :cond_48
    add-int/2addr v0, v3

    goto :goto_3a

    :cond_4a
    return-object v4
.end method

.method private handleUpdate(III)V
    .registers 10

    .line 1499
    iget-boolean v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v0

    goto :goto_d

    :cond_9
    invoke-virtual {p0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v0

    :goto_d
    const/16 v1, 0x8

    if-ne p3, v1, :cond_1b

    if-ge p1, p2, :cond_16

    add-int/lit8 v2, p2, 0x1

    goto :goto_1d

    :cond_16
    add-int/lit8 v2, p1, 0x1

    move v3, v2

    move v2, p2

    goto :goto_1f

    :cond_1b
    add-int v2, p1, p2

    :goto_1d
    move v3, v2

    move v2, p1

    .line 1516
    :goto_1f
    iget-object v4, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v4, v2}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->invalidateAfter(I)I

    const/4 v4, 0x1

    if-eq p3, v4, :cond_3e

    const/4 v5, 0x2

    if-eq p3, v5, :cond_38

    if-eq p3, v1, :cond_2d

    goto :goto_43

    .line 1526
    :cond_2d
    iget-object p3, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {p3, p1, v4}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetForRemoval(II)V

    .line 1527
    iget-object p1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {p1, p2, v4}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetForAddition(II)V

    goto :goto_43

    .line 1522
    :cond_38
    iget-object p3, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {p3, p1, p2}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetForRemoval(II)V

    goto :goto_43

    .line 1519
    :cond_3e
    iget-object p3, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {p3, p1, p2}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->offsetForAddition(II)V

    :goto_43
    if-gt v3, v0, :cond_46

    return-void

    .line 1535
    :cond_46
    iget-boolean p1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz p1, :cond_4f

    invoke-virtual {p0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result p1

    goto :goto_53

    :cond_4f
    invoke-virtual {p0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result p1

    :goto_53
    if-gt v2, p1, :cond_58

    .line 1537
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->requestLayout()V

    :cond_58
    return-void
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V
    .registers 9

    .line 1157
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1158
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 1159
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v2

    invoke-direct {p0, p2, v1, v3}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->updateSpecWithExtra(III)I

    move-result p2

    .line 1161
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v2

    invoke-direct {p0, p3, v1, v3}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->updateSpecWithExtra(III)I

    move-result p3

    if-eqz p4, :cond_32

    .line 1164
    invoke-virtual {p0, p1, p2, p3, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->shouldReMeasureChild(Landroid/view/View;IILflyme/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result p0

    goto :goto_36

    .line 1165
    :cond_32
    invoke-virtual {p0, p1, p2, p3, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->shouldMeasureChild(Landroid/view/View;IILflyme/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result p0

    :goto_36
    if-eqz p0, :cond_3b

    .line 1167
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    :cond_3b
    return-void
.end method

.method private measureChildWithDecorationsAndMargin(Landroid/view/View;Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;Z)V
    .registers 9

    .line 1130
    iget-boolean v0, p2, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_32

    .line 1131
    iget v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v0, v1, :cond_1e

    .line 1132
    iget v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mFullSizeSpec:I

    .line 1133
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getHeightMode()I

    move-result v4

    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v3, v4, v2, p2, v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result p2

    .line 1132
    invoke-direct {p0, p1, v0, p2, p3}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_71

    .line 1137
    :cond_1e
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getWidthMode()I

    move-result v3

    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v0, v3, v2, p2, v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result p2

    iget v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mFullSizeSpec:I

    .line 1136
    invoke-direct {p0, p1, p2, v0, p3}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_71

    .line 1141
    :cond_32
    iget v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v0, v1, :cond_54

    .line 1142
    iget v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    .line 1143
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getWidthMode()I

    move-result v3

    iget v4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v0, v3, v2, v4, v2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    .line 1144
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getHeightMode()I

    move-result v4

    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v3, v4, v2, p2, v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result p2

    .line 1142
    invoke-direct {p0, p1, v0, p2, p3}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    goto :goto_71

    .line 1148
    :cond_54
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getWidthMode()I

    move-result v3

    iget v4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v0, v3, v2, v4, v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result v0

    iget v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    .line 1149
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getHeightMode()I

    move-result v3

    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v1, v3, v2, p2, v2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(IIIIZ)I

    move-result p2

    .line 1147
    invoke-direct {p0, p1, v0, p2, p3}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->measureChildWithDecorationsAndMargin(Landroid/view/View;IIZ)V

    :goto_71
    return-void
.end method

.method private onLayoutChildren(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Z)V
    .registers 12

    .line 613
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mAnchorInfo:Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;

    .line 614
    iget-object v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    const/4 v2, -0x1

    if-nez v1, :cond_b

    iget v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    if-eq v1, v2, :cond_18

    .line 615
    :cond_b
    invoke-virtual {p2}, Lflyme/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    if-nez v1, :cond_18

    .line 616
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Lflyme/support/v7/widget/RecyclerView$Recycler;)V

    .line 617
    invoke-virtual {v0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    return-void

    .line 622
    :cond_18
    iget-boolean v1, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mValid:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_29

    iget v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    if-ne v1, v2, :cond_29

    iget-object v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v1, :cond_27

    goto :goto_29

    :cond_27
    move v1, v3

    goto :goto_2a

    :cond_29
    :goto_29
    move v1, v4

    :goto_2a
    if-eqz v1, :cond_43

    .line 625
    invoke-virtual {v0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    .line 626
    iget-object v5, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v5, :cond_37

    .line 627
    invoke-direct {p0, v0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->applyPendingSavedState(Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;)V

    goto :goto_3e

    .line 629
    :cond_37
    invoke-direct {p0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    .line 630
    iget-boolean v5, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean v5, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 632
    :goto_3e
    invoke-virtual {p0, p2, v0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->updateAnchorInfoForLayout(Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;)V

    .line 633
    iput-boolean v4, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mValid:Z

    .line 635
    :cond_43
    iget-object v5, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v5, :cond_60

    iget v5, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    if-ne v5, v2, :cond_60

    .line 636
    iget-boolean v5, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    iget-boolean v6, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-ne v5, v6, :cond_59

    .line 637
    invoke-virtual {p0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v5

    iget-boolean v6, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    if-eq v5, v6, :cond_60

    .line 638
    :cond_59
    iget-object v5, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v5}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    .line 639
    iput-boolean v4, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    .line 643
    :cond_60
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v5

    if-lez v5, :cond_c9

    iget-object v5, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v5, :cond_6e

    iget v5, v5, Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-ge v5, v4, :cond_c9

    .line 645
    :cond_6e
    iget-boolean v5, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    if-eqz v5, :cond_8e

    move v1, v3

    .line 646
    :goto_73
    iget v5, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v5, :cond_c9

    .line 648
    iget-object v5, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->clear()V

    .line 649
    iget v5, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    const/high16 v6, -0x80000000

    if-eq v5, v6, :cond_8b

    .line 650
    iget-object v6, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v6, v6, v1

    invoke-virtual {v6, v5}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->setLine(I)V

    :cond_8b
    add-int/lit8 v1, v1, 0x1

    goto :goto_73

    :cond_8e
    if-nez v1, :cond_af

    .line 654
    iget-object v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mAnchorInfo:Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;

    iget-object v1, v1, Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mSpanReferenceLines:[I

    if-nez v1, :cond_97

    goto :goto_af

    :cond_97
    move v1, v3

    .line 661
    :goto_98
    iget v5, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v5, :cond_c9

    .line 662
    iget-object v5, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v5, v5, v1

    .line 663
    invoke-virtual {v5}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->clear()V

    .line 664
    iget-object v6, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mAnchorInfo:Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;

    iget-object v6, v6, Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mSpanReferenceLines:[I

    aget v6, v6, v1

    invoke-virtual {v5, v6}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->setLine(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_98

    :cond_af
    :goto_af
    move v1, v3

    .line 655
    :goto_b0
    iget v5, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v1, v5, :cond_c2

    .line 656
    iget-object v5, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v5, v5, v1

    iget-boolean v6, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iget v7, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    invoke-virtual {v5, v6, v7}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->cacheReferenceLineAndClear(ZI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b0

    .line 659
    :cond_c2
    iget-object v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mAnchorInfo:Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;

    iget-object v5, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    invoke-virtual {v1, v5}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->saveSpanReferenceLines([Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;)V

    .line 669
    :cond_c9
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->detachAndScrapAttachedViews(Lflyme/support/v7/widget/RecyclerView$Recycler;)V

    .line 670
    iget-object v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LayoutState;

    iput-boolean v3, v1, Lflyme/support/v7/widget/LayoutState;->mRecycle:Z

    .line 671
    iput-boolean v3, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 672
    iget-object v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v1}, Lflyme/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v1

    invoke-virtual {p0, v1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->updateMeasureSpecs(I)V

    .line 673
    iget v1, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, v1, p2}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->updateLayoutState(ILflyme/support/v7/widget/RecyclerView$State;)V

    .line 674
    iget-boolean v1, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v1, :cond_fc

    .line 676
    invoke-direct {p0, v2}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 677
    iget-object v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LayoutState;

    invoke-direct {p0, p1, v1, p2}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->fill(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/LayoutState;Lflyme/support/v7/widget/RecyclerView$State;)I

    .line 679
    invoke-direct {p0, v4}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 680
    iget-object v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LayoutState;

    iget v2, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    iget v5, v1, Lflyme/support/v7/widget/LayoutState;->mItemDirection:I

    add-int/2addr v2, v5

    iput v2, v1, Lflyme/support/v7/widget/LayoutState;->mCurrentPosition:I

    .line 681
    invoke-direct {p0, p1, v1, p2}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->fill(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/LayoutState;Lflyme/support/v7/widget/RecyclerView$State;)I

    goto :goto_113

    .line 684
    :cond_fc
    invoke-direct {p0, v4}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 685
    iget-object v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LayoutState;

    invoke-direct {p0, p1, v1, p2}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->fill(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/LayoutState;Lflyme/support/v7/widget/RecyclerView$State;)I

    .line 687
    invoke-direct {p0, v2}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 688
    iget-object v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LayoutState;

    iget v2, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    iget v5, v1, Lflyme/support/v7/widget/LayoutState;->mItemDirection:I

    add-int/2addr v2, v5

    iput v2, v1, Lflyme/support/v7/widget/LayoutState;->mCurrentPosition:I

    .line 689
    invoke-direct {p0, p1, v1, p2}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->fill(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/LayoutState;Lflyme/support/v7/widget/RecyclerView$State;)I

    .line 692
    :goto_113
    invoke-direct {p0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->repositionToWrapContentIfNecessary()V

    .line 694
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_12d

    .line 695
    iget-boolean v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v1, :cond_127

    .line 696
    invoke-direct {p0, p1, p2, v4}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->fixEndGap(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Z)V

    .line 697
    invoke-direct {p0, p1, p2, v3}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->fixStartGap(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Z)V

    goto :goto_12d

    .line 699
    :cond_127
    invoke-direct {p0, p1, p2, v4}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->fixStartGap(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Z)V

    .line 700
    invoke-direct {p0, p1, p2, v3}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->fixEndGap(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Z)V

    :cond_12d
    :goto_12d
    if-eqz p3, :cond_15a

    .line 704
    invoke-virtual {p2}, Lflyme/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result p3

    if-nez p3, :cond_15a

    .line 705
    iget p3, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    if-eqz p3, :cond_14b

    .line 706
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p3

    if-lez p3, :cond_14b

    iget-boolean p3, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    if-nez p3, :cond_149

    .line 707
    invoke-virtual {p0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->hasGapsToFix()Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_14b

    :cond_149
    move p3, v4

    goto :goto_14c

    :cond_14b
    move p3, v3

    :goto_14c
    if-eqz p3, :cond_15a

    .line 709
    iget-object p3, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p3}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 710
    invoke-virtual {p0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->checkForGaps()Z

    move-result p3

    if-eqz p3, :cond_15a

    goto :goto_15b

    :cond_15a
    move v4, v3

    .line 715
    :goto_15b
    invoke-virtual {p2}, Lflyme/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result p3

    if-eqz p3, :cond_166

    .line 716
    iget-object p3, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mAnchorInfo:Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;

    invoke-virtual {p3}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    .line 718
    :cond_166
    iget-boolean p3, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    iput-boolean p3, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    .line 719
    invoke-virtual {p0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result p3

    iput-boolean p3, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    if-eqz v4, :cond_17a

    .line 721
    iget-object p3, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mAnchorInfo:Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;

    invoke-virtual {p3}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    .line 722
    invoke-direct {p0, p1, p2, v3}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->onLayoutChildren(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Z)V

    :cond_17a
    return-void
.end method

.method private preferLastSpan(I)Z
    .registers 6

    .line 1938
    iget v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_13

    if-ne p1, v1, :cond_b

    move p1, v2

    goto :goto_c

    :cond_b
    move p1, v3

    .line 1939
    :goto_c
    iget-boolean p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eq p1, p0, :cond_11

    goto :goto_12

    :cond_11
    move v2, v3

    :goto_12
    return v2

    :cond_13
    if-ne p1, v1, :cond_17

    move p1, v2

    goto :goto_18

    :cond_17
    move p1, v3

    .line 1941
    :goto_18
    iget-boolean v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-ne p1, v0, :cond_1e

    move p1, v2

    goto :goto_1f

    :cond_1e
    move p1, v3

    :goto_1f
    invoke-virtual {p0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result p0

    if-ne p1, p0, :cond_26

    goto :goto_27

    :cond_26
    move v2, v3

    :goto_27
    return v2
.end method

.method private prependViewToAllSpans(Landroid/view/View;)V
    .registers 4

    .line 1781
    iget v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-ltz v0, :cond_10

    .line 1782
    iget-object v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->prependToSpan(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_10
    return-void
.end method

.method private recycle(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/LayoutState;)V
    .registers 5

    .line 1734
    iget-boolean v0, p2, Lflyme/support/v7/widget/LayoutState;->mRecycle:Z

    if-eqz v0, :cond_56

    iget-boolean v0, p2, Lflyme/support/v7/widget/LayoutState;->mInfinite:Z

    if-eqz v0, :cond_9

    goto :goto_56

    .line 1737
    :cond_9
    iget v0, p2, Lflyme/support/v7/widget/LayoutState;->mAvailable:I

    const/4 v1, -0x1

    if-nez v0, :cond_1e

    .line 1739
    iget v0, p2, Lflyme/support/v7/widget/LayoutState;->mLayoutDirection:I

    if-ne v0, v1, :cond_18

    .line 1740
    iget p2, p2, Lflyme/support/v7/widget/LayoutState;->mEndLine:I

    invoke-direct {p0, p1, p2}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->recycleFromEnd(Lflyme/support/v7/widget/RecyclerView$Recycler;I)V

    goto :goto_56

    .line 1742
    :cond_18
    iget p2, p2, Lflyme/support/v7/widget/LayoutState;->mStartLine:I

    invoke-direct {p0, p1, p2}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->recycleFromStart(Lflyme/support/v7/widget/RecyclerView$Recycler;I)V

    goto :goto_56

    .line 1747
    :cond_1e
    iget v0, p2, Lflyme/support/v7/widget/LayoutState;->mLayoutDirection:I

    if-ne v0, v1, :cond_3c

    .line 1749
    iget v0, p2, Lflyme/support/v7/widget/LayoutState;->mStartLine:I

    invoke-direct {p0, v0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->getMaxStart(I)I

    move-result v1

    sub-int/2addr v0, v1

    if-gez v0, :cond_2e

    .line 1752
    iget p2, p2, Lflyme/support/v7/widget/LayoutState;->mEndLine:I

    goto :goto_38

    .line 1754
    :cond_2e
    iget v1, p2, Lflyme/support/v7/widget/LayoutState;->mEndLine:I

    iget p2, p2, Lflyme/support/v7/widget/LayoutState;->mAvailable:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int p2, v1, p2

    .line 1756
    :goto_38
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->recycleFromEnd(Lflyme/support/v7/widget/RecyclerView$Recycler;I)V

    goto :goto_56

    .line 1759
    :cond_3c
    iget v0, p2, Lflyme/support/v7/widget/LayoutState;->mEndLine:I

    invoke-direct {p0, v0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->getMinEnd(I)I

    move-result v0

    iget v1, p2, Lflyme/support/v7/widget/LayoutState;->mEndLine:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_4a

    .line 1762
    iget p2, p2, Lflyme/support/v7/widget/LayoutState;->mStartLine:I

    goto :goto_53

    .line 1764
    :cond_4a
    iget v1, p2, Lflyme/support/v7/widget/LayoutState;->mStartLine:I

    iget p2, p2, Lflyme/support/v7/widget/LayoutState;->mAvailable:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    add-int/2addr p2, v1

    .line 1766
    :goto_53
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->recycleFromStart(Lflyme/support/v7/widget/RecyclerView$Recycler;I)V

    :cond_56
    :goto_56
    return-void
.end method

.method private recycleFromEnd(Lflyme/support/v7/widget/RecyclerView$Recycler;I)V
    .registers 9

    .line 1904
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_60

    .line 1907
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1908
    iget-object v3, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v3, v2}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    if-lt v3, p2, :cond_60

    iget-object v3, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    .line 1909
    invoke-virtual {v3, v2}, Lflyme/support/v7/widget/OrientationHelper;->getTransformedStartWithDecoration(Landroid/view/View;)I

    move-result v3

    if-lt v3, p2, :cond_60

    .line 1910
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 1912
    iget-boolean v4, v3, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v4, :cond_4a

    const/4 v3, 0x0

    move v4, v3

    .line 1913
    :goto_28
    iget v5, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v4, v5, :cond_3c

    .line 1914
    iget-object v5, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v5, v5, v4

    iget-object v5, v5, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v1, :cond_39

    return-void

    :cond_39
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 1918
    :cond_3c
    :goto_3c
    iget v4, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v3, v4, :cond_5a

    .line 1919
    iget-object v4, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->popEnd()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    .line 1922
    :cond_4a
    iget-object v4, v3, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    iget-object v4, v4, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v1, :cond_55

    return-void

    .line 1925
    :cond_55
    iget-object v3, v3, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    invoke-virtual {v3}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->popEnd()V

    .line 1927
    :cond_5a
    invoke-virtual {p0, v2, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleView(Landroid/view/View;Lflyme/support/v7/widget/RecyclerView$Recycler;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_60
    return-void
.end method

.method private recycleFromStart(Lflyme/support/v7/widget/RecyclerView$Recycler;I)V
    .registers 8

    .line 1875
    :goto_0
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_5d

    const/4 v0, 0x0

    .line 1876
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1877
    iget-object v2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v2, v1}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v2

    if-gt v2, p2, :cond_5d

    iget-object v2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    .line 1878
    invoke-virtual {v2, v1}, Lflyme/support/v7/widget/OrientationHelper;->getTransformedEndWithDecoration(Landroid/view/View;)I

    move-result v2

    if-gt v2, p2, :cond_5d

    .line 1879
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 1881
    iget-boolean v3, v2, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_49

    move v2, v0

    .line 1882
    :goto_27
    iget v3, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v2, v3, :cond_3b

    .line 1883
    iget-object v3, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v3, v3, v2

    iget-object v3, v3, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v4, :cond_38

    return-void

    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 1887
    :cond_3b
    :goto_3b
    iget v2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v2, :cond_59

    .line 1888
    iget-object v2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->popStart()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 1891
    :cond_49
    iget-object v0, v2, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    iget-object v0, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v4, :cond_54

    return-void

    .line 1894
    :cond_54
    iget-object v0, v2, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    invoke-virtual {v0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->popStart()V

    .line 1896
    :cond_59
    invoke-virtual {p0, v1, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleView(Landroid/view/View;Lflyme/support/v7/widget/RecyclerView$Recycler;)V

    goto :goto_0

    :cond_5d
    return-void
.end method

.method private repositionToWrapContentIfNecessary()V
    .registers 10

    .line 736
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/OrientationHelper;->getMode()I

    move-result v0

    const/high16 v1, 0x40000000  # 2.0f

    if-ne v0, v1, :cond_b

    return-void

    :cond_b
    const/4 v0, 0x0

    .line 740
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    :goto_13
    if-ge v0, v1, :cond_3f

    .line 742
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 743
    iget-object v5, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v5, v4}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v5

    int-to-float v5, v5

    cmpg-float v6, v5, v3

    if-gez v6, :cond_25

    goto :goto_3c

    .line 747
    :cond_25
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 748
    invoke-virtual {v4}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->isFullSpan()Z

    move-result v4

    if-eqz v4, :cond_38

    const/high16 v4, 0x3f800000  # 1.0f

    mul-float/2addr v5, v4

    .line 749
    iget v4, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    int-to-float v4, v4

    div-float/2addr v5, v4

    .line 751
    :cond_38
    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    :goto_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 753
    :cond_3f
    iget v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    .line 754
    iget v4, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 755
    iget-object v4, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v4}, Lflyme/support/v7/widget/OrientationHelper;->getMode()I

    move-result v4

    const/high16 v5, -0x80000000

    if-ne v4, v5, :cond_5d

    .line 756
    iget-object v4, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v4}, Lflyme/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 758
    :cond_5d
    invoke-virtual {p0, v3}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->updateMeasureSpecs(I)V

    .line 759
    iget v3, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    if-ne v3, v0, :cond_65

    return-void

    :cond_65
    :goto_65
    if-ge v2, v1, :cond_af

    .line 763
    invoke-virtual {p0, v2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 764
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 765
    iget-boolean v5, v4, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v5, :cond_76

    goto :goto_ac

    .line 768
    :cond_76
    invoke-virtual {p0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_97

    iget v5, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v5, v6, :cond_97

    .line 769
    iget v5, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    add-int/lit8 v7, v5, -0x1

    iget-object v4, v4, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    iget v4, v4, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    sub-int/2addr v7, v4

    neg-int v7, v7

    iget v8, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    mul-int/2addr v7, v8

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    neg-int v4, v5

    mul-int/2addr v4, v0

    sub-int/2addr v7, v4

    .line 771
    invoke-virtual {v3, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_ac

    .line 773
    :cond_97
    iget-object v4, v4, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    iget v4, v4, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    iget v5, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    mul-int/2addr v5, v4

    mul-int/2addr v4, v0

    .line 775
    iget v7, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne v7, v6, :cond_a8

    sub-int/2addr v5, v4

    .line 776
    invoke-virtual {v3, v5}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_ac

    :cond_a8
    sub-int/2addr v5, v4

    .line 778
    invoke-virtual {v3, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    :goto_ac
    add-int/lit8 v2, v2, 0x1

    goto :goto_65

    :cond_af
    return-void
.end method

.method private resolveShouldLayoutReverse()V
    .registers 3

    .line 562
    iget v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    invoke-virtual {p0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_12

    .line 565
    :cond_c
    iget-boolean v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    goto :goto_16

    .line 563
    :cond_12
    :goto_12
    iget-boolean v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    iput-boolean v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    :goto_16
    return-void
.end method

.method private setLayoutStateDirection(I)V
    .registers 5

    .line 1447
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LayoutState;

    iput p1, v0, Lflyme/support/v7/widget/LayoutState;->mLayoutDirection:I

    .line 1448
    iget-boolean p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_c

    move p1, v1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    if-ne p0, p1, :cond_10

    goto :goto_11

    :cond_10
    move v1, v2

    :goto_11
    iput v1, v0, Lflyme/support/v7/widget/LayoutState;->mItemDirection:I

    return-void
.end method

.method private updateAllRemainingSpans(II)V
    .registers 5

    const/4 v0, 0x0

    .line 1787
    :goto_1
    iget v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_1c

    .line 1788
    iget-object v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    iget-object v1, v1, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_19

    .line 1791
    :cond_12
    iget-object v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, p1, p2}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->updateRemainingSpans(Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;II)V

    :goto_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1c
    return-void
.end method

.method private updateAnchorFromChildren(Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;)Z
    .registers 4

    .line 842
    iget-boolean v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-eqz v0, :cond_d

    .line 843
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    invoke-direct {p0, p1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->findLastReferenceChildPosition(I)I

    move-result p0

    goto :goto_15

    .line 844
    :cond_d
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    invoke-direct {p0, p1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->findFirstReferenceChildPosition(I)I

    move-result p0

    :goto_15
    iput p0, p2, Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    const/high16 p0, -0x80000000

    .line 845
    iput p0, p2, Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    const/4 p0, 0x1

    return p0
.end method

.method private updateLayoutState(ILflyme/support/v7/widget/RecyclerView$State;)V
    .registers 7

    .line 1416
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LayoutState;

    const/4 v1, 0x0

    iput v1, v0, Lflyme/support/v7/widget/LayoutState;->mAvailable:I

    .line 1417
    iput p1, v0, Lflyme/support/v7/widget/LayoutState;->mCurrentPosition:I

    .line 1420
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->isSmoothScrolling()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2f

    .line 1421
    invoke-virtual {p2}, Lflyme/support/v7/widget/RecyclerView$State;->getTargetScrollPosition()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_2f

    .line 1423
    iget-boolean v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-ge p2, p1, :cond_1b

    move p1, v2

    goto :goto_1c

    :cond_1b
    move p1, v1

    :goto_1c
    if-ne v0, p1, :cond_26

    .line 1424
    iget-object p1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {p1}, Lflyme/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result p1

    move p2, v1

    goto :goto_31

    .line 1426
    :cond_26
    iget-object p1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {p1}, Lflyme/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result p1

    move p2, p1

    move p1, v1

    goto :goto_31

    :cond_2f
    move p1, v1

    move p2, p1

    .line 1432
    :goto_31
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 1434
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LayoutState;

    iget-object v3, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v3}, Lflyme/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    sub-int/2addr v3, p2

    iput v3, v0, Lflyme/support/v7/widget/LayoutState;->mStartLine:I

    .line 1435
    iget-object p2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LayoutState;

    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p2, Lflyme/support/v7/widget/LayoutState;->mEndLine:I

    goto :goto_5e

    .line 1437
    :cond_4e
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LayoutState;

    iget-object v3, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v3}, Lflyme/support/v7/widget/OrientationHelper;->getEnd()I

    move-result v3

    add-int/2addr v3, p1

    iput v3, v0, Lflyme/support/v7/widget/LayoutState;->mEndLine:I

    .line 1438
    iget-object p1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LayoutState;

    neg-int p2, p2

    iput p2, p1, Lflyme/support/v7/widget/LayoutState;->mStartLine:I

    .line 1440
    :goto_5e
    iget-object p1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LayoutState;

    iput-boolean v1, p1, Lflyme/support/v7/widget/LayoutState;->mStopInFocusable:Z

    .line 1441
    iput-boolean v2, p1, Lflyme/support/v7/widget/LayoutState;->mRecycle:Z

    .line 1442
    iget-object p2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {p2}, Lflyme/support/v7/widget/OrientationHelper;->getMode()I

    move-result p2

    if-nez p2, :cond_75

    iget-object p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    .line 1443
    invoke-virtual {p0}, Lflyme/support/v7/widget/OrientationHelper;->getEnd()I

    move-result p0

    if-nez p0, :cond_75

    move v1, v2

    :cond_75
    iput-boolean v1, p1, Lflyme/support/v7/widget/LayoutState;->mInfinite:Z

    return-void
.end method

.method private updateRemainingSpans(Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;II)V
    .registers 7

    .line 1796
    invoke-virtual {p1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->getDeletedSize()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p2, v2, :cond_17

    .line 1798
    invoke-virtual {p1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->getStartLine()I

    move-result p2

    add-int/2addr p2, v0

    if-gt p2, p3, :cond_25

    .line 1800
    iget-object p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    iget p1, p1, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {p0, p1, v1}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_25

    .line 1803
    :cond_17
    invoke-virtual {p1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->getEndLine()I

    move-result p2

    sub-int/2addr p2, v0

    if-lt p2, p3, :cond_25

    .line 1805
    iget-object p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    iget p1, p1, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {p0, p1, v1}, Ljava/util/BitSet;->set(IZ)V

    :cond_25
    :goto_25
    return-void
.end method

.method private updateSpecWithExtra(III)I
    .registers 5

    if-nez p2, :cond_5

    if-nez p3, :cond_5

    return p1

    .line 1176
    :cond_5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p0

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_13

    const/high16 v0, 0x40000000  # 2.0f

    if-ne p0, v0, :cond_12

    goto :goto_13

    :cond_12
    return p1

    :cond_13
    :goto_13
    const/4 v0, 0x0

    .line 1179
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    sub-int/2addr p1, p2

    sub-int/2addr p1, p3

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1178
    invoke-static {p1, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method areAllEndsEqual()Z
    .registers 7

    .line 1833
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v0

    const/4 v3, 0x1

    move v4, v3

    .line 1834
    :goto_d
    iget v5, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v4, v5, :cond_1f

    .line 1835
    iget-object v5, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v5, v5, v4

    invoke-virtual {v5, v2}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v5

    if-eq v5, v0, :cond_1c

    return v1

    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_1f
    return v3
.end method

.method areAllStartsEqual()Z
    .registers 7

    .line 1843
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v0

    const/4 v3, 0x1

    move v4, v3

    .line 1844
    :goto_d
    iget v5, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v4, v5, :cond_1f

    .line 1845
    iget-object v5, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v5, v5, v4

    invoke-virtual {v5, v2}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v5

    if-eq v5, v0, :cond_1c

    return v1

    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_1f
    return v3
.end method

.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .registers 3

    .line 530
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_7

    .line 531
    invoke-super {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public canScrollHorizontally()Z
    .registers 1

    .line 1995
    iget p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public canScrollVertically()Z
    .registers 2

    .line 1990
    iget p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method checkForGaps()Z
    .registers 8

    .line 273
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7c

    iget v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mGapStrategy:I

    if-eqz v0, :cond_7c

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_7c

    .line 277
    :cond_12
    iget-boolean v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_1f

    .line 278
    invoke-virtual {p0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v0

    .line 279
    invoke-virtual {p0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v2

    goto :goto_27

    .line 281
    :cond_1f
    invoke-virtual {p0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v0

    .line 282
    invoke-virtual {p0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v2

    :goto_27
    const/4 v3, 0x1

    if-nez v0, :cond_3c

    .line 285
    invoke-virtual {p0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->hasGapsToFix()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3c

    .line 287
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    .line 288
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->requestSimpleAnimationsInNextLayout()V

    .line 289
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->requestLayout()V

    return v3

    .line 293
    :cond_3c
    iget-boolean v4, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    if-nez v4, :cond_41

    return v1

    .line 296
    :cond_41
    iget-boolean v4, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    const/4 v5, -0x1

    if-eqz v4, :cond_48

    move v4, v5

    goto :goto_49

    :cond_48
    move v4, v3

    .line 297
    :goto_49
    iget-object v6, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    add-int/2addr v2, v3

    .line 298
    invoke-virtual {v6, v0, v2, v4, v3}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFirstFullSpanItemInRange(IIIZ)Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v6

    if-nez v6, :cond_5a

    .line 300
    iput-boolean v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLaidOutInvalidFullSpan:Z

    .line 301
    iget-object p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {p0, v2}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->forceInvalidateAfter(I)I

    return v1

    .line 304
    :cond_5a
    iget-object v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget v2, v6, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    mul-int/2addr v4, v5

    .line 305
    invoke-virtual {v1, v0, v2, v4, v3}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFirstFullSpanItemInRange(IIIZ)Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    if-nez v0, :cond_6d

    .line 308
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget v1, v6, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->forceInvalidateAfter(I)I

    goto :goto_75

    .line 310
    :cond_6d
    iget-object v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget v0, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mPosition:I

    add-int/2addr v0, v3

    invoke-virtual {v1, v0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->forceInvalidateAfter(I)I

    .line 312
    :goto_75
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->requestSimpleAnimationsInNextLayout()V

    .line 313
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->requestLayout()V

    return v3

    :cond_7c
    :goto_7c
    return v1
.end method

.method public checkLayoutParams(Lflyme/support/v7/widget/RecyclerView$LayoutParams;)Z
    .registers 2

    .line 2239
    instance-of p0, p1, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    return p0
.end method

.method public collectAdjacentPrefetchPositions(IILflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .registers 9

    .line 2090
    iget v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v0, :cond_5

    goto :goto_6

    :cond_5
    move p1, p2

    .line 2091
    :goto_6
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p2

    if-eqz p2, :cond_7a

    if-nez p1, :cond_f

    goto :goto_7a

    .line 2095
    :cond_f
    invoke-virtual {p0, p1, p3}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->prepareLayoutStateForDelta(ILflyme/support/v7/widget/RecyclerView$State;)V

    .line 2098
    iget-object p1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    if-eqz p1, :cond_1b

    array-length p1, p1

    iget p2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge p1, p2, :cond_21

    .line 2099
    :cond_1b
    iget p1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array p1, p1, [I

    iput-object p1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    :cond_21
    const/4 p1, 0x0

    move p2, p1

    move v0, p2

    .line 2103
    :goto_24
    iget v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge p2, v1, :cond_54

    .line 2105
    iget-object v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LayoutState;

    iget v2, v1, Lflyme/support/v7/widget/LayoutState;->mItemDirection:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3a

    iget v1, v1, Lflyme/support/v7/widget/LayoutState;->mStartLine:I

    iget-object v2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, p2

    .line 2106
    invoke-virtual {v2, v1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v2

    goto :goto_48

    :cond_3a
    iget-object v2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v2, v2, p2

    iget v1, v1, Lflyme/support/v7/widget/LayoutState;->mEndLine:I

    .line 2107
    invoke-virtual {v2, v1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v1

    iget-object v2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LayoutState;

    iget v2, v2, Lflyme/support/v7/widget/LayoutState;->mEndLine:I

    :goto_48
    sub-int/2addr v1, v2

    if-ltz v1, :cond_51

    .line 2110
    iget-object v2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    :cond_51
    add-int/lit8 p2, p2, 0x1

    goto :goto_24

    .line 2114
    :cond_54
    iget-object p2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    invoke-static {p2, p1, v0}, Ljava/util/Arrays;->sort([III)V

    :goto_59
    if-ge p1, v0, :cond_7a

    .line 2117
    iget-object p2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LayoutState;

    invoke-virtual {p2, p3}, Lflyme/support/v7/widget/LayoutState;->hasMore(Lflyme/support/v7/widget/RecyclerView$State;)Z

    move-result p2

    if-eqz p2, :cond_7a

    .line 2118
    iget-object p2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LayoutState;

    iget p2, p2, Lflyme/support/v7/widget/LayoutState;->mCurrentPosition:I

    iget-object v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrefetchDistances:[I

    aget v1, v1, p1

    invoke-interface {p4, p2, v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    .line 2119
    iget-object p2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LayoutState;

    iget v1, p2, Lflyme/support/v7/widget/LayoutState;->mCurrentPosition:I

    iget v2, p2, Lflyme/support/v7/widget/LayoutState;->mItemDirection:I

    add-int/2addr v1, v2

    iput v1, p2, Lflyme/support/v7/widget/LayoutState;->mCurrentPosition:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_59

    :cond_7a
    :goto_7a
    return-void
.end method

.method public computeHorizontalScrollExtent(Lflyme/support/v7/widget/RecyclerView$State;)I
    .registers 2

    .line 1090
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->computeScrollExtent(Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public computeHorizontalScrollOffset(Lflyme/support/v7/widget/RecyclerView$State;)I
    .registers 2

    .line 1070
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->computeScrollOffset(Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public computeHorizontalScrollRange(Lflyme/support/v7/widget/RecyclerView$State;)I
    .registers 2

    .line 1110
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->computeScrollRange(Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .registers 4

    .line 2020
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->calculateScrollDirectionForPosition(I)I

    move-result p1

    .line 2021
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    if-nez p1, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 2025
    :cond_d
    iget p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v1, 0x0

    if-nez p0, :cond_18

    int-to-float p0, p1

    .line 2026
    iput p0, v0, Landroid/graphics/PointF;->x:F

    .line 2027
    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_1d

    .line 2029
    :cond_18
    iput v1, v0, Landroid/graphics/PointF;->x:F

    int-to-float p0, p1

    .line 2030
    iput p0, v0, Landroid/graphics/PointF;->y:F

    :goto_1d
    return-object v0
.end method

.method public computeVerticalScrollExtent(Lflyme/support/v7/widget/RecyclerView$State;)I
    .registers 2

    .line 1105
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->computeScrollExtent(Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public computeVerticalScrollOffset(Lflyme/support/v7/widget/RecyclerView$State;)I
    .registers 2

    .line 1085
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->computeScrollOffset(Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public computeVerticalScrollRange(Lflyme/support/v7/widget/RecyclerView$State;)I
    .registers 2

    .line 1125
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->computeScrollRange(Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;
    .registers 9

    .line 1355
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    .line 1356
    iget-object v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v1}, Lflyme/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    .line 1358
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    :goto_13
    if-ltz v2, :cond_37

    .line 1359
    invoke-virtual {p0, v2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1360
    iget-object v5, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v5, v4}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    .line 1361
    iget-object v6, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v6, v4}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    if-le v6, v0, :cond_34

    if-lt v5, v1, :cond_2a

    goto :goto_34

    :cond_2a
    if-le v6, v1, :cond_33

    if-nez p1, :cond_2f

    goto :goto_33

    :cond_2f
    if-nez v3, :cond_34

    move-object v3, v4

    goto :goto_34

    :cond_33
    :goto_33
    return-object v4

    :cond_34
    :goto_34
    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    :cond_37
    return-object v3
.end method

.method findFirstVisibleItemClosestToStart(Z)Landroid/view/View;
    .registers 10

    .line 1325
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    .line 1326
    iget-object v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v1}, Lflyme/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    .line 1327
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v2, :cond_36

    .line 1330
    invoke-virtual {p0, v4}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1331
    iget-object v6, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v6, v5}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    .line 1332
    iget-object v7, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v7, v5}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    if-le v7, v0, :cond_33

    if-lt v6, v1, :cond_29

    goto :goto_33

    :cond_29
    if-ge v6, v0, :cond_32

    if-nez p1, :cond_2e

    goto :goto_32

    :cond_2e
    if-nez v3, :cond_33

    move-object v3, v5

    goto :goto_33

    :cond_32
    :goto_32
    return-object v5

    :cond_33
    :goto_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_36
    return-object v3
.end method

.method findFirstVisibleItemPositionInt()I
    .registers 3

    .line 1295
    iget-boolean v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    invoke-virtual {p0, v1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    move-result-object v0

    goto :goto_e

    .line 1296
    :cond_a
    invoke-virtual {p0, v1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    move-result-object v0

    :goto_e
    if-nez v0, :cond_12

    const/4 p0, -0x1

    goto :goto_16

    .line 1297
    :cond_12
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    :goto_16
    return p0
.end method

.method public findLastVisibleItemPositions([I)[I
    .registers 5

    if-nez p1, :cond_7

    .line 1025
    iget p1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array p1, p1, [I

    goto :goto_c

    .line 1026
    :cond_7
    array-length v0, p1

    iget v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-lt v0, v1, :cond_1f

    :goto_c
    const/4 v0, 0x0

    .line 1030
    :goto_d
    iget v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_1e

    .line 1031
    iget-object v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->findLastVisibleItemPosition()I

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1e
    return-object p1

    .line 1027
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provided int[]\'s size must be more than or equal to span count. Expected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", array size:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateDefaultLayoutParams()Lflyme/support/v7/widget/RecyclerView$LayoutParams;
    .registers 3

    .line 2214
    iget p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v0, -0x2

    const/4 v1, -0x1

    if-nez p0, :cond_c

    .line 2215
    new-instance p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {p0, v0, v1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(II)V

    return-object p0

    .line 2218
    :cond_c
    new-instance p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {p0, v1, v0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lflyme/support/v7/widget/RecyclerView$LayoutParams;
    .registers 3

    .line 2225
    new-instance p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {p0, p1, p2}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lflyme/support/v7/widget/RecyclerView$LayoutParams;
    .registers 2

    .line 2230
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_c

    .line 2231
    new-instance p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object p0

    .line 2233
    :cond_c
    new-instance p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    invoke-direct {p0, p1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public getColumnCountForAccessibility(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)I
    .registers 5

    .line 1312
    iget v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 1313
    iget p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    return p0

    .line 1315
    :cond_8
    invoke-super {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getColumnCountForAccessibility(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method getFirstChildPosition()I
    .registers 3

    .line 2174
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    goto :goto_10

    .line 2175
    :cond_8
    invoke-virtual {p0, v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    :goto_10
    return v1
.end method

.method getLastChildPosition()I
    .registers 2

    .line 2169
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    goto :goto_12

    :cond_8
    add-int/lit8 v0, v0, -0x1

    .line 2170
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    :goto_12
    return p0
.end method

.method public getOrientation()I
    .registers 1

    .line 2243
    iget p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    return p0
.end method

.method public getReverseLayout()Z
    .registers 1

    .line 582
    iget-boolean p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    return p0
.end method

.method public getRowCountForAccessibility(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)I
    .registers 4

    .line 1303
    iget v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-nez v0, :cond_7

    .line 1304
    iget p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    return p0

    .line 1306
    :cond_7
    invoke-super {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getRowCountForAccessibility(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method hasGapsToFix()Landroid/view/View;
    .registers 13

    .line 341
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 342
    new-instance v2, Ljava/util/BitSet;

    iget v3, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-direct {v2, v3}, Ljava/util/BitSet;-><init>(I)V

    .line 343
    iget v3, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3, v1}, Ljava/util/BitSet;->set(IIZ)V

    .line 346
    iget v3, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v5, -0x1

    if-ne v3, v1, :cond_20

    invoke-virtual {p0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->isLayoutRTL()Z

    move-result v3

    if-eqz v3, :cond_20

    move v3, v1

    goto :goto_21

    :cond_20
    move v3, v5

    .line 348
    :goto_21
    iget-boolean v6, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v6, :cond_27

    move v6, v5

    goto :goto_2b

    :cond_27
    add-int/lit8 v0, v0, 0x1

    move v6, v0

    move v0, v4

    :goto_2b
    if-ge v0, v6, :cond_2e

    move v5, v1

    :cond_2e
    :goto_2e
    if-eq v0, v6, :cond_ab

    .line 357
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 358
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 359
    iget-object v9, v8, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    iget v9, v9, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v2, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-eqz v9, :cond_54

    .line 360
    iget-object v9, v8, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    invoke-direct {p0, v9}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->checkSpanForGap(Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;)Z

    move-result v9

    if-eqz v9, :cond_4d

    return-object v7

    .line 363
    :cond_4d
    iget-object v9, v8, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    iget v9, v9, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v2, v9}, Ljava/util/BitSet;->clear(I)V

    .line 365
    :cond_54
    iget-boolean v9, v8, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v9, :cond_59

    goto :goto_a9

    :cond_59
    add-int v9, v0, v5

    if-eq v9, v6, :cond_a9

    .line 370
    invoke-virtual {p0, v9}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 372
    iget-boolean v10, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v10, :cond_77

    .line 374
    iget-object v10, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v10, v7}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v10

    .line 375
    iget-object v11, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v11, v9}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v11

    if-ge v10, v11, :cond_74

    return-object v7

    :cond_74
    if-ne v10, v11, :cond_8a

    goto :goto_88

    .line 382
    :cond_77
    iget-object v10, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v10, v7}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v10

    .line 383
    iget-object v11, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v11, v9}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v11

    if-le v10, v11, :cond_86

    return-object v7

    :cond_86
    if-ne v10, v11, :cond_8a

    :goto_88
    move v10, v1

    goto :goto_8b

    :cond_8a
    move v10, v4

    :goto_8b
    if-eqz v10, :cond_a9

    .line 392
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 393
    iget-object v8, v8, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    iget v8, v8, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    iget-object v9, v9, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    iget v9, v9, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    sub-int/2addr v8, v9

    if-gez v8, :cond_a0

    move v8, v1

    goto :goto_a1

    :cond_a0
    move v8, v4

    :goto_a1
    if-gez v3, :cond_a5

    move v9, v1

    goto :goto_a6

    :cond_a5
    move v9, v4

    :goto_a6
    if-eq v8, v9, :cond_a9

    return-object v7

    :cond_a9
    :goto_a9
    add-int/2addr v0, v5

    goto :goto_2e

    :cond_ab
    const/4 p0, 0x0

    return-object p0
.end method

.method public invalidateSpanAssignments()V
    .registers 2

    .line 551
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    .line 552
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->requestLayout()V

    return-void
.end method

.method isLayoutRTL()Z
    .registers 2

    .line 570
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public offsetChildrenHorizontal(I)V
    .registers 4

    .line 1454
    invoke-super {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->offsetChildrenHorizontal(I)V

    const/4 v0, 0x0

    .line 1455
    :goto_4
    iget v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_12

    .line 1456
    iget-object v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->onOffset(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_12
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .registers 4

    .line 1462
    invoke-super {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->offsetChildrenVertical(I)V

    const/4 v0, 0x0

    .line 1463
    :goto_4
    iget v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v0, v1, :cond_12

    .line 1464
    iget-object v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->onOffset(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_12
    return-void
.end method

.method public onDetachedFromWindow(Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$Recycler;)V
    .registers 4

    .line 326
    iget-object p2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mCheckForGapsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 p2, 0x0

    .line 327
    :goto_6
    iget v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge p2, v0, :cond_14

    .line 328
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->clear()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    .line 331
    :cond_14
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView;->requestLayout()V

    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .registers 13
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2250
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 2254
    :cond_8
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_f

    return-object v1

    .line 2259
    :cond_f
    invoke-direct {p0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->resolveShouldLayoutReverse()V

    .line 2260
    invoke-direct {p0, p2}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result p2

    const/high16 v0, -0x80000000

    if-ne p2, v0, :cond_1b

    return-object v1

    .line 2264
    :cond_1b
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 2265
    iget-boolean v2, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    .line 2266
    iget-object v0, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    const/4 v3, 0x1

    if-ne p2, v3, :cond_2d

    .line 2269
    invoke-virtual {p0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v4

    goto :goto_31

    .line 2271
    :cond_2d
    invoke-virtual {p0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v4

    .line 2273
    :goto_31
    invoke-direct {p0, v4, p4}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->updateLayoutState(ILflyme/support/v7/widget/RecyclerView$State;)V

    .line 2274
    invoke-direct {p0, p2}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 2276
    iget-object v5, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LayoutState;

    iget v6, v5, Lflyme/support/v7/widget/LayoutState;->mItemDirection:I

    add-int/2addr v6, v4

    iput v6, v5, Lflyme/support/v7/widget/LayoutState;->mCurrentPosition:I

    const v6, 0x3eaaaaab

    .line 2277
    iget-object v7, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v7}, Lflyme/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v6

    float-to-int v6, v7

    iput v6, v5, Lflyme/support/v7/widget/LayoutState;->mAvailable:I

    .line 2278
    iget-object v5, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LayoutState;

    iput-boolean v3, v5, Lflyme/support/v7/widget/LayoutState;->mStopInFocusable:Z

    const/4 v6, 0x0

    .line 2279
    iput-boolean v6, v5, Lflyme/support/v7/widget/LayoutState;->mRecycle:Z

    .line 2280
    invoke-direct {p0, p3, v5, p4}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->fill(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/LayoutState;Lflyme/support/v7/widget/RecyclerView$State;)I

    .line 2281
    iget-boolean p3, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean p3, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-nez v2, :cond_65

    .line 2283
    invoke-virtual {v0, v4, p2}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->getFocusableViewAfter(II)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_65

    if-eq p3, p1, :cond_65

    return-object p3

    .line 2291
    :cond_65
    invoke-direct {p0, p2}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->preferLastSpan(I)Z

    move-result p3

    if-eqz p3, :cond_80

    .line 2292
    iget p3, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    sub-int/2addr p3, v3

    :goto_6e
    if-ltz p3, :cond_95

    .line 2293
    iget-object p4, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object p4, p4, p3

    invoke-virtual {p4, v4, p2}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->getFocusableViewAfter(II)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_7d

    if-eq p4, p1, :cond_7d

    return-object p4

    :cond_7d
    add-int/lit8 p3, p3, -0x1

    goto :goto_6e

    :cond_80
    move p3, v6

    .line 2299
    :goto_81
    iget p4, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge p3, p4, :cond_95

    .line 2300
    iget-object p4, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object p4, p4, p3

    invoke-virtual {p4, v4, p2}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->getFocusableViewAfter(II)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_92

    if-eq p4, p1, :cond_92

    return-object p4

    :cond_92
    add-int/lit8 p3, p3, 0x1

    goto :goto_81

    .line 2311
    :cond_95
    iget-boolean p3, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    xor-int/2addr p3, v3

    const/4 p4, -0x1

    if-ne p2, p4, :cond_9d

    move p4, v3

    goto :goto_9e

    :cond_9d
    move p4, v6

    :goto_9e
    if-ne p3, p4, :cond_a2

    move p3, v3

    goto :goto_a3

    :cond_a2
    move p3, v6

    :goto_a3
    if-nez v2, :cond_b9

    if-eqz p3, :cond_ac

    .line 2315
    invoke-virtual {v0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->findFirstPartiallyVisibleItemPosition()I

    move-result p4

    goto :goto_b0

    .line 2316
    :cond_ac
    invoke-virtual {v0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->findLastPartiallyVisibleItemPosition()I

    move-result p4

    .line 2314
    :goto_b0
    invoke-virtual {p0, p4}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_b9

    if-eq p4, p1, :cond_b9

    return-object p4

    .line 2322
    :cond_b9
    invoke-direct {p0, p2}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->preferLastSpan(I)Z

    move-result p2

    if-eqz p2, :cond_e8

    .line 2323
    iget p2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    sub-int/2addr p2, v3

    :goto_c2
    if-ltz p2, :cond_10b

    .line 2324
    iget p4, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    if-ne p2, p4, :cond_c9

    goto :goto_e5

    :cond_c9
    if-eqz p3, :cond_d4

    .line 2327
    iget-object p4, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object p4, p4, p2

    .line 2328
    invoke-virtual {p4}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->findFirstPartiallyVisibleItemPosition()I

    move-result p4

    goto :goto_dc

    :cond_d4
    iget-object p4, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object p4, p4, p2

    .line 2329
    invoke-virtual {p4}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->findLastPartiallyVisibleItemPosition()I

    move-result p4

    .line 2327
    :goto_dc
    invoke-virtual {p0, p4}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_e5

    if-eq p4, p1, :cond_e5

    return-object p4

    :cond_e5
    :goto_e5
    add-int/lit8 p2, p2, -0x1

    goto :goto_c2

    .line 2335
    :cond_e8
    :goto_e8
    iget p2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v6, p2, :cond_10b

    if-eqz p3, :cond_f7

    .line 2336
    iget-object p2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object p2, p2, v6

    .line 2337
    invoke-virtual {p2}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->findFirstPartiallyVisibleItemPosition()I

    move-result p2

    goto :goto_ff

    :cond_f7
    iget-object p2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object p2, p2, v6

    .line 2338
    invoke-virtual {p2}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->findLastPartiallyVisibleItemPosition()I

    move-result p2

    .line 2336
    :goto_ff
    invoke-virtual {p0, p2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_108

    if-eq p2, p1, :cond_108

    return-object p2

    :cond_108
    add-int/lit8 v6, v6, 0x1

    goto :goto_e8

    :cond_10b
    return-object v1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .line 1268
    invoke-super {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1269
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_33

    .line 1271
    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroidx/core/view/accessibility/AccessibilityRecordCompat;

    move-result-object p1

    const/4 v0, 0x0

    .line 1272
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToStart(Z)Landroid/view/View;

    move-result-object v1

    .line 1273
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemClosestToEnd(Z)Landroid/view/View;

    move-result-object v0

    if-eqz v1, :cond_33

    if-nez v0, :cond_1b

    goto :goto_33

    .line 1277
    :cond_1b
    invoke-virtual {p0, v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 1278
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    if-ge v1, p0, :cond_2c

    .line 1280
    invoke-virtual {p1, v1}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setFromIndex(I)V

    .line 1281
    invoke-virtual {p1, p0}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setToIndex(I)V

    goto :goto_33

    .line 1283
    :cond_2c
    invoke-virtual {p1, p0}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setFromIndex(I)V

    .line 1284
    invoke-virtual {p1, v1}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setToIndex(I)V

    nop

    :cond_33
    :goto_33
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 11

    .line 1247
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 1248
    instance-of p2, p1, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    if-nez p2, :cond_c

    .line 1249
    invoke-super {p0, p3, p4}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    return-void

    .line 1252
    :cond_c
    check-cast p1, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 1253
    iget p2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 p3, 0x1

    if-nez p2, :cond_2b

    .line 1255
    invoke-virtual {p1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v0

    iget-boolean p2, p1, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz p2, :cond_1d

    iget p3, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    :cond_1d
    move v1, p3

    const/4 v2, -0x1

    const/4 v3, -0x1

    iget-boolean v4, p1, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    const/4 v5, 0x0

    .line 1254
    invoke-static/range {v0 .. v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object p0

    invoke-virtual {p4, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_42

    :cond_2b
    const/4 v0, -0x1

    const/4 v1, -0x1

    .line 1261
    invoke-virtual {p1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result v2

    iget-boolean p2, p1, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz p2, :cond_37

    iget p3, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    :cond_37
    move v3, p3

    iget-boolean v4, p1, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    const/4 v5, 0x0

    .line 1259
    invoke-static/range {v0 .. v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object p0

    invoke-virtual {p4, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    :goto_42
    return-void
.end method

.method public onItemsAdded(Lflyme/support/v7/widget/RecyclerView;II)V
    .registers 4

    const/4 p1, 0x1

    .line 1475
    invoke-direct {p0, p2, p3, p1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->handleUpdate(III)V

    return-void
.end method

.method public onItemsChanged(Lflyme/support/v7/widget/RecyclerView;)V
    .registers 2

    .line 1480
    iget-object p1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {p1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->clear()V

    .line 1481
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->requestLayout()V

    return-void
.end method

.method public onItemsMoved(Lflyme/support/v7/widget/RecyclerView;III)V
    .registers 5

    const/16 p1, 0x8

    .line 1486
    invoke-direct {p0, p2, p3, p1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->handleUpdate(III)V

    return-void
.end method

.method public onItemsRemoved(Lflyme/support/v7/widget/RecyclerView;II)V
    .registers 4

    const/4 p1, 0x2

    .line 1470
    invoke-direct {p0, p2, p3, p1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->handleUpdate(III)V

    return-void
.end method

.method public onItemsUpdated(Lflyme/support/v7/widget/RecyclerView;IILjava/lang/Object;)V
    .registers 5

    const/4 p1, 0x4

    .line 1492
    invoke-direct {p0, p2, p3, p1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->handleUpdate(III)V

    return-void
.end method

.method public onLayoutChildren(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)V
    .registers 4

    const/4 v0, 0x1

    .line 607
    invoke-direct {p0, p1, p2, v0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->onLayoutChildren(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Z)V

    return-void
.end method

.method public onLayoutCompleted(Lflyme/support/v7/widget/RecyclerView$State;)V
    .registers 2

    .line 728
    invoke-super {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Lflyme/support/v7/widget/RecyclerView$State;)V

    const/4 p1, -0x1

    .line 729
    iput p1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    const/high16 p1, -0x80000000

    .line 730
    iput p1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    const/4 p1, 0x0

    .line 731
    iput-object p1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    .line 732
    iget-object p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mAnchorInfo:Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;

    invoke-virtual {p0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->reset()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 1186
    instance-of v0, p1, Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_b

    .line 1187
    check-cast p1, Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iput-object p1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    .line 1188
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->requestLayout()V

    :cond_b
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 5

    .line 1196
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_a

    .line 1197
    new-instance p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    invoke-direct {p0, v0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;-><init>(Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;)V

    return-object p0

    .line 1199
    :cond_a
    new-instance v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    invoke-direct {v0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;-><init>()V

    .line 1200
    iget-boolean v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    iput-boolean v1, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    .line 1201
    iget-boolean v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    iput-boolean v1, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 1202
    iget-boolean v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLastLayoutRTL:Z

    iput-boolean v1, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mLastLayoutRTL:Z

    .line 1204
    iget-object v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    const/4 v2, 0x0

    if-eqz v1, :cond_30

    iget-object v3, v1, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mData:[I

    if-eqz v3, :cond_30

    .line 1205
    iput-object v3, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    .line 1206
    iget-object v3, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookup:[I

    array-length v3, v3

    iput v3, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    .line 1207
    iget-object v1, v1, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->mFullSpanItems:Ljava/util/List;

    iput-object v1, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mFullSpanItems:Ljava/util/List;

    goto :goto_32

    .line 1209
    :cond_30
    iput v2, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanLookupSize:I

    .line 1212
    :goto_32
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_88

    .line 1213
    iget-boolean v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    if-eqz v1, :cond_41

    invoke-virtual {p0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v1

    goto :goto_45

    .line 1214
    :cond_41
    invoke-virtual {p0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v1

    :goto_45
    iput v1, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 1215
    invoke-virtual {p0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositionInt()I

    move-result v1

    iput v1, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    .line 1216
    iget v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    iput v1, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    .line 1217
    new-array v1, v1, [I

    iput-object v1, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    .line 1218
    :goto_55
    iget v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge v2, v1, :cond_8f

    .line 1220
    iget-boolean v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    const/high16 v3, -0x80000000

    if-eqz v1, :cond_70

    .line 1221
    iget-object v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v1

    if-eq v1, v3, :cond_81

    .line 1223
    iget-object v3, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v3}, Lflyme/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v3

    goto :goto_80

    .line 1226
    :cond_70
    iget-object v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    aget-object v1, v1, v2

    invoke-virtual {v1, v3}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v1

    if-eq v1, v3, :cond_81

    .line 1228
    iget-object v3, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v3}, Lflyme/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    :goto_80
    sub-int/2addr v1, v3

    .line 1231
    :cond_81
    iget-object v3, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsets:[I

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_55

    :cond_88
    const/4 p0, -0x1

    .line 1234
    iput p0, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    .line 1235
    iput p0, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mVisibleAnchorPosition:I

    .line 1236
    iput v2, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    :cond_8f
    return-object v0
.end method

.method public onScrollStateChanged(I)V
    .registers 2

    if-nez p1, :cond_5

    .line 320
    invoke-virtual {p0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->checkForGaps()Z

    :cond_5
    return-void
.end method

.method prepareLayoutStateForDelta(ILflyme/support/v7/widget/RecyclerView$State;)V
    .registers 8

    const/4 v0, 0x1

    if-lez p1, :cond_9

    .line 2128
    invoke-virtual {p0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v1

    move v2, v0

    goto :goto_11

    :cond_9
    const/4 v1, -0x1

    .line 2131
    invoke-virtual {p0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v2

    move v4, v2

    move v2, v1

    move v1, v4

    .line 2133
    :goto_11
    iget-object v3, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LayoutState;

    iput-boolean v0, v3, Lflyme/support/v7/widget/LayoutState;->mRecycle:Z

    .line 2134
    invoke-direct {p0, v1, p2}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->updateLayoutState(ILflyme/support/v7/widget/RecyclerView$State;)V

    .line 2135
    invoke-direct {p0, v2}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->setLayoutStateDirection(I)V

    .line 2136
    iget-object p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LayoutState;

    iget p2, p0, Lflyme/support/v7/widget/LayoutState;->mItemDirection:I

    add-int/2addr v1, p2

    iput v1, p0, Lflyme/support/v7/widget/LayoutState;->mCurrentPosition:I

    .line 2137
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iput p1, p0, Lflyme/support/v7/widget/LayoutState;->mAvailable:I

    return-void
.end method

.method scrollBy(ILflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)I
    .registers 6

    .line 2141
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    if-nez p1, :cond_a

    goto :goto_31

    .line 2145
    :cond_a
    invoke-virtual {p0, p1, p3}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->prepareLayoutStateForDelta(ILflyme/support/v7/widget/RecyclerView$State;)V

    .line 2146
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LayoutState;

    invoke-direct {p0, p2, v0, p3}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->fill(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/LayoutState;Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result p3

    .line 2147
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LayoutState;

    iget v0, v0, Lflyme/support/v7/widget/LayoutState;->mAvailable:I

    if-ge v0, p3, :cond_1a

    goto :goto_1f

    :cond_1a
    if-gez p1, :cond_1e

    neg-int p1, p3

    goto :goto_1f

    :cond_1e
    move p1, p3

    .line 2160
    :goto_1f
    iget-object p3, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    neg-int v0, p1

    invoke-virtual {p3, v0}, Lflyme/support/v7/widget/OrientationHelper;->offsetChildren(I)V

    .line 2162
    iget-boolean p3, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    iput-boolean p3, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLastLayoutFromEnd:Z

    .line 2163
    iget-object p3, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LayoutState;

    iput v1, p3, Lflyme/support/v7/widget/LayoutState;->mAvailable:I

    .line 2164
    invoke-direct {p0, p2, p3}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->recycle(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/LayoutState;)V

    return p1

    :cond_31
    :goto_31
    return v1
.end method

.method public scrollHorizontallyBy(ILflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)I
    .registers 4

    .line 2001
    invoke-virtual {p0, p1, p2, p3}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->scrollBy(ILflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public scrollToPosition(I)V
    .registers 4

    .line 2045
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_b

    iget v1, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    if-eq v1, p1, :cond_b

    .line 2046
    invoke-virtual {v0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;->invalidateAnchorPositionInfo()V

    .line 2048
    :cond_b
    iput p1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    const/high16 p1, -0x80000000

    .line 2049
    iput p1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 2050
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->requestLayout()V

    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .registers 4

    .line 2067
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_7

    .line 2068
    invoke-virtual {v0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;->invalidateAnchorPositionInfo()V

    .line 2070
    :cond_7
    iput p1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 2071
    iput p2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    .line 2072
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->requestLayout()V

    return-void
.end method

.method public scrollVerticallyBy(ILflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)I
    .registers 4

    .line 2007
    invoke-virtual {p0, p1, p2, p3}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->scrollBy(ILflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public setMeasuredDimension(Landroid/graphics/Rect;II)V
    .registers 8

    .line 589
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 590
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 591
    iget v2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_33

    .line 592
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr p1, v1

    .line 593
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getMinimumHeight()I

    move-result v1

    invoke-static {p3, p1, v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result p1

    .line 594
    iget p3, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    iget v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    mul-int/2addr p3, v1

    add-int/2addr p3, v0

    .line 595
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getMinimumWidth()I

    move-result v0

    .line 594
    invoke-static {p2, p3, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result p2

    goto :goto_4e

    .line 597
    :cond_33
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p1, v0

    .line 598
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getMinimumWidth()I

    move-result v0

    invoke-static {p2, p1, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result p2

    .line 599
    iget p1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    iget v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    mul-int/2addr p1, v0

    add-int/2addr p1, v1

    .line 600
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getMinimumHeight()I

    move-result v0

    .line 599
    invoke-static {p3, p1, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result p1

    .line 602
    :goto_4e
    invoke-virtual {p0, p2, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->setMeasuredDimension(II)V

    return-void
.end method

.method public setOrientation(I)V
    .registers 3

    if-eqz p1, :cond_e

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    goto :goto_e

    .line 451
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid orientation."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    :goto_e
    const/4 v0, 0x0

    .line 453
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 454
    iget v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    if-ne p1, v0, :cond_17

    return-void

    .line 457
    :cond_17
    iput p1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mOrientation:I

    .line 458
    iget-object p1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    .line 459
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    iput-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    .line 460
    iput-object p1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    .line 461
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->requestLayout()V

    return-void
.end method

.method public setReverseLayout(Z)V
    .registers 4

    const/4 v0, 0x0

    .line 478
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 479
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_e

    iget-boolean v1, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    if-eq v1, p1, :cond_e

    .line 480
    iput-boolean p1, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mReverseLayout:Z

    .line 482
    :cond_e
    iput-boolean p1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    .line 483
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->requestLayout()V

    return-void
.end method

.method public setSpanCount(I)V
    .registers 4

    const/4 v0, 0x0

    .line 430
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 431
    iget v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-eq p1, v0, :cond_30

    .line 432
    invoke-virtual {p0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->invalidateSpanAssignments()V

    .line 433
    iput p1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    .line 434
    new-instance p1, Ljava/util/BitSet;

    iget v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    invoke-direct {p1, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object p1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mRemainingSpans:Ljava/util/BitSet;

    .line 435
    iget p1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    new-array p1, p1, [Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    iput-object p1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    const/4 p1, 0x0

    .line 436
    :goto_1d
    iget v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    if-ge p1, v0, :cond_2d

    .line 437
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpans:[Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    new-instance v1, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    invoke-direct {v1, p0, p1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;-><init>(Lflyme/support/v7/widget/StaggeredGridLayoutManager;I)V

    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1d

    .line 439
    :cond_2d
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->requestLayout()V

    :cond_30
    return-void
.end method

.method public smoothScrollToPosition(Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$State;I)V
    .registers 4

    .line 2038
    new-instance p2, Lflyme/support/v7/widget/LinearSmoothScroller;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lflyme/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 2039
    invoke-virtual {p2, p3}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 2040
    invoke-virtual {p0, p2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->startSmoothScroll(Lflyme/support/v7/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .registers 1

    .line 937
    iget-object p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-nez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method updateAnchorFromPendingData(Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;)Z
    .registers 8

    .line 851
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e0

    iget v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_e

    goto/16 :goto_e0

    :cond_e
    const/high16 v3, -0x80000000

    if-ltz v0, :cond_dc

    .line 855
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    if-lt v0, p1, :cond_1a

    goto/16 :goto_dc

    .line 861
    :cond_1a
    iget-object p1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    const/4 v0, 0x1

    if-eqz p1, :cond_30

    iget v4, p1, Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mAnchorPosition:I

    if-eq v4, v2, :cond_30

    iget p1, p1, Lflyme/support/v7/widget/StaggeredGridLayoutManager$SavedState;->mSpanOffsetsSize:I

    if-ge p1, v0, :cond_28

    goto :goto_30

    .line 922
    :cond_28
    iput v3, p2, Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    .line 923
    iget p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    iput p0, p2, Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    goto/16 :goto_db

    .line 864
    :cond_30
    :goto_30
    iget p1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_bf

    .line 868
    iget-boolean v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mShouldReverseLayout:Z

    if-eqz v1, :cond_41

    invoke-virtual {p0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->getLastChildPosition()I

    move-result v1

    goto :goto_45

    .line 869
    :cond_41
    invoke-virtual {p0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->getFirstChildPosition()I

    move-result v1

    :goto_45
    iput v1, p2, Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    .line 870
    iget v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    if-eq v1, v3, :cond_75

    .line 871
    iget-boolean v1, p2, Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v1, :cond_62

    .line 872
    iget-object v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v1}, Lflyme/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    iget v2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr v1, v2

    .line 874
    iget-object p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p0

    sub-int/2addr v1, p0

    iput v1, p2, Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    goto :goto_74

    .line 876
    :cond_62
    iget-object v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v1}, Lflyme/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    iget v2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    add-int/2addr v1, v2

    .line 878
    iget-object p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p0

    sub-int/2addr v1, p0

    iput v1, p2, Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    :goto_74
    return v0

    .line 884
    :cond_75
    iget-object v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v1, p1}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    .line 885
    iget-object v2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v2}, Lflyme/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v2

    if-le v1, v2, :cond_97

    .line 887
    iget-boolean p1, p2, Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz p1, :cond_8e

    iget-object p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    .line 888
    invoke-virtual {p0}, Lflyme/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p0

    goto :goto_94

    :cond_8e
    iget-object p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    .line 889
    invoke-virtual {p0}, Lflyme/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p0

    :goto_94
    iput p0, p2, Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    return v0

    .line 893
    :cond_97
    iget-object v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v1, p1}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    .line 894
    invoke-virtual {v2}, Lflyme/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v2

    sub-int/2addr v1, v2

    if-gez v1, :cond_aa

    neg-int p0, v1

    .line 896
    iput p0, p2, Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    return v0

    .line 899
    :cond_aa
    iget-object v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v1}, Lflyme/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    iget-object p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    .line 900
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p0

    sub-int/2addr v1, p0

    if-gez v1, :cond_bc

    .line 902
    iput v1, p2, Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    return v0

    .line 906
    :cond_bc
    iput v3, p2, Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mOffset:I

    goto :goto_db

    .line 910
    :cond_bf
    iget p1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    iput p1, p2, Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    .line 911
    iget p1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    if-ne p1, v3, :cond_d6

    .line 912
    iget p1, p2, Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    invoke-direct {p0, p1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->calculateScrollDirectionForPosition(I)I

    move-result p0

    if-ne p0, v0, :cond_d0

    move v1, v0

    .line 914
    :cond_d0
    iput-boolean v1, p2, Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 915
    invoke-virtual {p2}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    goto :goto_d9

    .line 917
    :cond_d6
    invoke-virtual {p2, p1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->assignCoordinateFromPadding(I)V

    .line 919
    :goto_d9
    iput-boolean v0, p2, Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mInvalidateOffsets:Z

    :goto_db
    return v0

    .line 856
    :cond_dc
    :goto_dc
    iput v2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPosition:I

    .line 857
    iput v3, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPendingScrollPositionOffset:I

    :cond_e0
    :goto_e0
    return v1
.end method

.method updateAnchorInfoForLayout(Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;)V
    .registers 4

    .line 824
    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->updateAnchorFromPendingData(Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 827
    :cond_7
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->updateAnchorFromChildren(Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;)Z

    move-result p0

    if-eqz p0, :cond_e

    return-void

    .line 833
    :cond_e
    invoke-virtual {p2}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    const/4 p0, 0x0

    .line 834
    iput p0, p2, Lflyme/support/v7/widget/StaggeredGridLayoutManager$AnchorInfo;->mPosition:I

    return-void
.end method

.method updateMeasureSpecs(I)V
    .registers 3

    .line 929
    iget v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSpanCount:I

    div-int v0, p1, v0

    iput v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSizePerSpan:I

    .line 931
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mSecondaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    .line 932
    invoke-virtual {v0}, Lflyme/support/v7/widget/OrientationHelper;->getMode()I

    move-result v0

    .line 931
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iput p1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mFullSizeSpec:I

    return-void
.end method
