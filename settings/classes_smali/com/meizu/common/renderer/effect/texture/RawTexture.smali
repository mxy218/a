.class public Lcom/meizu/common/renderer/effect/texture/RawTexture;
.super Lcom/meizu/common/renderer/effect/texture/Texture;
.source "RawTexture.java"


# direct methods
.method public constructor <init>(II)V
    .registers 4

    const/16 v0, 0x1908

    .line 20
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/renderer/effect/texture/RawTexture;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    .line 13
    invoke-direct {p0}, Lcom/meizu/common/renderer/effect/texture/Texture;-><init>()V

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/meizu/common/renderer/effect/texture/Texture;->setSize(II)V

    const/16 p1, 0x1907

    if-ne p3, p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    .line 15
    :goto_d
    invoke-virtual {p0, p1}, Lcom/meizu/common/renderer/effect/texture/Texture;->setOpaque(Z)V

    .line 16
    iput p3, p0, Lcom/meizu/common/renderer/effect/texture/Texture;->mFormat:I

    return-void
.end method


# virtual methods
.method protected upload(Lcom/meizu/common/renderer/effect/GLCanvas;)V
    .registers 15

    .line 25
    invoke-virtual {p0}, Lcom/meizu/common/renderer/effect/texture/Texture;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_37

    .line 26
    sget-object v0, Lcom/meizu/common/renderer/effect/texture/Texture;->sTextureId:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 27
    invoke-virtual {p0}, Lcom/meizu/common/renderer/effect/texture/Texture;->getTarget()I

    move-result v0

    sget-object v3, Lcom/meizu/common/renderer/effect/texture/Texture;->sTextureId:[I

    aget v3, v3, v2

    invoke-virtual {p0, v0, v3}, Lcom/meizu/common/renderer/effect/texture/Texture;->initTexParameter(II)V

    const/16 v4, 0xde1

    const/4 v5, 0x0

    .line 29
    iget v6, p0, Lcom/meizu/common/renderer/effect/texture/Texture;->mFormat:I

    .line 33
    invoke-virtual {p0}, Lcom/meizu/common/renderer/effect/texture/Texture;->getWidth()I

    move-result v7

    .line 34
    invoke-virtual {p0}, Lcom/meizu/common/renderer/effect/texture/Texture;->getHeight()I

    move-result v8

    const/4 v9, 0x0

    iget v10, p0, Lcom/meizu/common/renderer/effect/texture/Texture;->mFormat:I

    const/16 v11, 0x1401

    const/4 v12, 0x0

    .line 29
    invoke-static/range {v4 .. v12}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 39
    sget-object v0, Lcom/meizu/common/renderer/effect/texture/Texture;->sTextureId:[I

    aget v0, v0, v2

    iput v0, p0, Lcom/meizu/common/renderer/effect/texture/Texture;->mId:I

    .line 40
    invoke-virtual {p0, p1, v1}, Lcom/meizu/common/renderer/effect/texture/Texture;->setLoaded(Lcom/meizu/common/renderer/effect/GLCanvas;Z)V

    :cond_37
    return-void
.end method
