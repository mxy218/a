.class Lflyme/support/v7/widget/ActionBarBackgroundDrawableV21;
.super Lflyme/support/v7/widget/ActionBarBackgroundDrawable;
.source "ActionBarBackgroundDrawableV21.java"


# direct methods
.method public constructor <init>(Lflyme/support/v7/widget/ActionBarContainer;)V
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/ActionBarBackgroundDrawable;-><init>(Lflyme/support/v7/widget/ActionBarContainer;)V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/graphics/Outline;)V
    .registers 3
    .param p1  # Landroid/graphics/Outline;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 30
    iget-object p0, p0, Lflyme/support/v7/widget/ActionBarBackgroundDrawable;->mContainer:Lflyme/support/v7/widget/ActionBarContainer;

    iget-boolean v0, p0, Lflyme/support/v7/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_e

    .line 31
    iget-object p0, p0, Lflyme/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_15

    .line 32
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    goto :goto_15

    .line 36
    :cond_e
    iget-object p0, p0, Lflyme/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_15

    .line 37
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    :cond_15
    :goto_15
    return-void
.end method
