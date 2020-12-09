.class Lcom/android/server/wm/BlackFrame$BlackSurface;
.super Ljava/lang/Object;
.source "BlackFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/BlackFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BlackSurface"
.end annotation


# instance fields
.field final layer:I

.field final left:I

.field final surface:Landroid/view/SurfaceControl;

.field final synthetic this$0:Lcom/android/server/wm/BlackFrame;

.field final top:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/BlackFrame;Landroid/view/SurfaceControl$Transaction;IIIIILcom/android/server/wm/DisplayContent;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p4, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->left:I

    .line 44
    iput p5, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->top:I

    .line 45
    iput p3, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->layer:I

    .line 46
    sub-int/2addr p6, p4

    .line 47
    sub-int/2addr p7, p5

    .line 49
    invoke-virtual {p8}, Lcom/android/server/wm/DisplayContent;->makeOverlay()Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    .line 50
    const-string p4, "BlackSurface"

    invoke-virtual {p1, p4}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    .line 52
    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    .line 53
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    .line 54
    iget-object p1, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p1, p6, p7}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 55
    iget-object p1, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {p8}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p4

    invoke-virtual {p2, p1, p4}, Landroid/view/SurfaceControl$Transaction;->setLayerStack(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 56
    iget-object p1, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    const/high16 p4, 0x3f800000  # 1.0f

    invoke-virtual {p2, p1, p4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 57
    iget-object p1, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p1, p3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 58
    iget-object p1, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    iget p3, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->left:I

    int-to-float p3, p3

    iget p4, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->top:I

    int-to-float p4, p4

    invoke-virtual {p2, p1, p3, p4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 59
    iget-object p1, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 62
    return-void
.end method


# virtual methods
.method clearMatrix(Landroid/view/SurfaceControl$Transaction;)V
    .registers 8

    .line 89
    iget-object v1, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    const/high16 v2, 0x3f800000  # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000  # 1.0f

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 90
    return-void
.end method

.method setAlpha(Landroid/view/SurfaceControl$Transaction;F)V
    .registers 4

    .line 65
    iget-object v0, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 66
    return-void
.end method

.method setMatrix(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Matrix;)V
    .registers 11

    .line 69
    iget-object v0, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object v0, v0, Lcom/android/server/wm/BlackFrame;->mTmpMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->top:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 70
    iget-object v0, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object v0, v0, Lcom/android/server/wm/BlackFrame;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 71
    iget-object p2, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object p2, p2, Lcom/android/server/wm/BlackFrame;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object v0, v0, Lcom/android/server/wm/BlackFrame;->mTmpFloats:[F

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 72
    iget-object p2, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object v0, v0, Lcom/android/server/wm/BlackFrame;->mTmpFloats:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object v1, v1, Lcom/android/server/wm/BlackFrame;->mTmpFloats:[F

    const/4 v2, 0x5

    aget v1, v1, v2

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 74
    iget-object v3, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->surface:Landroid/view/SurfaceControl;

    iget-object p2, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object p2, p2, Lcom/android/server/wm/BlackFrame;->mTmpFloats:[F

    const/4 v0, 0x0

    aget v4, p2, v0

    iget-object p2, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object p2, p2, Lcom/android/server/wm/BlackFrame;->mTmpFloats:[F

    const/4 v0, 0x3

    aget v5, p2, v0

    iget-object p2, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object p2, p2, Lcom/android/server/wm/BlackFrame;->mTmpFloats:[F

    const/4 v0, 0x1

    aget v6, p2, v0

    iget-object p2, p0, Lcom/android/server/wm/BlackFrame$BlackSurface;->this$0:Lcom/android/server/wm/BlackFrame;

    iget-object p2, p2, Lcom/android/server/wm/BlackFrame;->mTmpFloats:[F

    const/4 v0, 0x4

    aget v7, p2, v0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 86
    return-void
.end method
