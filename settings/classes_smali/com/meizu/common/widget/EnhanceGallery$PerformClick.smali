.class Lcom/meizu/common/widget/EnhanceGallery$PerformClick;
.super Lcom/meizu/common/widget/EnhanceGallery$WindowRunnnable;
.source "EnhanceGallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/EnhanceGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformClick"
.end annotation


# instance fields
.field mClickMotionPosition:I

.field final synthetic this$0:Lcom/meizu/common/widget/EnhanceGallery;


# direct methods
.method private constructor <init>(Lcom/meizu/common/widget/EnhanceGallery;)V
    .registers 3

    .line 2712
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery$PerformClick;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/EnhanceGallery$WindowRunnnable;-><init>(Lcom/meizu/common/widget/EnhanceGallery;Lcom/meizu/common/widget/EnhanceGallery$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/common/widget/EnhanceGallery;Lcom/meizu/common/widget/EnhanceGallery$1;)V
    .registers 3

    .line 2712
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/EnhanceGallery$PerformClick;-><init>(Lcom/meizu/common/widget/EnhanceGallery;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 2717
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$PerformClick;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    iget-boolean v1, v0, Lcom/meizu/common/widget/AdapterView;->mDataChanged:Z

    if-eqz v1, :cond_7

    return-void

    .line 2719
    :cond_7
    invoke-virtual {v0}, Lcom/meizu/common/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    .line 2720
    iget v1, p0, Lcom/meizu/common/widget/EnhanceGallery$PerformClick;->mClickMotionPosition:I

    if-eqz v0, :cond_39

    .line 2721
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery$PerformClick;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    iget v2, v2, Lcom/meizu/common/widget/AdapterView;->mItemCount:I

    if-lez v2, :cond_39

    const/4 v2, -0x1

    if-eq v1, v2, :cond_39

    .line 2723
    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_39

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery$WindowRunnnable;->sameWindow()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 2724
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery$PerformClick;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    iget v3, v2, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    sub-int v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 2728
    iget-object p0, p0, Lcom/meizu/common/widget/EnhanceGallery$PerformClick;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-interface {v0, v1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-virtual {p0, v2, v1, v3, v4}, Lcom/meizu/common/widget/EnhanceGallery;->performItemClicks(Landroid/view/View;IJ)Z

    :cond_39
    return-void
.end method
