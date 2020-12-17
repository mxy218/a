.class Lcom/meizu/common/widget/EmptyView$1$1;
.super Ljava/lang/Object;
.source "EmptyView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/EmptyView$1;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/common/widget/EmptyView$1;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/EmptyView$1;)V
    .registers 2

    .line 436
    iput-object p1, p0, Lcom/meizu/common/widget/EmptyView$1$1;->this$1:Lcom/meizu/common/widget/EmptyView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 439
    iget-object p0, p0, Lcom/meizu/common/widget/EmptyView$1$1;->this$1:Lcom/meizu/common/widget/EmptyView$1;

    iget-object p0, p0, Lcom/meizu/common/widget/EmptyView$1;->this$0:Lcom/meizu/common/widget/EmptyView;

    invoke-static {p0}, Lcom/meizu/common/widget/EmptyView;->access$000(Lcom/meizu/common/widget/EmptyView;)Landroid/widget/TextView;

    move-result-object p0

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method
