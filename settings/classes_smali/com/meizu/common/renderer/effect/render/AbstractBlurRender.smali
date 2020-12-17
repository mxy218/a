.class public abstract Lcom/meizu/common/renderer/effect/render/AbstractBlurRender;
.super Lcom/meizu/common/renderer/effect/render/Render;
.source "AbstractBlurRender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;,
        Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;
    }
.end annotation


# instance fields
.field protected final mDrawingParameters:Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;


# direct methods
.method public constructor <init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V
    .registers 2

    .line 22
    invoke-direct {p0, p1}, Lcom/meizu/common/renderer/effect/render/Render;-><init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    .line 23
    new-instance p1, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;

    invoke-direct {p1}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;-><init>()V

    iput-object p1, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender;->mDrawingParameters:Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;

    return-void
.end method


# virtual methods
.method public abstract blur2Target(Lcom/meizu/common/renderer/effect/texture/Texture;II)Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$BlurResult;
.end method

.method public drawResult(Lcom/meizu/common/renderer/effect/DrawInfo;)V
    .registers 3

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, p1, v0}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender;->drawResult(Lcom/meizu/common/renderer/effect/DrawInfo;Lcom/meizu/common/renderer/effect/texture/Texture;)V

    return-void
.end method

.method public drawResult(Lcom/meizu/common/renderer/effect/DrawInfo;Lcom/meizu/common/renderer/effect/texture/Texture;)V
    .registers 4

    .line 33
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/Render;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    invoke-static {v0}, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->getInstace(Lcom/meizu/common/renderer/effect/GLCanvas;)Lcom/meizu/common/renderer/effect/render/BlurFilterRender;

    move-result-object v0

    .line 34
    invoke-virtual {v0, p2}, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->setOrigTexture(Lcom/meizu/common/renderer/effect/texture/Texture;)V

    .line 35
    iget-object p2, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender;->mDrawingParameters:Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;

    invoke-virtual {p2}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->getFilterColor()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->setFilterColor(I)V

    .line 36
    iget-object p2, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender;->mDrawingParameters:Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;

    invoke-virtual {p2}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->getIntensity()F

    move-result p2

    invoke-virtual {v0, p2}, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->setIntensity(F)V

    .line 37
    iget-object p2, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender;->mDrawingParameters:Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;

    invoke-virtual {p2}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->getRoundRadius()F

    move-result p2

    invoke-virtual {v0, p2}, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->setRoundConnerRadius(F)V

    .line 38
    iget-object p0, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender;->mDrawingParameters:Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;

    invoke-virtual {p0}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->getAntiAlias()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->setAntiAlias(F)V

    const/4 p0, 0x0

    .line 39
    invoke-virtual {v0, p0}, Lcom/meizu/common/renderer/effect/render/BlurFilterRender;->setOrigTexture(Lcom/meizu/common/renderer/effect/texture/Texture;)V

    .line 40
    invoke-virtual {v0, p1}, Lcom/meizu/common/renderer/effect/render/PixelsRender;->draw(Lcom/meizu/common/renderer/effect/DrawInfo;)Z

    return-void
.end method

.method public setParameters(Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;)Z
    .registers 2

    .line 61
    iget-object p0, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender;->mDrawingParameters:Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;

    invoke-virtual {p0, p1}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->copyFrom(Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;)Z

    move-result p0

    return p0
.end method

.method protected skipBlur()Z
    .registers 2

    .line 69
    iget-object p0, p0, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender;->mDrawingParameters:Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;

    invoke-virtual {p0}, Lcom/meizu/common/renderer/effect/render/AbstractBlurRender$Parameters;->getLevel()F

    move-result p0

    const v0, 0x3c23d70a  # 0.01f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method
