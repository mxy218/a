.class Lcom/meizu/common/widget/EnhanceGallery$2;
.super Ljava/lang/Object;
.source "EnhanceGallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/EnhanceGallery;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/EnhanceGallery;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/EnhanceGallery;)V
    .registers 2

    .line 834
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery$2;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 839
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$2;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 841
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery$2;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v1}, Lcom/meizu/common/widget/EnhanceGallery;->access$100(Lcom/meizu/common/widget/EnhanceGallery;)Z

    move-result v1

    if-eqz v1, :cond_2d

    if-eqz v0, :cond_55

    .line 842
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery$2;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    if-le v1, v2, :cond_55

    .line 843
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery$2;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_53

    :cond_2d
    if-eqz v0, :cond_55

    .line 846
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery$2;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceGallery$2;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_55

    .line 847
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery$2;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery$2;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    :goto_53
    sub-int/2addr v1, v0

    goto :goto_56

    :cond_55
    const/4 v1, 0x0

    .line 851
    :goto_56
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$2;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/meizu/common/widget/EnhanceGallery;->access$202(Lcom/meizu/common/widget/EnhanceGallery;I)I

    .line 853
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$2;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v0}, Lcom/meizu/common/widget/EnhanceGallery;->access$300(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6c

    if-eqz v1, :cond_6c

    .line 854
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$2;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/EnhanceGallery;->reportScrollStateChange(I)V

    .line 857
    :cond_6c
    iget-object p0, p0, Lcom/meizu/common/widget/EnhanceGallery$2;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {p0}, Lcom/meizu/common/widget/EnhanceGallery;->access$400(Lcom/meizu/common/widget/EnhanceGallery;)Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/EnhanceGallery$FlingRunnable;->startUsingDistance(I)V

    return-void
.end method
