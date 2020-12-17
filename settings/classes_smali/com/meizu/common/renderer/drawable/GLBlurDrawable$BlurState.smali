.class public Lcom/meizu/common/renderer/drawable/GLBlurDrawable$BlurState;
.super Lcom/meizu/common/renderer/drawable/GLAbstractBlurDrawable$BaseBlurState;
.source "GLBlurDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/renderer/drawable/GLBlurDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlurState"
.end annotation


# direct methods
.method constructor <init>(Lcom/meizu/common/renderer/drawable/GLBlurDrawable$BlurState;)V
    .registers 2

    .line 61
    invoke-direct {p0, p1}, Lcom/meizu/common/renderer/drawable/GLAbstractBlurDrawable$BaseBlurState;-><init>(Lcom/meizu/common/renderer/drawable/GLAbstractBlurDrawable$BaseBlurState;)V

    return-void
.end method

.method constructor <init>(Z)V
    .registers 2

    .line 57
    invoke-direct {p0, p1}, Lcom/meizu/common/renderer/drawable/GLAbstractBlurDrawable$BaseBlurState;-><init>(Z)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic functor()Lcom/meizu/common/renderer/functor/AbstractBlurFunctor;
    .registers 1

    .line 55
    invoke-virtual {p0}, Lcom/meizu/common/renderer/drawable/GLBlurDrawable$BlurState;->functor()Lcom/meizu/common/renderer/functor/DrawBlurFunctor;

    move-result-object p0

    return-object p0
.end method

.method protected functor()Lcom/meizu/common/renderer/functor/DrawBlurFunctor;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/meizu/common/renderer/drawable/GLDrawable$GLState;->mDrawGLFunctor:Lcom/meizu/common/renderer/functor/DrawGLFunctor;

    check-cast p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;

    return-object p0
.end method

.method protected bridge synthetic functor()Lcom/meizu/common/renderer/functor/DrawGLFunctor;
    .registers 1

    .line 55
    invoke-virtual {p0}, Lcom/meizu/common/renderer/drawable/GLBlurDrawable$BlurState;->functor()Lcom/meizu/common/renderer/functor/DrawBlurFunctor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 55
    invoke-virtual {p0}, Lcom/meizu/common/renderer/drawable/GLBlurDrawable$BlurState;->newDrawable()Lcom/meizu/common/renderer/drawable/GLBlurDrawable;

    move-result-object p0

    return-object p0
.end method

.method public newDrawable()Lcom/meizu/common/renderer/drawable/GLBlurDrawable;
    .registers 3

    .line 77
    new-instance v0, Lcom/meizu/common/renderer/drawable/GLBlurDrawable;

    new-instance v1, Lcom/meizu/common/renderer/drawable/GLBlurDrawable$BlurState;

    invoke-direct {v1, p0}, Lcom/meizu/common/renderer/drawable/GLBlurDrawable$BlurState;-><init>(Lcom/meizu/common/renderer/drawable/GLBlurDrawable$BlurState;)V

    invoke-direct {v0, v1}, Lcom/meizu/common/renderer/drawable/GLBlurDrawable;-><init>(Lcom/meizu/common/renderer/drawable/GLBlurDrawable$BlurState;)V

    return-object v0
.end method

.method protected newGLFunctor(Z)V
    .registers 4

    .line 66
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    and-int/2addr p1, v0

    .line 67
    new-instance v0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;

    invoke-direct {v0, p1}, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;-><init>(Z)V

    iput-object v0, p0, Lcom/meizu/common/renderer/drawable/GLDrawable$GLState;->mDrawGLFunctor:Lcom/meizu/common/renderer/functor/DrawGLFunctor;

    return-void
.end method
