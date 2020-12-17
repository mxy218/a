.class public abstract Lflyme/support/v7/widget/SimpleItemAnimator;
.super Lflyme/support/v7/widget/RecyclerView$ItemAnimator;
.source "SimpleItemAnimator.java"


# instance fields
.field mSupportsChangeAnimations:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;-><init>()V

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lflyme/support/v7/widget/SimpleItemAnimator;->mSupportsChangeAnimations:Z

    return-void
.end method


# virtual methods
.method public abstract animateAdd(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Z
.end method

.method public animateAppearance(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .registers 12
    .param p1  # Lflyme/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p2, :cond_1d

    .line 102
    iget v0, p2, Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v1, p3, Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    if-ne v0, v1, :cond_e

    iget v0, p2, Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    iget v1, p3, Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    if-eq v0, v1, :cond_1d

    .line 108
    :cond_e
    iget v4, p2, Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v5, p2, Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    iget v6, p3, Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v7, p3, Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lflyme/support/v7/widget/SimpleItemAnimator;->animateMove(Lflyme/support/v7/widget/RecyclerView$ViewHolder;IIII)Z

    move-result p0

    return p0

    .line 114
    :cond_1d
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/SimpleItemAnimator;->animateAdd(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result p0

    return p0
.end method

.method public abstract animateChange(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ViewHolder;IIII)Z
.end method

.method public animateChange(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .registers 12
    .param p1  # Lflyme/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lflyme/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 139
    iget v3, p3, Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    .line 140
    iget v4, p3, Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    .line 142
    invoke-virtual {p2}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 143
    iget p4, p3, Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    .line 144
    iget p3, p3, Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move v6, p3

    move v5, p4

    goto :goto_17

    .line 146
    :cond_11
    iget p3, p4, Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    .line 147
    iget p4, p4, Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move v5, p3

    move v6, p4

    :goto_17
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 149
    invoke-virtual/range {v0 .. v6}, Lflyme/support/v7/widget/SimpleItemAnimator;->animateChange(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ViewHolder;IIII)Z

    move-result p0

    return p0
.end method

.method public animateDisappearance(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .registers 10
    .param p1  # Lflyme/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 78
    iget v2, p2, Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    .line 79
    iget v3, p2, Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    .line 80
    iget-object p2, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-nez p3, :cond_d

    .line 81
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_f

    :cond_d
    iget v0, p3, Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    :goto_f
    move v4, v0

    if-nez p3, :cond_17

    .line 82
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    goto :goto_19

    :cond_17
    iget p3, p3, Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    :goto_19
    move v5, p3

    .line 83
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result p3

    if-nez p3, :cond_38

    if-ne v2, v4, :cond_24

    if-eq v3, v5, :cond_38

    .line 85
    :cond_24
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p3

    add-int/2addr p3, v4

    .line 86
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v5

    .line 84
    invoke-virtual {p2, v4, v5, p3, v0}, Landroid/view/View;->layout(IIII)V

    move-object v0, p0

    move-object v1, p1

    .line 90
    invoke-virtual/range {v0 .. v5}, Lflyme/support/v7/widget/SimpleItemAnimator;->animateMove(Lflyme/support/v7/widget/RecyclerView$ViewHolder;IIII)Z

    move-result p0

    return p0

    .line 95
    :cond_38
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/SimpleItemAnimator;->animateRemove(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result p0

    return p0
.end method

.method public abstract animateMove(Lflyme/support/v7/widget/RecyclerView$ViewHolder;IIII)Z
.end method

.method public animatePersistence(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .registers 10
    .param p1  # Lflyme/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 121
    iget v0, p2, Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v1, p3, Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    if-ne v0, v1, :cond_12

    iget v0, p2, Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    iget v1, p3, Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    if-eq v0, v1, :cond_d

    goto :goto_12

    .line 129
    :cond_d
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/SimpleItemAnimator;->dispatchMoveFinished(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    const/4 p0, 0x0

    return p0

    .line 126
    :cond_12
    :goto_12
    iget v2, p2, Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v3, p2, Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    iget v4, p3, Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    iget v5, p3, Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lflyme/support/v7/widget/SimpleItemAnimator;->animateMove(Lflyme/support/v7/widget/RecyclerView$ViewHolder;IIII)Z

    move-result p0

    return p0
.end method

.method public abstract animateRemove(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Z
.end method

.method public canReuseUpdatedViewHolder(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Z
    .registers 2
    .param p1  # Lflyme/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 72
    iget-boolean p0, p0, Lflyme/support/v7/widget/SimpleItemAnimator;->mSupportsChangeAnimations:Z

    if-eqz p0, :cond_d

    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public final dispatchAddFinished(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 2

    .line 288
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/SimpleItemAnimator;->onAddFinished(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 289
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->dispatchAnimationFinished(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final dispatchAddStarting(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 2

    .line 331
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/SimpleItemAnimator;->onAddStarting(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final dispatchChangeFinished(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Z)V
    .registers 3

    .line 303
    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/widget/SimpleItemAnimator;->onChangeFinished(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Z)V

    .line 304
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->dispatchAnimationFinished(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final dispatchChangeStarting(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Z)V
    .registers 3

    .line 344
    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/widget/SimpleItemAnimator;->onChangeStarting(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Z)V

    return-void
.end method

.method public final dispatchMoveFinished(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 2

    .line 278
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/SimpleItemAnimator;->onMoveFinished(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 279
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->dispatchAnimationFinished(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final dispatchMoveStarting(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 2

    .line 322
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/SimpleItemAnimator;->onMoveStarting(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final dispatchRemoveFinished(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 2

    .line 264
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/SimpleItemAnimator;->onRemoveFinished(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 265
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator;->dispatchAnimationFinished(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final dispatchRemoveStarting(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 2

    .line 313
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/SimpleItemAnimator;->onRemoveStarting(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public onAddFinished(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 2

    return-void
.end method

.method public onAddStarting(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 2

    return-void
.end method

.method public onChangeFinished(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Z)V
    .registers 3

    return-void
.end method

.method public onChangeStarting(Lflyme/support/v7/widget/RecyclerView$ViewHolder;Z)V
    .registers 3

    return-void
.end method

.method public onMoveFinished(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 2

    return-void
.end method

.method public onMoveStarting(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 2

    return-void
.end method

.method public onRemoveFinished(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 2

    return-void
.end method

.method public onRemoveStarting(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 2

    return-void
.end method
