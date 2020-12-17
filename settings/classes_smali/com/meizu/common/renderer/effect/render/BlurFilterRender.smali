.class public Lcom/meizu/common/renderer/effect/render/BlurFilterRender;
.super Lcom/meizu/common/renderer/effect/render/PixelsRender;
.source "BlurFilterRender.java"


# static fields
.field private static sApplicationContextInstance:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private mAnitiAlias:F

.field private mFilterColor:I

.field private mIntensity:F

.field private mOrigTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

.field private mRoundConnerRadius:F

.field private mUniformAntiAlias:I

.field private mUniformFilterColor:I

.field private mUniformHasTexture:I

.field private mUniformIntensityH:I

.field private mUniformOrigin:I

.field private mUniformRadius:I

.field private mUniformResolution:I

.field private mUniformScreen:I

.field private mUniformTextureH2:I


# direct methods
.method public constructor <init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V
    .registers 2

    .line 45
    invoke-direct {p0, p1}, Lcom/meizu/common/renderer/effect/render/PixelsRender;-><init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    const/high16 p1, 0x3f800000  # 1.0f

    .line 30
    iput p1, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mIntensity:F

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mFilterColor:I

    const/4 p1, 0x0

    .line 32
    iput p1, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mRoundConnerRadius:F

    .line 33
    iput p1, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mAnitiAlias:F

    const-string p1, "blur_filter"

    .line 46
    iput-object p1, p0, Lcom/meizu/common/renderer/effect/render/Render;->mKey:Ljava/lang/String;

    return-void
.end method

.method public static getInstace(Lcom/meizu/common/renderer/effect/GLCanvas;)Lcom/meizu/common/renderer/effect/render/BlurFilterRender;
    .registers 2

    const-string v0, "blur_filter"

    .line 36
    invoke-interface {p0, v0}, Lcom/meizu/common/renderer/effect/GLCanvas;->getRender(Ljava/lang/String;)Lcom/meizu/common/renderer/effect/render/Render;

    move-result-object v0

    if-nez v0, :cond_10

    .line 38
    new-instance v0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;

    invoke-direct {v0, p0}, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;-><init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    .line 39
    invoke-interface {p0, v0}, Lcom/meizu/common/renderer/effect/GLCanvas;->addRender(Lcom/meizu/common/renderer/effect/render/Render;)V

    .line 41
    :cond_10
    check-cast v0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;

    return-object v0
.end method

.method private static nightModeColorProcess(I)I
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    .line 115
    :try_start_0
    sget-object v0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->sApplicationContextInstance:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_1a

    .line 116
    const-class v0, Landroid/app/Application;

    const-string v2, "getApplicationContextInstance"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    sput-object v0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->sApplicationContextInstance:Landroid/content/Context;

    .line 118
    :cond_1a
    sget-object v0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->sApplicationContextInstance:Landroid/content/Context;

    if-eqz v0, :cond_33

    const/4 v0, 0x1

    .line 119
    sget-object v2, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->sApplicationContextInstance:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "flymelab_flyme_night_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_33

    const/16 v0, 0x96

    .line 120
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_33

    :catch_33
    :cond_33
    return p0
.end method


# virtual methods
.method protected getFragmentShader()Ljava/lang/String;
    .registers 1

    const-string/jumbo p0, "precision mediump float;\nuniform sampler2D sTexture;\nuniform sampler2D sTexture2;\nuniform int uHasTexture;\nuniform float uAlpha;\nuniform float uIntensity;\nuniform vec4 uFilterColor;\nvarying vec2 vTexCoord; \nuniform vec2 origin;\nuniform vec2 resolution;\nuniform vec2 screenRes;\nuniform float rradius;\nuniform float antialias;\nfloat RoundRect(in vec2 distFromCenter, in vec2 halfSize, in float radius) {\n   float len = length(max(abs(distFromCenter) - (halfSize - radius), vec2(0.0))); \n   radius = radius * 0.96;\n   float anti = max(0.01, 0.04 - (resolution.x / screenRes.x) * 0.05);\n   return 1.0 - smoothstep(0.0, anti, len - radius);}\nvoid main() { \nif ((gl_FragCoord.x >= origin.x && gl_FragCoord.x <= origin.x + resolution.x) || (gl_FragCoord.y <= screenRes.y - origin.y && gl_FragCoord.x >= screenRes.y - origin.y - resolution.y)) {\n     vec4 finalColor;\n     if (uHasTexture == 1) {\n        vec3 color = (texture2D(sTexture,  vTexCoord).rgb*uAlpha +\n                     texture2D(sTexture2, vTexCoord).rgb*(1.0-uAlpha)); \n        finalColor.rgb = (uFilterColor.rgb*uFilterColor.a + color*(1.0-uFilterColor.a))*uIntensity;\n        finalColor.a = 1.0; \n     } else {        vec3 color = texture2D(sTexture,  vTexCoord).rgb;\n        finalColor.rgb = (uFilterColor.rgb*uFilterColor.a + color*(1.0-uFilterColor.a))*uIntensity;\n        finalColor.a = uAlpha;\n     }\n     if (rradius > 0.01) {\n       vec2 halfsize = resolution * 0.5;\n       vec2 pos = vec2(min(resolution.x, max(0.0, gl_FragCoord.x - origin.x)), min(resolution.y, max(0.0, gl_FragCoord.y - (screenRes.y - origin.y - resolution.y))));\n       pos = (pos - halfsize) / min(halfsize.x, halfsize.y);\n       float round = RoundRect(pos, halfsize / min(halfsize.x, halfsize.y), rradius);\n       gl_FragColor = vec4(finalColor.rgb, round);\n     } else {\n       gl_FragColor = finalColor;\n     }\n} else {\n      discard;\n     }\n}\n"

    return-object p0
.end method

.method protected initProgram()V
    .registers 3

    .line 51
    invoke-super {p0}, Lcom/meizu/common/renderer/effect/render/PixelsRender;->initProgram()V

    .line 52
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mProgram:I

    const-string/jumbo v1, "uFilterColor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mUniformFilterColor:I

    .line 53
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mProgram:I

    const-string/jumbo v1, "uIntensity"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mUniformIntensityH:I

    .line 54
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mProgram:I

    const-string/jumbo v1, "sTexture2"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mUniformTextureH2:I

    .line 55
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mProgram:I

    const-string/jumbo v1, "uHasTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mUniformHasTexture:I

    .line 56
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mProgram:I

    const-string/jumbo v1, "resolution"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mUniformResolution:I

    .line 57
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mProgram:I

    const-string/jumbo v1, "origin"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mUniformOrigin:I

    .line 58
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mProgram:I

    const-string/jumbo v1, "rradius"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mUniformRadius:I

    .line 59
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mProgram:I

    const-string/jumbo v1, "screenRes"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mUniformScreen:I

    .line 60
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/ShaderRender;->mProgram:I

    const-string v1, "antialias"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mUniformAntiAlias:I

    return-void
.end method

.method protected initShader(Lcom/meizu/common/renderer/effect/DrawInfo;)V
    .registers 9

    .line 85
    invoke-super {p0, p1}, Lcom/meizu/common/renderer/effect/render/PixelsRender;->initShader(Lcom/meizu/common/renderer/effect/DrawInfo;)V

    const/16 v0, 0xbe2

    .line 86
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 87
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mFilterColor:I

    invoke-static {v0}, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->nightModeColorProcess(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mFilterColor:I

    .line 88
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mUniformFilterColor:I

    iget v1, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mFilterColor:I

    .line 89
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000  # 255.0f

    div-float/2addr v1, v2

    iget v3, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mFilterColor:I

    .line 90
    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    iget v4, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mFilterColor:I

    .line 91
    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    iget v5, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mFilterColor:I

    .line 92
    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v2

    .line 88
    invoke-static {v0, v1, v3, v4, v5}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 93
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mUniformIntensityH:I

    iget v1, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mIntensity:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 94
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mUniformTextureH2:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 95
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mUniformRadius:I

    iget v2, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mRoundConnerRadius:F

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 96
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mUniformAntiAlias:I

    iget v2, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mAnitiAlias:F

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 98
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mUniformResolution:I

    const/4 v2, 0x2

    new-array v3, v2, [F

    iget-object v4, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->drawOp:Lcom/meizu/common/renderer/effect/op/DrawOp;

    iget v5, v4, Lcom/meizu/common/renderer/effect/op/DrawOp;->width:I

    int-to-float v5, v5

    const/4 v6, 0x0

    aput v5, v3, v6

    iget v4, v4, Lcom/meizu/common/renderer/effect/op/DrawOp;->height:I

    int-to-float v4, v4

    aput v4, v3, v1

    invoke-static {v0, v1, v3, v6}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    .line 99
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mUniformOrigin:I

    new-array v3, v2, [F

    iget-object v4, p0, Lcom/meizu/common/renderer/effect/render/Render;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v4}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/common/renderer/effect/StateMachine;->getModelMatrix()[F

    move-result-object v4

    const/16 v5, 0xc

    aget v4, v4, v5

    aput v4, v3, v6

    iget-object v4, p0, Lcom/meizu/common/renderer/effect/render/Render;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-interface {v4}, Lcom/meizu/common/renderer/effect/GLCanvas;->getState()Lcom/meizu/common/renderer/effect/StateMachine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/common/renderer/effect/StateMachine;->getModelMatrix()[F

    move-result-object v4

    const/16 v5, 0xd

    aget v4, v4, v5

    aput v4, v3, v1

    invoke-static {v0, v1, v3, v6}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    .line 100
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mUniformScreen:I

    new-array v2, v2, [F

    iget v3, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->viewportWidth:I

    int-to-float v3, v3

    aput v3, v2, v6

    iget p1, p1, Lcom/meizu/common/renderer/effect/DrawInfo;->viewportHeight:I

    int-to-float p1, p1

    aput p1, v2, v1

    invoke-static {v0, v1, v2, v6}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    .line 101
    iget-object p1, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mOrigTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    if-eqz p1, :cond_b1

    .line 102
    iget p1, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mUniformHasTexture:I

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 103
    iget-object p0, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mOrigTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    const p1, 0x84c1

    invoke-static {p0, p1}, Lcom/meizu/common/renderer/effect/render/ShaderRender;->bindTexture(Lcom/meizu/common/renderer/effect/texture/Texture;I)V

    goto :goto_b6

    .line 105
    :cond_b1
    iget p0, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mUniformHasTexture:I

    invoke-static {p0, v6}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :goto_b6
    return-void
.end method

.method public setAntiAlias(F)V
    .registers 2

    .line 72
    iput p1, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mAnitiAlias:F

    return-void
.end method

.method public setFilterColor(I)V
    .registers 2

    .line 64
    iput p1, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mFilterColor:I

    return-void
.end method

.method public setIntensity(F)V
    .registers 2

    .line 76
    iput p1, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mIntensity:F

    return-void
.end method

.method public setOrigTexture(Lcom/meizu/common/renderer/effect/texture/Texture;)V
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mOrigTexture:Lcom/meizu/common/renderer/effect/texture/Texture;

    return-void
.end method

.method public setRoundConnerRadius(F)V
    .registers 2

    .line 68
    iput p1, p0, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->mRoundConnerRadius:F

    return-void
.end method
