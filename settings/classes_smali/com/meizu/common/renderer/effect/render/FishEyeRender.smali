.class public Lcom/meizu/common/renderer/effect/render/FishEyeRender;
.super Lcom/meizu/common/renderer/effect/render/ConvolutionRender;
.source "FishEyeRender.java"


# instance fields
.field private mF:F

.field private mInvMaxDist:F

.field private mTexH:I

.field private mTexW:I

.field private mUniformFH:I

.field private mUniformInvMaxDistH:I


# direct methods
.method public constructor <init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V
    .registers 2

    .line 21
    invoke-direct {p0, p1}, Lcom/meizu/common/renderer/effect/render/ConvolutionRender;-><init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    const-string p1, "__fisheye"

    .line 22
    iput-object p1, p0, Lcom/meizu/common/renderer/effect/render/Render;->mKey:Ljava/lang/String;

    return-void
.end method

.method private update(II)V
    .registers 5

    .line 38
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mTexW:I

    if-ne v0, p1, :cond_8

    iget v0, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mTexH:I

    if-eq v0, p2, :cond_6c

    .line 39
    :cond_8
    iput p1, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mTexW:I

    .line 40
    iput p2, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mTexH:I

    if-le p1, p2, :cond_f

    move p1, p2

    .line 42
    :cond_f
    iget p2, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mTexW:I

    mul-int/2addr p2, p2

    iget v0, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mTexH:I

    mul-int/2addr v0, v0

    add-int/2addr p2, v0

    int-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p2, v0

    const/16 v0, 0x438

    const/high16 v1, 0x420c0000  # 35.0f

    if-le p1, v0, :cond_38

    .line 44
    iget p1, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mTexW:I

    int-to-float p1, p1

    const/high16 v0, 0x40200000  # 2.5f

    div-float p1, v0, p1

    iput p1, p0, Lcom/meizu/common/renderer/effect/render/ConvolutionRender;->mStepX:F

    .line 45
    iget p1, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mTexH:I

    int-to-float p1, p1

    div-float/2addr v0, p1

    iput v0, p0, Lcom/meizu/common/renderer/effect/render/ConvolutionRender;->mStepY:F

    const/high16 p1, 0x40c00000  # 6.0f

    mul-float/2addr p1, p2

    div-float/2addr p1, v1

    .line 46
    iput p1, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mF:F

    goto :goto_67

    :cond_38
    const/16 v0, 0x2d0

    if-le p1, v0, :cond_52

    .line 48
    iget p1, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mTexW:I

    int-to-float p1, p1

    const/high16 v0, 0x3fc00000  # 1.5f

    div-float p1, v0, p1

    iput p1, p0, Lcom/meizu/common/renderer/effect/render/ConvolutionRender;->mStepX:F

    .line 49
    iget p1, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mTexH:I

    int-to-float p1, p1

    div-float/2addr v0, p1

    iput v0, p0, Lcom/meizu/common/renderer/effect/render/ConvolutionRender;->mStepY:F

    const/high16 p1, 0x40e00000  # 7.0f

    mul-float/2addr p1, p2

    div-float/2addr p1, v1

    .line 50
    iput p1, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mF:F

    goto :goto_67

    .line 52
    :cond_52
    iget p1, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mTexW:I

    int-to-float p1, p1

    const/high16 v0, 0x3f800000  # 1.0f

    div-float p1, v0, p1

    iput p1, p0, Lcom/meizu/common/renderer/effect/render/ConvolutionRender;->mStepX:F

    .line 53
    iget p1, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mTexH:I

    int-to-float p1, p1

    div-float/2addr v0, p1

    iput v0, p0, Lcom/meizu/common/renderer/effect/render/ConvolutionRender;->mStepY:F

    const/high16 p1, 0x41200000  # 10.0f

    mul-float/2addr p1, p2

    div-float/2addr p1, v1

    .line 54
    iput p1, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mF:F

    :goto_67
    const/high16 p1, 0x40000000  # 2.0f

    div-float/2addr p1, p2

    .line 57
    iput p1, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mInvMaxDist:F

    :cond_6c
    return-void
.end method


# virtual methods
.method public getFragmentShader()Ljava/lang/String;
    .registers 1

    const-string/jumbo p0, "precision highp float; \nuniform sampler2D sTexture; \nuniform float uAlpha;\nvarying vec2 vTexCoord; \nuniform vec2 uStep; \nuniform float uInvMaxDist; \nuniform float uF; \nvec3 fisheye() { \n    const float slope = 20.0;               // vignette slope  \n    const float shade = 0.85;               // vignette shading  \n    const float range = 0.6;               // 0.6 - 1.3 \n    const float zoom = 0.3;               // smaller zoom means bigger image \n    vec2 coord = (vTexCoord - 0.5) / uStep; // convert to world coordinate  \n    float dist = length(coord); // distance to the center \n    float lumen = shade / (1.0 + exp((dist * uInvMaxDist - range) * slope)) + (1.0 - shade); \n    float t = zoom*dist/uF; \n    float theta = asin(t)*2.0; \n    float r = uF * tan(theta); \n    float angle = atan(coord.y, coord.x); \n    vec2 newCoord = vec2(cos(angle), sin(angle))*uStep*r+0.5; \n    return texture2D(sTexture, newCoord).rgb;  \n   // return texture2D(sTexture, newCoord).rgb * lumen; \n} \nvoid main() { \n    gl_FragColor.rgb = fisheye(); \n    gl_FragColor.a = texture2D(sTexture,vTexCoord).a*uAlpha; \n}"

    return-object p0
.end method

.method protected initProgram()V
    .registers 3

    .line 32
    invoke-super {p0}, Lcom/meizu/common/renderer/effect/render/ConvolutionRender;->initProgram()V

    .line 33
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mProgram:I

    const-string/jumbo v1, "uF"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mUniformFH:I

    .line 34
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mProgram:I

    const-string/jumbo v1, "uInvMaxDist"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mUniformInvMaxDistH:I

    return-void
.end method

.method protected initShader(Lcom/meizu/common/renderer/effect/DrawInfo;)V
    .registers 3

    .line 63
    invoke-super {p0, p1}, Lcom/meizu/common/renderer/effect/render/PixelsRender;->initShader(Lcom/meizu/common/renderer/effect/DrawInfo;)V

    .line 64
    iget-object p1, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->drawOp:Lcom/meizu/common/renderer/effect/op/DrawOp;

    iget v0, p1, Lcom/meizu/common/renderer/effect/op/DrawOp;->width:I

    iget p1, p1, Lcom/meizu/common/renderer/effect/op/DrawOp;->height:I

    invoke-direct {p0, v0, p1}, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->update(II)V

    .line 65
    iget p1, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mUniformFH:I

    iget v0, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mF:F

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 66
    iget p1, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mUniformInvMaxDistH:I

    iget v0, p0, Lcom/meizu/common/renderer/effect/render/FishEyeRender;->mInvMaxDist:F

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 67
    iget p1, p0, Lcom/meizu/common/renderer/effect/render/ConvolutionRender;->mUniformStepH:I

    iget v0, p0, Lcom/meizu/common/renderer/effect/render/ConvolutionRender;->mStepX:F

    iget p0, p0, Lcom/meizu/common/renderer/effect/render/ConvolutionRender;->mStepY:F

    invoke-static {p1, v0, p0}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    return-void
.end method
