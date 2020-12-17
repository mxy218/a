.class Lcom/meizu/common/widget/FoldableTextView$1;
.super Ljava/lang/Object;
.source "FoldableTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/FoldableTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/FoldableTextView;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/FoldableTextView;)V
    .registers 2

    .line 196
    iput-object p1, p0, Lcom/meizu/common/widget/FoldableTextView$1;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 198
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView$1;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView$1;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView$1;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 199
    iget-object p0, p0, Lcom/meizu/common/widget/FoldableTextView$1;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-virtual {p0}, Lcom/meizu/common/widget/FoldableTextView;->performLongClick()Z

    :cond_1d
    return-void
.end method
