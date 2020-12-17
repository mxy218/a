.class public Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;
.super Lcom/android/systemui/statusbar/notification/stack/ViewState;
.source "StatusIconContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusIconContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StatusIconState"
.end annotation


# instance fields
.field distanceToViewEnd:F

.field public justAdded:Z

.field public visibleState:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 379
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;-><init>()V

    const/4 v0, 0x0

    .line 381
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    const/4 v0, 0x1

    .line 382
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->justAdded:Z

    const/high16 v0, -0x40800000  # -1.0f

    .line 385
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->distanceToViewEnd:F

    return-void
.end method


# virtual methods
.method public applyToView(Landroid/view/View;)V
    .registers 10

    .line 390
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 391
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    goto :goto_16

    :cond_15
    move v0, v1

    .line 394
    :goto_16
    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    sub-float/2addr v0, v2

    .line 396
    instance-of v2, p1, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    if-nez v2, :cond_1e

    return-void

    .line 399
    :cond_1e
    move-object v2, p1

    check-cast v2, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 404
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->justAdded:Z

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-nez v5, :cond_5a

    .line 405
    invoke-interface {v2}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getVisibleState()I

    move-result v5

    if-ne v5, v7, :cond_34

    iget v5, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    if-nez v5, :cond_34

    goto :goto_5a

    .line 411
    :cond_34
    invoke-interface {v2}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getVisibleState()I

    move-result v1

    iget v5, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    if-eq v1, v5, :cond_4d

    .line 412
    invoke-interface {v2}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getVisibleState()I

    move-result v1

    if-nez v1, :cond_48

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    if-ne v1, v7, :cond_48

    move v4, v6

    goto :goto_67

    .line 417
    :cond_48
    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->access$100()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v3

    goto :goto_67

    :cond_4d
    if-eq v5, v7, :cond_67

    .line 419
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->distanceToViewEnd:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_67

    .line 421
    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->access$200()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v3

    goto :goto_67

    .line 407
    :cond_5a
    :goto_5a
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 408
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 409
    invoke-interface {v2, v7}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setVisibleState(I)V

    .line 410
    invoke-static {}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->access$000()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v3

    .line 424
    :cond_67
    :goto_67
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    invoke-interface {v2, v1, v4}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->setVisibleState(IZ)V

    if-eqz v3, :cond_72

    .line 426
    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    goto :goto_75

    .line 428
    :cond_72
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->applyToView(Landroid/view/View;)V

    .line 431
    :goto_75
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->justAdded:Z

    .line 432
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->distanceToViewEnd:F

    return-void
.end method
