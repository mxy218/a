.class public abstract Lcom/meizu/common/renderer/effect/render/Render;
.super Lcom/meizu/common/renderer/effect/Resource;
.source "Render.java"


# instance fields
.field protected mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

.field protected mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V
    .registers 3

    .line 30
    invoke-direct {p0}, Lcom/meizu/common/renderer/effect/Resource;-><init>()V

    const-string v0, "__none"

    .line 26
    iput-object v0, p0, Lcom/meizu/common/renderer/effect/render/Render;->mKey:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/meizu/common/renderer/effect/render/Render;->mGLCanvas:Lcom/meizu/common/renderer/effect/GLCanvas;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/meizu/common/renderer/effect/render/Render;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public trimResources(IZ)V
    .registers 3

    return-void
.end method
