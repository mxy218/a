.class Lcom/meizu/common/widget/FoldableTextView$2;
.super Ljava/lang/Object;
.source "FoldableTextView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/FoldableTextView;->startAnimator()V
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

    .line 654
    iput-object p1, p0, Lcom/meizu/common/widget/FoldableTextView$2;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 4

    .line 674
    iget-object p1, p0, Lcom/meizu/common/widget/FoldableTextView$2;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-static {p1}, Lcom/meizu/common/widget/FoldableTextView;->access$400(Lcom/meizu/common/widget/FoldableTextView;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 675
    iget-object p1, p0, Lcom/meizu/common/widget/FoldableTextView$2;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-static {p1}, Lcom/meizu/common/widget/FoldableTextView;->access$800(Lcom/meizu/common/widget/FoldableTextView;)Ljava/lang/CharSequence;

    move-result-object v0

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p1, v0, v1}, Lcom/meizu/common/widget/FoldableTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 676
    iget-object p1, p0, Lcom/meizu/common/widget/FoldableTextView$2;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/FoldableTextView$2;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-static {v1}, Lcom/meizu/common/widget/FoldableTextView;->access$900(Lcom/meizu/common/widget/FoldableTextView;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/meizu/common/widget/FoldableTextView;->access$1400(Lcom/meizu/common/widget/FoldableTextView;II)V

    goto :goto_32

    .line 678
    :cond_23
    iget-object p1, p0, Lcom/meizu/common/widget/FoldableTextView$2;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/FoldableTextView$2;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-static {v1}, Lcom/meizu/common/widget/FoldableTextView;->access$1100(Lcom/meizu/common/widget/FoldableTextView;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/meizu/common/widget/FoldableTextView;->access$1500(Lcom/meizu/common/widget/FoldableTextView;II)V

    .line 680
    :goto_32
    iget-object p0, p0, Lcom/meizu/common/widget/FoldableTextView$2;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/meizu/common/widget/FoldableTextView;->access$102(Lcom/meizu/common/widget/FoldableTextView;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 661
    iget-object p1, p0, Lcom/meizu/common/widget/FoldableTextView$2;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-static {p1}, Lcom/meizu/common/widget/FoldableTextView;->access$400(Lcom/meizu/common/widget/FoldableTextView;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 662
    iget-object p1, p0, Lcom/meizu/common/widget/FoldableTextView$2;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-static {p1}, Lcom/meizu/common/widget/FoldableTextView;->access$800(Lcom/meizu/common/widget/FoldableTextView;)Ljava/lang/CharSequence;

    move-result-object v0

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p1, v0, v1}, Lcom/meizu/common/widget/FoldableTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 663
    iget-object p1, p0, Lcom/meizu/common/widget/FoldableTextView$2;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/FoldableTextView$2;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-static {v1}, Lcom/meizu/common/widget/FoldableTextView;->access$900(Lcom/meizu/common/widget/FoldableTextView;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/meizu/common/widget/FoldableTextView;->access$1000(Lcom/meizu/common/widget/FoldableTextView;II)V

    goto :goto_32

    .line 665
    :cond_23
    iget-object p1, p0, Lcom/meizu/common/widget/FoldableTextView$2;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/FoldableTextView$2;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-static {v1}, Lcom/meizu/common/widget/FoldableTextView;->access$1100(Lcom/meizu/common/widget/FoldableTextView;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/meizu/common/widget/FoldableTextView;->access$1200(Lcom/meizu/common/widget/FoldableTextView;II)V

    .line 667
    :goto_32
    iget-object p1, p0, Lcom/meizu/common/widget/FoldableTextView$2;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/meizu/common/widget/FoldableTextView;->access$102(Lcom/meizu/common/widget/FoldableTextView;Z)Z

    .line 669
    iget-object p0, p0, Lcom/meizu/common/widget/FoldableTextView$2;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-static {p0}, Lcom/meizu/common/widget/FoldableTextView;->access$1300(Lcom/meizu/common/widget/FoldableTextView;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/meizu/common/widget/FoldableTextView;->access$1302(Lcom/meizu/common/widget/FoldableTextView;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method
