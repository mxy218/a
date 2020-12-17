.class public Lcom/meizu/common/renderer/effect/texture/StorageTexture;
.super Lcom/meizu/common/renderer/effect/texture/Texture;
.source "StorageTexture.java"


# direct methods
.method public constructor <init>(III)V
    .registers 4

    .line 18
    invoke-direct {p0}, Lcom/meizu/common/renderer/effect/texture/Texture;-><init>()V

    .line 19
    iput p3, p0, Lcom/meizu/common/renderer/effect/texture/Texture;->mFormat:I

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/meizu/common/renderer/effect/texture/Texture;->setSize(II)V

    return-void
.end method


# virtual methods
.method protected upload(Lcom/meizu/common/renderer/effect/GLCanvas;)V
    .registers 8

    .line 25
    invoke-virtual {p0}, Lcom/meizu/common/renderer/effect/texture/Texture;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_30

    .line 26
    sget-object v0, Lcom/meizu/common/renderer/effect/texture/Texture;->sTextureId:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 27
    invoke-virtual {p0}, Lcom/meizu/common/renderer/effect/texture/Texture;->getTarget()I

    move-result v0

    sget-object v3, Lcom/meizu/common/renderer/effect/texture/Texture;->sTextureId:[I

    aget v3, v3, v1

    invoke-virtual {p0, v0, v3}, Lcom/meizu/common/renderer/effect/texture/Texture;->initTexParameter(II)V

    const/16 v0, 0xde1

    .line 28
    iget v3, p0, Lcom/meizu/common/renderer/effect/texture/Texture;->mFormat:I

    .line 32
    invoke-virtual {p0}, Lcom/meizu/common/renderer/effect/texture/Texture;->getWidth()I

    move-result v4

    .line 33
    invoke-virtual {p0}, Lcom/meizu/common/renderer/effect/texture/Texture;->getHeight()I

    move-result v5

    .line 28
    invoke-static {v0, v2, v3, v4, v5}, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->glTexStorage2D(IIIII)V

    .line 34
    sget-object v0, Lcom/meizu/common/renderer/effect/texture/Texture;->sTextureId:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/meizu/common/renderer/effect/texture/Texture;->mId:I

    .line 35
    invoke-virtual {p0, p1, v2}, Lcom/meizu/common/renderer/effect/texture/Texture;->setLoaded(Lcom/meizu/common/renderer/effect/GLCanvas;Z)V

    :cond_30
    return-void
.end method
