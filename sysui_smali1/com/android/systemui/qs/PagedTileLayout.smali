.class public Lcom/android/systemui/qs/PagedTileLayout;
.super Landroidx/viewpager/widget/ViewPager;
.source "PagedTileLayout.java"

# interfaces
.implements Lcom/android/systemui/qs/QSPanel$QSTileLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/PagedTileLayout$PageListener;,
        Lcom/android/systemui/qs/PagedTileLayout$TilePage;
    }
.end annotation


# static fields
.field private static final SCROLL_CUBIC:Landroid/view/animation/Interpolator;


# instance fields
.field private final mAdapter:Landroidx/viewpager/widget/PagerAdapter;

.field private mBounceAnimatorSet:Landroid/animation/AnimatorSet;

.field private final mClippingRect:Landroid/graphics/Rect;

.field private mDistributeTiles:Z

.field private mHorizontalClipBound:I

.field private mLastExpansion:F

.field private mLastMaxHeight:I

.field private mLayoutDirection:I

.field private mLayoutOrientation:I

.field private mListening:Z

.field private final mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

.field private mPageIndicatorPosition:F

.field private mPageListener:Lcom/android/systemui/qs/PagedTileLayout$PageListener;

.field private mPageToRestore:I

.field private final mPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/PagedTileLayout$TilePage;",
            ">;"
        }
    .end annotation
.end field

.field private mScroller:Landroid/widget/Scroller;

.field private final mTiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/QSPanel$TileRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    sget-object v0, Lcom/android/systemui/qs/-$$Lambda$PagedTileLayout$fHkBmUM3ca-ZV4_eDd9ap-VT7Ho;->INSTANCE:Lcom/android/systemui/qs/-$$Lambda$PagedTileLayout$fHkBmUM3ca-ZV4_eDd9ap-VT7Ho;

    sput-object v0, Lcom/android/systemui/qs/PagedTileLayout;->SCROLL_CUBIC:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 69
    invoke-direct {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mTiles:Ljava/util/ArrayList;

    .line 48
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    const/4 p2, 0x0

    .line 60
    iput-boolean p2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mDistributeTiles:Z

    const/4 v0, -0x1

    .line 61
    iput v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageToRestore:I

    .line 66
    iput v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLastMaxHeight:I

    .line 409
    new-instance v0, Lcom/android/systemui/qs/PagedTileLayout$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/PagedTileLayout$2;-><init>(Lcom/android/systemui/qs/PagedTileLayout;)V

    iput-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 460
    new-instance v0, Lcom/android/systemui/qs/PagedTileLayout$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/PagedTileLayout$3;-><init>(Lcom/android/systemui/qs/PagedTileLayout;)V

    iput-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    .line 70
    new-instance v0, Landroid/widget/Scroller;

    sget-object v1, Lcom/android/systemui/qs/PagedTileLayout;->SCROLL_CUBIC:Landroid/view/animation/Interpolator;

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mScroller:Landroid/widget/Scroller;

    .line 71
    iget-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 72
    iget-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mOnPageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 73
    invoke-virtual {p0, p2, p2}, Lcom/android/systemui/qs/PagedTileLayout;->setCurrentItem(IZ)V

    .line 74
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLayoutOrientation:I

    .line 75
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLayoutDirection:I

    .line 76
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mClippingRect:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/PagedTileLayout;)V
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/android/systemui/qs/PagedTileLayout;->updateSelected()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/PagedTileLayout;)Lcom/android/systemui/qs/PageIndicator;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/PagedTileLayout;)Lcom/android/systemui/qs/PagedTileLayout$PageListener;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageListener:Lcom/android/systemui/qs/PagedTileLayout$PageListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/PagedTileLayout;)Ljava/util/ArrayList;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/PagedTileLayout;)F
    .registers 1

    .line 32
    iget p0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageIndicatorPosition:F

    return p0
.end method

.method static synthetic access$502(Lcom/android/systemui/qs/PagedTileLayout;F)F
    .registers 2

    .line 32
    iput p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageIndicatorPosition:F

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/PagedTileLayout;)V
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/android/systemui/qs/PagedTileLayout;->updateListening()V

    return-void
.end method

.method private distributeTiles()V
    .registers 7

    .line 228
    invoke-direct {p0}, Lcom/android/systemui/qs/PagedTileLayout;->emptyAndInflateOrRemovePages()V

    .line 230
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    invoke-virtual {v0}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->maxTiles()I

    move-result v0

    .line 233
    iget-object v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :goto_17
    if-ge v1, v2, :cond_41

    .line 235
    iget-object v4, p0, Lcom/android/systemui/qs/PagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 236
    iget-object v5, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    iget-object v5, v5, Lcom/android/systemui/qs/TileLayout;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v0, :cond_33

    add-int/lit8 v3, v3, 0x1

    .line 241
    :cond_33
    iget-object v5, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    invoke-virtual {v5, v4}, Lcom/android/systemui/qs/TileLayout;->addTile(Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_41
    return-void
.end method

.method private emptyAndInflateOrRemovePages()V
    .registers 7

    .line 246
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 248
    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    invoke-virtual {v1}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->maxTiles()I

    move-result v1

    div-int v1, v0, v1

    const/4 v3, 0x1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 251
    iget-object v4, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    invoke-virtual {v4}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->maxTiles()I

    move-result v4

    mul-int/2addr v4, v1

    if-le v0, v4, :cond_2b

    add-int/lit8 v1, v1, 0x1

    .line 255
    :cond_2b
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v4, v2

    :goto_32
    if-ge v4, v0, :cond_42

    .line 257
    iget-object v5, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    invoke-virtual {v5}, Lcom/android/systemui/qs/TileLayout;->removeAllViews()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    :cond_42
    if-ne v0, v1, :cond_45

    return-void

    .line 262
    :cond_45
    :goto_45
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v1, :cond_63

    .line 264
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$layout;->qs_paged_page:I

    .line 265
    invoke-virtual {v4, v5, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    .line 264
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_45

    .line 267
    :cond_63
    :goto_63
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_76

    .line 269
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_63

    .line 271
    :cond_76
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/PageIndicator;->setNumPages(I)V

    .line 272
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 273
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 274
    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageToRestore:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_95

    .line 275
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/qs/PagedTileLayout;->setCurrentItem(IZ)V

    .line 276
    iput v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageToRestore:I

    :cond_95
    return-void
.end method

.method private getCurrentPageNumber()I
    .registers 4

    .line 122
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 123
    iget v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLayoutDirection:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    .line 124
    iget-object p0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr p0, v2

    sub-int v0, p0, v0

    :cond_12
    return v0
.end method

.method static synthetic lambda$static$0(F)F
    .registers 3

    const/high16 v0, 0x3f800000  # 1.0f

    sub-float/2addr p0, v0

    mul-float v1, p0, p0

    mul-float/2addr v1, p0

    add-float/2addr v1, v0

    return v1
.end method

.method private updateListening()V
    .registers 4

    .line 137
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    .line 138
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_1a

    const/4 v2, 0x0

    goto :goto_1c

    :cond_1a
    iget-boolean v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mListening:Z

    :goto_1c
    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/TileLayout;->setListening(Z)V

    goto :goto_6

    :cond_20
    return-void
.end method

.method private updateSelected()V
    .registers 7

    .line 207
    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLastExpansion:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const/high16 v2, 0x3f800000  # 1.0f

    if-lez v1, :cond_e

    cmpg-float v0, v0, v2

    if-gez v0, :cond_e

    return-void

    .line 210
    :cond_e
    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLastExpansion:F

    cmpl-float v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    move v0, v1

    :goto_18
    const/4 v2, 0x4

    .line 215
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    .line 216
    invoke-direct {p0}, Lcom/android/systemui/qs/PagedTileLayout;->getCurrentPageNumber()I

    move-result v2

    move v3, v1

    .line 217
    :goto_21
    iget-object v4, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3c

    .line 218
    iget-object v4, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    if-ne v3, v2, :cond_35

    move v5, v0

    goto :goto_36

    :cond_35
    move v5, v1

    :goto_36
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setSelected(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 220
    :cond_3c
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .registers 3

    .line 144
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 145
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->fakeDragBy(F)V

    .line 147
    invoke-virtual {p0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    return-void

    .line 149
    :cond_23
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->isFakeDragging()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 150
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->endFakeDrag()V

    .line 151
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mBounceAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    const/4 v0, 0x1

    .line 152
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 154
    :cond_35
    invoke-super {p0}, Landroidx/viewpager/widget/ViewPager;->computeScroll()V

    return-void
.end method

.method public hasOverlappingRendering()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 91
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 92
    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLayoutOrientation:I

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, p1, :cond_11

    .line 93
    iput p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLayoutOrientation:I

    const/4 p1, 0x0

    .line 94
    invoke-virtual {p0, p1, p1}, Lcom/android/systemui/qs/PagedTileLayout;->setCurrentItem(IZ)V

    .line 95
    iput p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageToRestore:I

    :cond_11
    return-void
.end method

.method protected onFinishInflate()V
    .registers 5

    .line 164
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 165
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$layout;->qs_paged_page:I

    const/4 v3, 0x0

    .line 166
    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    .line 165
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object p0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    .line 302
    invoke-super/range {p0 .. p5}, Landroidx/viewpager/widget/ViewPager;->onLayout(ZIIII)V

    .line 303
    iget-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mClippingRect:Landroid/graphics/Rect;

    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mHorizontalClipBound:I

    sub-int/2addr p4, p2

    sub-int/2addr p4, v0

    sub-int/2addr p5, p3

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 304
    iget-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 7

    .line 310
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mTiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 313
    iget-boolean v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mDistributeTiles:Z

    const/4 v2, 0x0

    if-nez v1, :cond_13

    iget v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLastMaxHeight:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    if-eq v1, v3, :cond_50

    .line 315
    :cond_13
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLastMaxHeight:I

    .line 318
    iget-object v1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    invoke-virtual {v1, p2, v0}, Lcom/android/systemui/qs/TileLayout;->updateMaxRows(II)Z

    move-result v0

    if-nez v0, :cond_2b

    iget-boolean v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mDistributeTiles:Z

    if-eqz v0, :cond_30

    .line 319
    :cond_2b
    iput-boolean v2, p0, Lcom/android/systemui/qs/PagedTileLayout;->mDistributeTiles:Z

    .line 320
    invoke-direct {p0}, Lcom/android/systemui/qs/PagedTileLayout;->distributeTiles()V

    .line 323
    :cond_30
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    iget v0, v0, Lcom/android/systemui/qs/TileLayout;->mRows:I

    move v1, v2

    .line 324
    :goto_3b
    iget-object v3, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_50

    .line 325
    iget-object v3, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/PagedTileLayout$TilePage;

    .line 326
    iput v0, v3, Lcom/android/systemui/qs/TileLayout;->mRows:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 330
    :cond_50
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->onMeasure(II)V

    .line 335
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    move p2, v2

    :goto_58
    if-ge v2, p1, :cond_68

    .line 337
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-le v0, p2, :cond_65

    move p2, v0

    :cond_65
    add-int/lit8 v2, v2, 0x1

    goto :goto_58

    .line 342
    :cond_68
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 3

    .line 101
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 102
    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLayoutDirection:I

    if-eq v0, p1, :cond_14

    .line 103
    iput p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLayoutDirection:I

    .line 104
    iget-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    const/4 p1, 0x0

    .line 105
    invoke-virtual {p0, p1, p1}, Lcom/android/systemui/qs/PagedTileLayout;->setCurrentItem(IZ)V

    .line 106
    iput p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageToRestore:I

    :cond_14
    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "current_page"

    const/4 v1, -0x1

    .line 86
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPageToRestore:I

    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .line 80
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p0

    const-string v0, "current_page"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .registers 4

    .line 112
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 113
    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int p1, v0, p1

    .line 115
    :cond_10
    invoke-super {p0, p1, p2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public setExpansion(F)V
    .registers 2

    .line 200
    iput p1, p0, Lcom/android/systemui/qs/PagedTileLayout;->mLastExpansion:F

    .line 201
    invoke-direct {p0}, Lcom/android/systemui/qs/PagedTileLayout;->updateSelected()V

    return-void
.end method
