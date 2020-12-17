.class public abstract Lcom/meizu/common/renderer/effect/Resource;
.super Ljava/lang/Object;
.source "Resource.java"


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-boolean v0, Lcom/meizu/common/renderer/effect/GLRenderer;->DEBUG_RESOURCE:Z

    if-eqz v0, :cond_1d

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Create Resource:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "glrenderer"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/16 v0, 0x50

    const/4 v1, 0x0

    .line 26
    :try_start_3
    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/renderer/effect/Resource;->trimResources(IZ)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 28
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_a
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public releaseResources(Z)V
    .registers 3

    const/16 v0, 0x50

    .line 20
    invoke-virtual {p0, v0, p1}, Lcom/meizu/common/renderer/effect/Resource;->trimResources(IZ)V

    return-void
.end method

.method public abstract trimResources(IZ)V
.end method
