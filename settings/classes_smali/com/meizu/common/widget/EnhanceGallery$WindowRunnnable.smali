.class Lcom/meizu/common/widget/EnhanceGallery$WindowRunnnable;
.super Ljava/lang/Object;
.source "EnhanceGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/EnhanceGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowRunnnable"
.end annotation


# instance fields
.field private mOriginalAttachCount:I

.field final synthetic this$0:Lcom/meizu/common/widget/EnhanceGallery;


# direct methods
.method private constructor <init>(Lcom/meizu/common/widget/EnhanceGallery;)V
    .registers 2

    .line 2700
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery$WindowRunnnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/common/widget/EnhanceGallery;Lcom/meizu/common/widget/EnhanceGallery$1;)V
    .registers 3

    .line 2700
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/EnhanceGallery$WindowRunnnable;-><init>(Lcom/meizu/common/widget/EnhanceGallery;)V

    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .registers 2

    .line 2704
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$WindowRunnnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v0}, Lcom/meizu/common/widget/EnhanceGallery;->access$1900(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/EnhanceGallery$WindowRunnnable;->mOriginalAttachCount:I

    return-void
.end method

.method public sameWindow()Z
    .registers 2

    .line 2708
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$WindowRunnnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$WindowRunnnable;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v0}, Lcom/meizu/common/widget/EnhanceGallery;->access$2000(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result v0

    iget p0, p0, Lcom/meizu/common/widget/EnhanceGallery$WindowRunnnable;->mOriginalAttachCount:I

    if-ne v0, p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method
