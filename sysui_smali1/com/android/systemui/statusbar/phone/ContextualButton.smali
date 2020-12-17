.class public Lcom/android/systemui/statusbar/phone/ContextualButton;
.super Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
.source "ContextualButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/ContextualButton$ContextButtonListener;
    }
.end annotation


# instance fields
.field private mGroup:Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

.field protected final mIconResId:I

.field private mListener:Lcom/android/systemui/statusbar/phone/ContextualButton$ContextButtonListener;


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 46
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    .line 47
    iput p2, p0, Lcom/android/systemui/statusbar/phone/ContextualButton;->mIconResId:I

    return-void
.end method


# virtual methods
.method attachToGroup(Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;)V
    .registers 2

    .line 116
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ContextualButton;->mGroup:Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .registers 1

    .line 130
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method protected getNewDrawable()Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .registers 3

    .line 120
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ContextualButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/ContextualButton;->mIconResId:I

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->create(Landroid/content/Context;IZ)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p0

    return-object p0
.end method

.method public hide()Z
    .registers 3

    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ContextualButton;->mGroup:Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    const/4 v0, 0x4

    .line 104
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ContextualButton;->setVisibility(I)V

    return v1

    .line 107
    :cond_a
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getId()I

    move-result p0

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->setButtonVisibility(IZ)I

    move-result p0

    if-eqz p0, :cond_15

    const/4 v1, 0x1

    :cond_15
    return v1
.end method

.method public setListener(Lcom/android/systemui/statusbar/phone/ContextualButton$ContextButtonListener;)V
    .registers 2

    .line 82
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ContextualButton;->mListener:Lcom/android/systemui/statusbar/phone/ContextualButton$ContextButtonListener;

    return-void
.end method

.method public setVisibility(I)V
    .registers 4

    .line 67
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getImageDrawable()Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    if-eqz p1, :cond_17

    if-eqz v0, :cond_17

    .line 71
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->canAnimate()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 72
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->clearAnimationCallbacks()V

    .line 73
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->resetAnimation()V

    .line 76
    :cond_17
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ContextualButton;->mListener:Lcom/android/systemui/statusbar/phone/ContextualButton$ContextButtonListener;

    if-eqz v0, :cond_23

    if-nez p1, :cond_1f

    const/4 p1, 0x1

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    .line 77
    :goto_20
    invoke-interface {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/ContextualButton$ContextButtonListener;->onVisibilityChanged(Lcom/android/systemui/statusbar/phone/ContextualButton;Z)V

    :cond_23
    return-void
.end method

.method public show()Z
    .registers 4

    .line 91
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ContextualButton;->mGroup:Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_a

    .line 92
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/ContextualButton;->setVisibility(I)V

    return v2

    .line 95
    :cond_a
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getId()I

    move-result p0

    invoke-virtual {v0, p0, v2}, Lcom/android/systemui/statusbar/phone/ContextualButtonGroup;->setButtonVisibility(IZ)I

    move-result p0

    if-nez p0, :cond_15

    move v1, v2

    :cond_15
    return v1
.end method

.method public updateIcon()V
    .registers 3

    .line 54
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_29

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ContextualButton;->mIconResId:I

    if-nez v0, :cond_15

    goto :goto_29

    .line 57
    :cond_15
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getImageDrawable()Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    .line 58
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ContextualButton;->getNewDrawable()Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v1

    if-eqz v0, :cond_26

    .line 60
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getDarkIntensity()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setDarkIntensity(F)V

    .line 62
    :cond_26
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    :cond_29
    :goto_29
    return-void
.end method
