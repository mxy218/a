.class Lcom/meizu/common/widget/ScrollTextView$1;
.super Ljava/lang/Object;
.source "ScrollTextView.java"

# interfaces
.implements Lcom/meizu/common/widget/ScrollTextView$ScrollingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/ScrollTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/ScrollTextView;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/ScrollTextView;)V
    .registers 2

    .line 405
    iput-object p1, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .registers 3

    .line 425
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {v0}, Lcom/meizu/common/widget/ScrollTextView;->access$300(Lcom/meizu/common/widget/ScrollTextView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 426
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/ScrollTextView;->notifyScrollingListenersAboutEnd()V

    .line 427
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {v0, v1}, Lcom/meizu/common/widget/ScrollTextView;->access$302(Lcom/meizu/common/widget/ScrollTextView;Z)Z

    .line 430
    :cond_13
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {v0, v1}, Lcom/meizu/common/widget/ScrollTextView;->access$502(Lcom/meizu/common/widget/ScrollTextView;I)I

    .line 431
    iget-object p0, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onJustify()V
    .registers 4

    .line 435
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    iget-boolean v1, v0, Lcom/meizu/common/widget/ScrollTextView;->isCyclic:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2c

    invoke-virtual {v0}, Lcom/meizu/common/widget/ScrollTextView;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {v1}, Lcom/meizu/common/widget/ScrollTextView;->access$700(Lcom/meizu/common/widget/ScrollTextView;)Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getValidStart()I

    move-result v1

    if-ge v0, v1, :cond_2c

    .line 436
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {v0}, Lcom/meizu/common/widget/ScrollTextView;->access$700(Lcom/meizu/common/widget/ScrollTextView;)Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getValidStart()I

    move-result v1

    iget-object p0, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getCurrentItem()I

    move-result p0

    sub-int/2addr v1, p0

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->scroll(II)V

    goto :goto_9a

    .line 437
    :cond_2c
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    iget-boolean v1, v0, Lcom/meizu/common/widget/ScrollTextView;->isCyclic:Z

    if-nez v1, :cond_57

    invoke-virtual {v0}, Lcom/meizu/common/widget/ScrollTextView;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {v1}, Lcom/meizu/common/widget/ScrollTextView;->access$700(Lcom/meizu/common/widget/ScrollTextView;)Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getValidEnd()I

    move-result v1

    if-le v0, v1, :cond_57

    .line 438
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {v0}, Lcom/meizu/common/widget/ScrollTextView;->access$700(Lcom/meizu/common/widget/ScrollTextView;)Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewAdapter;->getValidEnd()I

    move-result v1

    iget-object p0, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->getCurrentItem()I

    move-result p0

    sub-int/2addr v1, p0

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->scroll(II)V

    goto :goto_9a

    .line 439
    :cond_57
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {v0}, Lcom/meizu/common/widget/ScrollTextView;->access$500(Lcom/meizu/common/widget/ScrollTextView;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_9a

    .line 442
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {v0}, Lcom/meizu/common/widget/ScrollTextView;->access$500(Lcom/meizu/common/widget/ScrollTextView;)I

    move-result v0

    if-lez v0, :cond_7b

    .line 443
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {v0}, Lcom/meizu/common/widget/ScrollTextView;->access$800(Lcom/meizu/common/widget/ScrollTextView;)I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {v1}, Lcom/meizu/common/widget/ScrollTextView;->access$500(Lcom/meizu/common/widget/ScrollTextView;)I

    move-result v1

    :goto_79
    add-int/2addr v0, v1

    goto :goto_91

    .line 444
    :cond_7b
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {v0}, Lcom/meizu/common/widget/ScrollTextView;->access$500(Lcom/meizu/common/widget/ScrollTextView;)I

    move-result v0

    if-gez v0, :cond_90

    .line 445
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {v0}, Lcom/meizu/common/widget/ScrollTextView;->access$800(Lcom/meizu/common/widget/ScrollTextView;)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {v1}, Lcom/meizu/common/widget/ScrollTextView;->access$500(Lcom/meizu/common/widget/ScrollTextView;)I

    move-result v1

    goto :goto_79

    :cond_90
    move v0, v2

    .line 448
    :goto_91
    iget-object p0, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {p0}, Lcom/meizu/common/widget/ScrollTextView;->access$600(Lcom/meizu/common/widget/ScrollTextView;)Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    move-result-object p0

    invoke-virtual {p0, v0, v2}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->scroll(II)V

    :cond_9a
    :goto_9a
    return-void
.end method

.method public onScroll(I)V
    .registers 3

    .line 412
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {v0, p1}, Lcom/meizu/common/widget/ScrollTextView;->access$400(Lcom/meizu/common/widget/ScrollTextView;I)V

    .line 414
    iget-object p1, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    .line 415
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {v0}, Lcom/meizu/common/widget/ScrollTextView;->access$500(Lcom/meizu/common/widget/ScrollTextView;)I

    move-result v0

    if-le v0, p1, :cond_22

    .line 416
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {v0, p1}, Lcom/meizu/common/widget/ScrollTextView;->access$502(Lcom/meizu/common/widget/ScrollTextView;I)I

    .line 417
    iget-object p0, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {p0}, Lcom/meizu/common/widget/ScrollTextView;->access$600(Lcom/meizu/common/widget/ScrollTextView;)Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->stopScrolling()V

    goto :goto_39

    .line 418
    :cond_22
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {v0}, Lcom/meizu/common/widget/ScrollTextView;->access$500(Lcom/meizu/common/widget/ScrollTextView;)I

    move-result v0

    neg-int p1, p1

    if-ge v0, p1, :cond_39

    .line 419
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {v0, p1}, Lcom/meizu/common/widget/ScrollTextView;->access$502(Lcom/meizu/common/widget/ScrollTextView;I)I

    .line 420
    iget-object p0, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {p0}, Lcom/meizu/common/widget/ScrollTextView;->access$600(Lcom/meizu/common/widget/ScrollTextView;)Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->stopScrolling()V

    :cond_39
    :goto_39
    return-void
.end method

.method public onStarted()V
    .registers 3

    .line 407
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/meizu/common/widget/ScrollTextView;->access$302(Lcom/meizu/common/widget/ScrollTextView;Z)Z

    .line 408
    iget-object p0, p0, Lcom/meizu/common/widget/ScrollTextView$1;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {p0}, Lcom/meizu/common/widget/ScrollTextView;->notifyScrollingListenersAboutStart()V

    return-void
.end method
