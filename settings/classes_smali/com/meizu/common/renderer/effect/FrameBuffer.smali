.class public Lcom/meizu/common/renderer/effect/FrameBuffer;
.super Lcom/meizu/common/renderer/effect/Resource;
.source "FrameBuffer.java"


# instance fields
.field protected mDepth:Z

.field protected mFrameBufferID:[I

.field protected mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

.field protected mRenderBufferID:[I

.field protected mTexture:Lcom/meizu/common/renderer/effect/texture/Texture;


# direct methods
.method protected constructor <init>()V
    .registers 3

    .line 63
    invoke-direct {p0}, Lcom/meizu/common/renderer/effect/Resource;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 16
    iput-object v1, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mFrameBufferID:[I

    new-array v0, v0, [I

    .line 17
    iput-object v0, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mRenderBufferID:[I

    return-void
.end method

.method public constructor <init>(IIZ)V
    .registers 6

    .line 21
    invoke-direct {p0}, Lcom/meizu/common/renderer/effect/Resource;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 16
    iput-object v1, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mFrameBufferID:[I

    new-array v0, v0, [I

    .line 17
    iput-object v0, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mRenderBufferID:[I

    .line 22
    new-instance v0, Lcom/meizu/common/renderer/effect/texture/RawTexture;

    invoke-direct {v0, p1, p2}, Lcom/meizu/common/renderer/effect/texture/RawTexture;-><init>(II)V

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    .line 23
    iput-boolean p3, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mDepth:Z

    return-void
.end method


# virtual methods
.method public getDepth()Z
    .registers 1

    .line 80
    iget-boolean p0, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mDepth:Z

    return p0
.end method

.method public getHeight()I
    .registers 1

    .line 88
    iget-object p0, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    invoke-virtual {p0}, Lcom/meizu/common/renderer/effect/texture/Texture;->getHeight()I

    move-result p0

    return p0
.end method

.method public getId()I
    .registers 2

    .line 102
    iget-object p0, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mFrameBufferID:[I

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method public getSize()I
    .registers 3

    .line 73
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 76
    :cond_6
    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/texture/Texture;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    invoke-virtual {v1}, Lcom/meizu/common/renderer/effect/texture/Texture;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    iget-boolean p0, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mDepth:Z

    if-eqz p0, :cond_17

    const/4 p0, 0x6

    goto :goto_18

    :cond_17
    const/4 p0, 0x4

    :goto_18
    mul-int/2addr v0, p0

    return v0
.end method

.method public getTexture()Lcom/meizu/common/renderer/effect/texture/Texture;
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    return-object p0
.end method

.method public getWidth()I
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    invoke-virtual {p0}, Lcom/meizu/common/renderer/effect/texture/Texture;->getWidth()I

    move-result p0

    return p0
.end method

.method public onBind(Lcom/meizu/common/renderer/effect/GLCanvas;)V
    .registers 10

    .line 27
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    if-eq v0, p1, :cond_13

    const-string v0, "glrenderer"

    const-string v2, "FrameBuffer is not release when EGLContext changed."

    .line 28
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x50

    .line 29
    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/renderer/effect/FrameBuffer;->trimResources(IZ)V

    .line 31
    :cond_13
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    if-nez v0, :cond_7b

    .line 32
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/texture/Texture;->getWidth()I

    move-result v0

    .line 33
    iget-object v2, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    invoke-virtual {v2}, Lcom/meizu/common/renderer/effect/texture/Texture;->getHeight()I

    move-result v2

    .line 34
    iget-object v3, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    invoke-virtual {v3, p1}, Lcom/meizu/common/renderer/effect/texture/Texture;->onBind(Lcom/meizu/common/renderer/effect/GLCanvas;)Z

    .line 35
    iget-object v3, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mFrameBufferID:[I

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 36
    iget-object v3, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mFrameBufferID:[I

    aget v3, v3, v4

    const v5, 0x8d40

    invoke-static {v5, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v3, 0x8ce0

    const/16 v6, 0xde1

    .line 37
    iget-object v7, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    .line 40
    invoke-virtual {v7}, Lcom/meizu/common/renderer/effect/texture/Texture;->getId()I

    move-result v7

    .line 37
    invoke-static {v5, v3, v6, v7, v4}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 43
    iget-object v3, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mRenderBufferID:[I

    aput v4, v3, v4

    .line 44
    iget-boolean v6, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mDepth:Z

    if-eqz v6, :cond_6e

    .line 45
    invoke-static {v1, v3, v4}, Landroid/opengl/GLES20;->glGenRenderbuffers(I[II)V

    .line 46
    iget-object v1, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mRenderBufferID:[I

    aget v1, v1, v4

    const v3, 0x8d41

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    const v1, 0x81a5

    .line 47
    invoke-static {v3, v1, v0, v2}, Landroid/opengl/GLES20;->glRenderbufferStorage(IIII)V

    const v0, 0x8d00

    .line 48
    iget-object v1, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mRenderBufferID:[I

    aget v1, v1, v4

    invoke-static {v5, v0, v3, v1}, Landroid/opengl/GLES20;->glFramebufferRenderbuffer(IIII)V

    .line 52
    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    .line 54
    :cond_6e
    invoke-interface {p1}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/StateMachine;->getFrameBufferId()I

    move-result v0

    invoke-static {v5, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 55
    iput-object p1, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    :cond_7b
    return-void
.end method

.method public resetTextureBounds()V
    .registers 1

    .line 96
    iget-object p0, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    if-eqz p0, :cond_7

    .line 97
    invoke-virtual {p0}, Lcom/meizu/common/renderer/effect/texture/Texture;->resetBounds()V

    :cond_7
    return-void
.end method

.method public trimResources(IZ)V
    .registers 5

    .line 111
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    if-eqz v0, :cond_2f

    .line 112
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/renderer/effect/texture/Texture;->trimResources(IZ)V

    .line 113
    iget-object p1, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-virtual {p0}, Lcom/meizu/common/renderer/effect/FrameBuffer;->getId()I

    move-result v0

    invoke-interface {p1, v0, p2}, Lcom/meizu/common/renderer/effect/GLCanvas;->deleteFrameBuffer(IZ)V

    .line 114
    iget-boolean p1, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mDepth:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_28

    iget-object p1, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mRenderBufferID:[I

    aget v1, p1, v0

    if-eqz v1, :cond_28

    .line 115
    iget-object v1, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    aget p1, p1, v0

    invoke-interface {v1, p1, p2}, Lcom/meizu/common/renderer/effect/GLCanvas;->deleteRenderBuffer(IZ)V

    .line 116
    iget-object p1, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mRenderBufferID:[I

    aput v0, p1, v0

    .line 118
    :cond_28
    iget-object p1, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mFrameBufferID:[I

    aput v0, p1, v0

    const/4 p1, 0x0

    .line 119
    iput-object p1, p0, Lcom/meizu/common/renderer/effect/FrameBuffer;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    :cond_2f
    return-void
.end method
