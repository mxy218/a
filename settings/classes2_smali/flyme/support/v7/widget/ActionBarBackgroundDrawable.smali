.class Lflyme/support/v7/widget/ActionBarBackgroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ActionBarBackgroundDrawable.java"


# instance fields
.field final mContainer:Lflyme/support/v7/widget/ActionBarContainer;


# direct methods
.method public constructor <init>(Lflyme/support/v7/widget/ActionBarContainer;)V
    .registers 2

    .line 27
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 28
    iput-object p1, p0, Lflyme/support/v7/widget/ActionBarBackgroundDrawable;->mContainer:Lflyme/support/v7/widget/ActionBarContainer;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 33
    iget-object v0, p0, Lflyme/support/v7/widget/ActionBarBackgroundDrawable;->mContainer:Lflyme/support/v7/widget/ActionBarContainer;

    iget-boolean v1, v0, Lflyme/support/v7/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v1, :cond_e

    .line 34
    iget-object p0, v0, Lflyme/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_22

    .line 35
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_22

    .line 45
    :cond_e
    iget-object v1, v0, Lflyme/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_19

    iget-boolean v0, v0, Lflyme/support/v7/widget/ActionBarContainer;->mIsStacked:Z

    if-eqz v0, :cond_19

    .line 46
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 48
    :cond_19
    iget-object p0, p0, Lflyme/support/v7/widget/ActionBarBackgroundDrawable;->mContainer:Lflyme/support/v7/widget/ActionBarContainer;

    iget-object p0, p0, Lflyme/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_22

    .line 49
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_22
    :goto_22
    return-void
.end method

.method public getOpacity()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public setAlpha(I)V
    .registers 2

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method
