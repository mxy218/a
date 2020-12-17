.class public Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;
.super Lcom/meizu/common/renderer/effect/render/AbstractBlurRender;
.source "ProgressBlurRender.java"


# static fields
.field private static TEXTURE_FORMAT:I = 0x881a

.field private static scaleShader:Ljava/lang/String;


# instance fields
.field private mNotSupportMemoryBarrier:Z

.field protected mProgramH:I

.field protected mProgramS:I

.field protected mProgramV:I

.field private mSize:[I

.field protected mUniformRadiusH:I

.field protected mUniformRadiusS:I

.field protected mUniformRadiusV:I

.field private mUniformTextureS:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#version 310 es \nprecision highp float; \nuniform sampler2D uInputImage; \nuniform int uRadius; \nlayout("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-static {}, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->getPixelFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", binding = 0) writeonly uniform highp image2D uOutputImage; \nlayout (local_size_x = 1, local_size_y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", local_size_z = 1) in;\nivec2 offset(int value, int base) {\n    return ivec2(value, base);\n}\nvec3 imageFetch(ivec2 pos, ivec2 imageSize) {\n     return texture(uInputImage, vec2(float(pos.x)/float(imageSize.x), float(pos.y)/float(imageSize.y))).rgb;}\nvoid boxBlurH() {\n    ivec2 imageSize = ivec2(imageSize(uOutputImage));\n    int size =  int(imageSize.x);\n    int base =  int(gl_GlobalInvocationID.y);\n    int radius = min(uRadius, size);\n    float weight = 1.0/float(radius*2+1);\n    vec3 left  = imageFetch(offset(0, base), imageSize);\n    vec3 right = imageFetch(offset(size-1, base), imageSize);\n    vec3 color = left*float(radius+1);\n    for(int i=0; i<radius; i++) {\n        color += imageFetch(offset(i, base), imageSize);\n    }\n    for(int i=0; i<=radius; i++) { \n        color += imageFetch(offset(i+radius, base), imageSize) - left;\n        imageStore(uOutputImage, offset(i, base), vec4(color*weight, 1.0));\n    }\n    for(int i=radius+1; i<size-radius; i++) { \n        color += imageFetch(offset(i+radius, base), imageSize) - \n                 imageFetch(offset(i-radius-1, base),imageSize);\n        imageStore(uOutputImage, offset(i, base), vec4(color*weight, 1.0));\n    }\n    for(int i=size-radius; i<size; i++) { \n        color += right - imageFetch(offset(i-radius-1, base), imageSize);\n        imageStore(uOutputImage, offset(i, base), vec4(color*weight, 1.0));\n    }\n}\nvoid main() { \n    boxBlurH();\n}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->scaleShader:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V
    .registers 4

    .line 31
    invoke-direct {p0, p1}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender;-><init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    const/4 p1, 0x3

    new-array p1, p1, [I

    .line 21
    iput-object p1, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mSize:[I

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mProgramH:I

    .line 24
    iput p1, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mProgramV:I

    .line 26
    iput p1, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mProgramS:I

    .line 32
    invoke-direct {p0, p1}, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->getBlurShader(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/common/renderer/effect/ShaderUtils;->createComputeProgram(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mProgramH:I

    .line 33
    iget p1, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mProgramH:I

    const-string/jumbo v0, "uRadius"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mUniformRadiusH:I

    const/4 p1, 0x1

    .line 35
    invoke-direct {p0, p1}, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->getBlurShader(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/common/renderer/effect/ShaderUtils;->createComputeProgram(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mProgramV:I

    .line 36
    iget p1, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mProgramV:I

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mUniformRadiusV:I

    .line 38
    sget-object p1, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->scaleShader:Ljava/lang/String;

    invoke-static {p1}, Lcom/meizu/common/renderer/effect/ShaderUtils;->createComputeProgram(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mProgramS:I

    .line 39
    iget p1, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mProgramS:I

    const-string/jumbo v1, "uInputImage"

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mUniformTextureS:I

    .line 40
    iget p1, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mProgramS:I

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mUniformRadiusS:I

    const-string p1, "fast_blur"

    .line 42
    iput-object p1, p0, Lcom/meizu/common/renderer/effect/render/Render;->mKey:Ljava/lang/String;

    const/16 p1, 0x1f01

    .line 43
    invoke-static {p1}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Adreno (TM) 430"

    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mNotSupportMemoryBarrier:Z

    return-void
.end method

.method private blurH(Lcom/meizu/common/renderer/effect/texture/Texture;Lcom/meizu/common/renderer/effect/texture/Texture;I)V
    .registers 11

    .line 93
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mProgramS:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const/16 v0, 0x100

    .line 94
    invoke-static {v0}, Lcom/meizu/common/renderer/effect/GLES31Utils;->glMemoryBarrier(I)V

    const v0, 0x84c0

    .line 95
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 96
    invoke-virtual {p1}, Lcom/meizu/common/renderer/effect/texture/Texture;->getId()I

    move-result p1

    const/16 v0, 0xde1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 97
    iget p1, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mUniformTextureS:I

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 98
    iget p0, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mUniformRadiusS:I

    invoke-static {p0, p3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 99
    invoke-virtual {p2}, Lcom/meizu/common/renderer/effect/texture/Texture;->getId()I

    move-result v1

    sget v6, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->TEXTURE_FORMAT:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x88b9

    invoke-static/range {v0 .. v6}, Lcom/meizu/common/renderer/effect/GLES31Utils;->glBindImageTexture(IIIZIII)V

    .line 100
    invoke-virtual {p2}, Lcom/meizu/common/renderer/effect/texture/Texture;->getHeight()I

    move-result p0

    const/16 p1, 0x10

    invoke-static {p0, p1}, Lcom/meizu/common/renderer/RendererUtils;->nextMultipleN(II)I

    move-result p0

    div-int/2addr p0, p1

    const/4 p1, 0x1

    invoke-static {p1, p0, p1}, Lcom/meizu/common/renderer/effect/GLES31Utils;->glDispatchCompute(III)V

    const/16 p0, 0x20

    .line 101
    invoke-static {p0}, Lcom/meizu/common/renderer/effect/GLES31Utils;->glMemoryBarrier(I)V

    return-void
.end method

.method private boxesForGauss(FI)V
    .registers 8

    .line 105
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mSize:[I

    array-length v0, v0

    if-eq v0, p2, :cond_9

    .line 106
    new-array v0, p2, [I

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mSize:[I

    :cond_9
    const-wide/high16 v0, 0x4028000000000000L  # 12.0

    float-to-double v2, p1

    mul-double/2addr v0, v2

    mul-double/2addr v0, v2

    int-to-double v2, p2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    add-double/2addr v0, v2

    .line 109
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-double v0, v0

    .line 110
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 111
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_24

    add-int/lit8 v0, v0, -0x1

    :cond_24
    add-int/lit8 v1, v0, 0x2

    const/high16 v2, 0x41400000  # 12.0f

    mul-float/2addr v2, p1

    mul-float/2addr v2, p1

    mul-int p1, p2, v0

    mul-int/2addr p1, v0

    int-to-float p1, p1

    sub-float/2addr v2, p1

    mul-int/lit8 p1, p2, 0x4

    mul-int/2addr p1, v0

    int-to-float p1, p1

    sub-float/2addr v2, p1

    mul-int/lit8 p1, p2, 0x3

    int-to-float p1, p1

    sub-float/2addr v2, p1

    mul-int/lit8 p1, v0, -0x4

    add-int/lit8 p1, p1, -0x4

    int-to-float p1, p1

    div-float/2addr v2, p1

    .line 114
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 v2, 0x0

    :goto_43
    if-ge v2, p2, :cond_51

    .line 115
    iget-object v3, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mSize:[I

    if-ge v2, p1, :cond_4b

    move v4, v0

    goto :goto_4c

    :cond_4b
    move v4, v1

    :goto_4c
    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    :cond_51
    return-void
.end method

.method private getBlurShader(Z)Ljava/lang/String;
    .registers 5

    .line 140
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#version 310 es \nprecision highp float; \nuniform int uRadius; \nlayout("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-static {}, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->getPixelFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", binding = 0) readonly uniform highp image2D uInputImage; \nlayout("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-static {}, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->getPixelFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", binding = 1) writeonly uniform highp image2D uOutputImage; \nlayout (local_size_x = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x10

    const/4 v1, 0x1

    if-eqz p1, :cond_29

    move v2, v0

    goto :goto_2a

    :cond_29
    move v2, v1

    :goto_2a
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", local_size_y = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_35

    move v0, v1

    :cond_35
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", local_size_z = 1) in;\nivec2 offset(int value, int base) {\n    return "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " ? ivec2(base, value) : ivec2(value, base);\n}\nvoid boxBlur() {\n    int size = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " ? int(imageSize(uOutputImage).y) : int(imageSize(uOutputImage).x);\n    int base = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " ? int(gl_GlobalInvocationID.x) : int(gl_GlobalInvocationID.y);\n    int radius = min(uRadius, size);\n    float weight = 1.0/float(radius*2+1);\n    vec3 left  = imageLoad(uInputImage, offset(0, base)).rgb;\n    vec3 right = imageLoad(uInputImage, offset(size-1, base)).rgb;\n    vec3 color = left*float(radius+1);\n    for(int i=0; i<radius; i++) {\n        color += imageLoad(uInputImage, offset(i, base)).rgb;\n    }\n    for(int i=0; i<=radius; i++) { \n        color += imageLoad(uInputImage, offset(i+radius, base)).rgb - left;\n        imageStore(uOutputImage, offset(i, base), vec4(color*weight, 1.0));\n    }\n    for(int i=radius+1; i<size-radius; i++) { \n        color += imageLoad(uInputImage, offset(i+radius, base)).rgb - \n                 imageLoad(uInputImage, offset(i-radius-1, base)).rgb;\n        imageStore(uOutputImage, offset(i, base), vec4(color*weight, 1.0));\n    }\n    for(int i=size-radius; i<size; i++) { \n        color += right - imageLoad(uInputImage, offset(i-radius-1, base)).rgb;\n        imageStore(uOutputImage, offset(i, base), vec4(color*weight, 1.0));\n    }\n}\nvoid main() { \n    boxBlur();\n}"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Lcom/meizu/common/renderer/effect/GLCanvas;)Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;
    .registers 2

    const-string v0, "fast_blur"

    .line 48
    invoke-interface {p0, v0}, Lcom/meizu/common/renderer/effect/GLCanvas;->getRender(Ljava/lang/String;)Lcom/meizu/common/renderer/effect/render/Render;

    move-result-object v0

    if-nez v0, :cond_10

    .line 50
    new-instance v0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;

    invoke-direct {v0, p0}, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;-><init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    .line 51
    invoke-interface {p0, v0}, Lcom/meizu/common/renderer/effect/GLCanvas;->addRender(Lcom/meizu/common/renderer/effect/render/Render;)V

    .line 53
    :cond_10
    check-cast v0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;

    return-object v0
.end method

.method private static getPixelFormat()Ljava/lang/String;
    .registers 2

    .line 136
    sget v0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->TEXTURE_FORMAT:I

    const v1, 0x8814

    if-ne v0, v1, :cond_b

    const-string/jumbo v0, "rgba32f"

    goto :goto_e

    :cond_b
    const-string/jumbo v0, "rgba16f"

    :goto_e
    return-object v0
.end method

.method public static glTexStorage2D(IIIII)V
    .registers 5

    .line 132
    invoke-static {p0, p1, p2, p3, p4}, Lcom/meizu/common/renderer/effect/GLES31Utils;->glTexStorage2D(IIIII)V

    return-void
.end method


# virtual methods
.method public blur2Target(Lcom/meizu/common/renderer/effect/texture/Texture;II)Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;
    .registers 30

    move-object/from16 v0, p0

    .line 58
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender;->skipBlur()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 59
    :cond_a
    iget-object v1, v0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender;->mDrawingParameters:Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;

    invoke-virtual {v1}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->getScale()F

    move-result v1

    .line 60
    iget-object v2, v0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender;->mDrawingParameters:Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;

    invoke-virtual {v2}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->getRadius()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender;->mDrawingParameters:Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;

    invoke-virtual {v3}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->getLevel()F

    move-result v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f000000  # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 61
    iget-object v3, v0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender;->mDrawingParameters:Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;

    invoke-virtual {v3}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->getPassCount()I

    move-result v3

    const/4 v4, 0x3

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    move/from16 v4, p2

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v4, v4

    const/4 v5, 0x1

    .line 62
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v6, p3

    int-to-float v6, v6

    mul-float/2addr v6, v1

    float-to-int v1, v6

    .line 63
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 64
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->getTexturePool()Lcom/meizu/common/renderer/effect/TexturePool;

    move-result-object v6

    sget v7, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->TEXTURE_FORMAT:I

    invoke-virtual {v6, v4, v1, v7, v5}, Lcom/meizu/common/renderer/effect/TexturePool;->get(IIIZ)Lcom/meizu/common/renderer/effect/texture/Texture;

    move-result-object v6

    .line 65
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->getTexturePool()Lcom/meizu/common/renderer/effect/TexturePool;

    move-result-object v7

    sget v8, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->TEXTURE_FORMAT:I

    invoke-virtual {v7, v4, v1, v8, v5}, Lcom/meizu/common/renderer/effect/TexturePool;->get(IIIZ)Lcom/meizu/common/renderer/effect/texture/Texture;

    move-result-object v7

    .line 66
    iget-object v8, v0, Lcom/meizu/common/renderer/effect/render/Render;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-virtual {v6, v8}, Lcom/meizu/common/renderer/effect/texture/Texture;->onBind(Lcom/meizu/common/renderer/effect/GLCanvas;)Z

    .line 67
    iget-object v8, v0, Lcom/meizu/common/renderer/effect/render/Render;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-virtual {v7, v8}, Lcom/meizu/common/renderer/effect/texture/Texture;->onBind(Lcom/meizu/common/renderer/effect/GLCanvas;)Z

    const/4 v8, 0x0

    .line 68
    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v2, v3}, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->boxesForGauss(FI)V

    :goto_67
    if-ge v8, v3, :cond_10b

    const/16 v2, 0x20

    const/16 v9, 0x10

    if-nez v8, :cond_7c

    .line 71
    iget-object v10, v0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mSize:[I

    aget v10, v10, v8

    sub-int/2addr v10, v5

    div-int/lit8 v10, v10, 0x2

    move-object/from16 v11, p1

    invoke-direct {v0, v11, v6, v10}, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->blurH(Lcom/meizu/common/renderer/effect/texture/Texture;Lcom/meizu/common/renderer/effect/texture/Texture;I)V

    goto :goto_bf

    :cond_7c
    move-object/from16 v11, p1

    .line 73
    iget v10, v0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mProgramH:I

    invoke-static {v10}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const/4 v12, 0x0

    .line 74
    invoke-virtual {v7}, Lcom/meizu/common/renderer/effect/texture/Texture;->getId()I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const v17, 0x88b8

    sget v18, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->TEXTURE_FORMAT:I

    invoke-static/range {v12 .. v18}, Lcom/meizu/common/renderer/effect/GLES31Utils;->glBindImageTexture(IIIZIII)V

    const/16 v19, 0x1

    .line 75
    invoke-virtual {v6}, Lcom/meizu/common/renderer/effect/texture/Texture;->getId()I

    move-result v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const v24, 0x88b9

    sget v25, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->TEXTURE_FORMAT:I

    invoke-static/range {v19 .. v25}, Lcom/meizu/common/renderer/effect/GLES31Utils;->glBindImageTexture(IIIZIII)V

    .line 76
    iget v10, v0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mUniformRadiusH:I

    iget-object v12, v0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mSize:[I

    aget v12, v12, v8

    sub-int/2addr v12, v5

    div-int/lit8 v12, v12, 0x2

    invoke-static {v10, v12}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 77
    invoke-static {v1, v9}, Lcom/meizu/common/renderer/RendererUtils;->nextMultipleN(II)I

    move-result v10

    div-int/2addr v10, v9

    invoke-static {v5, v10, v5}, Lcom/meizu/common/renderer/effect/GLES31Utils;->glDispatchCompute(III)V

    .line 78
    invoke-static {v2}, Lcom/meizu/common/renderer/effect/GLES31Utils;->glMemoryBarrier(I)V

    .line 80
    :goto_bf
    iget-boolean v10, v0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mNotSupportMemoryBarrier:Z

    if-eqz v10, :cond_c6

    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 81
    :cond_c6
    iget v10, v0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mProgramV:I

    invoke-static {v10}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const/4 v12, 0x0

    .line 82
    invoke-virtual {v6}, Lcom/meizu/common/renderer/effect/texture/Texture;->getId()I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const v17, 0x88b8

    sget v18, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->TEXTURE_FORMAT:I

    invoke-static/range {v12 .. v18}, Lcom/meizu/common/renderer/effect/GLES31Utils;->glBindImageTexture(IIIZIII)V

    const/16 v19, 0x1

    .line 83
    invoke-virtual {v7}, Lcom/meizu/common/renderer/effect/texture/Texture;->getId()I

    move-result v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const v24, 0x88b9

    sget v25, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->TEXTURE_FORMAT:I

    invoke-static/range {v19 .. v25}, Lcom/meizu/common/renderer/effect/GLES31Utils;->glBindImageTexture(IIIZIII)V

    .line 84
    iget v10, v0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mUniformRadiusV:I

    iget-object v12, v0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mSize:[I

    aget v12, v12, v8

    sub-int/2addr v12, v5

    div-int/lit8 v12, v12, 0x2

    invoke-static {v10, v12}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 85
    invoke-static {v4, v9}, Lcom/meizu/common/renderer/RendererUtils;->nextMultipleN(II)I

    move-result v10

    div-int/2addr v10, v9

    invoke-static {v10, v5, v5}, Lcom/meizu/common/renderer/effect/GLES31Utils;->glDispatchCompute(III)V

    .line 86
    invoke-static {v2}, Lcom/meizu/common/renderer/effect/GLES31Utils;->glMemoryBarrier(I)V

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_67

    .line 88
    :cond_10b
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->getTexturePool()Lcom/meizu/common/renderer/effect/TexturePool;

    move-result-object v0

    invoke-virtual {v0, v6, v5}, Lcom/meizu/common/renderer/effect/TexturePool;->put(Lcom/meizu/common/renderer/effect/texture/Texture;Z)V

    .line 89
    invoke-static {v7}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;->newInstance(Ljava/lang/Object;)Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;

    move-result-object v0

    return-object v0
.end method

.method public trimResources(IZ)V
    .registers 5

    .line 120
    invoke-super {p0, p1, p2}, Lcom/meizu/common/renderer/effect/render/Render;->trimResources(IZ)V

    .line 121
    iget-object p1, p0, Lcom/meizu/common/renderer/effect/render/Render;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    if-eqz p1, :cond_22

    .line 122
    iget v0, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mProgramH:I

    invoke-interface {p1, v0, p2}, Lcom/meizu/common/renderer/effect/GLCanvas;->deleteProgram(IZ)V

    const/4 p1, 0x0

    .line 123
    iput p1, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mProgramH:I

    .line 124
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/Render;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    iget v1, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mProgramV:I

    invoke-interface {v0, v1, p2}, Lcom/meizu/common/renderer/effect/GLCanvas;->deleteProgram(IZ)V

    .line 125
    iput p1, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mProgramV:I

    .line 126
    iget-object p1, p0, Lcom/meizu/common/renderer/effect/render/Render;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    iget v0, p0, Lcom/meizu/common/renderer/effect/render/ProgressBlurRender;->mProgramS:I

    invoke-interface {p1, v0, p2}, Lcom/meizu/common/renderer/effect/GLCanvas;->deleteProgram(IZ)V

    const/4 p1, 0x0

    .line 127
    iput-object p1, p0, Lcom/meizu/common/renderer/effect/render/Render;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    :cond_22
    return-void
.end method
