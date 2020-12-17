.class public Lcom/meizu/common/renderer/effect/render/GaussianRender;
.super Lcom/meizu/common/renderer/effect/render/ConvolutionRender;
.source "GaussianRender.java"


# instance fields
.field private mRadius:I

.field protected mUniformRadius:I

.field protected mUniformVertical:I

.field protected mUniformWeight:I

.field private mVertical:Z

.field private mWeight:F


# direct methods
.method public constructor <init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V
    .registers 2

    .line 34
    invoke-direct {p0, p1}, Lcom/meizu/common/renderer/effect/render/ConvolutionRender;-><init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    const-string p1, "__gaussian"

    .line 35
    iput-object p1, p0, Lcom/meizu/common/renderer/effect/render/Render;->mKey:Ljava/lang/String;

    const/high16 p1, 0x3f800000  # 1.0f

    .line 36
    iput p1, p0, Lcom/meizu/common/renderer/effect/render/ConvolutionRender;->mStepX:F

    .line 37
    iput p1, p0, Lcom/meizu/common/renderer/effect/render/ConvolutionRender;->mStepY:F

    const/4 p1, 0x4

    .line 38
    invoke-virtual {p0, p1}, Lcom/meizu/common/renderer/effect/render/GaussianRender;->setRadius(I)V

    return-void
.end method

.method public static getInstace(Lcom/meizu/common/renderer/effect/GLCanvas;)Lcom/meizu/common/renderer/effect/render/GaussianRender;
    .registers 2

    const-string v0, "__gaussian"

    .line 25
    invoke-interface {p0, v0}, Lcom/meizu/common/renderer/effect/GLCanvas;->getRender(Ljava/lang/String;)Lcom/meizu/common/renderer/effect/render/Render;

    move-result-object v0

    if-nez v0, :cond_10

    .line 27
    new-instance v0, Lcom/meizu/common/renderer/effect/render/GaussianRender;

    invoke-direct {v0, p0}, Lcom/meizu/common/renderer/effect/render/GaussianRender;-><init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    .line 28
    invoke-interface {p0, v0}, Lcom/meizu/common/renderer/effect/GLCanvas;->addRender(Lcom/meizu/common/renderer/effect/render/Render;)V

    .line 30
    :cond_10
    check-cast v0, Lcom/meizu/common/renderer/effect/render/GaussianRender;

    return-object v0
.end method


# virtual methods
.method public getFragmentShader()Ljava/lang/String;
    .registers 1

    const-string/jumbo p0, "precision mediump float; \nuniform vec2 uStep; \nuniform sampler2D sTexture; \nvarying vec2 vTexCoord; \nuniform int uVertical; \nuniform int uRadius; \nuniform float uWeight; \nvec4 gassian(vec2 step) { \n    if (uRadius == 0) return texture2D(sTexture, vTexCoord); \n    vec3 sum; \n    float j=0.0;  \n    for (int i=0; i<=uRadius; ++i) {  \n        if (i == 0) { \n           sum = texture2D(sTexture, vTexCoord).rgb * uWeight; \n        } else {  \n           sum += texture2D(sTexture,uVertical==1 ? vec2(vTexCoord.x,vTexCoord.y-j*step.y) : vec2(vTexCoord.x-j*step.x,vTexCoord.y)).rgb * uWeight;\n           sum += texture2D(sTexture,uVertical==1 ? vec2(vTexCoord.x,vTexCoord.y+j*step.y) : vec2(vTexCoord.x+j*step.x,vTexCoord.y)).rgb * uWeight;\n        }\n        j += 1.0;\n    }\n    return vec4(sum, 1.0); \n} \nvec4 gassian2(vec2 step) { \n    vec3 sum; \n\t float a[6]; \n    a[0] = 0.001; a[1] = 0.01; a[2] = 0.044; a[3] = 0.116; a[4] = 0.205; a[5] = 0.246; \n    //a[0] = 0.0355; a[1] = 0.0585; a[2] = 0.0863; a[3] = 0.1139; a[4] = 0.1346; a[5] = 0.1423; \n    //a[0] = 0.0549; a[1] = 0.0727; a[2] = 0.0905; a[3] = 0.1058; a[4] = 0.1162; a[5] = 0.1199; \n    sum  = texture2D(sTexture, vTexCoord - 5.0 * step).rgb * a[0]; \n    sum += texture2D(sTexture, vTexCoord - 4.0 * step).rgb * a[1]; \n    sum += texture2D(sTexture, vTexCoord - 3.0 * step).rgb * a[2]; \n    sum += texture2D(sTexture, vTexCoord - 2.0 * step).rgb * a[3]; \n    sum += texture2D(sTexture, vTexCoord - step).rgb * a[4]; \n    sum += texture2D(sTexture, vTexCoord).rgb * a[5]; \n    sum += texture2D(sTexture, vTexCoord + step).rgb * a[4]; \n    sum += texture2D(sTexture, vTexCoord + 2.0 * step).rgb * a[3]; \n    sum += texture2D(sTexture, vTexCoord + 3.0 * step).rgb * a[2]; \n    sum += texture2D(sTexture, vTexCoord + 4.0 * step).rgb * a[1]; \n    sum += texture2D(sTexture, vTexCoord + 5.0 * step).rgb * a[0]; \n    return vec4(sum, 1.0); \n} \nvoid main() { \n    if (uRadius <= 100) { \n        gl_FragColor = gassian(uStep); \n    } else { \n        gl_FragColor = gassian2(uStep);\n    } \n} \n"

    return-object p0
.end method

.method protected initProgram()V
    .registers 3

    .line 43
    invoke-super {p0}, Lcom/meizu/common/renderer/effect/render/ConvolutionRender;->initProgram()V

    .line 44
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mProgram:I

    const-string/jumbo v1, "uVertical"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/renderer/effect/render/GaussianRender;->mUniformVertical:I

    .line 45
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mProgram:I

    const-string/jumbo v1, "uRadius"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/renderer/effect/render/GaussianRender;->mUniformRadius:I

    .line 46
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mProgram:I

    const-string/jumbo v1, "uWeight"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/renderer/effect/render/GaussianRender;->mUniformWeight:I

    return-void
.end method

.method protected initShader(Lcom/meizu/common/renderer/effect/DrawInfo;)V
    .registers 4

    .line 65
    invoke-super {p0, p1}, Lcom/meizu/common/renderer/effect/render/PixelsRender;->initShader(Lcom/meizu/common/renderer/effect/DrawInfo;)V

    .line 66
    iget-object p1, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->drawOp:Lcom/meizu/common/renderer/effect/op/DrawOp;

    check-cast p1, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    .line 68
    iget v0, p1, Lcom/meizu/common/renderer/effect/op/DrawOp;->width:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000  # 1.0f

    div-float v0, v1, v0

    iput v0, p0, Lcom/meizu/common/renderer/effect/render/ConvolutionRender;->mStepX:F

    .line 69
    iget p1, p1, Lcom/meizu/common/renderer/effect/op/DrawOp;->height:I

    int-to-float p1, p1

    div-float/2addr v1, p1

    iput v1, p0, Lcom/meizu/common/renderer/effect/render/ConvolutionRender;->mStepY:F

    .line 71
    iget-boolean p1, p0, Lcom/meizu/common/renderer/effect/render/GaussianRender;->mVertical:Z

    const/4 v0, 0x0

    if-nez p1, :cond_29

    .line 72
    iget p1, p0, Lcom/meizu/common/renderer/effect/render/ConvolutionRender;->mUniformStepH:I

    iget v1, p0, Lcom/meizu/common/renderer/effect/render/ConvolutionRender;->mStepX:F

    invoke-static {p1, v1, v0}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 73
    iget p1, p0, Lcom/meizu/common/renderer/effect/render/GaussianRender;->mUniformVertical:I

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto :goto_36

    .line 75
    :cond_29
    iget p1, p0, Lcom/meizu/common/renderer/effect/render/ConvolutionRender;->mUniformStepH:I

    iget v1, p0, Lcom/meizu/common/renderer/effect/render/ConvolutionRender;->mStepY:F

    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 76
    iget p1, p0, Lcom/meizu/common/renderer/effect/render/GaussianRender;->mUniformVertical:I

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 78
    :goto_36
    iget p1, p0, Lcom/meizu/common/renderer/effect/render/GaussianRender;->mUniformWeight:I

    iget v0, p0, Lcom/meizu/common/renderer/effect/render/GaussianRender;->mWeight:F

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 79
    iget p1, p0, Lcom/meizu/common/renderer/effect/render/GaussianRender;->mUniformRadius:I

    iget p0, p0, Lcom/meizu/common/renderer/effect/render/GaussianRender;->mRadius:I

    invoke-static {p1, p0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    return-void
.end method

.method public setDirection(Z)V
    .registers 2

    .line 50
    iput-boolean p1, p0, Lcom/meizu/common/renderer/effect/render/GaussianRender;->mVertical:Z

    return-void
.end method

.method public setRadius(I)V
    .registers 3

    .line 59
    iput p1, p0, Lcom/meizu/common/renderer/effect/render/GaussianRender;->mRadius:I

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    int-to-float p1, p1

    const/high16 v0, 0x3f800000  # 1.0f

    div-float/2addr v0, p1

    .line 60
    iput v0, p0, Lcom/meizu/common/renderer/effect/render/GaussianRender;->mWeight:F

    return-void
.end method
