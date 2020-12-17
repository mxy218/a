.class public Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView$SmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# instance fields
.field private mChanged:Z

.field private mConsecutiveUpdates:I

.field private mDuration:I

.field private mDx:I

.field private mDy:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mJumpToPosition:I


# direct methods
.method public constructor <init>(II)V
    .registers 5
    .param p1  # I
        .annotation build Landroid/support/annotation/Px;
        .end annotation
    .end param
    .param p2  # I
        .annotation build Landroid/support/annotation/Px;
        .end annotation
    .end param

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    .line 11759
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;-><init>(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(IIILandroid/view/animation/Interpolator;)V
    .registers 6
    .param p1  # I
        .annotation build Landroid/support/annotation/Px;
        .end annotation
    .end param
    .param p2  # I
        .annotation build Landroid/support/annotation/Px;
        .end annotation
    .end param
    .param p4  # Landroid/view/animation/Interpolator;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 11779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 11744
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    const/4 v0, 0x0

    .line 11748
    iput-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 11752
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    .line 11780
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    .line 11781
    iput p2, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    .line 11782
    iput p3, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    .line 11783
    iput-object p4, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private validate()V
    .registers 3

    .line 11843
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    if-lt v0, v1, :cond_a

    goto :goto_12

    .line 11844
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11846
    :cond_12
    :goto_12
    iget p0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    if-lt p0, v1, :cond_17

    return-void

    .line 11847
    :cond_17
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Scroll duration must be a positive number"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method hasJumpTarget()Z
    .registers 1

    .line 11806
    iget p0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    if-ltz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public jumpTo(I)V
    .registers 2

    .line 11802
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    return-void
.end method

.method runIfNecessary(Landroid/support/v7/widget/RecyclerView;)V
    .registers 7

    .line 11810
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    const/4 v1, 0x0

    if-ltz v0, :cond_e

    const/4 v2, -0x1

    .line 11812
    iput v2, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 11813
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->jumpToPositionForSmoothScroller(I)V

    .line 11814
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    return-void

    .line 11817
    :cond_e
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    if-eqz v0, :cond_54

    .line 11818
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->validate()V

    .line 11819
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_33

    .line 11820
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_29

    .line 11821
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    invoke-virtual {p1, v0, v2}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(II)V

    goto :goto_3e

    .line 11823
    :cond_29
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    iget v3, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    invoke-virtual {p1, v2, v3, v0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(III)V

    goto :goto_3e

    .line 11826
    :cond_33
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    iget v3, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    iget v4, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    .line 11829
    :goto_3e
    iget p1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    .line 11830
    iget p1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    const/16 v0, 0xa

    if-le p1, v0, :cond_51

    const-string p1, "RecyclerView"

    const-string v0, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    .line 11833
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11836
    :cond_51
    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    goto :goto_56

    .line 11838
    :cond_54
    iput v1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    :goto_56
    return-void
.end method

.method public update(IIILandroid/view/animation/Interpolator;)V
    .registers 5
    .param p1  # I
        .annotation build Landroid/support/annotation/Px;
        .end annotation
    .end param
    .param p2  # I
        .annotation build Landroid/support/annotation/Px;
        .end annotation
    .end param
    .param p4  # Landroid/view/animation/Interpolator;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 11906
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    .line 11907
    iput p2, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    .line 11908
    iput p3, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    .line 11909
    iput-object p4, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 p1, 0x1

    .line 11910
    iput-boolean p1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    return-void
.end method
