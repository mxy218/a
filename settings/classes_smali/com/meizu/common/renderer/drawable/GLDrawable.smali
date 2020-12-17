.class public abstract Lcom/meizu/common/renderer/drawable/GLDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "GLDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/renderer/drawable/GLDrawable$GLState;
    }
.end annotation


# instance fields
.field protected mState:Lcom/meizu/common/renderer/drawable/GLDrawable$GLState;


# direct methods
.method protected constructor <init>(Lcom/meizu/common/renderer/drawable/GLDrawable$GLState;)V
    .registers 2

    .line 19
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/meizu/common/renderer/drawable/GLDrawable;->mState:Lcom/meizu/common/renderer/drawable/GLDrawable$GLState;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 9

    .line 25
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 27
    iget-object p0, p0, Lcom/meizu/common/renderer/drawable/GLDrawable;->mState:Lcom/meizu/common/renderer/drawable/GLDrawable$GLState;

    invoke-virtual {p0}, Lcom/meizu/common/renderer/drawable/GLDrawable$GLState;->functor()Lcom/meizu/common/renderer/functor/DrawGLFunctor;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->draw(Landroid/graphics/Canvas;)V

    goto :goto_26

    .line 29
    :cond_14
    iget-object p0, p0, Lcom/meizu/common/renderer/drawable/GLDrawable;->mState:Lcom/meizu/common/renderer/drawable/GLDrawable$GLState;

    invoke-virtual {p0}, Lcom/meizu/common/renderer/drawable/GLDrawable$GLState;->functor()Lcom/meizu/common/renderer/functor/DrawGLFunctor;

    move-result-object v1

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->draw(Landroid/graphics/Canvas;IIII)V

    :goto_26
    return-void
.end method

.method public getAlpha()I
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/meizu/common/renderer/drawable/GLDrawable;->mState:Lcom/meizu/common/renderer/drawable/GLDrawable$GLState;

    invoke-virtual {p0}, Lcom/meizu/common/renderer/drawable/GLDrawable$GLState;->functor()Lcom/meizu/common/renderer/functor/DrawGLFunctor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->getAlpha()I

    move-result p0

    return p0
.end method

.method public getChangingConfigurations()I
    .registers 2

    .line 75
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object p0, p0, Lcom/meizu/common/renderer/drawable/GLDrawable;->mState:Lcom/meizu/common/renderer/drawable/GLDrawable$GLState;

    iget p0, p0, Lcom/meizu/common/renderer/drawable/GLDrawable$GLState;->mChangingConfigurations:I

    or-int/2addr p0, v0

    return p0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 3

    .line 69
    iget-object v0, p0, Lcom/meizu/common/renderer/drawable/GLDrawable;->mState:Lcom/meizu/common/renderer/drawable/GLDrawable$GLState;

    invoke-virtual {p0}, Lcom/meizu/common/renderer/drawable/GLDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lcom/meizu/common/renderer/drawable/GLDrawable$GLState;->mChangingConfigurations:I

    .line 70
    iget-object p0, p0, Lcom/meizu/common/renderer/drawable/GLDrawable;->mState:Lcom/meizu/common/renderer/drawable/GLDrawable$GLState;

    return-object p0
.end method

.method public getOpacity()I
    .registers 2

    .line 55
    invoke-virtual {p0}, Lcom/meizu/common/renderer/drawable/GLDrawable;->getAlpha()I

    move-result p0

    const/16 v0, 0xff

    if-ne p0, v0, :cond_a

    const/4 p0, -0x1

    goto :goto_b

    :cond_a
    const/4 p0, -0x3

    :goto_b
    return p0
.end method

.method public recycle()V
    .registers 3

    .line 49
    iget-object p0, p0, Lcom/meizu/common/renderer/drawable/GLDrawable;->mState:Lcom/meizu/common/renderer/drawable/GLDrawable$GLState;

    invoke-virtual {p0}, Lcom/meizu/common/renderer/drawable/GLDrawable$GLState;->functor()Lcom/meizu/common/renderer/functor/DrawGLFunctor;

    move-result-object p0

    const/16 v0, 0x14

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->trimResources(IZ)V

    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    .line 38
    invoke-virtual {p0}, Lcom/meizu/common/renderer/drawable/GLDrawable;->getAlpha()I

    move-result v0

    if-eq v0, p1, :cond_12

    .line 39
    iget-object v0, p0, Lcom/meizu/common/renderer/drawable/GLDrawable;->mState:Lcom/meizu/common/renderer/drawable/GLDrawable$GLState;

    invoke-virtual {v0}, Lcom/meizu/common/renderer/drawable/GLDrawable$GLState;->functor()Lcom/meizu/common/renderer/functor/DrawGLFunctor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->setAlpha(I)V

    .line 40
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_12
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method

.method public setVisible(ZZ)Z
    .registers 3

    .line 60
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p2

    if-eqz p2, :cond_b

    if-nez p1, :cond_b

    .line 62
    invoke-virtual {p0}, Lcom/meizu/common/renderer/drawable/GLDrawable;->recycle()V

    :cond_b
    return p2
.end method
