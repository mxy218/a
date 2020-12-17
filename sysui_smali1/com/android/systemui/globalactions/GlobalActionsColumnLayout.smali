.class public Lcom/android/systemui/globalactions/GlobalActionsColumnLayout;
.super Lcom/android/systemui/globalactions/GlobalActionsLayout;
.source "GlobalActionsColumnLayout.java"


# instance fields
.field private mLastSnap:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/globalactions/GlobalActionsLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private updateChildOrdering()V
    .registers 2

    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsColumnLayout;->shouldReverseListItems()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 73
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getListView()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->bringToFront()V

    goto :goto_15

    .line 75
    :cond_e
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getSeparatedView()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->bringToFront()V

    :goto_15
    return-void
.end method


# virtual methods
.method protected centerAlongEdge()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 106
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getCurrentRotation()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_14

    .line 116
    invoke-virtual {p0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v0, 0x15

    .line 117
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_25

    .line 112
    :cond_14
    invoke-virtual {p0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v0, 0x51

    .line 113
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_25

    .line 108
    :cond_1d
    invoke-virtual {p0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v0, 0x31

    .line 109
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    :goto_25
    return-void
.end method

.method protected getAnimationDistance()F
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 173
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsColumnLayout;->getGridItemSize()F

    move-result p0

    const/high16 v0, 0x40000000  # 2.0f

    div-float/2addr p0, v0

    return p0
.end method

.method public getAnimationOffsetX()F
    .registers 2

    .line 178
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getCurrentRotation()I

    move-result v0

    if-nez v0, :cond_b

    .line 179
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsColumnLayout;->getAnimationDistance()F

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public getAnimationOffsetY()F
    .registers 3

    .line 186
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getCurrentRotation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_11

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    const/4 p0, 0x0

    return p0

    .line 190
    :cond_c
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsColumnLayout;->getAnimationDistance()F

    move-result p0

    return p0

    .line 188
    :cond_11
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsColumnLayout;->getAnimationDistance()F

    move-result p0

    neg-float p0, p0

    return p0
.end method

.method protected getGridItemSize()F
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 168
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->global_actions_grid_item_height:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    return p0
.end method

.method protected getPowerButtonOffsetDistance()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 127
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->global_actions_top_padding:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public synthetic lambda$onLayout$0$GlobalActionsColumnLayout()V
    .registers 1

    .line 45
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsColumnLayout;->updateSnap()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 43
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 45
    new-instance p1, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsColumnLayout$iug9piEk-yt27o1Db7MoL30coo4;

    invoke-direct {p1, p0}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsColumnLayout$iug9piEk-yt27o1Db7MoL30coo4;-><init>(Lcom/android/systemui/globalactions/GlobalActionsColumnLayout;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    .line 50
    invoke-super {p0, p1, p2}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->onMeasure(II)V

    return-void
.end method

.method public onUpdateList()V
    .registers 1

    .line 67
    invoke-super {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->onUpdateList()V

    .line 68
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsColumnLayout;->updateChildOrdering()V

    return-void
.end method

.method protected shouldReverseListItems()Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getCurrentRotation()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 59
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getCurrentLayoutDirection()I

    move-result p0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_13

    if-ne v0, v2, :cond_12

    move v1, v2

    :cond_12
    return v1

    :cond_13
    const/4 p0, 0x2

    if-ne v0, p0, :cond_17

    move v1, v2

    :cond_17
    return v1
.end method

.method protected shouldSnapToPowerButton()Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 138
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsColumnLayout;->getPowerButtonOffsetDistance()I

    move-result v0

    .line 141
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getWrapper()Landroid/view/View;

    move-result-object v1

    .line 142
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getCurrentRotation()I

    move-result v2

    if-nez v2, :cond_17

    .line 144
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 145
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p0

    goto :goto_1f

    .line 147
    :cond_17
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 148
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p0

    :goto_1f
    add-int/2addr v1, v0

    if-ge v1, p0, :cond_24

    const/4 p0, 0x1

    goto :goto_25

    :cond_24
    const/4 p0, 0x0

    :goto_25
    return p0
.end method

.method protected snapToPowerButton()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 84
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsColumnLayout;->getPowerButtonOffsetDistance()I

    move-result v0

    .line 85
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsLayout;->getCurrentRotation()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_21

    const/4 v2, 0x2

    if-eq v1, v2, :cond_18

    .line 95
    invoke-virtual {p0, v3, v0, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v0, 0x35

    .line 96
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_29

    .line 91
    :cond_18
    invoke-virtual {p0, v3, v3, v0, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v0, 0x55

    .line 92
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_29

    .line 87
    :cond_21
    invoke-virtual {p0, v0, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v0, 0x33

    .line 88
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    :goto_29
    return-void
.end method

.method protected updateSnap()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 155
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsColumnLayout;->shouldSnapToPowerButton()Z

    move-result v0

    .line 156
    iget-boolean v1, p0, Lcom/android/systemui/globalactions/GlobalActionsColumnLayout;->mLastSnap:Z

    if-eq v0, v1, :cond_11

    if-eqz v0, :cond_e

    .line 158
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsColumnLayout;->snapToPowerButton()V

    goto :goto_11

    .line 160
    :cond_e
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsColumnLayout;->centerAlongEdge()V

    .line 163
    :cond_11
    :goto_11
    iput-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsColumnLayout;->mLastSnap:Z

    return-void
.end method
