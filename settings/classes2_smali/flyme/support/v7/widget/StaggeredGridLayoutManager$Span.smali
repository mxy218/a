.class Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;
.super Ljava/lang/Object;
.source "StaggeredGridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Span"
.end annotation


# instance fields
.field mCachedEnd:I

.field mCachedStart:I

.field mDeletedSize:I

.field final mIndex:I

.field mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lflyme/support/v7/widget/StaggeredGridLayoutManager;


# direct methods
.method constructor <init>(Lflyme/support/v7/widget/StaggeredGridLayoutManager;I)V
    .registers 3

    .line 2481
    iput-object p1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Lflyme/support/v7/widget/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2475
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    const/high16 p1, -0x80000000

    .line 2476
    iput p1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2477
    iput p1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    const/4 p1, 0x0

    .line 2478
    iput p1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 2482
    iput p2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    return-void
.end method


# virtual methods
.method appendToSpan(Landroid/view/View;)V
    .registers 6

    .line 2566
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v0

    .line 2567
    iput-object p0, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    .line 2568
    iget-object v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v1, -0x80000000

    .line 2569
    iput v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2570
    iget-object v2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1a

    .line 2571
    iput v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2573
    :cond_1a
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v1

    if-nez v1, :cond_26

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->isItemChanged()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 2574
    :cond_26
    iget v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    iget-object v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Lflyme/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v1, p1}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    :cond_33
    return-void
.end method

.method cacheReferenceLineAndClear(ZI)V
    .registers 6

    const/high16 v0, -0x80000000

    if-eqz p1, :cond_9

    .line 2582
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->getEndLine(I)I

    move-result v1

    goto :goto_d

    .line 2584
    :cond_9
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->getStartLine(I)I

    move-result v1

    .line 2586
    :goto_d
    invoke-virtual {p0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->clear()V

    if-ne v1, v0, :cond_13

    return-void

    :cond_13
    if-eqz p1, :cond_1f

    .line 2590
    iget-object v2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Lflyme/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v2}, Lflyme/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v2

    if-lt v1, v2, :cond_2b

    :cond_1f
    if-nez p1, :cond_2c

    iget-object p1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Lflyme/support/v7/widget/StaggeredGridLayoutManager;

    iget-object p1, p1, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    .line 2591
    invoke-virtual {p1}, Lflyme/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    if-le v1, p1, :cond_2c

    :cond_2b
    return-void

    :cond_2c
    if-eq p2, v0, :cond_2f

    add-int/2addr v1, p2

    .line 2597
    :cond_2f
    iput v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    iput v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    return-void
.end method

.method calculateCachedEnd()V
    .registers 5

    .line 2531
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2532
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v1

    .line 2533
    iget-object v3, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Lflyme/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v3, v3, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v3, v0}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2534
    iget-boolean v0, v1, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_3d

    .line 2535
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Lflyme/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 2536
    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFullSpanItem(I)Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 2537
    iget v1, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    if-ne v1, v2, :cond_3d

    .line 2538
    iget v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    iget v2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v0, v2}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->getGapForSpan(I)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    :cond_3d
    return-void
.end method

.method calculateCachedStart()V
    .registers 4

    .line 2497
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2498
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v1

    .line 2499
    iget-object v2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Lflyme/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v2, v0}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2500
    iget-boolean v0, v1, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mFullSpan:Z

    if-eqz v0, :cond_39

    .line 2501
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Lflyme/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mLazySpanLookup:Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 2502
    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->getFullSpanItem(I)Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 2503
    iget v1, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->mGapDir:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_39

    .line 2504
    iget v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    iget v2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mIndex:I

    invoke-virtual {v0, v2}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->getGapForSpan(I)I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    :cond_39
    return-void
.end method

.method clear()V
    .registers 2

    .line 2601
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2602
    invoke-virtual {p0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->invalidateCache()V

    const/4 v0, 0x0

    .line 2603
    iput v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    return-void
.end method

.method public findFirstPartiallyVisibleItemPosition()I
    .registers 4

    .line 2666
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Lflyme/support/v7/widget/StaggeredGridLayoutManager;

    iget-boolean v0, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2667
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, v1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->findOnePartiallyVisibleChild(IIZ)I

    move-result p0

    goto :goto_1f

    :cond_14
    const/4 v0, 0x0

    iget-object v2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2668
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0, v0, v2, v1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->findOnePartiallyVisibleChild(IIZ)I

    move-result p0

    :goto_1f
    return p0
.end method

.method public findLastPartiallyVisibleItemPosition()I
    .registers 4

    .line 2684
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Lflyme/support/v7/widget/StaggeredGridLayoutManager;

    iget-boolean v0, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    iget-object v2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2685
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0, v0, v2, v1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->findOnePartiallyVisibleChild(IIZ)I

    move-result p0

    goto :goto_1f

    :cond_13
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2686
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, v1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->findOnePartiallyVisibleChild(IIZ)I

    move-result p0

    :goto_1f
    return p0
.end method

.method public findLastVisibleItemPosition()I
    .registers 4

    .line 2678
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Lflyme/support/v7/widget/StaggeredGridLayoutManager;

    iget-boolean v0, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2679
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v1, v0, v1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result p0

    goto :goto_1f

    :cond_12
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    .line 2680
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2, v1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->findOneVisibleChild(IIZ)I

    move-result p0

    :goto_1f
    return p0
.end method

.method findOnePartiallyOrCompletelyVisibleChild(IIZZZ)I
    .registers 16

    .line 2722
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Lflyme/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v0}, Lflyme/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v0

    .line 2723
    iget-object v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Lflyme/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v1}, Lflyme/support/v7/widget/OrientationHelper;->getEndAfterPadding()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-le p2, p1, :cond_16

    move v4, v3

    goto :goto_17

    :cond_16
    move v4, v2

    :goto_17
    if-eq p1, p2, :cond_6d

    .line 2726
    iget-object v5, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 2727
    iget-object v6, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Lflyme/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v6, v6, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v6, v5}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    .line 2728
    iget-object v7, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Lflyme/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v7, v7, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v7, v5}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v7

    const/4 v8, 0x0

    if-eqz p5, :cond_37

    if-gt v6, v1, :cond_3b

    goto :goto_39

    :cond_37
    if-ge v6, v1, :cond_3b

    :goto_39
    move v9, v3

    goto :goto_3c

    :cond_3b
    move v9, v8

    :goto_3c
    if-eqz p5, :cond_41

    if-lt v7, v0, :cond_44

    goto :goto_43

    :cond_41
    if-le v7, v0, :cond_44

    :goto_43
    move v8, v3

    :cond_44
    if-eqz v9, :cond_6b

    if-eqz v8, :cond_6b

    if-eqz p3, :cond_57

    if-eqz p4, :cond_57

    if-lt v6, v0, :cond_6b

    if-gt v7, v1, :cond_6b

    .line 2737
    iget-object p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Lflyme/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {p0, v5}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    return p0

    :cond_57
    if-eqz p4, :cond_60

    .line 2741
    iget-object p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Lflyme/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {p0, v5}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    return p0

    :cond_60
    if-lt v6, v0, :cond_64

    if-le v7, v1, :cond_6b

    .line 2745
    :cond_64
    iget-object p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Lflyme/support/v7/widget/StaggeredGridLayoutManager;

    invoke-virtual {p0, v5}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    return p0

    :cond_6b
    add-int/2addr p1, v4

    goto :goto_17

    :cond_6d
    return v2
.end method

.method findOnePartiallyVisibleChild(IIZ)I
    .registers 10

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p3

    .line 2759
    invoke-virtual/range {v0 .. v5}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->findOnePartiallyOrCompletelyVisibleChild(IIZZZ)I

    move-result p0

    return p0
.end method

.method findOneVisibleChild(IIZ)I
    .registers 10

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 2753
    invoke-virtual/range {v0 .. v5}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->findOnePartiallyOrCompletelyVisibleChild(IIZZZ)I

    move-result p0

    return p0
.end method

.method public getDeletedSize()I
    .registers 1

    .line 2643
    iget p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    return p0
.end method

.method getEndLine()I
    .registers 3

    .line 2545
    iget v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_7

    return v0

    .line 2548
    :cond_7
    invoke-virtual {p0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->calculateCachedEnd()V

    .line 2549
    iget p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    return p0
.end method

.method getEndLine(I)I
    .registers 4

    .line 2519
    iget v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_7

    return v0

    .line 2522
    :cond_7
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_10

    return p1

    .line 2526
    :cond_10
    invoke-virtual {p0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->calculateCachedEnd()V

    .line 2527
    iget p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    return p0
.end method

.method public getFocusableViewAfter(II)Landroid/view/View;
    .registers 8

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_38

    .line 2769
    iget-object p2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_b
    if-ge v0, p2, :cond_6d

    .line 2771
    iget-object v2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 2772
    iget-object v3, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Lflyme/support/v7/widget/StaggeredGridLayoutManager;

    iget-boolean v4, v3, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-eqz v4, :cond_21

    invoke-virtual {v3, v2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    if-le v3, p1, :cond_6d

    :cond_21
    iget-object v3, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Lflyme/support/v7/widget/StaggeredGridLayoutManager;

    iget-boolean v4, v3, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-nez v4, :cond_2e

    .line 2773
    invoke-virtual {v3, v2}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    if-lt v3, p1, :cond_2e

    goto :goto_6d

    .line 2776
    :cond_2e
    invoke-virtual {v2}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    if-eqz v3, :cond_6d

    add-int/lit8 v0, v0, 0x1

    move-object v1, v2

    goto :goto_b

    .line 2783
    :cond_38
    iget-object p2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_40
    if-ltz p2, :cond_6d

    .line 2784
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2785
    iget-object v2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Lflyme/support/v7/widget/StaggeredGridLayoutManager;

    iget-boolean v3, v2, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-eqz v3, :cond_56

    invoke-virtual {v2, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    if-ge v2, p1, :cond_6d

    :cond_56
    iget-object v2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Lflyme/support/v7/widget/StaggeredGridLayoutManager;

    iget-boolean v3, v2, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mReverseLayout:Z

    if-nez v3, :cond_63

    .line 2786
    invoke-virtual {v2, v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    if-gt v2, p1, :cond_63

    goto :goto_6d

    .line 2789
    :cond_63
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-eqz v2, :cond_6d

    add-int/lit8 p2, p2, -0x1

    move-object v1, v0

    goto :goto_40

    :cond_6d
    :goto_6d
    return-object v1
.end method

.method getLayoutParams(Landroid/view/View;)Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;
    .registers 2

    .line 2647
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    return-object p0
.end method

.method getStartLine()I
    .registers 3

    .line 2511
    iget v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_7

    return v0

    .line 2514
    :cond_7
    invoke-virtual {p0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->calculateCachedStart()V

    .line 2515
    iget p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    return p0
.end method

.method getStartLine(I)I
    .registers 4

    .line 2486
    iget v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_7

    return v0

    .line 2489
    :cond_7
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_10

    return p1

    .line 2492
    :cond_10
    invoke-virtual {p0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->calculateCachedStart()V

    .line 2493
    iget p0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    return p0
.end method

.method invalidateCache()V
    .registers 2

    const/high16 v0, -0x80000000

    .line 2607
    iput v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2608
    iput v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    return-void
.end method

.method onOffset(I)V
    .registers 4

    .line 2651
    iget v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_9

    add-int/2addr v0, p1

    .line 2652
    iput v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2654
    :cond_9
    iget v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    if-eq v0, v1, :cond_10

    add-int/2addr v0, p1

    .line 2655
    iput v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    :cond_10
    return-void
.end method

.method popEnd()V
    .registers 5

    .line 2616
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2617
    iget-object v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2618
    invoke-virtual {p0, v1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v2

    const/4 v3, 0x0

    .line 2619
    iput-object v3, v2, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    .line 2620
    invoke-virtual {v2}, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v3

    if-nez v3, :cond_23

    invoke-virtual {v2}, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->isItemChanged()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 2621
    :cond_23
    iget v2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    iget-object v3, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Lflyme/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v3, v3, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v3, v1}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v2, v1

    iput v2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    :cond_30
    const/high16 v1, -0x80000000

    const/4 v2, 0x1

    if-ne v0, v2, :cond_37

    .line 2624
    iput v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2626
    :cond_37
    iput v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    return-void
.end method

.method popStart()V
    .registers 5

    .line 2630
    iget-object v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2631
    invoke-virtual {p0, v0}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    .line 2632
    iput-object v2, v1, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    .line 2633
    iget-object v2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/high16 v3, -0x80000000

    if-nez v2, :cond_1c

    .line 2634
    iput v3, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2636
    :cond_1c
    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v2

    if-nez v2, :cond_28

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->isItemChanged()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 2637
    :cond_28
    iget v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    iget-object v2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Lflyme/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v2, v0}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    .line 2639
    :cond_35
    iput v3, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    return-void
.end method

.method prependToSpan(Landroid/view/View;)V
    .registers 6

    .line 2553
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->getLayoutParams(Landroid/view/View;)Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;

    move-result-object v0

    .line 2554
    iput-object p0, v0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$LayoutParams;->mSpan:Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;

    .line 2555
    iget-object v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/high16 v1, -0x80000000

    .line 2556
    iput v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    .line 2557
    iget-object v2, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1b

    .line 2558
    iput v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    .line 2560
    :cond_1b
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v1

    if-nez v1, :cond_27

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$LayoutParams;->isItemChanged()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 2561
    :cond_27
    iget v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    iget-object v1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->this$0:Lflyme/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Lflyme/support/v7/widget/StaggeredGridLayoutManager;->mPrimaryOrientation:Lflyme/support/v7/widget/OrientationHelper;

    invoke-virtual {v1, p1}, Lflyme/support/v7/widget/OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mDeletedSize:I

    :cond_34
    return-void
.end method

.method setLine(I)V
    .registers 2

    .line 2612
    iput p1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedStart:I

    iput p1, p0, Lflyme/support/v7/widget/StaggeredGridLayoutManager$Span;->mCachedEnd:I

    return-void
.end method
