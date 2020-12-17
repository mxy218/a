.class public Lflyme/support/v7/widget/LinearLayoutManager;
.super Lflyme/support/v7/widget/RecyclerView$LayoutManager;
.source "LinearLayoutManager.java"

# interfaces
.implements Lflyme/support/v7/widget/helper/ItemTouchHelper$ViewDropHandler;
.implements Lflyme/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;,
        Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;,
        Lflyme/support/v7/widget/LinearLayoutManager$SavedState;,
        Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;
    }
.end annotation


# instance fields
.field final mAnchorInfo:Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;

.field private mInitialPrefetchItemCount:I

.field private mLastStackFromEnd:Z

.field private final mLayoutChunkResult:Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;

.field private mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

.field mOrientation:I

.field mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

.field mPendingSavedState:Lflyme/support/v7/widget/LinearLayoutManager$SavedState;

.field mPendingScrollPosition:I

.field mPendingScrollPositionOffset:I

.field private mRecycleChildrenOnDetach:Z

.field private mReverseLayout:Z

.field mShouldReverseLayout:Z

.field private mSmoothScrollbarEnabled:Z

.field private mStackFromEnd:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 160
    invoke-direct {p0, p1, v0, v1}, Lflyme/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .registers 5

    .line 169
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;-><init>()V

    const/4 p1, 0x0

    .line 100
    iput-boolean p1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 107
    iput-boolean p1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 114
    iput-boolean p1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    const/4 p1, 0x1

    .line 120
    iput-boolean p1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v0, -0x1

    .line 126
    iput v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    const/high16 v0, -0x80000000

    .line 132
    iput v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    const/4 v0, 0x0

    .line 136
    iput-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/LinearLayoutManager$SavedState;

    .line 142
    new-instance v0, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {v0, p0}, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;-><init>(Lflyme/support/v7/widget/LinearLayoutManager;)V

    iput-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;

    .line 147
    new-instance v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;

    invoke-direct {v0}, Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutChunkResult:Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;

    const/4 v0, 0x2

    .line 152
    iput v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mInitialPrefetchItemCount:I

    .line 170
    invoke-virtual {p0, p2}, Lflyme/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 171
    invoke-virtual {p0, p3}, Lflyme/support/v7/widget/LinearLayoutManager;->setReverseLayout(Z)V

    .line 172
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->setAutoMeasureEnabled(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7

    .line 184
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;-><init>()V

    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 107
    iput-boolean v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 114
    iput-boolean v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    const/4 v0, 0x1

    .line 120
    iput-boolean v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v1, -0x1

    .line 126
    iput v1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    const/high16 v1, -0x80000000

    .line 132
    iput v1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    const/4 v1, 0x0

    .line 136
    iput-object v1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/LinearLayoutManager$SavedState;

    .line 142
    new-instance v1, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {v1, p0}, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;-><init>(Lflyme/support/v7/widget/LinearLayoutManager;)V

    iput-object v1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;

    .line 147
    new-instance v1, Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;

    invoke-direct {v1}, Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;-><init>()V

    iput-object v1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutChunkResult:Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;

    const/4 v1, 0x2

    .line 152
    iput v1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mInitialPrefetchItemCount:I

    .line 185
    invoke-static {p1, p2, p3, p4}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getProperties(Landroid/content/Context;Landroid/util/AttributeSet;II)Lflyme/support/v7/widget/RecyclerView$LayoutManager$Properties;

    move-result-object p1

    .line 186
    iget p2, p1, Lflyme/support/v7/widget/RecyclerView$LayoutManager$Properties;->orientation:I

    invoke-virtual {p0, p2}, Lflyme/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 187
    iget-boolean p2, p1, Lflyme/support/v7/widget/RecyclerView$LayoutManager$Properties;->reverseLayout:Z

    invoke-virtual {p0, p2}, Lflyme/support/v7/widget/LinearLayoutManager;->setReverseLayout(Z)V

    .line 188
    iget-boolean p1, p1, Lflyme/support/v7/widget/RecyclerView$LayoutManager$Properties;->stackFromEnd:Z

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    .line 189
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->setAutoMeasureEnabled(Z)V

    return-void
.end method

.method private computeScrollExtent(Lflyme/support/v7/widget/RecyclerView$State;)I
    .registers 8

    .line 1108
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 1111
    :cond_8
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1112
    iget-object v1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    iget-boolean v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 1113
    invoke-direct {p0, v0, v2}, Lflyme/support/v7/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/2addr v0, v2

    .line 1114
    invoke-direct {p0, v0, v2}, Lflyme/support/v7/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v0, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, p0

    .line 1112
    invoke-static/range {v0 .. v5}, Lflyme/support/v7/widget/ScrollbarHelper;->computeScrollExtent(Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Lflyme/support/v7/widget/RecyclerView$LayoutManager;Z)I

    move-result p0

    return p0
.end method

.method private computeScrollOffset(Lflyme/support/v7/widget/RecyclerView$State;)I
    .registers 9

    .line 1097
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 1100
    :cond_8
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1101
    iget-object v1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    iget-boolean v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 1102
    invoke-direct {p0, v0, v2}, Lflyme/support/v7/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/2addr v0, v2

    .line 1103
    invoke-direct {p0, v0, v2}, Lflyme/support/v7/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    iget-boolean v6, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    move-object v0, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, p0

    .line 1101
    invoke-static/range {v0 .. v6}, Lflyme/support/v7/widget/ScrollbarHelper;->computeScrollOffset(Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Lflyme/support/v7/widget/RecyclerView$LayoutManager;ZZ)I

    move-result p0

    return p0
.end method

.method private computeScrollRange(Lflyme/support/v7/widget/RecyclerView$State;)I
    .registers 8

    .line 1119
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 1122
    :cond_8
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1123
    iget-object v1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    iget-boolean v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 1124
    invoke-direct {p0, v0, v2}, Lflyme/support/v7/widget/LinearLayoutManager;->findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    xor-int/2addr v0, v2

    .line 1125
    invoke-direct {p0, v0, v2}, Lflyme/support/v7/widget/LinearLayoutManager;->findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;

    move-result-object v4

    iget-boolean v5, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mSmoothScrollbarEnabled:Z

    move-object v0, p1

    move-object v2, v3

    move-object v3, v4

    move-object v4, p0

    .line 1123
    invoke-static/range {v0 .. v5}, Lflyme/support/v7/widget/ScrollbarHelper;->computeScrollRange(Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Lflyme/support/v7/widget/RecyclerView$LayoutManager;Z)I

    move-result p0

    return p0
.end method

.method private findFirstPartiallyOrCompletelyInvisibleChild(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .registers 3

    .line 1829
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lflyme/support/v7/widget/LinearLayoutManager;->findOnePartiallyOrCompletelyInvisibleChild(II)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private findFirstReferenceChild(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .registers 9

    .line 1774
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v4

    invoke-virtual {p2}, Lflyme/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v5

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lflyme/support/v7/widget/LinearLayoutManager;->findReferenceChild(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;III)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private findFirstVisibleChildClosestToEnd(ZZ)Landroid/view/View;
    .registers 5

    .line 1730
    iget-boolean v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    .line 1731
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Lflyme/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 1734
    :cond_e
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lflyme/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private findFirstVisibleChildClosestToStart(ZZ)Landroid/view/View;
    .registers 5

    .line 1712
    iget-boolean v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_10

    .line 1713
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lflyme/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_10
    const/4 v0, 0x0

    .line 1716
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Lflyme/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private findLastPartiallyOrCompletelyInvisibleChild(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .registers 3

    .line 1834
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/4 p2, -0x1

    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/widget/LinearLayoutManager;->findOnePartiallyOrCompletelyInvisibleChild(II)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private findLastReferenceChild(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .registers 10

    .line 1778
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p2}, Lflyme/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v6

    const/4 v5, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lflyme/support/v7/widget/LinearLayoutManager;->findReferenceChild(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;III)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private findPartiallyOrCompletelyInvisibleChildClosestToEnd(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .registers 4

    .line 1815
    iget-boolean v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_9

    invoke-direct {p0, p1, p2}, Lflyme/support/v7/widget/LinearLayoutManager;->findFirstPartiallyOrCompletelyInvisibleChild(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p0

    goto :goto_d

    .line 1816
    :cond_9
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/widget/LinearLayoutManager;->findLastPartiallyOrCompletelyInvisibleChild(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p0

    :goto_d
    return-object p0
.end method

.method private findPartiallyOrCompletelyInvisibleChildClosestToStart(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .registers 4

    .line 1823
    iget-boolean v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_9

    invoke-direct {p0, p1, p2}, Lflyme/support/v7/widget/LinearLayoutManager;->findLastPartiallyOrCompletelyInvisibleChild(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p0

    goto :goto_d

    .line 1824
    :cond_9
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/widget/LinearLayoutManager;->findFirstPartiallyOrCompletelyInvisibleChild(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p0

    :goto_d
    return-object p0
.end method

.method private findReferenceChildClosestToEnd(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .registers 4

    .line 1752
    iget-boolean v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_9

    invoke-direct {p0, p1, p2}, Lflyme/support/v7/widget/LinearLayoutManager;->findFirstReferenceChild(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p0

    goto :goto_d

    .line 1753
    :cond_9
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/widget/LinearLayoutManager;->findLastReferenceChild(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p0

    :goto_d
    return-object p0
.end method

.method private findReferenceChildClosestToStart(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .registers 4

    .line 1769
    iget-boolean v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_9

    invoke-direct {p0, p1, p2}, Lflyme/support/v7/widget/LinearLayoutManager;->findLastReferenceChild(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p0

    goto :goto_d

    .line 1770
    :cond_9
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/widget/LinearLayoutManager;->findFirstReferenceChild(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p0

    :goto_d
    return-object p0
.end method

.method private fixLayoutEndGap(ILflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Z)I
    .registers 6

    .line 893
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    sub-int/2addr v0, p1

    if-lez v0, :cond_23

    neg-int v0, v0

    .line 896
    invoke-virtual {p0, v0, p2, p3}, Lflyme/support/v7/widget/LinearLayoutManager;->scrollBy(ILflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result p2

    neg-int p2, p2

    add-int/2addr p1, p2

    if-eqz p4, :cond_22

    .line 904
    iget-object p3, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {p3}, Lflyme/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p3

    sub-int/2addr p3, p1

    if-lez p3, :cond_22

    .line 906
    iget-object p0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {p0, p3}, Lflyme/support/v7/widget/OrientationHelper;->offsetChildren(I)V

    add-int/2addr p3, p2

    return p3

    :cond_22
    return p2

    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method private fixLayoutStartGap(ILflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Z)I
    .registers 6

    .line 918
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    sub-int v0, p1, v0

    if-lez v0, :cond_23

    .line 922
    invoke-virtual {p0, v0, p2, p3}, Lflyme/support/v7/widget/LinearLayoutManager;->scrollBy(ILflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result p2

    neg-int p2, p2

    add-int/2addr p1, p2

    if-eqz p4, :cond_22

    .line 929
    iget-object p3, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {p3}, Lflyme/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p3

    sub-int/2addr p1, p3

    if-lez p1, :cond_22

    .line 931
    iget-object p0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    neg-int p3, p1

    invoke-virtual {p0, p3}, Lflyme/support/v7/widget/OrientationHelper;->offsetChildren(I)V

    sub-int/2addr p2, p1

    :cond_22
    return p2

    :cond_23
    const/4 p0, 0x0

    return p0
.end method

.method private getChildClosestToEnd()Landroid/view/View;
    .registers 2

    .line 1700
    iget-boolean v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_c
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private getChildClosestToStart()Landroid/view/View;
    .registers 2

    .line 1690
    iget-boolean v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private layoutForPredictiveAnimations(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;II)V
    .registers 20

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 687
    invoke-virtual/range {p2 .. p2}, Lflyme/support/v7/widget/RecyclerView$State;->willRunPredictiveAnimations()Z

    move-result v3

    if-eqz v3, :cond_ad

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_ad

    invoke-virtual/range {p2 .. p2}, Lflyme/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v3

    if-nez v3, :cond_ad

    .line 688
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v3

    if-nez v3, :cond_1f

    goto/16 :goto_ad

    .line 693
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Lflyme/support/v7/widget/RecyclerView$Recycler;->getScrapList()Ljava/util/List;

    move-result-object v3

    .line 694
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    .line 695
    invoke-virtual {p0, v5}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0, v6}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    move v7, v5

    move v8, v7

    move v9, v8

    :goto_33
    if-ge v7, v4, :cond_6a

    .line 697
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lflyme/support/v7/widget/RecyclerView$ViewHolder;

    .line 698
    invoke-virtual {v10}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v11

    if-eqz v11, :cond_42

    goto :goto_67

    .line 701
    :cond_42
    invoke-virtual {v10}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v11

    const/4 v12, 0x1

    if-ge v11, v6, :cond_4b

    move v11, v12

    goto :goto_4c

    :cond_4b
    move v11, v5

    .line 702
    :goto_4c
    iget-boolean v13, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    const/4 v14, -0x1

    if-eq v11, v13, :cond_52

    move v12, v14

    :cond_52
    if-ne v12, v14, :cond_5e

    .line 705
    iget-object v11, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    iget-object v10, v10, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11, v10}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v10

    add-int/2addr v8, v10

    goto :goto_67

    .line 707
    :cond_5e
    iget-object v11, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    iget-object v10, v10, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11, v10}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v10

    add-int/2addr v9, v10

    :goto_67
    add-int/lit8 v7, v7, 0x1

    goto :goto_33

    .line 715
    :cond_6a
    iget-object v4, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iput-object v3, v4, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-lez v8, :cond_8b

    .line 717
    invoke-direct {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v3

    .line 718
    invoke-virtual {p0, v3}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    move/from16 v4, p3

    invoke-direct {p0, v3, v4}, Lflyme/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 719
    iget-object v3, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iput v8, v3, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 720
    iput v5, v3, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 721
    invoke-virtual {v3}, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->assignPositionFromScrapList()V

    .line 722
    iget-object v3, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, v1, v3, v2, v5}, Lflyme/support/v7/widget/LinearLayoutManager;->fill(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;Lflyme/support/v7/widget/RecyclerView$State;Z)I

    :cond_8b
    if-lez v9, :cond_a8

    .line 726
    invoke-direct {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v3

    .line 727
    invoke-virtual {p0, v3}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    move/from16 v4, p4

    invoke-direct {p0, v3, v4}, Lflyme/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 728
    iget-object v3, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iput v9, v3, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 729
    iput v5, v3, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 730
    invoke-virtual {v3}, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->assignPositionFromScrapList()V

    .line 731
    iget-object v3, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, v1, v3, v2, v5}, Lflyme/support/v7/widget/LinearLayoutManager;->fill(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;Lflyme/support/v7/widget/RecyclerView$State;Z)I

    .line 733
    :cond_a8
    iget-object v0, v0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    const/4 v1, 0x0

    iput-object v1, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    :cond_ad
    :goto_ad
    return-void
.end method

.method private recycleByLayoutState(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;)V
    .registers 5

    .line 1475
    iget-boolean v0, p2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    if-eqz v0, :cond_19

    iget-boolean v0, p2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    if-eqz v0, :cond_9

    goto :goto_19

    .line 1478
    :cond_9
    iget v0, p2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    .line 1479
    iget p2, p2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-direct {p0, p1, p2}, Lflyme/support/v7/widget/LinearLayoutManager;->recycleViewsFromEnd(Lflyme/support/v7/widget/RecyclerView$Recycler;I)V

    goto :goto_19

    .line 1481
    :cond_14
    iget p2, p2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-direct {p0, p1, p2}, Lflyme/support/v7/widget/LinearLayoutManager;->recycleViewsFromStart(Lflyme/support/v7/widget/RecyclerView$Recycler;I)V

    :cond_19
    :goto_19
    return-void
.end method

.method private recycleChildren(Lflyme/support/v7/widget/RecyclerView$Recycler;II)V
    .registers 4

    if-ne p2, p3, :cond_3

    return-void

    :cond_3
    if-le p3, p2, :cond_f

    add-int/lit8 p3, p3, -0x1

    :goto_7
    if-lt p3, p2, :cond_17

    .line 1366
    invoke-virtual {p0, p3, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleViewAt(ILflyme/support/v7/widget/RecyclerView$Recycler;)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_7

    :cond_f
    :goto_f
    if-le p2, p3, :cond_17

    .line 1370
    invoke-virtual {p0, p2, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleViewAt(ILflyme/support/v7/widget/RecyclerView$Recycler;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_f

    :cond_17
    return-void
.end method

.method private recycleViewsFromEnd(Lflyme/support/v7/widget/RecyclerView$Recycler;I)V
    .registers 8

    .line 1431
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-gez p2, :cond_7

    return-void

    .line 1439
    :cond_7
    iget-object v1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v1}, Lflyme/support/v7/widget/OrientationHelper;->getEnd()I

    move-result v1

    sub-int/2addr v1, p2

    .line 1440
    iget-boolean p2, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz p2, :cond_32

    const/4 p2, 0x0

    move v2, p2

    :goto_14
    if-ge v2, v0, :cond_52

    .line 1442
    invoke-virtual {p0, v2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1443
    iget-object v4, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v4, v3}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    if-lt v4, v1, :cond_2e

    iget-object v4, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    .line 1444
    invoke-virtual {v4, v3}, Lflyme/support/v7/widget/OrientationHelper;->getTransformedStartWithDecoration(Landroid/view/View;)I

    move-result v3

    if-ge v3, v1, :cond_2b

    goto :goto_2e

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 1446
    :cond_2e
    :goto_2e
    invoke-direct {p0, p1, p2, v2}, Lflyme/support/v7/widget/LinearLayoutManager;->recycleChildren(Lflyme/support/v7/widget/RecyclerView$Recycler;II)V

    return-void

    :cond_32
    add-int/lit8 v0, v0, -0x1

    move p2, v0

    :goto_35
    if-ltz p2, :cond_52

    .line 1452
    invoke-virtual {p0, p2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1453
    iget-object v3, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v3, v2}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    if-lt v3, v1, :cond_4f

    iget-object v3, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    .line 1454
    invoke-virtual {v3, v2}, Lflyme/support/v7/widget/OrientationHelper;->getTransformedStartWithDecoration(Landroid/view/View;)I

    move-result v2

    if-ge v2, v1, :cond_4c

    goto :goto_4f

    :cond_4c
    add-int/lit8 p2, p2, -0x1

    goto :goto_35

    .line 1456
    :cond_4f
    :goto_4f
    invoke-direct {p0, p1, v0, p2}, Lflyme/support/v7/widget/LinearLayoutManager;->recycleChildren(Lflyme/support/v7/widget/RecyclerView$Recycler;II)V

    :cond_52
    return-void
.end method

.method private recycleViewsFromStart(Lflyme/support/v7/widget/RecyclerView$Recycler;I)V
    .registers 8

    if-gez p2, :cond_3

    return-void

    .line 1395
    :cond_3
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    .line 1396
    iget-boolean v1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v1, :cond_2c

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_e
    if-ltz v1, :cond_4b

    .line 1398
    invoke-virtual {p0, v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1399
    iget-object v3, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v3, v2}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    if-gt v3, p2, :cond_28

    iget-object v3, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    .line 1400
    invoke-virtual {v3, v2}, Lflyme/support/v7/widget/OrientationHelper;->getTransformedEndWithDecoration(Landroid/view/View;)I

    move-result v2

    if-le v2, p2, :cond_25

    goto :goto_28

    :cond_25
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 1402
    :cond_28
    :goto_28
    invoke-direct {p0, p1, v0, v1}, Lflyme/support/v7/widget/LinearLayoutManager;->recycleChildren(Lflyme/support/v7/widget/RecyclerView$Recycler;II)V

    return-void

    :cond_2c
    const/4 v1, 0x0

    move v2, v1

    :goto_2e
    if-ge v2, v0, :cond_4b

    .line 1408
    invoke-virtual {p0, v2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1409
    iget-object v4, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v4, v3}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    if-gt v4, p2, :cond_48

    iget-object v4, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    .line 1410
    invoke-virtual {v4, v3}, Lflyme/support/v7/widget/OrientationHelper;->getTransformedEndWithDecoration(Landroid/view/View;)I

    move-result v3

    if-le v3, p2, :cond_45

    goto :goto_48

    :cond_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 1412
    :cond_48
    :goto_48
    invoke-direct {p0, p1, v1, v2}, Lflyme/support/v7/widget/LinearLayoutManager;->recycleChildren(Lflyme/support/v7/widget/RecyclerView$Recycler;II)V

    :cond_4b
    return-void
.end method

.method private resolveShouldLayoutReverse()V
    .registers 3

    .line 357
    iget v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_12

    .line 360
    :cond_c
    iget-boolean v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    goto :goto_16

    .line 358
    :cond_12
    :goto_12
    iget-boolean v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    iput-boolean v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    :goto_16
    return-void
.end method

.method private updateAnchorFromChildren(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;)Z
    .registers 8

    .line 766
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 769
    :cond_8
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_19

    .line 770
    invoke-virtual {p3, v0, p2}, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->isViewValidAsAnchor(Landroid/view/View;Lflyme/support/v7/widget/RecyclerView$State;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 771
    invoke-virtual {p3, v0}, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->assignFromViewAndKeepVisibleRect(Landroid/view/View;)V

    return v2

    .line 774
    :cond_19
    iget-boolean v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v3, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-eq v0, v3, :cond_20

    return v1

    .line 777
    :cond_20
    iget-boolean v0, p3, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v0, :cond_29

    .line 778
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/widget/LinearLayoutManager;->findReferenceChildClosestToEnd(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p1

    goto :goto_2d

    .line 779
    :cond_29
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/widget/LinearLayoutManager;->findReferenceChildClosestToStart(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p1

    :goto_2d
    if-eqz p1, :cond_71

    .line 781
    invoke-virtual {p3, p1}, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->assignFromView(Landroid/view/View;)V

    .line 784
    invoke-virtual {p2}, Lflyme/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result p2

    if-nez p2, :cond_70

    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result p2

    if-eqz p2, :cond_70

    .line 786
    iget-object p2, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    .line 787
    invoke-virtual {p2, p1}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p2

    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    .line 788
    invoke-virtual {v0}, Lflyme/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v0

    if-ge p2, v0, :cond_5a

    iget-object p2, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    .line 789
    invoke-virtual {p2, p1}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    iget-object p2, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    .line 790
    invoke-virtual {p2}, Lflyme/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p2

    if-ge p1, p2, :cond_5b

    :cond_5a
    move v1, v2

    :cond_5b
    if-eqz v1, :cond_70

    .line 792
    iget-boolean p1, p3, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz p1, :cond_68

    iget-object p0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    .line 793
    invoke-virtual {p0}, Lflyme/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p0

    goto :goto_6e

    :cond_68
    iget-object p0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    .line 794
    invoke-virtual {p0}, Lflyme/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p0

    :goto_6e
    iput p0, p3, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    :cond_70
    return v2

    :cond_71
    return v1
.end method

.method private updateAnchorFromPendingData(Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;)Z
    .registers 7

    .line 807
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_fe

    iget v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_e

    goto/16 :goto_fe

    :cond_e
    const/high16 v3, -0x80000000

    if-ltz v0, :cond_fa

    .line 811
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    if-lt v0, p1, :cond_1a

    goto/16 :goto_fa

    .line 822
    :cond_1a
    iget p1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    iput p1, p2, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    .line 823
    iget-object p1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/LinearLayoutManager$SavedState;

    const/4 v0, 0x1

    if-eqz p1, :cond_4f

    invoke-virtual {p1}, Lflyme/support/v7/widget/LinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result p1

    if-eqz p1, :cond_4f

    .line 826
    iget-object p1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/LinearLayoutManager$SavedState;

    iget-boolean p1, p1, Lflyme/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean p1, p2, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 827
    iget-boolean p1, p2, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz p1, :cond_41

    .line 828
    iget-object p1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {p1}, Lflyme/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p1

    iget-object p0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/LinearLayoutManager$SavedState;

    iget p0, p0, Lflyme/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    sub-int/2addr p1, p0

    iput p1, p2, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_4e

    .line 831
    :cond_41
    iget-object p1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {p1}, Lflyme/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    iget-object p0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/LinearLayoutManager$SavedState;

    iget p0, p0, Lflyme/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    add-int/2addr p1, p0

    iput p1, p2, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    :goto_4e
    return v0

    .line 837
    :cond_4f
    iget p1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    if-ne p1, v3, :cond_dc

    .line 838
    iget p1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_bc

    .line 840
    iget-object v2, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v2, p1}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v2

    .line 841
    iget-object v3, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v3}, Lflyme/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v3

    if-le v2, v3, :cond_6d

    .line 843
    invoke-virtual {p2}, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    return v0

    .line 846
    :cond_6d
    iget-object v2, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v2, p1}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    .line 847
    invoke-virtual {v3}, Lflyme/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    sub-int/2addr v2, v3

    if-gez v2, :cond_87

    .line 849
    iget-object p0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {p0}, Lflyme/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p0

    iput p0, p2, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 850
    iput-boolean v1, p2, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    return v0

    .line 853
    :cond_87
    iget-object v1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v1}, Lflyme/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    iget-object v2, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    .line 854
    invoke-virtual {v2, p1}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    if-gez v1, :cond_a1

    .line 856
    iget-object p0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {p0}, Lflyme/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p0

    iput p0, p2, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    .line 857
    iput-boolean v0, p2, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    return v0

    .line 860
    :cond_a1
    iget-boolean v1, p2, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v1, :cond_b3

    iget-object v1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    .line 861
    invoke-virtual {v1, p1}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    iget-object p0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    .line 862
    invoke-virtual {p0}, Lflyme/support/v7/widget/OrientationHelper;->getTotalSpaceChange()I

    move-result p0

    add-int/2addr p1, p0

    goto :goto_b9

    :cond_b3
    iget-object p0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    .line 863
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    :goto_b9
    iput p1, p2, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_db

    .line 865
    :cond_bc
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p1

    if-lez p1, :cond_d8

    .line 867
    invoke-virtual {p0, v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    .line 868
    iget v2, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-ge v2, p1, :cond_d0

    move p1, v0

    goto :goto_d1

    :cond_d0
    move p1, v1

    :goto_d1
    iget-boolean p0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-ne p1, p0, :cond_d6

    move v1, v0

    :cond_d6
    iput-boolean v1, p2, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 871
    :cond_d8
    invoke-virtual {p2}, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    :goto_db
    return v0

    .line 876
    :cond_dc
    iget-boolean p1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iput-boolean p1, p2, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz p1, :cond_ee

    .line 879
    iget-object p1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {p1}, Lflyme/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p1

    iget p0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    sub-int/2addr p1, p0

    iput p1, p2, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    goto :goto_f9

    .line 882
    :cond_ee
    iget-object p1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {p1}, Lflyme/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    iget p0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    add-int/2addr p1, p0

    iput p1, p2, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    :goto_f9
    return v0

    .line 812
    :cond_fa
    :goto_fa
    iput v2, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 813
    iput v3, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    :cond_fe
    :goto_fe
    return v1
.end method

.method private updateAnchorInfoForLayout(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;)V
    .registers 5

    .line 738
    invoke-direct {p0, p2, p3}, Lflyme/support/v7/widget/LinearLayoutManager;->updateAnchorFromPendingData(Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 745
    :cond_7
    invoke-direct {p0, p1, p2, p3}, Lflyme/support/v7/widget/LinearLayoutManager;->updateAnchorFromChildren(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;)Z

    move-result p1

    if-eqz p1, :cond_e

    return-void

    .line 754
    :cond_e
    invoke-virtual {p3}, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->assignCoordinateFromPadding()V

    .line 755
    iget-boolean p0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-eqz p0, :cond_1c

    invoke-virtual {p2}, Lflyme/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    iput p0, p3, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    return-void
.end method

.method private updateLayoutState(IIZLflyme/support/v7/widget/RecyclerView$State;)V
    .registers 9

    .line 1164
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->resolveIsInfinite()Z

    move-result v1

    iput-boolean v1, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    .line 1165
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p4}, Lflyme/support/v7/widget/LinearLayoutManager;->getExtraLayoutSpace(Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result p4

    iput p4, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 1166
    iget-object p4, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iput p1, p4, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_54

    .line 1169
    iget p1, p4, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    iget-object v2, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v2}, Lflyme/support/v7/widget/OrientationHelper;->getEndPadding()I

    move-result v2

    add-int/2addr p1, v2

    iput p1, p4, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 1171
    invoke-direct {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object p1

    .line 1173
    iget-object p4, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iget-boolean v2, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v1

    :goto_2f
    iput v0, p4, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 1175
    iget-object p4, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v2, v1, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v0, v2

    iput v0, p4, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1176
    iget-object p4, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {p4, p1}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p4

    iput p4, v1, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1178
    iget-object p4, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {p4, p1}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    iget-object p4, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    .line 1179
    invoke-virtual {p4}, Lflyme/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p4

    sub-int/2addr p1, p4

    goto :goto_91

    .line 1182
    :cond_54
    invoke-direct {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object p1

    .line 1183
    iget-object p4, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v2, p4, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    iget-object v3, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v3}, Lflyme/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p4, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 1184
    iget-object p4, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iget-boolean v2, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v2, :cond_6c

    move v0, v1

    :cond_6c
    iput v0, p4, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 1186
    iget-object p4, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v2, v1, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v0, v2

    iput v0, p4, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 1187
    iget-object p4, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {p4, p1}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p4

    iput p4, v1, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1188
    iget-object p4, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {p4, p1}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    neg-int p1, p1

    iget-object p4, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    .line 1189
    invoke-virtual {p4}, Lflyme/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p4

    add-int/2addr p1, p4

    .line 1191
    :goto_91
    iget-object p4, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iput p2, p4, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-eqz p3, :cond_9c

    .line 1193
    iget p2, p4, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    sub-int/2addr p2, p1

    iput p2, p4, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1195
    :cond_9c
    iget-object p0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iput p1, p0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    return-void
.end method

.method private updateLayoutStateToFillEnd(II)V
    .registers 6

    .line 943
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iget-object v1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v1}, Lflyme/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    sub-int/2addr v1, p2

    iput v1, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 944
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iget-boolean v1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_14

    const/4 v1, -0x1

    goto :goto_15

    :cond_14
    move v1, v2

    :goto_15
    iput v1, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 946
    iget-object p0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iput p1, p0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 947
    iput v2, p0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 948
    iput p2, p0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    const/high16 p1, -0x80000000

    .line 949
    iput p1, p0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    return-void
.end method

.method private updateLayoutStateToFillEnd(Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;)V
    .registers 3

    .line 939
    iget v0, p1, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    iget p1, p1, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-direct {p0, v0, p1}, Lflyme/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    return-void
.end method

.method private updateLayoutStateToFillStart(II)V
    .registers 5

    .line 957
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iget-object v1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v1}, Lflyme/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    sub-int v1, p2, v1

    iput v1, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 958
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iput p1, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 959
    iget-boolean p1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    const/4 v1, -0x1

    if-eqz p1, :cond_17

    const/4 p1, 0x1

    goto :goto_18

    :cond_17
    move p1, v1

    :goto_18
    iput p1, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    .line 961
    iget-object p0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iput v1, p0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    .line 962
    iput p2, p0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    const/high16 p1, -0x80000000

    .line 963
    iput p1, p0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    return-void
.end method

.method private updateLayoutStateToFillStart(Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;)V
    .registers 3

    .line 953
    iget v0, p1, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mPosition:I

    iget p1, p1, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mCoordinate:I

    invoke-direct {p0, v0, p1}, Lflyme/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    return-void
.end method


# virtual methods
.method public assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .registers 3

    .line 1346
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_7

    .line 1347
    invoke-super {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public canScrollHorizontally()Z
    .registers 1

    .line 294
    iget p0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientation:I

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

    .line 302
    iget p0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public collectAdjacentPrefetchPositions(IILflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .registers 6

    .line 1305
    iget v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_5

    goto :goto_6

    :cond_5
    move p1, p2

    .line 1306
    :goto_6
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p2

    if-eqz p2, :cond_21

    if-nez p1, :cond_f

    goto :goto_21

    :cond_f
    const/4 p2, 0x1

    if-lez p1, :cond_14

    move v0, p2

    goto :goto_15

    :cond_14
    const/4 v0, -0x1

    .line 1312
    :goto_15
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 1313
    invoke-direct {p0, v0, p1, p2, p3}, Lflyme/support/v7/widget/LinearLayoutManager;->updateLayoutState(IIZLflyme/support/v7/widget/RecyclerView$State;)V

    .line 1314
    iget-object p1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0, p3, p1, p4}, Lflyme/support/v7/widget/LinearLayoutManager;->collectPrefetchPositionsForLayoutState(Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;Lflyme/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V

    :cond_21
    :goto_21
    return-void
.end method

.method public collectInitialPrefetchPositions(ILflyme/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .registers 8

    .line 1216
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/LinearLayoutManager$SavedState;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lflyme/support/v7/widget/LinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1218
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/LinearLayoutManager$SavedState;

    iget-boolean v3, v0, Lflyme/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 1219
    iget v0, v0, Lflyme/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    goto :goto_22

    .line 1221
    :cond_13
    invoke-direct {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 1222
    iget-boolean v3, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 1223
    iget v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-ne v0, v1, :cond_22

    if-eqz v3, :cond_21

    add-int/lit8 v0, p1, -0x1

    goto :goto_22

    :cond_21
    move v0, v2

    :cond_22
    :goto_22
    if-eqz v3, :cond_25

    goto :goto_26

    :cond_25
    const/4 v1, 0x1

    :goto_26
    move v3, v0

    move v0, v2

    .line 1234
    :goto_28
    iget v4, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mInitialPrefetchItemCount:I

    if-ge v0, v4, :cond_37

    if-ltz v3, :cond_37

    if-ge v3, p1, :cond_37

    .line 1236
    invoke-interface {p2, v3, v2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    add-int/2addr v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_37
    return-void
.end method

.method collectPrefetchPositionsForLayoutState(Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;Lflyme/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .registers 4

    .line 1205
    iget p0, p2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    if-ltz p0, :cond_14

    .line 1206
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    if-ge p0, p1, :cond_14

    const/4 p1, 0x0

    .line 1207
    iget p2, p2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-interface {p3, p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    :cond_14
    return-void
.end method

.method public computeHorizontalScrollExtent(Lflyme/support/v7/widget/RecyclerView$State;)I
    .registers 2

    .line 1078
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/LinearLayoutManager;->computeScrollExtent(Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public computeHorizontalScrollOffset(Lflyme/support/v7/widget/RecyclerView$State;)I
    .registers 2

    .line 1068
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/LinearLayoutManager;->computeScrollOffset(Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public computeHorizontalScrollRange(Lflyme/support/v7/widget/RecyclerView$State;)I
    .registers 2

    .line 1088
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/LinearLayoutManager;->computeScrollRange(Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .registers 5

    .line 457
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    const/4 v0, 0x0

    .line 460
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-ge p1, v1, :cond_15

    move v0, v2

    .line 461
    :cond_15
    iget-boolean p1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eq v0, p1, :cond_1a

    const/4 v2, -0x1

    .line 462
    :cond_1a
    iget p0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientation:I

    const/4 p1, 0x0

    if-nez p0, :cond_26

    .line 463
    new-instance p0, Landroid/graphics/PointF;

    int-to-float v0, v2

    invoke-direct {p0, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0

    .line 465
    :cond_26
    new-instance p0, Landroid/graphics/PointF;

    int-to-float v0, v2

    invoke-direct {p0, p1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method public computeVerticalScrollExtent(Lflyme/support/v7/widget/RecyclerView$State;)I
    .registers 2

    .line 1083
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/LinearLayoutManager;->computeScrollExtent(Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public computeVerticalScrollOffset(Lflyme/support/v7/widget/RecyclerView$State;)I
    .registers 2

    .line 1073
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/LinearLayoutManager;->computeScrollOffset(Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public computeVerticalScrollRange(Lflyme/support/v7/widget/RecyclerView$State;)I
    .registers 2

    .line 1093
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/LinearLayoutManager;->computeScrollRange(Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method convertFocusDirectionToLayoutDirection(I)I
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

    .line 1666
    :cond_1a
    iget p0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-ne p0, v1, :cond_1f

    goto :goto_20

    :cond_1f
    move v1, v3

    :goto_20
    return v1

    .line 1672
    :cond_21
    iget p0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-nez p0, :cond_26

    goto :goto_27

    :cond_26
    move v1, v3

    :goto_27
    return v1

    .line 1663
    :cond_28
    iget p0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-ne p0, v1, :cond_2d

    goto :goto_2e

    :cond_2d
    move v0, v3

    :goto_2e
    return v0

    .line 1669
    :cond_2f
    iget p0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-nez p0, :cond_34

    goto :goto_35

    :cond_34
    move v0, v3

    :goto_35
    return v0

    .line 1655
    :cond_36
    iget p1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-ne p1, v1, :cond_3b

    return v1

    .line 1657
    :cond_3b
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result p0

    if-eqz p0, :cond_42

    return v0

    :cond_42
    return v1

    .line 1647
    :cond_43
    iget p1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-ne p1, v1, :cond_48

    return v0

    .line 1649
    :cond_48
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result p0

    if-eqz p0, :cond_4f

    return v1

    :cond_4f
    return v0
.end method

.method createLayoutState()Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;
    .registers 1

    .line 986
    new-instance p0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-direct {p0}, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;-><init>()V

    return-object p0
.end method

.method ensureLayoutState()V
    .registers 2

    .line 972
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    if-nez v0, :cond_a

    .line 973
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->createLayoutState()Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    move-result-object v0

    iput-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    .line 975
    :cond_a
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    if-nez v0, :cond_16

    .line 976
    iget v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientation:I

    invoke-static {p0, v0}, Lflyme/support/v7/widget/OrientationHelper;->createOrientationHelper(Lflyme/support/v7/widget/RecyclerView$LayoutManager;I)Lflyme/support/v7/widget/OrientationHelper;

    move-result-object v0

    iput-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    :cond_16
    return-void
.end method

.method fill(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;Lflyme/support/v7/widget/RecyclerView$State;Z)I
    .registers 12

    .line 1499
    iget v0, p2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    .line 1500
    iget v1, p2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_10

    if-gez v0, :cond_d

    add-int/2addr v1, v0

    .line 1503
    iput v1, p2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1505
    :cond_d
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/widget/LinearLayoutManager;->recycleByLayoutState(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;)V

    .line 1507
    :cond_10
    iget v1, p2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    iget v3, p2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    add-int/2addr v1, v3

    .line 1508
    new-instance v3, Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;

    invoke-direct {v3}, Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;-><init>()V

    .line 1510
    :cond_1a
    iget-boolean v4, p2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    if-nez v4, :cond_20

    if-lez v1, :cond_6e

    :cond_20
    invoke-virtual {p2, p3}, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->hasMore(Lflyme/support/v7/widget/RecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 1511
    invoke-virtual {v3}, Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->resetInternal()V

    .line 1515
    invoke-virtual {p0, p1, p3, p2, v3}, Lflyme/support/v7/widget/LinearLayoutManager;->layoutChunk(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;)V

    .line 1519
    iget-boolean v4, v3, Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    if-eqz v4, :cond_31

    goto :goto_6e

    .line 1522
    :cond_31
    iget v4, p2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    iget v5, v3, Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    iget v6, p2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1529
    iget-boolean v4, v3, Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    if-eqz v4, :cond_4b

    iget-object v4, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iget-object v4, v4, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    if-nez v4, :cond_4b

    .line 1530
    invoke-virtual {p3}, Lflyme/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v4

    if-nez v4, :cond_53

    .line 1531
    :cond_4b
    iget v4, p2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    iget v5, v3, Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int/2addr v4, v5

    iput v4, p2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    sub-int/2addr v1, v5

    .line 1536
    :cond_53
    iget v4, p2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    if-eq v4, v2, :cond_68

    .line 1537
    iget v5, v3, Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr v4, v5

    iput v4, p2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1538
    iget v4, p2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-gez v4, :cond_65

    .line 1539
    iget v5, p2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    add-int/2addr v5, v4

    iput v5, p2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1541
    :cond_65
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/widget/LinearLayoutManager;->recycleByLayoutState(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;)V

    :cond_68
    if-eqz p4, :cond_1a

    .line 1543
    iget-boolean v4, v3, Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    if-eqz v4, :cond_1a

    .line 1550
    :cond_6e
    :goto_6e
    iget p0, p2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public findFirstVisibleItemPosition()I
    .registers 4

    .line 1856
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v1, v2}, Lflyme/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 p0, -0x1

    goto :goto_12

    .line 1857
    :cond_e
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    :goto_12
    return p0
.end method

.method public findLastVisibleItemPosition()I
    .registers 5

    .line 1896
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lflyme/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_f

    goto :goto_13

    .line 1897
    :cond_f
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    :goto_13
    return v2
.end method

.method findOnePartiallyOrCompletelyInvisibleChild(II)Landroid/view/View;
    .registers 6

    .line 1945
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    if-le p2, p1, :cond_7

    const/4 v0, 0x1

    goto :goto_c

    :cond_7
    if-ge p2, p1, :cond_b

    const/4 v0, -0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-nez v0, :cond_13

    .line 1948
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 1952
    :cond_13
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    .line 1953
    invoke-virtual {v1}, Lflyme/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v1

    if-ge v0, v1, :cond_2a

    const/16 v0, 0x4104

    const/16 v1, 0x4004

    goto :goto_2e

    :cond_2a
    const/16 v0, 0x1041

    const/16 v1, 0x1001

    .line 1964
    :goto_2e
    iget v2, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-nez v2, :cond_39

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mHorizontalBoundCheck:Lflyme/support/v7/widget/ViewBoundsCheck;

    .line 1965
    invoke-virtual {p0, p1, p2, v0, v1}, Lflyme/support/v7/widget/ViewBoundsCheck;->findOneViewWithinBoundFlags(IIII)Landroid/view/View;

    move-result-object p0

    goto :goto_3f

    :cond_39
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mVerticalBoundCheck:Lflyme/support/v7/widget/ViewBoundsCheck;

    .line 1967
    invoke-virtual {p0, p1, p2, v0, v1}, Lflyme/support/v7/widget/ViewBoundsCheck;->findOneViewWithinBoundFlags(IIII)Landroid/view/View;

    move-result-object p0

    :goto_3f
    return-object p0
.end method

.method findOneVisibleChild(IIZZ)Landroid/view/View;
    .registers 6

    .line 1923
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    const/16 v0, 0x140

    if-eqz p3, :cond_a

    const/16 p3, 0x6003

    goto :goto_b

    :cond_a
    move p3, v0

    :goto_b
    if-eqz p4, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 1937
    :goto_f
    iget p4, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-nez p4, :cond_1a

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mHorizontalBoundCheck:Lflyme/support/v7/widget/ViewBoundsCheck;

    .line 1938
    invoke-virtual {p0, p1, p2, p3, v0}, Lflyme/support/v7/widget/ViewBoundsCheck;->findOneViewWithinBoundFlags(IIII)Landroid/view/View;

    move-result-object p0

    goto :goto_20

    :cond_1a
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->mVerticalBoundCheck:Lflyme/support/v7/widget/ViewBoundsCheck;

    .line 1940
    invoke-virtual {p0, p1, p2, p3, v0}, Lflyme/support/v7/widget/ViewBoundsCheck;->findOneViewWithinBoundFlags(IIII)Landroid/view/View;

    move-result-object p0

    :goto_20
    return-object p0
.end method

.method findReferenceChild(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;III)Landroid/view/View;
    .registers 11

    .line 1784
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1787
    iget-object p1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {p1}, Lflyme/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    .line 1788
    iget-object p2, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {p2}, Lflyme/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result p2

    if-le p4, p3, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, -0x1

    :goto_14
    const/4 v1, 0x0

    move-object v2, v1

    :goto_16
    if-eq p3, p4, :cond_4b

    .line 1791
    invoke-virtual {p0, p3}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1792
    invoke-virtual {p0, v3}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    if-ltz v4, :cond_49

    if-ge v4, p5, :cond_49

    .line 1794
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v4}, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v4

    if-eqz v4, :cond_34

    if-nez v2, :cond_49

    move-object v2, v3

    goto :goto_49

    .line 1798
    :cond_34
    iget-object v4, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v4, v3}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    if-ge v4, p2, :cond_46

    iget-object v4, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    .line 1799
    invoke-virtual {v4, v3}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    if-ge v4, p1, :cond_45

    goto :goto_46

    :cond_45
    return-object v3

    :cond_46
    :goto_46
    if-nez v1, :cond_49

    move-object v1, v3

    :cond_49
    :goto_49
    add-int/2addr p3, v0

    goto :goto_16

    :cond_4b
    if-eqz v1, :cond_4e

    goto :goto_4f

    :cond_4e
    move-object v1, v2

    :goto_4f
    return-object v1
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .registers 4

    .line 402
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    const/4 v1, 0x0

    .line 406
    invoke-virtual {p0, v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    sub-int v1, p1, v1

    if-ltz v1, :cond_22

    if-ge v1, v0, :cond_22

    .line 409
    invoke-virtual {p0, v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 410
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    if-ne v1, p1, :cond_22

    return-object v0

    .line 415
    :cond_22
    invoke-super {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public generateDefaultLayoutParams()Lflyme/support/v7/widget/RecyclerView$LayoutParams;
    .registers 2

    .line 197
    new-instance p0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method protected getExtraLayoutSpace(Lflyme/support/v7/widget/RecyclerView$State;)I
    .registers 2

    .line 439
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$State;->hasTargetScrollPosition()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 440
    iget-object p0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {p0}, Lflyme/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result p0

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public getOrientation()I
    .registers 1

    .line 328
    iget p0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientation:I

    return p0
.end method

.method public getReverseLayout()Z
    .registers 1

    .line 371
    iget-boolean p0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    return p0
.end method

.method protected isLayoutRTL()Z
    .registers 2

    .line 968
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

.method layoutChunk(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;)V
    .registers 12

    .line 1556
    invoke-virtual {p3, p1}, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->next(Lflyme/support/v7/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_a

    .line 1563
    iput-boolean p2, p4, Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFinished:Z

    return-void

    .line 1566
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    .line 1567
    iget-object v0, p3, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mScrapList:Ljava/util/List;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2a

    .line 1568
    iget-boolean v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iget v3, p3, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v3, v1, :cond_1f

    move v3, p2

    goto :goto_20

    :cond_1f
    move v3, v2

    :goto_20
    if-ne v0, v3, :cond_26

    .line 1570
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;)V

    goto :goto_3c

    .line 1572
    :cond_26
    invoke-virtual {p0, p1, v2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_3c

    .line 1575
    :cond_2a
    iget-boolean v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iget v3, p3, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v3, v1, :cond_32

    move v3, p2

    goto :goto_33

    :cond_32
    move v3, v2

    :goto_33
    if-ne v0, v3, :cond_39

    .line 1577
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->addDisappearingView(Landroid/view/View;)V

    goto :goto_3c

    .line 1579
    :cond_39
    invoke-virtual {p0, p1, v2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->addDisappearingView(Landroid/view/View;I)V

    .line 1582
    :goto_3c
    invoke-virtual {p0, p1, v2, v2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 1583
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v0

    iput v0, p4, Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    .line 1585
    iget v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-ne v0, p2, :cond_85

    .line 1586
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 1587
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 1588
    iget-object v2, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v2, p1}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v2

    sub-int v2, v0, v2

    goto :goto_6e

    .line 1590
    :cond_63
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v2

    .line 1591
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v0, p1}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v2

    .line 1593
    :goto_6e
    iget v3, p3, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v3, v1, :cond_7c

    .line 1594
    iget p3, p3, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1595
    iget v1, p4, Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int v1, p3, v1

    move v5, p3

    move v4, v0

    move v3, v1

    goto :goto_a8

    .line 1597
    :cond_7c
    iget p3, p3, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1598
    iget v1, p4, Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr v1, p3

    move v3, p3

    move v4, v0

    move v5, v1

    goto :goto_a8

    .line 1601
    :cond_85
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v0

    .line 1602
    iget-object v2, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v2, p1}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v0

    .line 1604
    iget v3, p3, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mLayoutDirection:I

    if-ne v3, v1, :cond_9f

    .line 1605
    iget p3, p3, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1606
    iget v1, p4, Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    sub-int v1, p3, v1

    move v4, p3

    move v3, v0

    move v5, v2

    move v2, v1

    goto :goto_a8

    .line 1608
    :cond_9f
    iget p3, p3, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 1609
    iget v1, p4, Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mConsumed:I

    add-int/2addr v1, p3

    move v3, v0

    move v4, v1

    move v5, v2

    move v2, p3

    :goto_a8
    move-object v0, p0

    move-object v1, p1

    .line 1614
    invoke-virtual/range {v0 .. v5}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    .line 1621
    invoke-virtual {v6}, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result p0

    if-nez p0, :cond_b9

    invoke-virtual {v6}, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->isItemChanged()Z

    move-result p0

    if-eqz p0, :cond_bb

    .line 1622
    :cond_b9
    iput-boolean p2, p4, Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mIgnoreConsumed:Z

    .line 1624
    :cond_bb
    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    move-result p0

    iput-boolean p0, p4, Lflyme/support/v7/widget/LinearLayoutManager$LayoutChunkResult;->mFocusable:Z

    return-void
.end method

.method onAnchorReady(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;I)V
    .registers 5

    return-void
.end method

.method public onDetachedFromWindow(Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$Recycler;)V
    .registers 3

    .line 231
    invoke-super {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onDetachedFromWindow(Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$Recycler;)V

    .line 232
    iget-boolean p1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mRecycleChildrenOnDetach:Z

    if-eqz p1, :cond_d

    .line 233
    invoke-virtual {p0, p2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Lflyme/support/v7/widget/RecyclerView$Recycler;)V

    .line 234
    invoke-virtual {p2}, Lflyme/support/v7/widget/RecyclerView$Recycler;->clear()V

    :cond_d
    return-void
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .registers 8

    .line 1974
    invoke-direct {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 1975
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_b

    return-object v0

    .line 1979
    :cond_b
    invoke-virtual {p0, p2}, Lflyme/support/v7/widget/LinearLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result p1

    const/high16 p2, -0x80000000

    if-ne p1, p2, :cond_14

    return-object v0

    .line 1983
    :cond_14
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 1984
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    const v1, 0x3eaaaaab

    .line 1985
    iget-object v2, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v2}, Lflyme/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    const/4 v2, 0x0

    .line 1986
    invoke-direct {p0, p1, v1, v2, p4}, Lflyme/support/v7/widget/LinearLayoutManager;->updateLayoutState(IIZLflyme/support/v7/widget/RecyclerView$State;)V

    .line 1987
    iget-object v1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iput p2, v1, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1988
    iput-boolean v2, v1, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    const/4 p2, 0x1

    .line 1989
    invoke-virtual {p0, p3, v1, p4, p2}, Lflyme/support/v7/widget/LinearLayoutManager;->fill(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;Lflyme/support/v7/widget/RecyclerView$State;Z)I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_3c

    .line 1997
    invoke-direct {p0, p3, p4}, Lflyme/support/v7/widget/LinearLayoutManager;->findPartiallyOrCompletelyInvisibleChildClosestToStart(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p3

    goto :goto_40

    .line 1999
    :cond_3c
    invoke-direct {p0, p3, p4}, Lflyme/support/v7/widget/LinearLayoutManager;->findPartiallyOrCompletelyInvisibleChildClosestToEnd(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object p3

    :goto_40
    if-ne p1, p2, :cond_47

    .line 2005
    invoke-direct {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object p0

    goto :goto_4b

    .line 2007
    :cond_47
    invoke-direct {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object p0

    .line 2009
    :goto_4b
    invoke-virtual {p0}, Landroid/view/View;->hasFocusable()Z

    move-result p1

    if-eqz p1, :cond_55

    if-nez p3, :cond_54

    return-object v0

    :cond_54
    return-object p0

    :cond_55
    return-object p3
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    .line 240
    invoke-super {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 241
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1b

    .line 243
    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroidx/core/view/accessibility/AccessibilityRecordCompat;

    move-result-object p1

    .line 244
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setFromIndex(I)V

    .line 245
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setToIndex(I)V

    :cond_1b
    return-void
.end method

.method public onLayoutChildren(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)V
    .registers 11

    .line 484
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/LinearLayoutManager$SavedState;

    const/4 v1, -0x1

    if-nez v0, :cond_9

    iget v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-eq v0, v1, :cond_13

    .line 485
    :cond_9
    invoke-virtual {p2}, Lflyme/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-nez v0, :cond_13

    .line 486
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Lflyme/support/v7/widget/RecyclerView$Recycler;)V

    return-void

    .line 490
    :cond_13
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lflyme/support/v7/widget/LinearLayoutManager$SavedState;->hasValidAnchor()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 491
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/LinearLayoutManager$SavedState;

    iget v0, v0, Lflyme/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    iput v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 494
    :cond_23
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 495
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 497
    invoke-direct {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 499
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;

    iget-boolean v0, v0, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mValid:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_3d

    iget v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-ne v0, v1, :cond_3d

    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_52

    .line 501
    :cond_3d
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-virtual {v0}, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->reset()V

    .line 502
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;

    iget-boolean v4, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iget-boolean v5, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    xor-int/2addr v4, v5

    iput-boolean v4, v0, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    .line 504
    invoke-direct {p0, p1, p2, v0}, Lflyme/support/v7/widget/LinearLayoutManager;->updateAnchorInfoForLayout(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;)V

    .line 505
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;

    iput-boolean v3, v0, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mValid:Z

    .line 515
    :cond_52
    invoke-virtual {p0, p2}, Lflyme/support/v7/widget/LinearLayoutManager;->getExtraLayoutSpace(Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result v0

    .line 518
    iget-object v4, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v4, v4, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mLastScrollDelta:I

    if-ltz v4, :cond_5f

    move v4, v0

    move v0, v2

    goto :goto_60

    :cond_5f
    move v4, v2

    .line 525
    :goto_60
    iget-object v5, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v5}, Lflyme/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v5

    add-int/2addr v0, v5

    .line 526
    iget-object v5, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v5}, Lflyme/support/v7/widget/OrientationHelper;->getEndPadding()I

    move-result v5

    add-int/2addr v4, v5

    .line 527
    invoke-virtual {p2}, Lflyme/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v5

    if-eqz v5, :cond_ad

    iget v5, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    if-eq v5, v1, :cond_ad

    iget v6, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    const/high16 v7, -0x80000000

    if-eq v6, v7, :cond_ad

    .line 532
    invoke-virtual {p0, v5}, Lflyme/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_ad

    .line 536
    iget-boolean v6, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v6, :cond_98

    .line 537
    iget-object v6, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v6}, Lflyme/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v6

    iget-object v7, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    .line 538
    invoke-virtual {v7, v5}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v6, v5

    .line 539
    iget v5, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    goto :goto_a7

    .line 541
    :cond_98
    iget-object v6, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v6, v5}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    .line 542
    invoke-virtual {v6}, Lflyme/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v6

    sub-int/2addr v5, v6

    .line 543
    iget v6, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    :goto_a7
    sub-int/2addr v6, v5

    if-lez v6, :cond_ac

    add-int/2addr v0, v6

    goto :goto_ad

    :cond_ac
    sub-int/2addr v4, v6

    .line 555
    :cond_ad
    :goto_ad
    iget-object v5, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;

    iget-boolean v5, v5, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v5, :cond_b9

    .line 556
    iget-boolean v5, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v5, :cond_bd

    :cond_b7
    move v1, v3

    goto :goto_bd

    .line 559
    :cond_b9
    iget-boolean v5, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v5, :cond_b7

    .line 563
    :cond_bd
    :goto_bd
    iget-object v5, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-virtual {p0, p1, p2, v5, v1}, Lflyme/support/v7/widget/LinearLayoutManager;->onAnchorReady(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;I)V

    .line 565
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->detachAndScrapAttachedViews(Lflyme/support/v7/widget/RecyclerView$Recycler;)V

    .line 566
    iget-object v1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->resolveIsInfinite()Z

    move-result v5

    iput-boolean v5, v1, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mInfinite:Z

    .line 567
    iget-object v1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    invoke-virtual {p2}, Lflyme/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v5

    iput-boolean v5, v1, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mIsPreLayout:Z

    .line 568
    iget-object v1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;

    iget-boolean v5, v1, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->mLayoutFromEnd:Z

    if-eqz v5, :cond_11a

    .line 570
    invoke-direct {p0, v1}, Lflyme/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillStart(Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;)V

    .line 571
    iget-object v1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iput v0, v1, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 572
    invoke-virtual {p0, p1, v1, p2, v2}, Lflyme/support/v7/widget/LinearLayoutManager;->fill(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;Lflyme/support/v7/widget/RecyclerView$State;Z)I

    .line 573
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v1, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 574
    iget v5, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 575
    iget v0, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v0, :cond_f0

    add-int/2addr v4, v0

    .line 579
    :cond_f0
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {p0, v0}, Lflyme/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;)V

    .line 580
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iput v4, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 581
    iget v4, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget v6, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v4, v6

    iput v4, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 582
    invoke-virtual {p0, p1, v0, p2, v2}, Lflyme/support/v7/widget/LinearLayoutManager;->fill(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;Lflyme/support/v7/widget/RecyclerView$State;Z)I

    .line 583
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v4, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 585
    iget v0, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v0, :cond_158

    .line 588
    invoke-direct {p0, v5, v1}, Lflyme/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillStart(II)V

    .line 589
    iget-object v1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iput v0, v1, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 590
    invoke-virtual {p0, p1, v1, p2, v2}, Lflyme/support/v7/widget/LinearLayoutManager;->fill(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;Lflyme/support/v7/widget/RecyclerView$State;Z)I

    .line 591
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v1, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    goto :goto_158

    .line 595
    :cond_11a
    invoke-direct {p0, v1}, Lflyme/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;)V

    .line 596
    iget-object v1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iput v4, v1, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 597
    invoke-virtual {p0, p1, v1, p2, v2}, Lflyme/support/v7/widget/LinearLayoutManager;->fill(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;Lflyme/support/v7/widget/RecyclerView$State;Z)I

    .line 598
    iget-object v1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v4, v1, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 599
    iget v5, v1, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 600
    iget v1, v1, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v1, :cond_12f

    add-int/2addr v0, v1

    .line 604
    :cond_12f
    iget-object v1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-direct {p0, v1}, Lflyme/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillStart(Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;)V

    .line 605
    iget-object v1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iput v0, v1, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 606
    iget v0, v1, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    iget v6, v1, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mItemDirection:I

    add-int/2addr v0, v6

    iput v0, v1, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mCurrentPosition:I

    .line 607
    invoke-virtual {p0, p1, v1, p2, v2}, Lflyme/support/v7/widget/LinearLayoutManager;->fill(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;Lflyme/support/v7/widget/RecyclerView$State;Z)I

    .line 608
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v1, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 610
    iget v0, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mAvailable:I

    if-lez v0, :cond_158

    .line 613
    invoke-direct {p0, v5, v4}, Lflyme/support/v7/widget/LinearLayoutManager;->updateLayoutStateToFillEnd(II)V

    .line 614
    iget-object v4, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iput v0, v4, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mExtra:I

    .line 615
    invoke-virtual {p0, p1, v4, p2, v2}, Lflyme/support/v7/widget/LinearLayoutManager;->fill(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;Lflyme/support/v7/widget/RecyclerView$State;Z)I

    .line 616
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v4, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mOffset:I

    .line 623
    :cond_158
    :goto_158
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_17c

    .line 627
    iget-boolean v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    iget-boolean v5, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    xor-int/2addr v0, v5

    if-eqz v0, :cond_170

    .line 628
    invoke-direct {p0, v4, p1, p2, v3}, Lflyme/support/v7/widget/LinearLayoutManager;->fixLayoutEndGap(ILflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Z)I

    move-result v0

    add-int/2addr v1, v0

    add-int/2addr v4, v0

    .line 631
    invoke-direct {p0, v1, p1, p2, v2}, Lflyme/support/v7/widget/LinearLayoutManager;->fixLayoutStartGap(ILflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Z)I

    move-result v0

    goto :goto_17a

    .line 635
    :cond_170
    invoke-direct {p0, v1, p1, p2, v3}, Lflyme/support/v7/widget/LinearLayoutManager;->fixLayoutStartGap(ILflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Z)I

    move-result v0

    add-int/2addr v1, v0

    add-int/2addr v4, v0

    .line 638
    invoke-direct {p0, v4, p1, p2, v2}, Lflyme/support/v7/widget/LinearLayoutManager;->fixLayoutEndGap(ILflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;Z)I

    move-result v0

    :goto_17a
    add-int/2addr v1, v0

    add-int/2addr v4, v0

    .line 643
    :cond_17c
    invoke-direct {p0, p1, p2, v1, v4}, Lflyme/support/v7/widget/LinearLayoutManager;->layoutForPredictiveAnimations(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;II)V

    .line 644
    invoke-virtual {p2}, Lflyme/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result p1

    if-nez p1, :cond_18b

    .line 645
    iget-object p1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {p1}, Lflyme/support/v7/widget/OrientationHelper;->onLayoutComplete()V

    goto :goto_190

    .line 647
    :cond_18b
    iget-object p1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-virtual {p1}, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->reset()V

    .line 649
    :goto_190
    iget-boolean p1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    iput-boolean p1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    return-void
.end method

.method public onLayoutCompleted(Lflyme/support/v7/widget/RecyclerView$State;)V
    .registers 2

    .line 657
    invoke-super {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Lflyme/support/v7/widget/RecyclerView$State;)V

    const/4 p1, 0x0

    .line 658
    iput-object p1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/LinearLayoutManager$SavedState;

    const/4 p1, -0x1

    .line 659
    iput p1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    const/high16 p1, -0x80000000

    .line 660
    iput p1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 661
    iget-object p0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mAnchorInfo:Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;

    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager$AnchorInfo;->reset()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 278
    instance-of v0, p1, Lflyme/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_b

    .line 279
    check-cast p1, Lflyme/support/v7/widget/LinearLayoutManager$SavedState;

    iput-object p1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/LinearLayoutManager$SavedState;

    .line 280
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->requestLayout()V

    :cond_b
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 5

    .line 251
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_a

    .line 252
    new-instance p0, Lflyme/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {p0, v0}, Lflyme/support/v7/widget/LinearLayoutManager$SavedState;-><init>(Lflyme/support/v7/widget/LinearLayoutManager$SavedState;)V

    return-object p0

    .line 254
    :cond_a
    new-instance v0, Lflyme/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v0}, Lflyme/support/v7/widget/LinearLayoutManager$SavedState;-><init>()V

    .line 255
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_55

    .line 256
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    .line 257
    iget-boolean v1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v2, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    xor-int/2addr v1, v2

    .line 258
    iput-boolean v1, v0, Lflyme/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    if-eqz v1, :cond_3b

    .line 260
    invoke-direct {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v1

    .line 261
    iget-object v2, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v2}, Lflyme/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    iget-object v3, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    .line 262
    invoke-virtual {v3, v1}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Lflyme/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 263
    invoke-virtual {p0, v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    iput p0, v0, Lflyme/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    goto :goto_58

    .line 265
    :cond_3b
    invoke-direct {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v1

    .line 266
    invoke-virtual {p0, v1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    iput v2, v0, Lflyme/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 267
    iget-object v2, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v2, v1}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    iget-object p0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    .line 268
    invoke-virtual {p0}, Lflyme/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p0

    sub-int/2addr v1, p0

    iput v1, v0, Lflyme/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    goto :goto_58

    .line 271
    :cond_55
    invoke-virtual {v0}, Lflyme/support/v7/widget/LinearLayoutManager$SavedState;->invalidateAnchor()V

    :goto_58
    return-object v0
.end method

.method resolveIsInfinite()Z
    .registers 2

    .line 1199
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/OrientationHelper;->getMode()I

    move-result v0

    if-nez v0, :cond_12

    iget-object p0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    .line 1200
    invoke-virtual {p0}, Lflyme/support/v7/widget/OrientationHelper;->getEnd()I

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method scrollBy(ILflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)I
    .registers 9

    .line 1318
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    if-nez p1, :cond_a

    goto :goto_39

    .line 1321
    :cond_a
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mRecycle:Z

    .line 1322
    invoke-virtual {p0}, Lflyme/support/v7/widget/LinearLayoutManager;->ensureLayoutState()V

    if-lez p1, :cond_16

    move v0, v2

    goto :goto_17

    :cond_16
    const/4 v0, -0x1

    .line 1324
    :goto_17
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1325
    invoke-direct {p0, v0, v3, v2, p3}, Lflyme/support/v7/widget/LinearLayoutManager;->updateLayoutState(IIZLflyme/support/v7/widget/RecyclerView$State;)V

    .line 1326
    iget-object v2, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iget v4, v2, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mScrollingOffset:I

    .line 1327
    invoke-virtual {p0, p2, v2, p3, v1}, Lflyme/support/v7/widget/LinearLayoutManager;->fill(Lflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;Lflyme/support/v7/widget/RecyclerView$State;Z)I

    move-result p2

    add-int/2addr v4, p2

    if-gez v4, :cond_2a

    return v1

    :cond_2a
    if-le v3, v4, :cond_2e

    mul-int p1, v0, v4

    .line 1336
    :cond_2e
    iget-object p2, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    neg-int p3, p1

    invoke-virtual {p2, p3}, Lflyme/support/v7/widget/OrientationHelper;->offsetChildren(I)V

    .line 1340
    iget-object p0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLayoutState:Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;

    iput p1, p0, Lflyme/support/v7/widget/LinearLayoutManager$LayoutState;->mLastScrollDelta:I

    return p1

    :cond_39
    :goto_39
    return v1
.end method

.method public scrollHorizontallyBy(ILflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)I
    .registers 6

    .line 1048
    iget v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    const/4 p0, 0x0

    return p0

    .line 1051
    :cond_7
    invoke-virtual {p0, p1, p2, p3}, Lflyme/support/v7/widget/LinearLayoutManager;->scrollBy(ILflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public scrollToPosition(I)V
    .registers 2

    .line 1005
    iput p1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    const/high16 p1, -0x80000000

    .line 1006
    iput p1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 1007
    iget-object p1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz p1, :cond_d

    .line 1008
    invoke-virtual {p1}, Lflyme/support/v7/widget/LinearLayoutManager$SavedState;->invalidateAnchor()V

    .line 1010
    :cond_d
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->requestLayout()V

    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .registers 3

    .line 1033
    iput p1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 1034
    iput p2, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 1035
    iget-object p1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz p1, :cond_b

    .line 1036
    invoke-virtual {p1}, Lflyme/support/v7/widget/LinearLayoutManager$SavedState;->invalidateAnchor()V

    .line 1038
    :cond_b
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->requestLayout()V

    return-void
.end method

.method public scrollVerticallyBy(ILflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)I
    .registers 5

    .line 1060
    iget v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 1063
    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lflyme/support/v7/widget/LinearLayoutManager;->scrollBy(ILflyme/support/v7/widget/RecyclerView$Recycler;Lflyme/support/v7/widget/RecyclerView$State;)I

    move-result p0

    return p0
.end method

.method public setOrientation(I)V
    .registers 4

    if-eqz p1, :cond_1d

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    goto :goto_1d

    .line 339
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid orientation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1d
    :goto_1d
    const/4 v0, 0x0

    .line 341
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 342
    iget v1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-ne p1, v1, :cond_26

    return-void

    .line 345
    :cond_26
    iput p1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientation:I

    .line 346
    iput-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Lflyme/support/v7/widget/OrientationHelper;

    .line 347
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->requestLayout()V

    return-void
.end method

.method public setReverseLayout(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 389
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 390
    iget-boolean v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    if-ne p1, v0, :cond_9

    return-void

    .line 393
    :cond_9
    iput-boolean p1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 394
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->requestLayout()V

    return-void
.end method

.method public setStackFromEnd(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 309
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/LinearLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 310
    iget-boolean v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-ne v0, p1, :cond_9

    return-void

    .line 313
    :cond_9
    iput-boolean p1, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 314
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->requestLayout()V

    return-void
.end method

.method shouldMeasureTwice()Z
    .registers 3

    .line 1629
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getHeightMode()I

    move-result v0

    const/high16 v1, 0x40000000  # 2.0f

    if-eq v0, v1, :cond_16

    .line 1630
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getWidthMode()I

    move-result v0

    if-eq v0, v1, :cond_16

    .line 1631
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->hasFlexibleChildInBothOrientations()Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public smoothScrollToPosition(Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$State;I)V
    .registers 4

    .line 449
    new-instance p2, Lflyme/support/v7/widget/LinearSmoothScroller;

    .line 450
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lflyme/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 451
    invoke-virtual {p2, p3}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 452
    invoke-virtual {p0, p2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->startSmoothScroll(Lflyme/support/v7/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .registers 2

    .line 2084
    iget-object v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Lflyme/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean p0, p0, Lflyme/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-ne v0, p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method
