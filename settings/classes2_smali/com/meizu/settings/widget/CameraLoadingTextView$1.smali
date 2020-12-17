.class Lcom/meizu/settings/widget/CameraLoadingTextView$1;
.super Landroid/view/ViewOutlineProvider;
.source "CameraLoadingTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/widget/CameraLoadingTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/widget/CameraLoadingTextView;


# direct methods
.method constructor <init>(Lcom/meizu/settings/widget/CameraLoadingTextView;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/meizu/settings/widget/CameraLoadingTextView$1;->this$0:Lcom/meizu/settings/widget/CameraLoadingTextView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 5

    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " getOutline mLeft:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/meizu/settings/widget/CameraLoadingTextView$1;->this$0:Lcom/meizu/settings/widget/CameraLoadingTextView;

    invoke-static {v0}, Lcom/meizu/settings/widget/CameraLoadingTextView;->access$000(Lcom/meizu/settings/widget/CameraLoadingTextView;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",mTop:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/meizu/settings/widget/CameraLoadingTextView$1;->this$0:Lcom/meizu/settings/widget/CameraLoadingTextView;

    invoke-static {v0}, Lcom/meizu/settings/widget/CameraLoadingTextView;->access$100(Lcom/meizu/settings/widget/CameraLoadingTextView;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",mRight:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/meizu/settings/widget/CameraLoadingTextView$1;->this$0:Lcom/meizu/settings/widget/CameraLoadingTextView;

    invoke-static {v0}, Lcom/meizu/settings/widget/CameraLoadingTextView;->access$200(Lcom/meizu/settings/widget/CameraLoadingTextView;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",mBottom:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/meizu/settings/widget/CameraLoadingTextView$1;->this$0:Lcom/meizu/settings/widget/CameraLoadingTextView;

    invoke-static {v0}, Lcom/meizu/settings/widget/CameraLoadingTextView;->access$300(Lcom/meizu/settings/widget/CameraLoadingTextView;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraLoadingTextView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object p1, p0, Lcom/meizu/settings/widget/CameraLoadingTextView$1;->this$0:Lcom/meizu/settings/widget/CameraLoadingTextView;

    invoke-static {p1}, Lcom/meizu/settings/widget/CameraLoadingTextView;->access$000(Lcom/meizu/settings/widget/CameraLoadingTextView;)I

    move-result p1

    iget-object v0, p0, Lcom/meizu/settings/widget/CameraLoadingTextView$1;->this$0:Lcom/meizu/settings/widget/CameraLoadingTextView;

    invoke-static {v0}, Lcom/meizu/settings/widget/CameraLoadingTextView;->access$100(Lcom/meizu/settings/widget/CameraLoadingTextView;)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/settings/widget/CameraLoadingTextView$1;->this$0:Lcom/meizu/settings/widget/CameraLoadingTextView;

    invoke-static {v1}, Lcom/meizu/settings/widget/CameraLoadingTextView;->access$200(Lcom/meizu/settings/widget/CameraLoadingTextView;)I

    move-result v1

    iget-object p0, p0, Lcom/meizu/settings/widget/CameraLoadingTextView$1;->this$0:Lcom/meizu/settings/widget/CameraLoadingTextView;

    invoke-static {p0}, Lcom/meizu/settings/widget/CameraLoadingTextView;->access$300(Lcom/meizu/settings/widget/CameraLoadingTextView;)I

    move-result p0

    invoke-virtual {p2, p1, v0, v1, p0}, Landroid/graphics/Outline;->setOval(IIII)V

    return-void
.end method
