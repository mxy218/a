.class public Lcom/meizu/common/renderer/drawable/GLBlurDrawable;
.super Lcom/meizu/common/renderer/drawable/GLAbstractBlurDrawable;
.source "GLBlurDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/renderer/drawable/GLBlurDrawable$BlurState;
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/meizu/common/renderer/drawable/GLBlurDrawable$BlurState;)V
    .registers 2

    .line 27
    invoke-direct {p0, p1}, Lcom/meizu/common/renderer/drawable/GLAbstractBlurDrawable;-><init>(Lcom/meizu/common/renderer/drawable/GLAbstractBlurDrawable$BaseBlurState;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3

    .line 14
    new-instance v0, Lcom/meizu/common/renderer/drawable/GLBlurDrawable$BlurState;

    invoke-direct {v0, p1}, Lcom/meizu/common/renderer/drawable/GLBlurDrawable$BlurState;-><init>(Z)V

    invoke-direct {p0, v0}, Lcom/meizu/common/renderer/drawable/GLBlurDrawable;-><init>(Lcom/meizu/common/renderer/drawable/GLBlurDrawable$BlurState;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic setBlurLevel(F)V
    .registers 2

    .line 12
    invoke-super {p0, p1}, Lcom/meizu/common/renderer/drawable/GLAbstractBlurDrawable;->setBlurLevel(F)V

    return-void
.end method

.method public bridge synthetic setColorFilter(I)V
    .registers 2

    .line 12
    invoke-super {p0, p1}, Lcom/meizu/common/renderer/drawable/GLAbstractBlurDrawable;->setColorFilter(I)V

    return-void
.end method

.method public bridge synthetic setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .line 12
    invoke-super {p0, p1, p2}, Lcom/meizu/common/renderer/drawable/GLAbstractBlurDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public bridge synthetic setScale(F)V
    .registers 2

    .line 12
    invoke-super {p0, p1}, Lcom/meizu/common/renderer/drawable/GLAbstractBlurDrawable;->setScale(F)V

    return-void
.end method

.method public setStatic(Z)V
    .registers 2

    .line 43
    invoke-virtual {p0}, Lcom/meizu/common/renderer/drawable/GLBlurDrawable;->state()Lcom/meizu/common/renderer/drawable/GLBlurDrawable$BlurState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/common/renderer/drawable/GLBlurDrawable$BlurState;->functor()Lcom/meizu/common/renderer/functor/DrawBlurFunctor;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->setStatic(Z)V

    return-void
.end method

.method protected bridge synthetic state()Lcom/meizu/common/renderer/drawable/GLAbstractBlurDrawable$BaseBlurState;
    .registers 1

    .line 12
    invoke-virtual {p0}, Lcom/meizu/common/renderer/drawable/GLBlurDrawable;->state()Lcom/meizu/common/renderer/drawable/GLBlurDrawable$BlurState;

    move-result-object p0

    return-object p0
.end method

.method protected state()Lcom/meizu/common/renderer/drawable/GLBlurDrawable$BlurState;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/meizu/common/renderer/drawable/GLDrawable;->mState:Lcom/meizu/common/renderer/drawable/GLDrawable$GLState;

    check-cast p0, Lcom/meizu/common/renderer/drawable/GLBlurDrawable$BlurState;

    return-object p0
.end method
