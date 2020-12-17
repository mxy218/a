.class public abstract Lcom/meizu/common/renderer/effect/render/PixelsRender;
.super Lcom/meizu/common/renderer/effect/render/ShaderRender;
.source "PixelsRender.java"


# static fields
.field private static final TEXTURES:[F

.field private static TEXTURES_BUFFER:Ljava/nio/FloatBuffer;

.field private static final VERTICES:[F

.field private static VERTICES_BUFFER:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xc

    new-array v0, v0, [F

    .line 19
    fill-array-data v0, :array_16

    sput-object v0, Lcom/meizu/common/renderer/effect/render/PixelsRender;->VERTICES:[F

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 20
    fill-array-data v0, :array_32

    sput-object v0, Lcom/meizu/common/renderer/effect/render/PixelsRender;->TEXTURES:[F

    .line 124
    invoke-static {}, Lcom/meizu/common/renderer/effect/render/PixelsRender;->init()V

    return-void

    :array_16
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000  # 1.0f
        0x0
        0x0
        0x0
        0x3f800000  # 1.0f
        0x0
        0x3f800000  # 1.0f
        0x3f800000  # 1.0f
        0x0
    .end array-data

    :array_32
    .array-data 4
        0x0
        0x0
        0x3f800000  # 1.0f
        0x0
        0x0
        0x3f800000  # 1.0f
        0x3f800000  # 1.0f
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public constructor <init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V
    .registers 2

    .line 25
    invoke-direct {p0, p1}, Lcom/meizu/common/renderer/effect/render/ShaderRender;-><init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    return-void
.end method

.method private static init()V
    .registers 3

    .line 114
    sget-object v0, Lcom/meizu/common/renderer/effect/render/PixelsRender;->VERTICES:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x20

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Lcom/meizu/common/renderer/effect/render/ShaderRender;->allocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/renderer/effect/render/PixelsRender;->VERTICES_BUFFER:Ljava/nio/FloatBuffer;

    .line 115
    sget-object v0, Lcom/meizu/common/renderer/effect/render/PixelsRender;->VERTICES_BUFFER:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/meizu/common/renderer/effect/render/PixelsRender;->VERTICES:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 116
    sget-object v0, Lcom/meizu/common/renderer/effect/render/PixelsRender;->VERTICES_BUFFER:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 118
    sget-object v0, Lcom/meizu/common/renderer/effect/render/PixelsRender;->TEXTURES:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x20

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Lcom/meizu/common/renderer/effect/render/ShaderRender;->allocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/renderer/effect/render/PixelsRender;->TEXTURES_BUFFER:Ljava/nio/FloatBuffer;

    .line 119
    sget-object v0, Lcom/meizu/common/renderer/effect/render/PixelsRender;->TEXTURES_BUFFER:Ljava/nio/FloatBuffer;

    sget-object v2, Lcom/meizu/common/renderer/effect/render/PixelsRender;->TEXTURES:[F

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 120
    sget-object v0, Lcom/meizu/common/renderer/effect/render/PixelsRender;->TEXTURES_BUFFER:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public draw(Lcom/meizu/common/renderer/effect/DrawInfo;)Z
    .registers 3

    .line 46
    iget-object v0, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->drawOp:Lcom/meizu/common/renderer/effect/op/DrawOp;

    check-cast v0, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    invoke-virtual {p0, p1, v0}, Lcom/meizu/common/renderer/effect/render/PixelsRender;->drawTexture(Lcom/meizu/common/renderer/effect/DrawInfo;Lcom/meizu/common/renderer/effect/op/DrawTextureOp;)V

    const/4 p0, 0x1

    return p0
.end method

.method protected drawTexture(Lcom/meizu/common/renderer/effect/DrawInfo;Lcom/meizu/common/renderer/effect/op/DrawTextureOp;)V
    .registers 7

    .line 84
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 86
    iget-object v0, p2, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->texture:Lcom/meizu/common/renderer/effect/texture/Texture;

    iget-object v1, p0, Lcom/meizu/common/renderer/effect/render/Render;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-virtual {v0, v1}, Lcom/meizu/common/renderer/effect/texture/Texture;->onBind(Lcom/meizu/common/renderer/effect/GLCanvas;)Z

    move-result v0

    if-nez v0, :cond_10

    return-void

    .line 88
    :cond_10
    iget-object v0, p2, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->texture:Lcom/meizu/common/renderer/effect/texture/Texture;

    const v1, 0x84c0

    invoke-static {v0, v1}, Lcom/meizu/common/renderer/effect/render/ShaderRender;->bindTexture(Lcom/meizu/common/renderer/effect/texture/Texture;I)V

    .line 90
    invoke-virtual {p0, p1}, Lcom/meizu/common/renderer/effect/render/ShaderRender;->onPreDraw(Lcom/meizu/common/renderer/effect/DrawInfo;)V

    .line 92
    iget-object v0, p2, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;->texture:Lcom/meizu/common/renderer/effect/texture/Texture;

    iget-object v1, p0, Lcom/meizu/common/renderer/effect/render/Render;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    iget-boolean v2, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->flipTextureH:Z

    iget-boolean v3, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->flipTextureV:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/meizu/common/renderer/effect/texture/Texture;->updateTransformMatrix(Lcom/meizu/common/renderer/effect/GLCanvas;ZZ)V

    .line 94
    iget v0, p2, Lcom/meizu/common/renderer/effect/op/DrawOp;->x:I

    if-nez v0, :cond_2e

    iget v0, p2, Lcom/meizu/common/renderer/effect/op/DrawOp;->y:I

    if-eqz v0, :cond_3e

    .line 95
    :cond_2e
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/Render;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v0}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v0

    iget v1, p2, Lcom/meizu/common/renderer/effect/op/DrawOp;->x:I

    int-to-float v1, v1

    iget v2, p2, Lcom/meizu/common/renderer/effect/op/DrawOp;->y:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/meizu/common/renderer/effect/StateMachine;->translate(FFF)V

    .line 97
    :cond_3e
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/Render;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v0}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v0

    iget v1, p2, Lcom/meizu/common/renderer/effect/op/DrawOp;->width:I

    int-to-float v1, v1

    iget p2, p2, Lcom/meizu/common/renderer/effect/op/DrawOp;->height:I

    int-to-float p2, p2

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1, p2, v2}, Lcom/meizu/common/renderer/effect/StateMachine;->scale(FFF)V

    .line 98
    invoke-virtual {p0, p1}, Lcom/meizu/common/renderer/effect/render/PixelsRender;->initShader(Lcom/meizu/common/renderer/effect/DrawInfo;)V

    const/4 p2, 0x5

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 100
    invoke-static {p2, v0, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 102
    invoke-virtual {p0, p1}, Lcom/meizu/common/renderer/effect/render/ShaderRender;->onPostDraw(Lcom/meizu/common/renderer/effect/DrawInfo;)V

    return-void
.end method

.method protected getTextureBuffer()Ljava/nio/FloatBuffer;
    .registers 1

    .line 110
    sget-object p0, Lcom/meizu/common/renderer/effect/render/PixelsRender;->TEXTURES_BUFFER:Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method protected getVertexBuffer()Ljava/nio/FloatBuffer;
    .registers 1

    .line 106
    sget-object p0, Lcom/meizu/common/renderer/effect/render/PixelsRender;->VERTICES_BUFFER:Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method protected initProgram()V
    .registers 3

    .line 30
    invoke-virtual {p0}, Lcom/meizu/common/renderer/effect/render/ShaderRender;->getVertexShader()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/meizu/common/renderer/effect/render/ShaderRender;->getFragmentShader()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/common/renderer/effect/ShaderUtils;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mProgram:I

    .line 31
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mProgram:I

    if-eqz v0, :cond_56

    .line 32
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 33
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mProgram:I

    const-string/jumbo v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mUniformMVPMatrixH:I

    .line 34
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mProgram:I

    const-string/jumbo v1, "uSTMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mUniformSTMatrixH:I

    .line 35
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mProgram:I

    const-string/jumbo v1, "uAlpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mUniformAlphaH:I

    .line 36
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mProgram:I

    const-string/jumbo v1, "sTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mUniformTextureH:I

    .line 37
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mProgram:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mAttributePositionH:I

    .line 38
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mProgram:I

    const-string v1, "aTexCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mAttributeTexCoorH:I

    return-void

    .line 40
    :cond_56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": mProgram = 0"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected initShader(Lcom/meizu/common/renderer/effect/DrawInfo;)V
    .registers 14

    .line 52
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mAttributePositionH:I

    .line 57
    invoke-virtual {p0}, Lcom/meizu/common/renderer/effect/render/PixelsRender;->getVertexBuffer()Ljava/nio/FloatBuffer;

    move-result-object v5

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0xc

    .line 52
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 59
    iget v6, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mAttributeTexCoorH:I

    .line 64
    invoke-virtual {p0}, Lcom/meizu/common/renderer/effect/render/PixelsRender;->getTextureBuffer()Ljava/nio/FloatBuffer;

    move-result-object v11

    const/4 v7, 0x2

    const/16 v8, 0x1406

    const/4 v9, 0x0

    const/16 v10, 0x8

    .line 59
    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 66
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mUniformMVPMatrixH:I

    iget-object v1, p0, Lcom/meizu/common/renderer/effect/render/Render;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    .line 69
    invoke-interface {v1}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/common/renderer/effect/StateMachine;->getFinalMatrix()[F

    move-result-object v1

    const/4 v2, 0x1

    .line 66
    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 72
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mUniformSTMatrixH:I

    iget-object v1, p0, Lcom/meizu/common/renderer/effect/render/Render;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    .line 75
    invoke-interface {v1}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/common/renderer/effect/StateMachine;->getTexMaxtrix()[F

    move-result-object v1

    .line 72
    invoke-static {v0, v2, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 77
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mUniformTextureH:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 78
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mUniformAlphaH:I

    iget p1, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->alpha:I

    int-to-float p1, p1

    const/high16 v1, 0x437f0000  # 255.0f

    div-float/2addr p1, v1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 79
    iget p1, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mAttributePositionH:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 80
    iget p0, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mAttributeTexCoorH:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    return-void
.end method
