.class Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;
.super Landroid/text/style/TypefaceSpan;
.source "FoldableTextView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParcelCreator"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/FoldableTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoreClickSpan"
.end annotation


# instance fields
.field private final mText:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/meizu/common/widget/FoldableTextView;


# direct methods
.method public constructor <init>(Lcom/meizu/common/widget/FoldableTextView;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .registers 4

    .line 560
    iput-object p1, p0, Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    .line 561
    invoke-direct {p0, p2}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    .line 562
    iput-object p3, p0, Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;->mText:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 577
    iget-object p1, p0, Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-static {p1}, Lcom/meizu/common/widget/FoldableTextView;->access$100(Lcom/meizu/common/widget/FoldableTextView;)Z

    move-result p1

    if-nez p1, :cond_3e

    iget-object p1, p0, Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-static {p1}, Lcom/meizu/common/widget/FoldableTextView;->access$200(Lcom/meizu/common/widget/FoldableTextView;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_3e

    .line 579
    :cond_11
    iget-object p1, p0, Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-static {p1}, Lcom/meizu/common/widget/FoldableTextView;->access$300(Lcom/meizu/common/widget/FoldableTextView;)Lcom/meizu/common/widget/FoldableTextView$FoldingListener;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_29

    iget-object p1, p0, Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-static {p1}, Lcom/meizu/common/widget/FoldableTextView;->access$300(Lcom/meizu/common/widget/FoldableTextView;)Lcom/meizu/common/widget/FoldableTextView$FoldingListener;

    move-result-object p1

    iget-object v1, p0, Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-interface {p1, v1, v0}, Lcom/meizu/common/widget/FoldableTextView$FoldingListener;->onFolding(Lcom/meizu/common/widget/FoldableTextView;Z)Z

    move-result p1

    if-nez p1, :cond_29

    return-void

    .line 582
    :cond_29
    iget-object p1, p0, Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-static {p1, v0}, Lcom/meizu/common/widget/FoldableTextView;->access$402(Lcom/meizu/common/widget/FoldableTextView;Z)Z

    .line 583
    iget-object p1, p0, Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-static {p1}, Lcom/meizu/common/widget/FoldableTextView;->access$500(Lcom/meizu/common/widget/FoldableTextView;)Ljava/lang/CharSequence;

    move-result-object v0

    sget-object v1, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {p1, v0, v1}, Lcom/meizu/common/widget/FoldableTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 584
    iget-object p0, p0, Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-static {p0}, Lcom/meizu/common/widget/FoldableTextView;->access$600(Lcom/meizu/common/widget/FoldableTextView;)V

    :cond_3e
    :goto_3e
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 3

    .line 568
    invoke-super {p0, p1}, Landroid/text/style/TypefaceSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 569
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-static {v0}, Lcom/meizu/common/widget/FoldableTextView;->access$000(Lcom/meizu/common/widget/FoldableTextView;)I

    move-result v0

    if-nez v0, :cond_11

    .line 570
    iget p0, p1, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_1a

    .line 572
    :cond_11
    iget-object p0, p0, Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-static {p0}, Lcom/meizu/common/widget/FoldableTextView;->access$000(Lcom/meizu/common/widget/FoldableTextView;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setColor(I)V

    :goto_1a
    return-void
.end method
