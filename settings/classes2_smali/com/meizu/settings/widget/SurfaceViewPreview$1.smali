.class Lcom/meizu/settings/widget/SurfaceViewPreview$1;
.super Ljava/lang/Object;
.source "SurfaceViewPreview.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/widget/SurfaceViewPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/widget/SurfaceViewPreview;


# direct methods
.method constructor <init>(Lcom/meizu/settings/widget/SurfaceViewPreview;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/meizu/settings/widget/SurfaceViewPreview$1;->this$0:Lcom/meizu/settings/widget/SurfaceViewPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 6

    .line 64
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SurfaceHolder Changed. width : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", height : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",mOnSurfaceChangedListener:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/meizu/settings/widget/SurfaceViewPreview$1;->this$0:Lcom/meizu/settings/widget/SurfaceViewPreview;

    invoke-static {v0}, Lcom/meizu/settings/widget/SurfaceViewPreview;->access$000(Lcom/meizu/settings/widget/SurfaceViewPreview;)Lcom/meizu/settings/widget/SurfaceViewPreview$OnSurfaceChangedListener;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SurfaceViewPreview"

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object p2, p0, Lcom/meizu/settings/widget/SurfaceViewPreview$1;->this$0:Lcom/meizu/settings/widget/SurfaceViewPreview;

    invoke-static {p2}, Lcom/meizu/settings/widget/SurfaceViewPreview;->access$000(Lcom/meizu/settings/widget/SurfaceViewPreview;)Lcom/meizu/settings/widget/SurfaceViewPreview$OnSurfaceChangedListener;

    move-result-object p2

    if-eqz p2, :cond_41

    .line 69
    iget-object p2, p0, Lcom/meizu/settings/widget/SurfaceViewPreview$1;->this$0:Lcom/meizu/settings/widget/SurfaceViewPreview;

    invoke-static {p2}, Lcom/meizu/settings/widget/SurfaceViewPreview;->access$000(Lcom/meizu/settings/widget/SurfaceViewPreview;)Lcom/meizu/settings/widget/SurfaceViewPreview$OnSurfaceChangedListener;

    move-result-object p2

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-interface {p2, p1, p3, p4}, Lcom/meizu/settings/widget/SurfaceViewPreview$OnSurfaceChangedListener;->onSurfaceChanged(Landroid/view/Surface;II)V

    :cond_41
    if-le p3, p4, :cond_5a

    .line 73
    iget-object p1, p0, Lcom/meizu/settings/widget/SurfaceViewPreview$1;->this$0:Lcom/meizu/settings/widget/SurfaceViewPreview;

    int-to-float p2, p3

    invoke-static {p1}, Lcom/meizu/settings/widget/SurfaceViewPreview;->access$200(Lcom/meizu/settings/widget/SurfaceViewPreview;)F

    move-result p3

    div-float/2addr p2, p3

    invoke-static {p1, p2}, Lcom/meizu/settings/widget/SurfaceViewPreview;->access$102(Lcom/meizu/settings/widget/SurfaceViewPreview;F)F

    .line 74
    iget-object p1, p0, Lcom/meizu/settings/widget/SurfaceViewPreview$1;->this$0:Lcom/meizu/settings/widget/SurfaceViewPreview;

    int-to-float p2, p4

    invoke-static {p1}, Lcom/meizu/settings/widget/SurfaceViewPreview;->access$400(Lcom/meizu/settings/widget/SurfaceViewPreview;)F

    move-result p3

    div-float/2addr p2, p3

    invoke-static {p1, p2}, Lcom/meizu/settings/widget/SurfaceViewPreview;->access$302(Lcom/meizu/settings/widget/SurfaceViewPreview;F)F

    goto :goto_70

    .line 76
    :cond_5a
    iget-object p1, p0, Lcom/meizu/settings/widget/SurfaceViewPreview$1;->this$0:Lcom/meizu/settings/widget/SurfaceViewPreview;

    int-to-float p2, p3

    invoke-static {p1}, Lcom/meizu/settings/widget/SurfaceViewPreview;->access$400(Lcom/meizu/settings/widget/SurfaceViewPreview;)F

    move-result p3

    div-float/2addr p2, p3

    invoke-static {p1, p2}, Lcom/meizu/settings/widget/SurfaceViewPreview;->access$102(Lcom/meizu/settings/widget/SurfaceViewPreview;F)F

    .line 77
    iget-object p1, p0, Lcom/meizu/settings/widget/SurfaceViewPreview$1;->this$0:Lcom/meizu/settings/widget/SurfaceViewPreview;

    int-to-float p2, p4

    invoke-static {p1}, Lcom/meizu/settings/widget/SurfaceViewPreview;->access$200(Lcom/meizu/settings/widget/SurfaceViewPreview;)F

    move-result p3

    div-float/2addr p2, p3

    invoke-static {p1, p2}, Lcom/meizu/settings/widget/SurfaceViewPreview;->access$302(Lcom/meizu/settings/widget/SurfaceViewPreview;F)F

    .line 79
    :goto_70
    iget-object p1, p0, Lcom/meizu/settings/widget/SurfaceViewPreview$1;->this$0:Lcom/meizu/settings/widget/SurfaceViewPreview;

    invoke-static {p1}, Lcom/meizu/settings/widget/SurfaceViewPreview;->access$500(Lcom/meizu/settings/widget/SurfaceViewPreview;)Landroid/graphics/Matrix;

    move-result-object p1

    iget-object p2, p0, Lcom/meizu/settings/widget/SurfaceViewPreview$1;->this$0:Lcom/meizu/settings/widget/SurfaceViewPreview;

    invoke-static {p2}, Lcom/meizu/settings/widget/SurfaceViewPreview;->access$100(Lcom/meizu/settings/widget/SurfaceViewPreview;)F

    move-result p2

    iget-object p0, p0, Lcom/meizu/settings/widget/SurfaceViewPreview$1;->this$0:Lcom/meizu/settings/widget/SurfaceViewPreview;

    invoke-static {p0}, Lcom/meizu/settings/widget/SurfaceViewPreview;->access$300(Lcom/meizu/settings/widget/SurfaceViewPreview;)F

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Matrix;->setScale(FF)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 2

    const-string p0, "SurfaceViewPreview"

    const-string p1, "SurfaceHolder Created"

    .line 57
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 2

    const-string p0, "SurfaceViewPreview"

    const-string p1, "SurfaceHolder Destroyed"

    .line 85
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
