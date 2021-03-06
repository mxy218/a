.class public Lcom/android/systemui/statusbar/phone/RotationContextButton;
.super Lcom/android/systemui/statusbar/phone/ContextualButton;
.source "RotationContextButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;
.implements Lcom/android/systemui/statusbar/phone/RotationButton;


# instance fields
.field private mNavBarMode:I

.field private mRotationButtonController:Lcom/android/systemui/statusbar/phone/RotationButtonController;


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/ContextualButton;-><init>(II)V

    const/4 p1, 0x0

    .line 34
    iput p1, p0, Lcom/android/systemui/statusbar/phone/RotationContextButton;->mNavBarMode:I

    return-void
.end method


# virtual methods
.method protected getNewDrawable()Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .registers 4

    .line 60
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ContextualButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/RotationContextButton;->mRotationButtonController:Lcom/android/systemui/statusbar/phone/RotationButtonController;

    .line 61
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->getStyleRes()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 62
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ContextualButton;->mIconResId:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->create(Landroid/content/Context;IZLandroid/graphics/Color;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p0

    return-object p0
.end method

.method public onNavigationModeChanged(I)V
    .registers 2

    .line 68
    iput p1, p0, Lcom/android/systemui/statusbar/phone/RotationContextButton;->mNavBarMode:I

    return-void
.end method

.method public setRotationButtonController(Lcom/android/systemui/statusbar/phone/RotationButtonController;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationContextButton;->mRotationButtonController:Lcom/android/systemui/statusbar/phone/RotationButtonController;

    return-void
.end method

.method public setVisibility(I)V
    .registers 2

    .line 48
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/ContextualButton;->setVisibility(I)V

    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getImageDrawable()Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p0

    if-nez p1, :cond_11

    if-eqz p0, :cond_11

    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->resetAnimation()V

    .line 54
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->startAnimation()V

    :cond_11
    return-void
.end method
