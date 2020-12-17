.class Lcom/meizu/common/renderer/effect/render/SketchEffectRender$Gaussian2DRender;
.super Lcom/meizu/common/renderer/effect/render/ConvolutionRender;
.source "SketchEffectRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/renderer/effect/render/SketchEffectRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Gaussian2DRender"
.end annotation


# direct methods
.method public constructor <init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V
    .registers 2

    .line 133
    invoke-direct {p0, p1}, Lcom/meizu/common/renderer/effect/render/ConvolutionRender;-><init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    return-void
.end method


# virtual methods
.method public getFragmentShader()Ljava/lang/String;
    .registers 1

    const-string/jumbo p0, "precision mediump float; \nuniform vec2 uStep; \nuniform sampler2D sTexture; \nvarying vec2 vTexCoord; \nvoid main() { \n    vec2 step = uStep; \n    vec3 a = vec3(0.0113,0.0838,0.6193); \n    vec3 sum; \n    sum = texture2D(sTexture,  vTexCoord - step).rgb * a.x; \n    sum += texture2D(sTexture, vTexCoord + vec2(0.0, -step.y)).rgb * a.y; \n    sum += texture2D(sTexture, vTexCoord + vec2(step.x, -step.y)).rgb * a.x; \n    sum += texture2D(sTexture, vTexCoord + vec2(step.x, 0.0)).rgb * a.y; \n    sum += texture2D(sTexture, vTexCoord).rgb * a.z; \n    sum += texture2D(sTexture, vTexCoord + vec2(-step.x, 0.0)).rgb * a.y; \n    sum += texture2D(sTexture, vTexCoord + vec2(-step.x, step.y)).rgb * a.x; \n    sum += texture2D(sTexture, vTexCoord + vec2(0.0, step.y)).rgb * a.y; \n    sum += texture2D(sTexture, vTexCoord + step).rgb * a.x; \n    gl_FragColor.rgb = sum; \n    gl_FragColor.a = 1.0; \n } "

    return-object p0
.end method

.method protected initShader(Lcom/meizu/common/renderer/effect/DrawInfo;)V
    .registers 4

    .line 143
    invoke-super {p0, p1}, Lcom/meizu/common/renderer/effect/render/PixelsRender;->initShader(Lcom/meizu/common/renderer/effect/DrawInfo;)V

    .line 144
    iget p0, p0, Lcom/meizu/common/renderer/effect/render/ConvolutionRender;->mUniformStepH:I

    iget-object p1, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->drawOp:Lcom/meizu/common/renderer/effect/op/DrawOp;

    iget v0, p1, Lcom/meizu/common/renderer/effect/op/DrawOp;->width:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000  # 1.0f

    div-float v0, v1, v0

    iget p1, p1, Lcom/meizu/common/renderer/effect/op/DrawOp;->height:I

    int-to-float p1, p1

    div-float/2addr v1, p1

    invoke-static {p0, v0, v1}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    return-void
.end method
