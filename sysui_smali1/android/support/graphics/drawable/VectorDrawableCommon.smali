.class abstract Landroid/support/graphics/drawable/VectorDrawableCommon;
.super Landroid/graphics/drawable/Drawable;
.source "VectorDrawableCommon.java"

# interfaces
.implements Landroid/support/v4/graphics/drawable/TintAwareDrawable;


# instance fields
.field mDelegateDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 2

    .line 104
    iget-object p0, p0, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_7

    .line 105
    invoke-static {p0, p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->applyTheme(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V

    :cond_7
    return-void
.end method

.method public clearColorFilter()V
    .registers 2

    .line 112
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 113
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    return-void

    .line 116
    :cond_8
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    return-void
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .registers 1

    .line 46
    iget-object p0, p0, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_9

    .line 47
    invoke-static {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->getColorFilter(Landroid/graphics/drawable/Drawable;)Landroid/graphics/ColorFilter;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 121
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 122
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 124
    :cond_9
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getMinimumHeight()I
    .registers 2

    .line 137
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 138
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result p0

    return p0

    .line 140
    :cond_9
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result p0

    return p0
.end method

.method public getMinimumWidth()I
    .registers 2

    .line 129
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 130
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result p0

    return p0

    .line 132
    :cond_9
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result p0

    return p0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .registers 3

    .line 145
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 146
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p0

    return p0

    .line 148
    :cond_9
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public getState()[I
    .registers 2

    .line 153
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 154
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p0

    return-object p0

    .line 156
    :cond_9
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p0

    return-object p0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .registers 2

    .line 162
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 163
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object p0

    return-object p0

    .line 165
    :cond_9
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object p0

    return-object p0
.end method

.method public jumpToCurrentState()V
    .registers 1

    .line 95
    iget-object p0, p0, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_7

    .line 96
    invoke-static {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->jumpToCurrentState(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    return-void
.end method

.method protected onLevelChange(I)Z
    .registers 3

    .line 54
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 55
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p0

    return p0

    .line 57
    :cond_9
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    move-result p0

    return p0
.end method

.method public setChangingConfigurations(I)V
    .registers 3

    .line 170
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 171
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    return-void

    .line 174
    :cond_8
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    return-void
.end method

.method public setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .registers 4

    .line 37
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    .line 38
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void

    .line 41
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setFilterBitmap(Z)V
    .registers 2

    .line 87
    iget-object p0, p0, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_7

    .line 88
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    :cond_7
    return-void
.end method

.method public setHotspot(FF)V
    .registers 3

    .line 71
    iget-object p0, p0, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_7

    .line 72
    invoke-static {p0, p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    :cond_7
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .registers 5

    .line 79
    iget-object p0, p0, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_7

    .line 80
    invoke-static {p0, p1, p2, p3, p4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    :cond_7
    return-void
.end method

.method public setState([I)Z
    .registers 3

    .line 179
    iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    .line 180
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p0

    return p0

    .line 182
    :cond_9
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p0

    return p0
.end method
