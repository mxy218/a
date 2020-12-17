.class public Lcom/meizu/common/renderer/effect/render/GrayRender;
.super Lcom/meizu/common/renderer/effect/render/PixelsRender;
.source "GrayRender.java"


# direct methods
.method public constructor <init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V
    .registers 2

    .line 12
    invoke-direct {p0, p1}, Lcom/meizu/common/renderer/effect/render/PixelsRender;-><init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    const-string p1, "__gray"

    .line 13
    iput-object p1, p0, Lcom/meizu/common/renderer/effect/render/Render;->mKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFragmentShader()Ljava/lang/String;
    .registers 1

    const-string/jumbo p0, "precision mediump float; \nuniform sampler2D sTexture; \nuniform float uAlpha;\nvarying vec2 vTexCoord; \nvoid main() { \n    float alpha = texture2D(sTexture, vTexCoord).a*uAlpha; \n    vec3 factor = vec3(0.299, 0.587, 0.114); \n    vec3 color = texture2D(sTexture, vTexCoord).rgb; \n    float gray = 0.0; \n    gray = dot(color,factor); \n    color = vec3(gray, gray, gray); \n    gl_FragColor = vec4(color, alpha); \n}"

    return-object p0
.end method
