.class public Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
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
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2  # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    .line 12038
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;-><init>(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(IIILandroid/view/animation/Interpolator;)V
    .registers 6
    .param p1  # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2  # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p4  # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 12058
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 12023
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    const/4 v0, 0x0

    .line 12027
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 12031
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    .line 12059
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    .line 12060
    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    .line 12061
    iput p3, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    .line 12062
    iput-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private validate()V
    .registers 3

    .line 12113
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    if-lt v0, v1, :cond_a

    goto :goto_12

    .line 12114
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12116
    :cond_12
    :goto_12
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    if-lt p0, v1, :cond_17

    return-void

    .line 12117
    :cond_17
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Scroll duration must be a positive number"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method hasJumpTarget()Z
    .registers 1

    .line 12085
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

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

    .line 12081
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    return-void
.end method

.method runIfNecessary(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 7

    .line 12089
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    const/4 v1, 0x0

    if-ltz v0, :cond_e

    const/4 v2, -0x1

    .line 12091
    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 12092
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->jumpToPositionForSmoothScroller(I)V

    .line 12093
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    return-void

    .line 12096
    :cond_e
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    if-eqz v0, :cond_38

    .line 12097
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->validate()V

    .line 12098
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    .line 12099
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    .line 12100
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    const/16 v0, 0xa

    if-le p1, v0, :cond_35

    const-string p1, "RecyclerView"

    const-string v0, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    .line 12103
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12106
    :cond_35
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    goto :goto_3a

    .line 12108
    :cond_38
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    :goto_3a
    return-void
.end method

.method public update(IIILandroid/view/animation/Interpolator;)V
    .registers 5
    .param p1  # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2  # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p4  # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 12176
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    .line 12177
    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    .line 12178
    iput p3, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    .line 12179
    iput-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 p1, 0x1

    .line 12180
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    return-void
.end method
