.class public abstract Lcom/meizu/common/renderer/effect/texture/Texture;
.super Lcom/meizu/common/renderer/effect/Resource;
.source "Texture.java"


# static fields
.field protected static sTextureId:[I


# instance fields
.field protected mBounds:Landroid/graphics/RectF;

.field protected mBoundsChanged:Z

.field protected mFormat:I

.field protected mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

.field protected mHeight:I

.field protected mId:I

.field protected mLoaded:Z

.field protected mOpaque:Z

.field protected mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 21
    sput-object v0, Lcom/meizu/common/renderer/effect/texture/Texture;->sTextureId:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 17
    invoke-direct {p0}, Lcom/meizu/common/renderer/effect/Resource;-><init>()V

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lcom/meizu/common/renderer/effect/texture/Texture;->mWidth:I

    .line 24
    iput v0, p0, Lcom/meizu/common/renderer/effect/texture/Texture;->mHeight:I

    .line 26
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/texture/Texture;->mBounds:Landroid/graphics/RectF;

    return-void
.end method

.method private checkSize()V
    .registers 4

    .line 145
    iget v0, p0, Lcom/meizu/common/renderer/effect/texture/Texture;->mWidth:I

    const/16 v1, 0xc00

    if-gt v0, v1, :cond_a

    iget v0, p0, Lcom/meizu/common/renderer/effect/texture/Texture;->mHeight:I

    if-le v0, v1, :cond_2f

    :cond_a
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 146
    iget v2, p0, Lcom/meizu/common/renderer/effect/texture/Texture;->mWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget p0, p0, Lcom/meizu/common/renderer/effect/texture/Texture;->mHeight:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "Texture is %d x %d"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "glrenderer"

    invoke-static {v1, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2f
    return-void
.end method


# virtual methods
.method public bindTexture(Lcom/meizu/common/renderer/effect/GLCanvas;)V
    .registers 2

    .line 89
    invoke-virtual {p0, p1}, Lcom/meizu/common/renderer/effect/texture/Texture;->upload(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    .line 90
    invoke-virtual {p0}, Lcom/meizu/common/renderer/effect/texture/Texture;->getTarget()I

    move-result p1

    invoke-virtual {p0}, Lcom/meizu/common/renderer/effect/texture/Texture;->getId()I

    move-result p0

    invoke-static {p1, p0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method public getBytes()I
    .registers 3

    .line 78
    invoke-virtual {p0}, Lcom/meizu/common/renderer/effect/texture/Texture;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/renderer/effect/texture/Texture;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    iget p0, p0, Lcom/meizu/common/renderer/effect/texture/Texture;->mFormat:I

    const/16 v1, 0x1907

    if-ne p0, v1, :cond_11

    const/4 p0, 0x3

    goto :goto_12

    :cond_11
    const/4 p0, 0x4

    :goto_12
    mul-int/2addr v0, p0

    return v0
.end method

.method public getFormat()I
    .registers 1

    .line 120
    iget p0, p0, Lcom/meizu/common/renderer/effect/texture/Texture;->mFormat:I

    return p0
.end method

.method public getHeight()I
    .registers 1

    .line 102
    iget p0, p0, Lcom/meizu/common/renderer/effect/texture/Texture;->mHeight:I

    return p0
.end method

.method public getId()I
    .registers 1

    .line 94
    iget p0, p0, Lcom/meizu/common/renderer/effect/texture/Texture;->mId:I

    return p0
.end method

.method public getTarget()I
    .registers 1

    const/16 p0, 0xde1

    return p0
.end method

.method public getWidth()I
    .registers 1

    .line 98
    iget p0, p0, Lcom/meizu/common/renderer/effect/texture/Texture;->mWidth:I

    return p0
.end method

.method public initTexParameter(II)V
    .registers 3

    .line 36
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const p0, 0x812f

    const/16 p1, 0xde1

    const/16 p2, 0x2802

    .line 37
    invoke-static {p1, p2, p0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p2, 0x2803

    .line 41
    invoke-static {p1, p2, p0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p0, 0x2601

    const/16 p2, 0x2801

    .line 45
    invoke-static {p1, p2, p0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p2, 0x2800

    .line 49
    invoke-static {p1, p2, p0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    return-void
.end method

.method public isLoaded()Z
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/texture/Texture;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Lcom/meizu/common/renderer/effect/texture/Texture;->mLoaded:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isOpaque()Z
    .registers 1

    .line 141
    iget-boolean p0, p0, Lcom/meizu/common/renderer/effect/texture/Texture;->mOpaque:Z

    return p0
.end method

.method public onBind(Lcom/meizu/common/renderer/effect/GLCanvas;)Z
    .registers 2

    .line 82
    invoke-virtual {p0, p1}, Lcom/meizu/common/renderer/effect/texture/Texture;->upload(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    .line 83
    invoke-virtual {p0}, Lcom/meizu/common/renderer/effect/texture/Texture;->isLoaded()Z

    move-result p0

    return p0
.end method

.method public resetBounds()V
    .registers 4

    .line 106
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/texture/Texture;->mBounds:Landroid/graphics/RectF;

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lcom/meizu/common/renderer/effect/texture/Texture;->mBoundsChanged:Z

    return-void
.end method

.method protected setLoaded(Lcom/meizu/common/renderer/effect/GLCanvas;Z)V
    .registers 3

    .line 128
    iput-object p1, p0, Lcom/meizu/common/renderer/effect/texture/Texture;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    .line 129
    iput-boolean p2, p0, Lcom/meizu/common/renderer/effect/texture/Texture;->mLoaded:Z

    return-void
.end method

.method public setOpaque(Z)V
    .registers 2

    .line 137
    iput-boolean p1, p0, Lcom/meizu/common/renderer/effect/texture/Texture;->mOpaque:Z

    return-void
.end method

.method public setSize(II)V
    .registers 5

    .line 69
    invoke-virtual {p0}, Lcom/meizu/common/renderer/effect/texture/Texture;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/meizu/common/renderer/effect/texture/Texture;->mWidth:I

    if-ne v0, p1, :cond_e

    iget v0, p0, Lcom/meizu/common/renderer/effect/texture/Texture;->mHeight:I

    if-eq v0, p2, :cond_14

    :cond_e
    const/16 v0, 0x50

    const/4 v1, 0x0

    .line 70
    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/renderer/effect/texture/Texture;->trimResources(IZ)V

    .line 72
    :cond_14
    iput p1, p0, Lcom/meizu/common/renderer/effect/texture/Texture;->mWidth:I

    .line 73
    iput p2, p0, Lcom/meizu/common/renderer/effect/texture/Texture;->mHeight:I

    .line 74
    invoke-direct {p0}, Lcom/meizu/common/renderer/effect/texture/Texture;->checkSize()V

    return-void
.end method

.method public trimResources(IZ)V
    .registers 4

    .line 152
    invoke-virtual {p0}, Lcom/meizu/common/renderer/effect/texture/Texture;->isLoaded()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 153
    iget-object p1, p0, Lcom/meizu/common/renderer/effect/texture/Texture;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-virtual {p0}, Lcom/meizu/common/renderer/effect/texture/Texture;->getId()I

    move-result v0

    invoke-interface {p1, v0, p2}, Lcom/meizu/common/renderer/effect/GLCanvas;->deleteTexture(IZ)V

    :cond_f
    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 155
    invoke-virtual {p0, p1, p2}, Lcom/meizu/common/renderer/effect/texture/Texture;->setLoaded(Lcom/meizu/common/renderer/effect/GLCanvas;Z)V

    return-void
.end method

.method public updateTransformMatrix(Lcom/meizu/common/renderer/effect/GLCanvas;ZZ)V
    .registers 7

    .line 56
    iget-boolean v0, p0, Lcom/meizu/common/renderer/effect/texture/Texture;->mBoundsChanged:Z

    const/4 v1, 0x0

    if-nez v0, :cond_c

    if-nez p2, :cond_c

    if-eqz p3, :cond_a

    goto :goto_c

    :cond_a
    move v0, v1

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v0, 0x1

    :goto_d
    if-eqz v0, :cond_4b

    .line 58
    invoke-interface {p1}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meizu/common/renderer/effect/StateMachine;->getTexMaxtrix()[F

    move-result-object p1

    .line 59
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/texture/Texture;->mBounds:Landroid/graphics/RectF;

    if-eqz p2, :cond_1e

    iget v0, v0, Landroid/graphics/RectF;->right:F

    goto :goto_20

    :cond_1e
    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 60
    :goto_20
    iget-object v2, p0, Lcom/meizu/common/renderer/effect/texture/Texture;->mBounds:Landroid/graphics/RectF;

    if-eqz p3, :cond_27

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    goto :goto_29

    :cond_27
    iget v2, v2, Landroid/graphics/RectF;->top:F

    :goto_29
    if-eqz p2, :cond_33

    .line 61
    iget-object p2, p0, Lcom/meizu/common/renderer/effect/texture/Texture;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    neg-float p2, p2

    goto :goto_39

    :cond_33
    iget-object p2, p0, Lcom/meizu/common/renderer/effect/texture/Texture;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    .line 62
    :goto_39
    iget-object p0, p0, Lcom/meizu/common/renderer/effect/texture/Texture;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    if-eqz p3, :cond_42

    neg-float p0, p0

    :cond_42
    const/4 p3, 0x0

    .line 63
    invoke-static {p1, v1, v0, v2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    const/high16 p3, 0x3f800000  # 1.0f

    .line 64
    invoke-static {p1, v1, p2, p0, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    :cond_4b
    return-void
.end method

.method protected upload(Lcom/meizu/common/renderer/effect/GLCanvas;)V
    .registers 2

    return-void
.end method
