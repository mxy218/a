.class public Lcom/meizu/common/renderer/effect/render/SketchEffectRender;
.super Lcom/meizu/common/renderer/effect/render/RenderGroup;
.source "SketchEffectRender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/renderer/effect/render/SketchEffectRender$Gaussian2DRender;,
        Lcom/meizu/common/renderer/effect/render/SketchEffectRender$SketchRender;
    }
.end annotation


# instance fields
.field private mEffectInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

.field private mGaussian2DRender:Lcom/meizu/common/renderer/effect/render/SketchEffectRender$Gaussian2DRender;

.field private mSketchRender:Lcom/meizu/common/renderer/effect/render/SketchEffectRender$SketchRender;

.field private mTextureElement:Lcom/meizu/common/renderer/effect/op/DrawTextureOp;


# direct methods
.method public constructor <init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V
    .registers 3

    .line 22
    invoke-direct {p0, p1}, Lcom/meizu/common/renderer/effect/render/RenderGroup;-><init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    .line 19
    new-instance v0, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    invoke-direct {v0}, Lcom/meizu/common/renderer/effect/op/DrawTextureOp;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/render/SketchEffectRender;->mTextureElement:Lcom/meizu/common/renderer/effect/op/DrawTextureOp;

    .line 20
    new-instance v0, Lcom/meizu/common/renderer/effect/DrawInfo;

    invoke-direct {v0}, Lcom/meizu/common/renderer/effect/DrawInfo;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/render/SketchEffectRender;->mEffectInfo:Lcom/meizu/common/renderer/effect/DrawInfo;

    const-string v0, "__sketch"

    .line 23
    iput-object v0, p0, Lcom/meizu/common/renderer/effect/render/Render;->mKey:Ljava/lang/String;

    .line 24
    new-instance v0, Lcom/meizu/common/renderer/effect/render/SketchEffectRender$SketchRender;

    invoke-direct {v0, p1}, Lcom/meizu/common/renderer/effect/render/SketchEffectRender$SketchRender;-><init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/render/SketchEffectRender;->mSketchRender:Lcom/meizu/common/renderer/effect/render/SketchEffectRender$SketchRender;

    .line 25
    new-instance v0, Lcom/meizu/common/renderer/effect/render/SketchEffectRender$Gaussian2DRender;

    invoke-direct {v0, p1}, Lcom/meizu/common/renderer/effect/render/SketchEffectRender$Gaussian2DRender;-><init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/render/SketchEffectRender;->mGaussian2DRender:Lcom/meizu/common/renderer/effect/render/SketchEffectRender$Gaussian2DRender;

    .line 26
    iget-object p1, p0, Lcom/meizu/common/renderer/effect/render/RenderGroup;->mRenders:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/meizu/common/renderer/effect/render/SketchEffectRender;->mGaussian2DRender:Lcom/meizu/common/renderer/effect/render/SketchEffectRender$Gaussian2DRender;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object p1, p0, Lcom/meizu/common/renderer/effect/render/RenderGroup;->mRenders:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/meizu/common/renderer/effect/render/SketchEffectRender;->mSketchRender:Lcom/meizu/common/renderer/effect/render/SketchEffectRender$SketchRender;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
