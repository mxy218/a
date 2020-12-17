.class Lcom/meizu/common/widget/AdapterView$SelectionNotifier;
.super Ljava/lang/Object;
.source "AdapterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/AdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionNotifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/AdapterView;


# direct methods
.method private constructor <init>(Lcom/meizu/common/widget/AdapterView;)V
    .registers 2

    .line 854
    iput-object p1, p0, Lcom/meizu/common/widget/AdapterView$SelectionNotifier;->this$0:Lcom/meizu/common/widget/AdapterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/common/widget/AdapterView;Lcom/meizu/common/widget/AdapterView$1;)V
    .registers 3

    .line 854
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/AdapterView$SelectionNotifier;-><init>(Lcom/meizu/common/widget/AdapterView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 856
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView$SelectionNotifier;->this$0:Lcom/meizu/common/widget/AdapterView;

    iget-boolean v1, v0, Lcom/meizu/common/widget/AdapterView;->mDataChanged:Z

    if-eqz v1, :cond_12

    .line 860
    invoke-virtual {v0}, Lcom/meizu/common/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 861
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView$SelectionNotifier;->this$0:Lcom/meizu/common/widget/AdapterView;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    goto :goto_1a

    .line 864
    :cond_12
    invoke-static {v0}, Lcom/meizu/common/widget/AdapterView;->access$200(Lcom/meizu/common/widget/AdapterView;)V

    .line 865
    iget-object p0, p0, Lcom/meizu/common/widget/AdapterView$SelectionNotifier;->this$0:Lcom/meizu/common/widget/AdapterView;

    invoke-static {p0}, Lcom/meizu/common/widget/AdapterView;->access$300(Lcom/meizu/common/widget/AdapterView;)V

    :cond_1a
    :goto_1a
    return-void
.end method
