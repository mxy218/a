.class public Lcom/meizu/common/renderer/effect/GLCanvasImpl;
.super Lcom/meizu/common/renderer/effect/Resource;
.source "GLCanvasImpl.java"

# interfaces
.implements Lcom/meizu/common/renderer/effect/GLCanvas;


# instance fields
.field private mBindingFrameBuffer:I

.field private mRenderGroup:Lcom/meizu/common/renderer/effect/render/RenderGroup;

.field private mSnapshot:Lcom/meizu/common/renderer/effect/StateMachine;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Lcom/meizu/common/renderer/effect/Resource;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/meizu/common/renderer/effect/GLCanvasImpl;->mBindingFrameBuffer:I

    .line 32
    new-instance v0, Lcom/meizu/common/renderer/effect/StateMachine;

    invoke-direct {v0}, Lcom/meizu/common/renderer/effect/StateMachine;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/GLCanvasImpl;->mSnapshot:Lcom/meizu/common/renderer/effect/StateMachine;

    .line 33
    new-instance v0, Lcom/meizu/common/renderer/effect/render/RenderGroup;

    invoke-direct {v0, p0}, Lcom/meizu/common/renderer/effect/render/RenderGroup;-><init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/GLCanvasImpl;->mRenderGroup:Lcom/meizu/common/renderer/effect/render/RenderGroup;

    return-void
.end method

.method private createRender(Ljava/lang/String;)Lcom/meizu/common/renderer/effect/render/Render;
    .registers 3

    const-string v0, "__none"

    .line 141
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 142
    new-instance p1, Lcom/meizu/common/renderer/effect/render/NoneRender;

    invoke-direct {p1, p0}, Lcom/meizu/common/renderer/effect/render/NoneRender;-><init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    return-object p1

    :cond_e
    const-string v0, "__static_blur"

    .line 143
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 144
    new-instance p1, Lcom/meizu/common/renderer/effect/render/StaticBlurRender;

    invoke-direct {p1, p0}, Lcom/meizu/common/renderer/effect/render/StaticBlurRender;-><init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    return-object p1

    :cond_1c
    const-string v0, "__gray"

    .line 145
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 146
    new-instance p1, Lcom/meizu/common/renderer/effect/render/GrayRender;

    invoke-direct {p1, p0}, Lcom/meizu/common/renderer/effect/render/GrayRender;-><init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    return-object p1

    :cond_2a
    const-string v0, "__fog"

    .line 147
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 148
    new-instance p1, Lcom/meizu/common/renderer/effect/render/FogRender;

    invoke-direct {p1, p0}, Lcom/meizu/common/renderer/effect/render/FogRender;-><init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    return-object p1

    :cond_38
    const-string v0, "__water"

    .line 149
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 150
    new-instance p1, Lcom/meizu/common/renderer/effect/render/WaterRender;

    invoke-direct {p1, p0}, Lcom/meizu/common/renderer/effect/render/WaterRender;-><init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    return-object p1

    :cond_46
    const-string v0, "__yesterday"

    .line 151
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 152
    new-instance p1, Lcom/meizu/common/renderer/effect/render/YesteryearRender;

    invoke-direct {p1, p0}, Lcom/meizu/common/renderer/effect/render/YesteryearRender;-><init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    return-object p1

    :cond_54
    const-string v0, "__vivid"

    .line 153
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 154
    new-instance p1, Lcom/meizu/common/renderer/effect/render/VividRender;

    invoke-direct {p1, p0}, Lcom/meizu/common/renderer/effect/render/VividRender;-><init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    return-object p1

    :cond_62
    const-string v0, "__seventy"

    .line 155
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 156
    new-instance p1, Lcom/meizu/common/renderer/effect/render/SeventyRender;

    invoke-direct {p1, p0}, Lcom/meizu/common/renderer/effect/render/SeventyRender;-><init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    return-object p1

    :cond_70
    const-string v0, "__fisheye"

    .line 157
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 158
    new-instance p1, Lcom/meizu/common/renderer/effect/render/FishEyeRender;

    invoke-direct {p1, p0}, Lcom/meizu/common/renderer/effect/render/FishEyeRender;-><init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    return-object p1

    :cond_7e
    const-string v0, "__mosaic"

    .line 159
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 160
    new-instance p1, Lcom/meizu/common/renderer/effect/render/MosaicRender;

    invoke-direct {p1, p0}, Lcom/meizu/common/renderer/effect/render/MosaicRender;-><init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    return-object p1

    :cond_8c
    const-string v0, "__sketch"

    .line 161
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9a

    .line 162
    new-instance p1, Lcom/meizu/common/renderer/effect/render/SketchEffectRender;

    invoke-direct {p1, p0}, Lcom/meizu/common/renderer/effect/render/SketchEffectRender;-><init>(Lcom/meizu/common/renderer/effect/GLCanvas;)V

    return-object p1

    :cond_9a
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public addRender(Lcom/meizu/common/renderer/effect/render/Render;)V
    .registers 4

    if-eqz p1, :cond_2e

    .line 50
    invoke-virtual {p1}, Lcom/meizu/common/renderer/effect/render/Render;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "__none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 51
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Add render fail ,key = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/meizu/common/renderer/effect/render/Render;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "glrenderer"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 54
    :cond_29
    iget-object p0, p0, Lcom/meizu/common/renderer/effect/GLCanvasImpl;->mRenderGroup:Lcom/meizu/common/renderer/effect/render/RenderGroup;

    invoke-virtual {p0, p1}, Lcom/meizu/common/renderer/effect/render/RenderGroup;->addRender(Lcom/meizu/common/renderer/effect/render/Render;)V

    :cond_2e
    return-void
.end method

.method public deleteFrameBuffer(IZ)V
    .registers 3

    .line 122
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->getGLRecycler()Lcom/meizu/common/renderer/effect/GLRecycler;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/meizu/common/renderer/effect/GLRecycler;->deleteFrameBuffer(IZ)V

    return-void
.end method

.method public deleteProgram(IZ)V
    .registers 3

    .line 137
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->getGLRecycler()Lcom/meizu/common/renderer/effect/GLRecycler;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/meizu/common/renderer/effect/GLRecycler;->deleteProgram(IZ)V

    return-void
.end method

.method public deleteRenderBuffer(IZ)V
    .registers 3

    .line 132
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->getGLRecycler()Lcom/meizu/common/renderer/effect/GLRecycler;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/meizu/common/renderer/effect/GLRecycler;->deleteRenderBuffer(IZ)V

    return-void
.end method

.method public deleteTexture(IZ)V
    .registers 3

    .line 117
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->getGLRecycler()Lcom/meizu/common/renderer/effect/GLRecycler;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/meizu/common/renderer/effect/GLRecycler;->deleteTexture(IZ)V

    return-void
.end method

.method public getRender(Ljava/lang/String;)Lcom/meizu/common/renderer/effect/render/Render;
    .registers 3

    .line 38
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/GLCanvasImpl;->mRenderGroup:Lcom/meizu/common/renderer/effect/render/RenderGroup;

    invoke-virtual {v0, p1}, Lcom/meizu/common/renderer/effect/render/RenderGroup;->getRender(Ljava/lang/String;)Lcom/meizu/common/renderer/effect/render/Render;

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    .line 40
    :cond_9
    invoke-direct {p0, p1}, Lcom/meizu/common/renderer/effect/GLCanvasImpl;->createRender(Ljava/lang/String;)Lcom/meizu/common/renderer/effect/render/Render;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 42
    iget-object p0, p0, Lcom/meizu/common/renderer/effect/GLCanvasImpl;->mRenderGroup:Lcom/meizu/common/renderer/effect/render/RenderGroup;

    invoke-virtual {p0, p1}, Lcom/meizu/common/renderer/effect/render/RenderGroup;->addRender(Lcom/meizu/common/renderer/effect/render/Render;)V

    :cond_14
    return-object p1
.end method

.method public getRootBindingFrameBuffer()I
    .registers 1

    .line 66
    iget p0, p0, Lcom/meizu/common/renderer/effect/GLCanvasImpl;->mBindingFrameBuffer:I

    return p0
.end method

.method public getState()Lcom/meizu/common/renderer/effect/StateMachine;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/meizu/common/renderer/effect/GLCanvasImpl;->mSnapshot:Lcom/meizu/common/renderer/effect/StateMachine;

    return-object p0
.end method

.method public onRenderPostDraw()V
    .registers 2

    .line 93
    iget p0, p0, Lcom/meizu/common/renderer/effect/GLCanvasImpl;->mBindingFrameBuffer:I

    const v0, 0x8d40

    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 99
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->getGLRecycler()Lcom/meizu/common/renderer/effect/GLRecycler;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/common/renderer/effect/GLRecycler;->clearGarbage(Z)V

    return-void
.end method

.method public onRenderPreDraw(Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;)V
    .registers 6

    .line 76
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/GLCanvasImpl;->mSnapshot:Lcom/meizu/common/renderer/effect/StateMachine;

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/StateMachine;->reset()V

    .line 77
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/GLCanvasImpl;->mSnapshot:Lcom/meizu/common/renderer/effect/StateMachine;

    iget-object p1, p1, Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;->transform:[F

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/meizu/common/renderer/effect/StateMachine;->setMatrix([FI)V

    const/4 p1, 0x1

    new-array v0, p1, [I

    const v2, 0x8ca6

    .line 80
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 81
    iget-object v2, p0, Lcom/meizu/common/renderer/effect/GLCanvasImpl;->mSnapshot:Lcom/meizu/common/renderer/effect/StateMachine;

    aget v3, v0, v1

    invoke-virtual {v2, v3}, Lcom/meizu/common/renderer/effect/StateMachine;->setFrameBufferId(I)V

    .line 82
    aget v0, v0, v1

    iput v0, p0, Lcom/meizu/common/renderer/effect/GLCanvasImpl;->mBindingFrameBuffer:I

    const/16 p0, 0x302

    const/16 v0, 0x303

    .line 88
    invoke-static {p0, v0}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 89
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->getGLRecycler()Lcom/meizu/common/renderer/effect/GLRecycler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/meizu/common/renderer/effect/GLRecycler;->clearGarbage(Z)V

    return-void
.end method

.method public trimResources(IZ)V
    .registers 4

    const/16 v0, 0x14

    if-lt p1, v0, :cond_9

    .line 106
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/GLCanvasImpl;->mSnapshot:Lcom/meizu/common/renderer/effect/StateMachine;

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/StateMachine;->recycle()V

    :cond_9
    const/16 v0, 0x3c

    if-le p1, v0, :cond_12

    .line 110
    iget-object p0, p0, Lcom/meizu/common/renderer/effect/GLCanvasImpl;->mRenderGroup:Lcom/meizu/common/renderer/effect/render/RenderGroup;

    invoke-virtual {p0, p1, p2}, Lcom/meizu/common/renderer/effect/render/RenderGroup;->trimResources(IZ)V

    :cond_12
    return-void
.end method
