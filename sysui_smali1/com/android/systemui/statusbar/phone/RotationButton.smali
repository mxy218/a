.class interface abstract Lcom/android/systemui/statusbar/phone/RotationButton;
.super Ljava/lang/Object;
.source "RotationButton.java"


# virtual methods
.method public abstract getCurrentView()Landroid/view/View;
.end method

.method public abstract getImageDrawable()Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
.end method

.method public abstract hide()Z
.end method

.method public abstract isVisible()Z
.end method

.method public setCanShowRotationButton(Z)V
    .registers 2

    return-void
.end method

.method public abstract setDarkIntensity(F)V
.end method

.method public abstract setOnClickListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setOnHoverListener(Landroid/view/View$OnHoverListener;)V
.end method

.method public abstract setRotationButtonController(Lcom/android/systemui/statusbar/phone/RotationButtonController;)V
.end method

.method public abstract show()Z
.end method
