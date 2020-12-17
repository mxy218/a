.class public Lcom/meizu/common/widget/PinnedHeaderListView;
.super Lcom/meizu/common/widget/AutoScrollListView;
.source "PinnedHeaderListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;,
        Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;

.field private mAnimating:Z

.field private mAnimationDuration:I

.field private mAnimationTargetTime:J

.field private mBounds:Landroid/graphics/RectF;

.field private mClipRect:Landroid/graphics/Rect;

.field private mHeaderBackground:Landroid/graphics/drawable/Drawable;

.field private mHeaderPaddingLeft:I

.field private mHeaderPaddingTop:I

.field private mHeaderWidth:I

.field private mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

.field private mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mScrollState:I

.field private mSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    const v1, 0x1010074

    .line 120
    invoke-direct {p0, p1, v0, v1}, Lcom/meizu/common/widget/PinnedHeaderListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x1010074

    .line 124
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/PinnedHeaderListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 128
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/widget/AutoScrollListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mBounds:Landroid/graphics/RectF;

    .line 106
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mClipRect:Landroid/graphics/Rect;

    const/16 p1, 0x14

    .line 111
    iput p1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAnimationDuration:I

    const/4 p1, 0x0

    .line 117
    iput-object p1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderBackground:Landroid/graphics/drawable/Drawable;

    .line 129
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 130
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method private drawHeader(Landroid/graphics/Canvas;Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;J)V
    .registers 9

    .line 564
    iget-boolean v0, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-eqz v0, :cond_22

    .line 565
    iget-wide v0, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->targetTime:J

    sub-long/2addr v0, p3

    long-to-int p3, v0

    if-gtz p3, :cond_16

    .line 567
    iget p3, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->targetY:I

    iput p3, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    .line 568
    iget-boolean p3, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->targetVisible:Z

    iput-boolean p3, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    const/4 p3, 0x0

    .line 569
    iput-boolean p3, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    goto :goto_22

    .line 571
    :cond_16
    iget p4, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->targetY:I

    iget v0, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->sourceY:I

    sub-int/2addr v0, p4

    mul-int/2addr v0, p3

    iget p3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAnimationDuration:I

    div-int/2addr v0, p3

    add-int/2addr p4, v0

    iput p4, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    .line 575
    :cond_22
    :goto_22
    iget-boolean p3, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz p3, :cond_6b

    .line 576
    iget-object p3, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    .line 577
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result p4

    .line 578
    iget v0, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    const/4 v1, 0x2

    if-eqz v0, :cond_3e

    if-ne v0, v1, :cond_34

    goto :goto_3e

    .line 581
    :cond_34
    iget v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderPaddingLeft:I

    int-to-float v0, v0

    iget v2, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_4a

    .line 579
    :cond_3e
    :goto_3e
    iget v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderPaddingLeft:I

    int-to-float v0, v0

    iget v2, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    iget v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderPaddingTop:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 583
    :goto_4a
    iget v0, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-ne v0, v1, :cond_65

    .line 584
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderWidth:I

    int-to-float v1, v1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 585
    iget-object p0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mBounds:Landroid/graphics/RectF;

    iget p2, p2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->alpha:I

    const/16 v0, 0x1f

    invoke-virtual {p1, p0, p2, v0}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 587
    :cond_65
    invoke-virtual {p3, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 588
    invoke-virtual {p1, p4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_6b
    return-void
.end method

.method private ensurePinnedHeaderLayout(I)V
    .registers 7

    .line 388
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    if-nez v0, :cond_9

    return-void

    .line 392
    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 394
    iget v1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderWidth:I

    if-nez v1, :cond_1e

    .line 395
    invoke-virtual {p0}, Landroid/widget/ListView;->getRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ListView;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderWidth:I

    .line 397
    :cond_1e
    iget v1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderWidth:I

    const/high16 v2, 0x40000000  # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 399
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_36

    .line 400
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_36

    .line 401
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_3a

    .line 403
    :cond_36
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 405
    :goto_3a
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 406
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 407
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object p1, v2, p1

    iput v1, p1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->height:I

    .line 408
    iget p0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderWidth:I

    invoke-virtual {v0, v4, v4, p0, v1}, Landroid/view/View;->layout(IIII)V

    :cond_4c
    return-void
.end method

.method private invalidateIfAnimating()V
    .registers 3

    const/4 v0, 0x0

    .line 501
    iput-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAnimating:Z

    .line 502
    :goto_3
    iget v1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mSize:I

    if-ge v0, v1, :cond_19

    .line 503
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-eqz v1, :cond_16

    const/4 v0, 0x1

    .line 504
    iput-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAnimating:Z

    .line 505
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    return-void

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_19
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 13

    .line 513
    iget-boolean v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAnimating:Z

    if-eqz v0, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_b

    :cond_9
    const-wide/16 v0, 0x0

    .line 516
    :goto_b
    invoke-virtual {p0}, Landroid/widget/ListView;->getBottom()I

    move-result v2

    const/4 v3, 0x0

    move v5, v2

    move v2, v3

    move v4, v2

    move v6, v4

    .line 518
    :goto_14
    iget v7, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mSize:I

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ge v2, v7, :cond_3e

    .line 519
    iget-object v7, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v7, v7, v2

    .line 520
    iget-boolean v10, v7, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v10, :cond_3b

    .line 522
    iget v4, v7, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-ne v4, v9, :cond_2c

    iget v4, v7, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    if-ge v4, v5, :cond_2c

    move v5, v4

    goto :goto_3a

    .line 524
    :cond_2c
    iget v4, v7, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-eqz v4, :cond_32

    if-ne v4, v8, :cond_3a

    .line 525
    :cond_32
    iget v4, v7, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    iget v7, v7, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v4, v7

    if-le v4, v6, :cond_3a

    move v6, v4

    :cond_3a
    :goto_3a
    move v4, v9

    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_3e
    if-eqz v4, :cond_51

    .line 534
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 535
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ListView;->getWidth()I

    move-result v6

    invoke-virtual {v2, v3, v3, v6, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 536
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 539
    :cond_51
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    if-eqz v4, :cond_87

    .line 542
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 545
    iget v2, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mSize:I

    :cond_5b
    :goto_5b
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_71

    .line 546
    iget-object v4, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v4, v4, v2

    .line 547
    iget-boolean v5, v4, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v5, :cond_5b

    iget v5, v4, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-eqz v5, :cond_6d

    if-ne v5, v8, :cond_5b

    .line 548
    :cond_6d
    invoke-direct {p0, p1, v4, v0, v1}, Lcom/meizu/common/widget/PinnedHeaderListView;->drawHeader(Landroid/graphics/Canvas;Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;J)V

    goto :goto_5b

    .line 552
    :cond_71
    :goto_71
    iget v2, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mSize:I

    if-ge v3, v2, :cond_87

    .line 553
    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v2, v2, v3

    .line 554
    iget-boolean v4, v2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v4, :cond_84

    iget v4, v2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-ne v4, v9, :cond_84

    .line 555
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/meizu/common/widget/PinnedHeaderListView;->drawHeader(Landroid/graphics/Canvas;Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;J)V

    :cond_84
    add-int/lit8 v3, v3, 0x1

    goto :goto_71

    .line 560
    :cond_87
    invoke-direct {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->invalidateIfAnimating()V

    return-void
.end method

.method public getCurrentOverScrollDistance()I
    .registers 3

    .line 612
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1b

    .line 613
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 614
    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result p0

    sub-int/2addr p0, v0

    return p0

    :cond_1b
    return v1
.end method

.method public getHeaderPaddingTop()I
    .registers 1

    .line 626
    iget p0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderPaddingTop:I

    return p0
.end method

.method public getPinnedHeaderHeight(I)I
    .registers 3

    .line 256
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->ensurePinnedHeaderLayout(I)V

    .line 258
    iget-object p0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v0, p0, p1

    iget-object v0, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    if-nez v0, :cond_d

    const/4 p0, 0x0

    return p0

    .line 261
    :cond_d
    aget-object p0, p0, p1

    iget-object p0, p0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0
.end method

.method public getPositionAt(I)I
    .registers 6

    .line 440
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_3a

    .line 442
    invoke-virtual {p0}, Landroid/widget/ListView;->isStackFromBottom()Z

    move-result v2

    if-eqz v2, :cond_24

    add-int/lit8 v0, v0, -0x1

    :goto_f
    if-ltz v0, :cond_3a

    .line 444
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 445
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-lt p1, v2, :cond_21

    .line 446
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result p0

    add-int/2addr p0, v0

    return p0

    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    :cond_24
    move v2, v1

    :goto_25
    if-ge v2, v0, :cond_3a

    .line 452
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 453
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_37

    .line 454
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result p0

    add-int/2addr p0, v2

    return p0

    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_3a
    return v1
.end method

.method protected getTopFadingEdgeStrength()F
    .registers 2

    .line 200
    iget v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mSize:I

    if-lez v0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-super {p0}, Landroid/widget/ListView;->getTopFadingEdgeStrength()F

    move-result p0

    :goto_a
    return p0
.end method

.method public getTotalTopPinnedHeaderHeight()I
    .registers 4

    .line 416
    iget v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mSize:I

    :cond_2
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_18

    .line 417
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v1, v1, v0

    .line 418
    iget-boolean v2, v1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v2, :cond_2

    iget v2, v1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-nez v2, :cond_2

    .line 419
    iget p0, v1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    iget v0, v1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr p0, v0

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 2

    .line 645
    invoke-super {p0, p1}, Lcom/meizu/common/widget/AutoScrollListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 646
    const-class p0, Lcom/meizu/common/widget/PinnedHeaderListView;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 479
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 217
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 222
    :goto_6
    iget v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mSize:I

    if-ge v1, v3, :cond_25

    .line 223
    iget-object v3, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v3, v3, v1

    .line 224
    iget-boolean v4, v3, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v4, :cond_22

    .line 225
    iget v4, v3, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    if-nez v4, :cond_1c

    .line 226
    iget v2, v3, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    iget v3, v3, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v2, v3

    goto :goto_22

    :cond_1c
    const/4 v5, 0x1

    if-ne v4, v5, :cond_22

    .line 228
    iget v0, v3, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    goto :goto_25

    :cond_22
    :goto_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 234
    :cond_25
    :goto_25
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_43

    .line 236
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    if-ge v3, v2, :cond_35

    .line 237
    invoke-virtual {p0, p3, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_43

    .line 238
    :cond_35
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-le v2, v0, :cond_43

    .line 239
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, p3, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 243
    :cond_43
    :goto_43
    iget-object v1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_4e

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    .line 244
    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_4e
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 135
    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    const/4 p1, 0x0

    .line 136
    iput p1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderPaddingLeft:I

    sub-int/2addr p4, p2

    .line 137
    iput p4, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderWidth:I

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 250
    iget-object p0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz p0, :cond_7

    .line 251
    invoke-interface {p0, p1}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    :cond_7
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 9

    .line 165
    iget-object p1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAdapter:Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    if-eqz p1, :cond_73

    .line 166
    invoke-interface {p1}, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;->getPinnedHeaderCount()I

    move-result p1

    .line 167
    iget v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mSize:I

    const/4 v1, 0x0

    if-eq p1, v0, :cond_29

    .line 168
    iput p1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mSize:I

    .line 169
    iget-object p1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    if-nez p1, :cond_1a

    .line 170
    iget p1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mSize:I

    new-array p1, p1, [Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    iput-object p1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    goto :goto_29

    .line 171
    :cond_1a
    array-length v0, p1

    iget v2, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mSize:I

    if-ge v0, v2, :cond_29

    .line 173
    new-array v0, v2, [Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    iput-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    .line 174
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    :cond_29
    :goto_29
    iget p1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mSize:I

    if-ge v1, p1, :cond_61

    .line 179
    iget-object p1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v0, p1, v1

    if-nez v0, :cond_3b

    .line 180
    new-instance v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;-><init>(Lcom/meizu/common/widget/PinnedHeaderListView$1;)V

    aput-object v0, p1, v1

    .line 182
    :cond_3b
    iget-object p1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v0, p1, v1

    iget-object v2, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAdapter:Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    aget-object p1, p1, v1

    iget-object p1, p1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    invoke-interface {v2, v1, p1, p0}, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;->getPinnedHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    .line 183
    iget-object p1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_5e

    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object v2, v0, v1

    iget-object v2, v2, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    if-eqz v2, :cond_5e

    .line 184
    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_5e
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 187
    :cond_61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget p1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAnimationDuration:I

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAnimationTargetTime:J

    .line 188
    iget-object p1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAdapter:Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    invoke-interface {p1, p0}, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;->configurePinnedHeaders(Lcom/meizu/common/widget/PinnedHeaderListView;)V

    .line 189
    invoke-direct {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->invalidateIfAnimating()V

    .line 192
    :cond_73
    iget-object p1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz p1, :cond_7a

    .line 193
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_7a
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3

    .line 205
    iput p2, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mScrollState:I

    .line 206
    iget-object p1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz p1, :cond_9

    .line 207
    invoke-interface {p1, p0, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_9
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2

    .line 45
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 3

    .line 146
    move-object v0, p1

    check-cast v0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    iput-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAdapter:Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    .line 147
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setHeaderBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    if-eqz p1, :cond_1e

    .line 630
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderBackground:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1e

    if-eqz v0, :cond_11

    const/4 v1, 0x0

    .line 632
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 633
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 636
    :cond_11
    iput-object p1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderBackground:Landroid/graphics/drawable/Drawable;

    .line 637
    iget-object p1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 638
    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    .line 639
    invoke-virtual {p0}, Landroid/widget/ListView;->invalidate()V

    :cond_1e
    return-void
.end method

.method public setHeaderInvisible(IZ)V
    .registers 7

    .line 372
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object p1, v0, p1

    .line 373
    iget-boolean v0, p1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    if-nez p2, :cond_f

    iget-boolean p2, p1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-eqz p2, :cond_30

    :cond_f
    iget p2, p1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_30

    .line 374
    iget p2, p1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    iput p2, p1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->sourceY:I

    .line 375
    iget-boolean p2, p1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-nez p2, :cond_27

    .line 376
    iput-boolean v0, p1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 377
    invoke-virtual {p0}, Landroid/widget/ListView;->getBottom()I

    move-result p2

    iget v2, p1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr p2, v2

    iput p2, p1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->targetY:I

    .line 379
    :cond_27
    iput-boolean v0, p1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    .line 380
    iget-wide v2, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAnimationTargetTime:J

    iput-wide v2, p1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->targetTime:J

    .line 381
    iput-boolean v1, p1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->targetVisible:Z

    goto :goto_32

    .line 383
    :cond_30
    iput-boolean v1, p1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    :goto_32
    return-void
.end method

.method public setHeaderPaddingTop(I)V
    .registers 2

    if-ltz p1, :cond_4

    .line 621
    iput p1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaderPaddingTop:I

    :cond_4
    return-void
.end method

.method public setHeaderPinnedAtBottom(IIZ)V
    .registers 6

    .line 292
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->ensurePinnedHeaderLayout(I)V

    .line 293
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object p1, v0, p1

    const/4 v0, 0x1

    .line 294
    iput v0, p1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    .line 295
    iget-boolean v1, p1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-eqz v1, :cond_19

    .line 296
    iget-wide v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAnimationTargetTime:J

    iput-wide v0, p1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->targetTime:J

    .line 297
    iget p0, p1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    iput p0, p1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->sourceY:I

    .line 298
    iput p2, p1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->targetY:I

    goto :goto_42

    :cond_19
    if-eqz p3, :cond_3e

    .line 299
    iget p3, p1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    if-ne p3, p2, :cond_23

    iget-boolean p3, p1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-nez p3, :cond_3e

    .line 300
    :cond_23
    iget-boolean p3, p1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz p3, :cond_2c

    .line 301
    iget p3, p1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    iput p3, p1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->sourceY:I

    goto :goto_33

    .line 303
    :cond_2c
    iput-boolean v0, p1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 304
    iget p3, p1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr p3, p2

    iput p3, p1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->sourceY:I

    .line 306
    :goto_33
    iput-boolean v0, p1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    .line 307
    iput-boolean v0, p1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->targetVisible:Z

    .line 308
    iget-wide v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAnimationTargetTime:J

    iput-wide v0, p1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->targetTime:J

    .line 309
    iput p2, p1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->targetY:I

    goto :goto_42

    .line 311
    :cond_3e
    iput-boolean v0, p1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 312
    iput p2, p1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    :goto_42
    return-void
.end method

.method public setHeaderPinnedAtTop(IIZ)V
    .registers 4

    .line 274
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->ensurePinnedHeaderLayout(I)V

    .line 275
    iget-object p0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object p0, p0, p1

    const/4 p1, 0x1

    .line 276
    iput-boolean p1, p0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    .line 277
    iput p2, p0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    const/4 p1, 0x0

    .line 278
    iput p1, p0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    .line 281
    iput-boolean p1, p0, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .registers 2

    .line 158
    iput-object p1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 159
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .registers 2

    .line 152
    iput-object p1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 153
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public setPinnedHeaderAnimationDuration(I)V
    .registers 2

    .line 141
    iput p1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAnimationDuration:I

    return-void
.end method

.method public setSelection(I)V
    .registers 4

    .line 594
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mAdapter:Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeaderAdapter;

    instance-of v1, v0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;

    if-eqz v1, :cond_34

    .line 595
    check-cast v0, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;

    .line 596
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->getItemPlacementInSection(I)Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;

    move-result-object v1

    .line 597
    iget-boolean v1, v1, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter$Placement;->firstInSection:Z

    if-nez v1, :cond_34

    invoke-virtual {v0}, Lcom/meizu/common/widget/PinnedHeaderIndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    if-eqz v1, :cond_34

    iget v1, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mSize:I

    if-lez v1, :cond_34

    .line 599
    invoke-virtual {v0}, Lcom/meizu/common/widget/PinnedHeaderListAdapter;->getPinnedPartitionHeadersEnabled()Z

    move-result v0

    if-eqz v0, :cond_2f

    const/4 v0, 0x1

    .line 600
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getPinnedHeaderHeight(I)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_33

    :cond_2f
    const/4 v0, 0x0

    .line 602
    invoke-super {p0, p1, v0}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :goto_33
    return-void

    .line 608
    :cond_34
    invoke-super {p0, p1}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method

.method public setTranslateHeader(II)V
    .registers 4

    .line 353
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/PinnedHeaderListView;->ensurePinnedHeaderLayout(I)V

    .line 355
    iget-object v0, p0, Lcom/meizu/common/widget/PinnedHeaderListView;->mHeaders:[Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;

    aget-object p1, v0, p1

    const/4 v0, 0x1

    .line 356
    iput-boolean v0, p1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->visible:Z

    const/4 v0, 0x2

    .line 357
    iput v0, p1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->state:I

    const/16 v0, 0xff

    .line 358
    iput v0, p1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->alpha:I

    const/4 v0, 0x0

    .line 359
    iput-boolean v0, p1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->animating:Z

    .line 361
    invoke-virtual {p0}, Lcom/meizu/common/widget/PinnedHeaderListView;->getTotalTopPinnedHeaderHeight()I

    move-result p0

    add-int/2addr p0, p2

    .line 362
    iput p0, p1, Lcom/meizu/common/widget/PinnedHeaderListView$PinnedHeader;->y:I

    return-void
.end method
