.class public Lcom/meizu/common/renderer/effect/GLRecycler;
.super Ljava/lang/Object;
.source "GLRecycler.java"


# static fields
.field private static sBuffer:[I


# instance fields
.field private final mBufferGarbage:Lcom/meizu/common/renderer/effect/SynchronizedIntArray;

.field private final mFrameBufferGarbage:Lcom/meizu/common/renderer/effect/SynchronizedIntArray;

.field private final mProgramGarbage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRenderBufferGarbage:Lcom/meizu/common/renderer/effect/SynchronizedIntArray;

.field private final mTextureGarbage:Lcom/meizu/common/renderer/effect/SynchronizedIntArray;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 20
    sput-object v0, Lcom/meizu/common/renderer/effect/GLRecycler;->sBuffer:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;

    invoke-direct {v0}, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/GLRecycler;->mTextureGarbage:Lcom/meizu/common/renderer/effect/SynchronizedIntArray;

    .line 16
    new-instance v0, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;

    invoke-direct {v0}, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/GLRecycler;->mBufferGarbage:Lcom/meizu/common/renderer/effect/SynchronizedIntArray;

    .line 17
    new-instance v0, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;

    invoke-direct {v0}, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/GLRecycler;->mFrameBufferGarbage:Lcom/meizu/common/renderer/effect/SynchronizedIntArray;

    .line 18
    new-instance v0, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;

    invoke-direct {v0}, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/GLRecycler;->mRenderBufferGarbage:Lcom/meizu/common/renderer/effect/SynchronizedIntArray;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/renderer/effect/GLRecycler;->mProgramGarbage:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public clearGarbage(Z)V
    .registers 6

    .line 74
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/GLRecycler;->mTextureGarbage:Lcom/meizu/common/renderer/effect/SynchronizedIntArray;

    .line 75
    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_19

    if-eqz p1, :cond_16

    .line 76
    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;->size()I

    move-result v1

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;->getInternalArray()[I

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 77
    :cond_16
    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;->clear()V

    .line 80
    :cond_19
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/GLRecycler;->mBufferGarbage:Lcom/meizu/common/renderer/effect/SynchronizedIntArray;

    .line 81
    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;->size()I

    move-result v1

    if-lez v1, :cond_31

    if-eqz p1, :cond_2e

    .line 82
    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;->size()I

    move-result v1

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;->getInternalArray()[I

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 83
    :cond_2e
    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;->clear()V

    .line 86
    :cond_31
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/GLRecycler;->mRenderBufferGarbage:Lcom/meizu/common/renderer/effect/SynchronizedIntArray;

    .line 87
    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;->size()I

    move-result v1

    if-lez v1, :cond_49

    if-eqz p1, :cond_46

    .line 88
    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;->size()I

    move-result v1

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;->getInternalArray()[I

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/opengl/GLES20;->glDeleteRenderbuffers(I[II)V

    .line 89
    :cond_46
    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;->clear()V

    .line 92
    :cond_49
    iget-object v0, p0, Lcom/meizu/common/renderer/effect/GLRecycler;->mFrameBufferGarbage:Lcom/meizu/common/renderer/effect/SynchronizedIntArray;

    .line 93
    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;->size()I

    move-result v1

    if-lez v1, :cond_61

    if-eqz p1, :cond_5e

    .line 94
    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;->size()I

    move-result v1

    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;->getInternalArray()[I

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 95
    :cond_5e
    invoke-virtual {v0}, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;->clear()V

    :cond_61
    if-eqz p1, :cond_7d

    .line 99
    iget-object p1, p0, Lcom/meizu/common/renderer/effect/GLRecycler;->mProgramGarbage:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_69
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 100
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_69

    .line 103
    :cond_7d
    iget-object p0, p0, Lcom/meizu/common/renderer/effect/GLRecycler;->mProgramGarbage:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public deleteFrameBuffer(IZ)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    if-nez p2, :cond_b

    .line 55
    iget-object p0, p0, Lcom/meizu/common/renderer/effect/GLRecycler;->mFrameBufferGarbage:Lcom/meizu/common/renderer/effect/SynchronizedIntArray;

    invoke-virtual {p0, p1}, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;->add(I)V

    goto :goto_14

    .line 57
    :cond_b
    sget-object p0, Lcom/meizu/common/renderer/effect/GLRecycler;->sBuffer:[I

    const/4 p2, 0x0

    aput p1, p0, p2

    const/4 p1, 0x1

    .line 58
    invoke-static {p1, p0, p2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    :goto_14
    return-void
.end method

.method public deleteProgram(IZ)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    if-nez p2, :cond_f

    .line 65
    iget-object p0, p0, Lcom/meizu/common/renderer/effect/GLRecycler;->mProgramGarbage:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 67
    :cond_f
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    :goto_12
    return-void
.end method

.method public deleteRenderBuffer(IZ)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    if-nez p2, :cond_b

    .line 45
    iget-object p0, p0, Lcom/meizu/common/renderer/effect/GLRecycler;->mRenderBufferGarbage:Lcom/meizu/common/renderer/effect/SynchronizedIntArray;

    invoke-virtual {p0, p1}, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;->add(I)V

    goto :goto_14

    .line 47
    :cond_b
    sget-object p0, Lcom/meizu/common/renderer/effect/GLRecycler;->sBuffer:[I

    const/4 p2, 0x0

    aput p1, p0, p2

    const/4 p1, 0x1

    .line 48
    invoke-static {p1, p0, p2}, Landroid/opengl/GLES20;->glDeleteRenderbuffers(I[II)V

    :goto_14
    return-void
.end method

.method public deleteTexture(IZ)V
    .registers 3

    if-nez p2, :cond_8

    .line 25
    iget-object p0, p0, Lcom/meizu/common/renderer/effect/GLRecycler;->mTextureGarbage:Lcom/meizu/common/renderer/effect/SynchronizedIntArray;

    invoke-virtual {p0, p1}, Lcom/meizu/common/renderer/effect/SynchronizedIntArray;->add(I)V

    goto :goto_11

    .line 27
    :cond_8
    sget-object p0, Lcom/meizu/common/renderer/effect/GLRecycler;->sBuffer:[I

    const/4 p2, 0x0

    aput p1, p0, p2

    const/4 p1, 0x1

    .line 28
    invoke-static {p1, p0, p2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    :goto_11
    return-void
.end method
