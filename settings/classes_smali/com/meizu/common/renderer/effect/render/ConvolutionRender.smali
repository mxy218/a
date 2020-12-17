.class public abstract Lcom/meizu/common/renderer/effect/render/ConvolutionRender;
.super Lcom/meizu/common/renderer/effect/render/PixelsRender;
.source "ConvolutionRender.java"


# instance fields
.field protected mStepX:F

.field protected mStepY:F

.field protected mUniformStepH:I


# direct methods
.method public constructor <init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V
    .registers 2

    .line 16
    invoke-direct {p0, p1}, Lcom/meizu/common/renderer/effect/render/PixelsRender;-><init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    return-void
.end method


# virtual methods
.method protected initProgram()V
    .registers 3

    .line 21
    invoke-super {p0}, Lcom/meizu/common/renderer/effect/render/PixelsRender;->initProgram()V

    .line 22
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mProgram:I

    const-string/jumbo v1, "uStep"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/renderer/effect/render/ConvolutionRender;->mUniformStepH:I

    return-void
.end method
