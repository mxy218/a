.class public Lcom/meizu/common/renderer/functor/DrawBlurFunctor;
.super Lcom/meizu/common/renderer/functor/AbstractBlurFunctor;
.source "DrawBlurFunctor.java"


# instance fields
.field private mBgTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

.field private mIgnoreLayer:Z

.field private mIsStatic:Z

.field private mRegionUpdate:Z

.field private mSourceClipBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Z)V
    .registers 2

    .line 27
    invoke-direct {p0, p1}, Lcom/meizu/common/renderer/functor/AbstractBlurFunctor;-><init>(Z)V

    .line 20
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mSourceClipBounds:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mIsStatic:Z

    .line 23
    iput-boolean p1, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mIgnoreLayer:Z

    .line 24
    iput-boolean p1, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mRegionUpdate:Z

    return-void
.end method

.method private caculaTargetBounds(Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;)Z
    .registers 8

    .line 123
    iget-object v0, p1, Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;->transform:[F

    iget v1, p1, Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;->clipLeft:I

    int-to-float v1, v1

    iget v2, p1, Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;->clipTop:I

    int-to-float v2, v2

    iget v3, p1, Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;->clipRight:I

    int-to-float v3, v3

    iget v4, p1, Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;->clipBottom:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mSourceClipBounds:Landroid/graphics/Rect;

    invoke-static/range {v0 .. v5}, Lcom/meizu/common/renderer/effect/EffectUtils;->window2View([FFFFFLandroid/graphics/Rect;)V

    .line 127
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mSourceClipBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 128
    iget-object p1, p1, Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;->transform:[F

    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mSourceClipBounds:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/meizu/common/renderer/functor/AbstractBlurFunctor;->mTargetBounds:Landroid/graphics/Rect;

    invoke-static {p1, v0, p0}, Lcom/meizu/common/renderer/effect/EffectUtils;->view2Window([FLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 p0, 0x1

    return p0

    :cond_28
    const-string p0, "glrenderer"

    const-string p1, "Clip region is not intersected with source region."

    .line 131
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private copyTexture(Lcom/meizu/common/renderer/effect/GLCanvasImpl;Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;)Z
    .registers 16

    .line 80
    invoke-virtual {p0}, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->isStatic()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/meizu/common/renderer/functor/AbstractBlurFunctor;->mInvalidate:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mBgTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    if-eqz v0, :cond_10

    return v1

    .line 84
    :cond_10
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 85
    iget-object v2, p0, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->mSourceBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 86
    iget-object v3, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mBgTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    const/4 v4, 0x1

    if-eqz v3, :cond_2f

    .line 87
    invoke-virtual {v3}, Lcom/meizu/common/renderer/effect/texture/Texture;->getWidth()I

    move-result v3

    if-ne v3, v0, :cond_2f

    iget-object v3, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mBgTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    .line 88
    invoke-virtual {v3}, Lcom/meizu/common/renderer/effect/texture/Texture;->getHeight()I

    move-result v3

    if-eq v3, v2, :cond_44

    .line 89
    :cond_2f
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->getTexturePool()Lcom/meizu/common/renderer/effect/TexturePool;

    move-result-object v3

    iget-object v5, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mBgTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    invoke-virtual {v3, v5, v4}, Lcom/meizu/common/renderer/effect/TexturePool;->put(Lcom/meizu/common/renderer/effect/texture/Texture;Z)V

    .line 90
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->getTexturePool()Lcom/meizu/common/renderer/effect/TexturePool;

    move-result-object v3

    const/16 v5, 0x1907

    invoke-virtual {v3, v0, v2, v5, v4}, Lcom/meizu/common/renderer/effect/TexturePool;->get(IIIZ)Lcom/meizu/common/renderer/effect/texture/Texture;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mBgTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    .line 93
    :cond_44
    sget-boolean v0, Lcom/meizu/common/renderer/effect/GLRenderer;->DEBUG_BLUR:Z

    if-eqz v0, :cond_53

    iget-boolean v0, p2, Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;->isLayer:Z

    if-eqz v0, :cond_53

    const-string v0, "glrenderer"

    const-string v2, "has Layer"

    .line 94
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_53
    iget-boolean v0, p2, Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;->isLayer:Z

    const v2, 0x8d40

    if-eqz v0, :cond_61

    iget-boolean v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mIgnoreLayer:Z

    if-eqz v0, :cond_61

    .line 99
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 102
    :cond_61
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mBgTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    invoke-virtual {v0, p1}, Lcom/meizu/common/renderer/effect/texture/Texture;->bindTexture(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    const/16 v5, 0xde1

    const/4 v6, 0x0

    .line 103
    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mSourceClipBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->mSourceBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 106
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mSourceClipBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->mSourceBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    .line 107
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget-object v0, p0, Lcom/meizu/common/renderer/functor/AbstractBlurFunctor;->mTargetBounds:Landroid/graphics/Rect;

    iget v9, v0, Landroid/graphics/Rect;->left:I

    iget p2, p2, Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;->viewportHeight:I

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v10, p2, v1

    .line 110
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v11

    iget-object p0, p0, Lcom/meizu/common/renderer/functor/AbstractBlurFunctor;->mTargetBounds:Landroid/graphics/Rect;

    .line 111
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v12

    .line 103
    invoke-static/range {v5 .. v12}, Landroid/opengl/GLES20;->glCopyTexSubImage2D(IIIIIIII)V

    .line 112
    invoke-virtual {p1}, Lcom/meizu/common/renderer/effect/GLCanvasImpl;->getRootBindingFrameBuffer()I

    move-result p0

    invoke-static {v2, p0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return v4
.end method


# virtual methods
.method protected draw(Lcom/meizu/common/renderer/effect/GLCanvasImpl;Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;)V
    .registers 11

    .line 32
    invoke-direct {p0, p2}, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->caculaTargetBounds(Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 36
    :cond_7
    invoke-virtual {p0, p1}, Lcom/meizu/common/renderer/functor/AbstractBlurFunctor;->getRender(Lcom/meizu/common/renderer/effect/GLCanvas;)Lcom/meizu/common/renderer/effect/render/AbstractBlurRender;

    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/meizu/common/renderer/functor/AbstractBlurFunctor;->mParameters:Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;

    invoke-virtual {v0, v1}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender;->setParameters(Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;)Z

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->copyTexture(Lcom/meizu/common/renderer/effect/GLCanvasImpl;Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;)Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_25

    iget-object p1, p0, Lcom/meizu/common/renderer/functor/AbstractBlurFunctor;->mDrawingParameters:Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;

    iget-object v2, p0, Lcom/meizu/common/renderer/functor/AbstractBlurFunctor;->mParameters:Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;

    .line 39
    invoke-virtual {p1, v2}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->copyFrom(Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;)Z

    move-result p1

    if-nez p1, :cond_25

    iget-object p1, p0, Lcom/meizu/common/renderer/functor/AbstractBlurFunctor;->mBlurResult:Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;

    if-nez p1, :cond_47

    .line 41
    :cond_25
    sget-boolean p1, Lcom/meizu/common/renderer/effect/GLRenderer;->DEBUG_BLUR:Z

    if-eqz p1, :cond_30

    const-string p1, "glrenderer"

    const-string v2, "do blur.."

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_30
    iget-object p1, p0, Lcom/meizu/common/renderer/functor/AbstractBlurFunctor;->mBlurResult:Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;

    invoke-static {p1, v1}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;->recycle(Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;Z)V

    .line 43
    iget-object p1, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mBgTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    invoke-virtual {p1}, Lcom/meizu/common/renderer/effect/texture/Texture;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mBgTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    invoke-virtual {v3}, Lcom/meizu/common/renderer/effect/texture/Texture;->getHeight()I

    move-result v3

    invoke-virtual {v0, p1, v2, v3}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender;->blur2Target(Lcom/meizu/common/renderer/effect/texture/Texture;II)Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/common/renderer/functor/AbstractBlurFunctor;->mBlurResult:Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;

    .line 46
    :cond_47
    iget-object v2, p0, Lcom/meizu/common/renderer/functor/AbstractBlurFunctor;->mDrawTextureOp:Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    iget-object p1, p0, Lcom/meizu/common/renderer/functor/AbstractBlurFunctor;->mBlurResult:Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;

    iget-object v3, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mBgTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    .line 47
    invoke-static {p1, v3}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;->getTexture(Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;Lcom/meizu/common/renderer/effect/texture/Texture;)Lcom/meizu/common/renderer/effect/texture/Texture;

    move-result-object v3

    iget-object p1, p0, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->mSourceBounds:Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    .line 50
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object p1, p0, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->mSourceBounds:Landroid/graphics/Rect;

    .line 51
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 46
    invoke-virtual/range {v2 .. v7}, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->init(Lcom/meizu/common/renderer/effect/texture/Texture;IIII)Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    .line 53
    iget-object p1, p0, Lcom/meizu/common/renderer/functor/AbstractBlurFunctor;->mDrawInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    iput-boolean v1, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->flipTextureV:Z

    .line 54
    iput-boolean v1, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->flipProjV:Z

    .line 55
    iget-object v2, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mBgTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    invoke-virtual {p0, v2}, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->isBlend(Lcom/meizu/common/renderer/effect/texture/Texture;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->blend:Z

    .line 56
    iget-object p1, p0, Lcom/meizu/common/renderer/functor/AbstractBlurFunctor;->mDrawInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    iget v2, p0, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->mAlpha:I

    iput v2, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->alpha:I

    .line 57
    iget v2, p2, Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;->viewportWidth:I

    iput v2, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->viewportWidth:I

    .line 58
    iget p2, p2, Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;->viewportHeight:I

    iput p2, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->viewportHeight:I

    .line 59
    iget-object p2, p0, Lcom/meizu/common/renderer/functor/AbstractBlurFunctor;->mDrawTextureOp:Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    iput-object p2, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->drawOp:Lcom/meizu/common/renderer/effect/op/DrawOp;

    .line 60
    iget-object p2, p0, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->mEffectKey:Ljava/lang/String;

    iput-object p2, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->effectKey:Ljava/lang/String;

    .line 61
    invoke-virtual {v0, p1}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender;->drawResult(Lcom/meizu/common/renderer/effect/DrawInfo;)V

    .line 64
    iget-boolean p1, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mRegionUpdate:Z

    if-nez p1, :cond_a1

    invoke-virtual {p0}, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->isStatic()Z

    move-result p1

    if-nez p1, :cond_a1

    .line 65
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->getTexturePool()Lcom/meizu/common/renderer/effect/TexturePool;

    move-result-object p1

    iget-object p2, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mBgTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    invoke-virtual {p1, p2, v1}, Lcom/meizu/common/renderer/effect/TexturePool;->put(Lcom/meizu/common/renderer/effect/texture/Texture;Z)V

    const/4 p1, 0x0

    .line 66
    iput-object p1, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mBgTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    .line 69
    :cond_a1
    iget-object p1, p0, Lcom/meizu/common/renderer/functor/AbstractBlurFunctor;->mDrawInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    invoke-virtual {p1}, Lcom/meizu/common/renderer/effect/DrawInfo;->reset()V

    const/4 p1, 0x0

    .line 70
    iput-boolean p1, p0, Lcom/meizu/common/renderer/functor/AbstractBlurFunctor;->mInvalidate:Z

    return-void
.end method

.method public isStatic()Z
    .registers 1

    .line 145
    iget-boolean p0, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mIsStatic:Z

    return p0
.end method

.method public setStatic(Z)V
    .registers 2

    .line 117
    iput-boolean p1, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mIsStatic:Z

    return-void
.end method

.method public trimResources(IZ)V
    .registers 4

    const/4 v0, 0x0

    .line 150
    invoke-super {p0, p1, v0}, Lcom/meizu/common/renderer/functor/AbstractBlurFunctor;->trimResources(IZ)V

    .line 151
    monitor-enter p0

    const/16 v0, 0x14

    if-lt p1, v0, :cond_19

    .line 153
    :try_start_9
    iget-object p1, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mBgTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    if-eqz p1, :cond_19

    .line 154
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->getTexturePool()Lcom/meizu/common/renderer/effect/TexturePool;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mBgTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    invoke-virtual {p1, v0, p2}, Lcom/meizu/common/renderer/effect/TexturePool;->put(Lcom/meizu/common/renderer/effect/texture/Texture;Z)V

    const/4 p1, 0x0

    .line 155
    iput-object p1, p0, Lcom/meizu/common/renderer/functor/DrawBlurFunctor;->mBgTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    :cond_19
    const/4 p1, 0x1

    .line 158
    iput-boolean p1, p0, Lcom/meizu/common/renderer/functor/AbstractBlurFunctor;->mInvalidate:Z

    .line 159
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception p1

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_1e

    throw p1
.end method
