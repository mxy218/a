.class public Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;
.super Ljava/lang/Object;
.source "DrawGLFunctor.java"


# annotations
.annotation build Lcom/meizu/common/renderer/GLRendererNotProguard;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/renderer/functor/DrawGLFunctor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GLInfo"
.end annotation


# instance fields
.field public clipBottom:I

.field public clipLeft:I

.field public clipRight:I

.field public clipTop:I

.field public isLayer:Z

.field public transform:[F

.field public viewportHeight:I

.field public viewportWidth:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 278
    iput-object v0, p0, Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;->transform:[F

    .line 279
    iget-object p0, p0, Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;->transform:[F

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput p1, p0, Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;->viewportWidth:I

    .line 284
    iput p2, p0, Lcom/meizu/common/renderer/functor/DrawGLFunctor$GLInfo;->viewportHeight:I

    return-void
.end method
