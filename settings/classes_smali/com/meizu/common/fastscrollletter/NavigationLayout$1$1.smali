.class Lcom/meizu/common/fastscrollletter/NavigationLayout$1$1;
.super Ljava/lang/Object;
.source "NavigationLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->hideOverlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/common/fastscrollletter/NavigationLayout$1;


# direct methods
.method constructor <init>(Lcom/meizu/common/fastscrollletter/NavigationLayout$1;)V
    .registers 2

    .line 223
    iput-object p1, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1$1;->this$1:Lcom/meizu/common/fastscrollletter/NavigationLayout$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 226
    iget-object v0, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1$1;->this$1:Lcom/meizu/common/fastscrollletter/NavigationLayout$1;

    iget-object v0, v0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {v0}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$600(Lcom/meizu/common/fastscrollletter/NavigationLayout;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    iget-object p0, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1$1;->this$1:Lcom/meizu/common/fastscrollletter/NavigationLayout$1;

    iget-object p0, p0, Lcom/meizu/common/fastscrollletter/NavigationLayout$1;->this$0:Lcom/meizu/common/fastscrollletter/NavigationLayout;

    invoke-static {p0}, Lcom/meizu/common/fastscrollletter/NavigationLayout;->access$100(Lcom/meizu/common/fastscrollletter/NavigationLayout;)Lcom/meizu/common/fastscrollletter/NavigationLayout$NavigationLayoutCallBack;

    move-result-object p0

    invoke-interface {p0}, Lcom/meizu/common/fastscrollletter/NavigationLayout$NavigationLayoutCallBack;->showVerticalScrollBar()V

    return-void
.end method
