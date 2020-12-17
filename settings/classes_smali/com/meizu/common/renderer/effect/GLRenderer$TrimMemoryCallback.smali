.class Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;
.super Lcom/meizu/common/renderer/functor/InvokeFunctor;
.source "GLRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/renderer/effect/GLRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TrimMemoryCallback"
.end annotation


# instance fields
.field private mLevel:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 204
    invoke-direct {p0}, Lcom/meizu/common/renderer/functor/InvokeFunctor;-><init>()V

    .line 205
    iput p1, p0, Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;->mLevel:I

    return-void
.end method


# virtual methods
.method protected onInvoke(I)V
    .registers 5

    .line 210
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->access$200()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 211
    :try_start_5
    sget-boolean v0, Lcom/meizu/common/renderer/effect/GLRenderer;->DEBUG_RESOURCE:Z

    if-eqz v0, :cond_22

    const-string v0, "glrenderer"

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "trimResources level = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;->mLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_22
    iget v0, p0, Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;->mLevel:I

    const/16 v1, 0x50

    if-ge v0, v1, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    .line 216
    :goto_2b
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->access$300()Lcom/meizu/common/renderer/effect/GLCanvasImpl;

    move-result-object v1

    if-eqz v1, :cond_36

    .line 219
    iget v2, p0, Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;->mLevel:I

    invoke-virtual {v1, v2, v0}, Lcom/meizu/common/renderer/effect/GLCanvasImpl;->trimResources(IZ)V

    .line 222
    :cond_36
    iget v1, p0, Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;->mLevel:I

    invoke-static {v1, v0}, Lcom/meizu/common/renderer/functor/DrawGLFunctor;->freeAllFunctorResouces(IZ)V

    .line 223
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->access$400()Lcom/meizu/common/renderer/effect/TexturePool;

    move-result-object v1

    if-eqz v1, :cond_4a

    .line 224
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->access$400()Lcom/meizu/common/renderer/effect/TexturePool;

    move-result-object v1

    iget v2, p0, Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;->mLevel:I

    invoke-virtual {v1, v2, v0}, Lcom/meizu/common/renderer/effect/TexturePool;->trimResources(IZ)V

    .line 226
    :cond_4a
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->access$500()Lcom/meizu/common/renderer/effect/FrameBufferPool;

    move-result-object v1

    if-eqz v1, :cond_59

    .line 227
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->access$500()Lcom/meizu/common/renderer/effect/FrameBufferPool;

    move-result-object v1

    iget v2, p0, Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;->mLevel:I

    invoke-virtual {v1, v2, v0}, Lcom/meizu/common/renderer/effect/FrameBufferPool;->trimResources(IZ)V

    .line 229
    :cond_59
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->access$600()Lcom/meizu/common/renderer/effect/TextureCache;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_71

    if-nez v0, :cond_68

    .line 234
    invoke-static {v2}, Lcom/meizu/common/renderer/effect/GLRenderer;->access$302(Lcom/meizu/common/renderer/effect/GLCanvasImpl;)Lcom/meizu/common/renderer/effect/GLCanvasImpl;

    .line 235
    invoke-static {v2}, Lcom/meizu/common/renderer/effect/GLRenderer;->access$702(Ljavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;

    .line 237
    :cond_68
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->getGLRecycler()Lcom/meizu/common/renderer/effect/GLRecycler;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/meizu/common/renderer/effect/GLRecycler;->clearGarbage(Z)V

    .line 238
    monitor-exit p1

    return-void

    .line 230
    :cond_71
    invoke-static {}, Lcom/meizu/common/renderer/effect/GLRenderer;->access$600()Lcom/meizu/common/renderer/effect/TextureCache;

    move-result-object v1

    iget p0, p0, Lcom/meizu/common/renderer/effect/GLRenderer$TrimMemoryCallback;->mLevel:I

    invoke-virtual {v1, p0, v0}, Lcom/meizu/common/renderer/effect/TextureCache;->trimResources(IZ)V
    :try_end_7a
    .catchall {:try_start_5 .. :try_end_7a} :catchall_7b

    throw v2

    :catchall_7b
    move-exception p0

    .line 238
    :try_start_7c
    monitor-exit p1
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    throw p0
.end method
