.class Lcom/eftimoff/androipathview/PathView$1;
.super Ljava/lang/Object;
.source "PathView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eftimoff/androipathview/PathView;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eftimoff/androipathview/PathView;

.field final synthetic val$h:I

.field final synthetic val$w:I


# direct methods
.method constructor <init>(Lcom/eftimoff/androipathview/PathView;II)V
    .registers 4

    .line 325
    iput-object p1, p0, Lcom/eftimoff/androipathview/PathView$1;->this$0:Lcom/eftimoff/androipathview/PathView;

    iput p2, p0, Lcom/eftimoff/androipathview/PathView$1;->val$w:I

    iput p3, p0, Lcom/eftimoff/androipathview/PathView$1;->val$h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 329
    iget-object v0, p0, Lcom/eftimoff/androipathview/PathView$1;->this$0:Lcom/eftimoff/androipathview/PathView;

    invoke-static {v0}, Lcom/eftimoff/androipathview/PathView;->access$100(Lcom/eftimoff/androipathview/PathView;)Lcom/eftimoff/androipathview/SvgUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/eftimoff/androipathview/PathView$1;->this$0:Lcom/eftimoff/androipathview/PathView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/eftimoff/androipathview/PathView$1;->this$0:Lcom/eftimoff/androipathview/PathView;

    invoke-static {v2}, Lcom/eftimoff/androipathview/PathView;->access$000(Lcom/eftimoff/androipathview/PathView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/eftimoff/androipathview/SvgUtils;->load(Landroid/content/Context;I)V

    .line 331
    iget-object v0, p0, Lcom/eftimoff/androipathview/PathView$1;->this$0:Lcom/eftimoff/androipathview/PathView;

    invoke-static {v0}, Lcom/eftimoff/androipathview/PathView;->access$200(Lcom/eftimoff/androipathview/PathView;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 332
    :try_start_1c
    iget-object v1, p0, Lcom/eftimoff/androipathview/PathView$1;->this$0:Lcom/eftimoff/androipathview/PathView;

    iget v2, p0, Lcom/eftimoff/androipathview/PathView$1;->val$w:I

    iget-object v3, p0, Lcom/eftimoff/androipathview/PathView$1;->this$0:Lcom/eftimoff/androipathview/PathView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/eftimoff/androipathview/PathView$1;->this$0:Lcom/eftimoff/androipathview/PathView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/eftimoff/androipathview/PathView;->access$302(Lcom/eftimoff/androipathview/PathView;I)I

    .line 333
    iget-object v1, p0, Lcom/eftimoff/androipathview/PathView$1;->this$0:Lcom/eftimoff/androipathview/PathView;

    iget v2, p0, Lcom/eftimoff/androipathview/PathView$1;->val$h:I

    iget-object v3, p0, Lcom/eftimoff/androipathview/PathView$1;->this$0:Lcom/eftimoff/androipathview/PathView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/eftimoff/androipathview/PathView$1;->this$0:Lcom/eftimoff/androipathview/PathView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/eftimoff/androipathview/PathView;->access$402(Lcom/eftimoff/androipathview/PathView;I)I

    .line 334
    iget-object v1, p0, Lcom/eftimoff/androipathview/PathView$1;->this$0:Lcom/eftimoff/androipathview/PathView;

    iget-object v2, p0, Lcom/eftimoff/androipathview/PathView$1;->this$0:Lcom/eftimoff/androipathview/PathView;

    invoke-static {v2}, Lcom/eftimoff/androipathview/PathView;->access$100(Lcom/eftimoff/androipathview/PathView;)Lcom/eftimoff/androipathview/SvgUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/eftimoff/androipathview/PathView$1;->this$0:Lcom/eftimoff/androipathview/PathView;

    invoke-static {v3}, Lcom/eftimoff/androipathview/PathView;->access$300(Lcom/eftimoff/androipathview/PathView;)I

    move-result v3

    iget-object v4, p0, Lcom/eftimoff/androipathview/PathView$1;->this$0:Lcom/eftimoff/androipathview/PathView;

    invoke-static {v4}, Lcom/eftimoff/androipathview/PathView;->access$400(Lcom/eftimoff/androipathview/PathView;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/eftimoff/androipathview/SvgUtils;->getPathsForViewport(II)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/eftimoff/androipathview/PathView;->access$502(Lcom/eftimoff/androipathview/PathView;Ljava/util/List;)Ljava/util/List;

    .line 335
    iget-object p0, p0, Lcom/eftimoff/androipathview/PathView$1;->this$0:Lcom/eftimoff/androipathview/PathView;

    invoke-static {p0}, Lcom/eftimoff/androipathview/PathView;->access$600(Lcom/eftimoff/androipathview/PathView;)V

    .line 336
    monitor-exit v0

    return-void

    :catchall_68
    move-exception p0

    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_1c .. :try_end_6a} :catchall_68

    throw p0
.end method
