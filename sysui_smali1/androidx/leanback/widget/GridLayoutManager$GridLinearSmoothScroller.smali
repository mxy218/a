.class abstract Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "GridLinearSmoothScroller"
.end annotation


# instance fields
.field mSkipOnStopInternal:Z

.field final synthetic this$0:Landroidx/leanback/widget/GridLayoutManager;


# direct methods
.method constructor <init>(Landroidx/leanback/widget/GridLayoutManager;)V
    .registers 2

    .line 203
    iput-object p1, p0, Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    .line 204
    iget-object p1, p1, Landroidx/leanback/widget/GridLayoutManager;->mBaseGridView:Landroidx/leanback/widget/BaseGridView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected calculateTimeForScrolling(I)I
    .registers 4

    .line 247
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    move-result v0

    .line 248
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    iget-object v1, v1, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    invoke-virtual {v1}, Landroidx/leanback/widget/WindowAlignment;->mainAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/leanback/widget/WindowAlignment$Axis;->getSize()I

    move-result v1

    if-lez v1, :cond_2a

    const/high16 v1, 0x41f00000  # 30.0f

    .line 249
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroidx/leanback/widget/WindowAlignment;

    .line 250
    invoke-virtual {p0}, Landroidx/leanback/widget/WindowAlignment;->mainAxis()Landroidx/leanback/widget/WindowAlignment$Axis;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/leanback/widget/WindowAlignment$Axis;->getSize()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v1, p0

    int-to-float p0, p1

    mul-float/2addr v1, p0

    int-to-float p0, v0

    cmpg-float p0, p0, v1

    if-gez p0, :cond_2a

    float-to-int v0, v1

    :cond_2a
    return v0
.end method

.method protected onStop()V
    .registers 4

    .line 209
    invoke-super {p0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->onStop()V

    .line 210
    iget-boolean v0, p0, Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->mSkipOnStopInternal:Z

    if-nez v0, :cond_a

    .line 211
    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->onStopInternal()V

    .line 213
    :cond_a
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->mCurrentSmoothScroller:Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;

    const/4 v2, 0x0

    if-ne v1, p0, :cond_13

    .line 214
    iput-object v2, v0, Landroidx/leanback/widget/GridLayoutManager;->mCurrentSmoothScroller:Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;

    .line 216
    :cond_13
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    iget-object v1, v0, Landroidx/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    if-ne v1, p0, :cond_1b

    .line 217
    iput-object v2, v0, Landroidx/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroidx/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    :cond_1b
    return-void
.end method

.method protected onStopInternal()V
    .registers 4

    .line 223
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 225
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v0

    if-ltz v0, :cond_1a

    .line 228
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v1, v1}, Landroidx/leanback/widget/GridLayoutManager;->scrollToSelection(IIZI)V

    :cond_1a
    return-void

    .line 232
    :cond_1b
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    iget v1, v1, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v2

    if-eq v1, v2, :cond_2d

    .line 234
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v2

    iput v2, v1, Landroidx/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 236
    :cond_2d
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 237
    iget-object v1, p0, Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    iget v2, v1, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v1, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 238
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 239
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    iget v1, v0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    and-int/lit8 v1, v1, -0x21

    iput v1, v0, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    .line 241
    :cond_48
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager;->dispatchChildSelected()V

    .line 242
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/leanback/widget/GridLayoutManager;->dispatchChildSelectedAndPositioned()V

    return-void
.end method

.method protected onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
    .registers 6

    .line 261
    iget-object p2, p0, Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    sget-object v0, Landroidx/leanback/widget/GridLayoutManager;->sTwoInts:[I

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1, v0}, Landroidx/leanback/widget/GridLayoutManager;->getScrollPosition(Landroid/view/View;Landroid/view/View;[I)Z

    move-result p1

    if-eqz p1, :cond_35

    .line 263
    iget-object p1, p0, Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    iget p1, p1, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_1a

    .line 264
    sget-object p1, Landroidx/leanback/widget/GridLayoutManager;->sTwoInts:[I

    aget p2, p1, p2

    .line 265
    aget p1, p1, v0

    goto :goto_21

    .line 267
    :cond_1a
    sget-object p1, Landroidx/leanback/widget/GridLayoutManager;->sTwoInts:[I

    aget v0, p1, v0

    .line 268
    aget p1, p1, p2

    move p2, v0

    :goto_21
    mul-int v0, p2, p2

    mul-int v1, p1, p1

    add-int/2addr v0, v1

    int-to-double v0, v0

    .line 270
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 271
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateTimeForDeceleration(I)I

    move-result v0

    .line 272
    iget-object p0, p0, Landroidx/recyclerview/widget/LinearSmoothScroller;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, p2, p1, v0, p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    :cond_35
    return-void
.end method
