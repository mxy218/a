.class public Lcom/meizu/common/renderer/effect/render/FogRender;
.super Lcom/meizu/common/renderer/effect/render/PixelsRender;
.source "FogRender.java"


# direct methods
.method public constructor <init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V
    .registers 2

    .line 12
    invoke-direct {p0, p1}, Lcom/meizu/common/renderer/effect/render/PixelsRender;-><init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    const-string p1, "__fog"

    .line 13
    iput-object p1, p0, Lcom/meizu/common/renderer/effect/render/Render;->mKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFragmentShader()Ljava/lang/String;
    .registers 1

    const-string/jumbo p0, "precision mediump float; \nuniform sampler2D sTexture; \nuniform float uAlpha;\nvarying vec2 vTexCoord; \nvoid main() \n{ \n    vec4 color = texture2D(sTexture, vTexCoord).rgba; \n    vec3 fog = mix(vec3(0.5, 0.8, 0.5), color.rgb, 0.7); \n    gl_FragColor = vec4(fog, color.a*uAlpha); \n} \n"

    return-object p0
.end method
