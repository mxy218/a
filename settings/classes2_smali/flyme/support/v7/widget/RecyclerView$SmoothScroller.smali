.class public abstract Lflyme/support/v7/widget/RecyclerView$SmoothScroller;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SmoothScroller"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;,
        Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;
    }
.end annotation


# instance fields
.field private mLayoutManager:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

.field private mPendingInitialRun:Z

.field private mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

.field private final mRecyclingAction:Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;

.field private mRunning:Z

.field private mTargetPosition:I

.field private mTargetView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 11125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 11111
    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 11126
    new-instance v0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;-><init>(II)V

    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;

    return-void
.end method

.method static synthetic access$400(Lflyme/support/v7/widget/RecyclerView$SmoothScroller;II)V
    .registers 3

    .line 11109
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    return-void
.end method

.method private onAnimation(II)V
    .registers 7

    .line 11221
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    .line 11222
    iget-boolean v1, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v1, :cond_d

    iget v1, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_d

    if-nez v0, :cond_10

    .line 11223
    :cond_d
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->stop()V

    :cond_10
    const/4 v1, 0x0

    .line 11225
    iput-boolean v1, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 11226
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    if-eqz v1, :cond_3b

    .line 11228
    invoke-virtual {p0, v1}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->getChildPosition(Landroid/view/View;)I

    move-result v1

    iget v2, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    if-ne v1, v2, :cond_31

    .line 11229
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    iget-object v2, v0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    iget-object v3, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {p0, v1, v2, v3}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->onTargetFound(Landroid/view/View;Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;)V

    .line 11230
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {v1, v0}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;->runIfNecessary(Lflyme/support/v7/widget/RecyclerView;)V

    .line 11231
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->stop()V

    goto :goto_3b

    :cond_31
    const-string v1, "RecyclerView"

    const-string v2, "Passed over target position while smooth scrolling."

    .line 11233
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 11234
    iput-object v1, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 11237
    :cond_3b
    :goto_3b
    iget-boolean v1, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v1, :cond_63

    .line 11238
    iget-object v1, v0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    iget-object v2, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {p0, p1, p2, v1, v2}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->onSeekTargetStep(IILflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;)V

    .line 11239
    iget-object p1, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;->hasJumpTarget()Z

    move-result p1

    .line 11240
    iget-object p2, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {p2, v0}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;->runIfNecessary(Lflyme/support/v7/widget/RecyclerView;)V

    if-eqz p1, :cond_63

    .line 11243
    iget-boolean p1, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mRunning:Z

    if-eqz p1, :cond_60

    const/4 p1, 0x1

    .line 11244
    iput-boolean p1, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 11245
    iget-object p0, v0, Lflyme/support/v7/widget/RecyclerView;->mViewFlinger:Lflyme/support/v7/widget/RecyclerView$ViewFlinger;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    goto :goto_63

    .line 11247
    :cond_60
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->stop()V

    :cond_63
    :goto_63
    return-void
.end method


# virtual methods
.method public findViewByPosition(I)Landroid/view/View;
    .registers 2

    .line 11271
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getChildCount()I
    .registers 1

    .line 11264
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mLayout:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p0

    return p0
.end method

.method public getChildPosition(Landroid/view/View;)I
    .registers 2

    .line 11257
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public getLayoutManager()Lflyme/support/v7/widget/RecyclerView$LayoutManager;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 11165
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mLayoutManager:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    return-object p0
.end method

.method public getTargetPosition()I
    .registers 1

    .line 11217
    iget p0, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    return p0
.end method

.method public isPendingInitialRun()Z
    .registers 1

    .line 11199
    iget-boolean p0, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    return p0
.end method

.method public isRunning()Z
    .registers 1

    .line 11207
    iget-boolean p0, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mRunning:Z

    return p0
.end method

.method protected normalize(Landroid/graphics/PointF;)V
    .registers 6

    .line 11297
    iget p0, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr p0, p0

    iget v0, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, v0

    add-float/2addr p0, v0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 11299
    iget p0, p1, Landroid/graphics/PointF;->x:F

    float-to-double v2, p0

    div-double/2addr v2, v0

    double-to-float p0, v2

    iput p0, p1, Landroid/graphics/PointF;->x:F

    .line 11300
    iget p0, p1, Landroid/graphics/PointF;->y:F

    float-to-double v2, p0

    div-double/2addr v2, v0

    double-to-float p0, v2

    iput p0, p1, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method protected onChildAttachedToWindow(Landroid/view/View;)V
    .registers 4

    .line 11284
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->getChildPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v1

    if-ne v0, v1, :cond_c

    .line 11285
    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    :cond_c
    return-void
.end method

.method protected abstract onSeekTargetStep(IILflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;)V
.end method

.method protected abstract onStart()V
.end method

.method protected abstract onStop()V
.end method

.method protected abstract onTargetFound(Landroid/view/View;Lflyme/support/v7/widget/RecyclerView$State;Lflyme/support/v7/widget/RecyclerView$SmoothScroller$Action;)V
.end method

.method public setTargetPosition(I)V
    .registers 2

    .line 11156
    iput p1, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    return-void
.end method

.method start(Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$LayoutManager;)V
    .registers 3

    .line 11142
    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    .line 11143
    iput-object p2, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mLayoutManager:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    .line 11144
    iget p1, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2a

    .line 11147
    iget-object p2, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    iget-object p2, p2, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-static {p2, p1}, Lflyme/support/v7/widget/RecyclerView$State;->access$1102(Lflyme/support/v7/widget/RecyclerView$State;I)I

    const/4 p1, 0x1

    .line 11148
    iput-boolean p1, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mRunning:Z

    .line 11149
    iput-boolean p1, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 11150
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 11151
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->onStart()V

    .line 11152
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView;->mViewFlinger:Lflyme/support/v7/widget/RecyclerView$ViewFlinger;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    return-void

    .line 11145
    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid target position"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected final stop()V
    .registers 3

    .line 11175
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mRunning:Z

    if-nez v0, :cond_5

    return-void

    .line 11178
    :cond_5
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->onStop()V

    .line 11179
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lflyme/support/v7/widget/RecyclerView$State;->access$1102(Lflyme/support/v7/widget/RecyclerView$State;I)I

    const/4 v0, 0x0

    .line 11180
    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 11181
    iput v1, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    const/4 v1, 0x0

    .line 11182
    iput-boolean v1, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 11183
    iput-boolean v1, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mRunning:Z

    .line 11185
    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mLayoutManager:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-static {v1, p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->access$1200(Lflyme/support/v7/widget/RecyclerView$LayoutManager;Lflyme/support/v7/widget/RecyclerView$SmoothScroller;)V

    .line 11187
    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mLayoutManager:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    .line 11188
    iput-object v0, p0, Lflyme/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    return-void
.end method
