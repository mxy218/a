.class public Lcom/android/systemui/qs/AlphaControlledSignalTileView$AlphaControlledSlashImageView;
.super Lcom/android/systemui/qs/tileimpl/SlashImageView;
.source "AlphaControlledSignalTileView.java"


# virtual methods
.method protected ensureSlashDrawable()V
    .registers 3

    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/SlashImageView;->getSlash()Lcom/android/systemui/qs/SlashDrawable;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 58
    new-instance v0, Lcom/android/systemui/qs/AlphaControlledSignalTileView$AlphaControlledSlashDrawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/AlphaControlledSignalTileView$AlphaControlledSlashDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 59
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/SlashImageView;->setSlash(Lcom/android/systemui/qs/SlashDrawable;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/SlashImageView;->getAnimationEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SlashDrawable;->setAnimationEnabled(Z)V

    .line 61
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/SlashImageView;->setImageViewDrawable(Lcom/android/systemui/qs/SlashDrawable;)V

    :cond_1c
    return-void
.end method

.method public setFinalImageTintList(Landroid/content/res/ColorStateList;)V
    .registers 2

    .line 48
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/SlashImageView;->getSlash()Lcom/android/systemui/qs/SlashDrawable;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 51
    check-cast p0, Lcom/android/systemui/qs/AlphaControlledSignalTileView$AlphaControlledSlashDrawable;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/AlphaControlledSignalTileView$AlphaControlledSlashDrawable;->setFinalTintList(Landroid/content/res/ColorStateList;)V

    :cond_e
    return-void
.end method
