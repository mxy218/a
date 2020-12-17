.class public abstract Lcom/meizu/common/renderer/effect/render/ShaderRender;
.super Lcom/meizu/common/renderer/effect/render/Render;
.source "ShaderRender.java"


# instance fields
.field protected mAttributePositionH:I

.field protected mAttributeTexCoorH:I

.field protected mCurrentFbo:I

.field protected mIsBlend:Z

.field protected mIsCullFace:Z

.field protected mIsDepthTest:Z

.field protected mIsScissor:Z

.field protected mProgram:I

.field protected mUniformAlphaH:I

.field protected mUniformMVPMatrixH:I

.field protected mUniformSTMatrixH:I

.field protected mUniformTextureH:I


# direct methods
.method public constructor <init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lcom/meizu/common/renderer/effect/render/Render;-><init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mProgram:I

    .line 37
    invoke-virtual {p0}, Lcom/meizu/common/renderer/effect/render/ShaderRender;->initProgram()V

    return-void
.end method

.method public static allocateByteBuffer(I)Ljava/nio/ByteBuffer;
    .registers 2

    .line 164
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static bindTexture(Lcom/meizu/common/renderer/effect/texture/Texture;I)V
    .registers 2

    .line 45
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 46
    invoke-virtual {p0}, Lcom/meizu/common/renderer/effect/texture/Texture;->getTarget()I

    move-result p1

    invoke-virtual {p0}, Lcom/meizu/common/renderer/effect/texture/Texture;->getId()I

    move-result p0

    invoke-static {p1, p0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method


# virtual methods
.method protected getFragmentShader()Ljava/lang/String;
    .registers 1

    const-string/jumbo p0, "precision mediump float;\nuniform sampler2D sTexture;\nuniform float uAlpha;\nvarying vec2 vTexCoord;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTexCoord);\n    gl_FragColor.a *= uAlpha; \n}\n"

    return-object p0
.end method

.method protected getVertexShader()Ljava/lang/String;
    .registers 1

    const-string/jumbo p0, "uniform mat4 uMVPMatrix; \nuniform mat4 uSTMatrix;\nattribute vec3 aPosition;\nattribute vec2 aTexCoord;\nvarying vec2 vTexCoord;\nvoid main() {\n    gl_Position = uMVPMatrix * vec4(aPosition,1);\n    vTexCoord = (uSTMatrix * vec4(aTexCoord,0,1)).st;\n}"

    return-object p0
.end method

.method protected abstract initProgram()V
.end method

.method protected onPostDraw(Lcom/meizu/common/renderer/effect/DrawInfo;)V
    .registers 3

    .line 103
    iget-boolean p1, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mIsCullFace:Z

    const/16 v0, 0xb44

    if-eqz p1, :cond_a

    .line 104
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    goto :goto_d

    .line 106
    :cond_a
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 109
    :goto_d
    iget-boolean p1, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mIsDepthTest:Z

    const/16 v0, 0xb71

    if-eqz p1, :cond_17

    .line 110
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    goto :goto_1a

    .line 112
    :cond_17
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 115
    :goto_1a
    iget-boolean p1, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mIsScissor:Z

    const/16 v0, 0xc11

    if-eqz p1, :cond_24

    .line 116
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    goto :goto_27

    .line 118
    :cond_24
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 121
    :goto_27
    iget-object p0, p0, Lcom/meizu/common/renderer/effect/render/Render;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {p0}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/common/renderer/effect/StateMachine;->pop()V

    return-void
.end method

.method protected onPreDraw(Lcom/meizu/common/renderer/effect/DrawInfo;)V
    .registers 7

    .line 65
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/Render;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v0}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/StateMachine;->push()V

    .line 66
    invoke-virtual {p0, p1}, Lcom/meizu/common/renderer/effect/render/ShaderRender;->updateViewport(Lcom/meizu/common/renderer/effect/DrawInfo;)V

    .line 67
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/Render;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v0}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/StateMachine;->getFrameBufferId()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mCurrentFbo:I

    .line 68
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mCurrentFbo:I

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/16 v0, 0xbe2

    .line 70
    invoke-static {v0}, Landroid/opengl/GLES20;->glIsEnabled(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mIsBlend:Z

    const/16 v1, 0xb44

    .line 71
    invoke-static {v1}, Landroid/opengl/GLES20;->glIsEnabled(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mIsCullFace:Z

    const/16 v2, 0xb71

    .line 72
    invoke-static {v2}, Landroid/opengl/GLES20;->glIsEnabled(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mIsDepthTest:Z

    const/16 v3, 0xc11

    .line 73
    invoke-static {v3}, Landroid/opengl/GLES20;->glIsEnabled(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mIsScissor:Z

    .line 75
    iget-boolean v4, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->blend:Z

    if-eqz v4, :cond_48

    .line 76
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    goto :goto_4b

    .line 78
    :cond_48
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 81
    :goto_4b
    iget-boolean v0, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->cullFace:Z

    if-eqz v0, :cond_53

    .line 82
    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    goto :goto_56

    .line 84
    :cond_53
    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 87
    :goto_56
    iget-boolean v0, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->depthTest:Z

    if-eqz v0, :cond_5e

    .line 88
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnable(I)V

    goto :goto_61

    .line 90
    :cond_5e
    invoke-static {v2}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 93
    :goto_61
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mCurrentFbo:I

    iget-object p0, p0, Lcom/meizu/common/renderer/effect/render/Render;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {p0}, Lcom/meizu/common/renderer/effect/GLCanvas;->getRootBindingFrameBuffer()I

    move-result p0

    if-eq v0, p0, :cond_77

    .line 94
    invoke-static {v3}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 96
    iget-boolean p0, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->clearFbo:Z

    if-eqz p0, :cond_77

    const/16 p0, 0x4100

    .line 97
    invoke-static {p0}, Landroid/opengl/GLES20;->glClear(I)V

    :cond_77
    return-void
.end method

.method public trimResources(IZ)V
    .registers 5

    .line 145
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mProgram:I

    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/meizu/common/renderer/effect/render/Render;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    if-eqz v1, :cond_13

    .line 146
    invoke-interface {v1, v0, p2}, Lcom/meizu/common/renderer/effect/GLCanvas;->deleteProgram(IZ)V

    const/4 v0, 0x0

    .line 147
    iput v0, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mProgram:I

    const/4 v0, 0x0

    .line 148
    iput-object v0, p0, Lcom/meizu/common/renderer/effect/render/Render;->mKey:Ljava/lang/String;

    .line 149
    iput-object v0, p0, Lcom/meizu/common/renderer/effect/render/Render;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    .line 151
    :cond_13
    invoke-super {p0, p1, p2}, Lcom/meizu/common/renderer/effect/render/Render;->trimResources(IZ)V

    return-void
.end method

.method protected updateViewport(Lcom/meizu/common/renderer/effect/DrawInfo;)V
    .registers 5

    .line 125
    iget v0, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->viewportWidth:I

    .line 126
    iget v1, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->viewportHeight:I

    const/4 v2, 0x0

    .line 127
    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 128
    iget-object v2, p0, Lcom/meizu/common/renderer/effect/render/Render;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v2}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/common/renderer/effect/StateMachine;->identityViewM()V

    .line 129
    iget-boolean p1, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->flipProjV:Z

    const/4 v2, 0x0

    if-eqz p1, :cond_22

    .line 130
    iget-object p0, p0, Lcom/meizu/common/renderer/effect/render/Render;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {p0}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object p0

    int-to-float p1, v0

    int-to-float v0, v1

    invoke-virtual {p0, v2, p1, v0, v2}, Lcom/meizu/common/renderer/effect/StateMachine;->orthoM(FFFF)V

    goto :goto_2d

    .line 132
    :cond_22
    iget-object p0, p0, Lcom/meizu/common/renderer/effect/render/Render;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {p0}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object p0

    int-to-float p1, v0

    int-to-float v0, v1

    invoke-virtual {p0, v2, p1, v2, v0}, Lcom/meizu/common/renderer/effect/StateMachine;->orthoM(FFFF)V

    :goto_2d
    return-void
.end method
