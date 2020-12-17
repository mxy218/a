.class Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ScrollTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)V
    .registers 2

    .line 1615
    iput-object p1, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 14

    .line 1623
    iget-object p1, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->access$1002(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;I)I

    .line 1624
    iget-object p1, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    iget-object p1, p1, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {p1}, Lcom/meizu/common/widget/ScrollTextView;->access$1100(Lcom/meizu/common/widget/ScrollTextView;)I

    move-result v8

    .line 1625
    iget-object p1, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    iget-object p1, p1, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {p1}, Lcom/meizu/common/widget/ScrollTextView;->access$1200(Lcom/meizu/common/widget/ScrollTextView;)I

    move-result v7

    .line 1627
    iget-object p1, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    invoke-static {p1}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->access$1300(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)Landroid/widget/Scroller;

    move-result-object v0

    iget-object p1, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    invoke-static {p1}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->access$1000(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)I

    move-result v2

    neg-float p1, p4

    float-to-int v4, p1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1628
    iget-object p1, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    invoke-static {p1}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->access$1300(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)Landroid/widget/Scroller;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result p1

    .line 1629
    iget-object p3, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    iget-object p3, p3, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {p3}, Lcom/meizu/common/widget/ScrollTextView;->access$800(Lcom/meizu/common/widget/ScrollTextView;)I

    move-result p3

    rem-int p3, p1, p3

    if-eqz p3, :cond_b8

    if-lez p3, :cond_4e

    .line 1633
    iget-object p4, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    iget-object p4, p4, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {p4}, Lcom/meizu/common/widget/ScrollTextView;->access$800(Lcom/meizu/common/widget/ScrollTextView;)I

    move-result p4

    sub-int/2addr p4, p3

    add-int/2addr p1, p4

    goto :goto_58

    .line 1635
    :cond_4e
    iget-object p4, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    iget-object p4, p4, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {p4}, Lcom/meizu/common/widget/ScrollTextView;->access$800(Lcom/meizu/common/widget/ScrollTextView;)I

    move-result p4

    add-int/2addr p4, p3

    sub-int/2addr p1, p4

    .line 1638
    :goto_58
    iget-object p3, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    iget-object p3, p3, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {p3}, Lcom/meizu/common/widget/ScrollTextView;->access$500(Lcom/meizu/common/widget/ScrollTextView;)I

    move-result p3

    if-lez p3, :cond_75

    .line 1640
    iget-object p3, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    iget-object p3, p3, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {p3}, Lcom/meizu/common/widget/ScrollTextView;->access$500(Lcom/meizu/common/widget/ScrollTextView;)I

    move-result p3

    add-int/2addr p1, p3

    iget-object p3, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    iget-object p3, p3, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {p3}, Lcom/meizu/common/widget/ScrollTextView;->access$800(Lcom/meizu/common/widget/ScrollTextView;)I

    move-result p3

    sub-int/2addr p1, p3

    goto :goto_87

    .line 1643
    :cond_75
    iget-object p3, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    iget-object p3, p3, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {p3}, Lcom/meizu/common/widget/ScrollTextView;->access$800(Lcom/meizu/common/widget/ScrollTextView;)I

    move-result p3

    add-int/2addr p1, p3

    iget-object p3, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    iget-object p3, p3, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {p3}, Lcom/meizu/common/widget/ScrollTextView;->access$500(Lcom/meizu/common/widget/ScrollTextView;)I

    move-result p3

    add-int/2addr p1, p3

    .line 1646
    :goto_87
    iget-object p3, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    iget-object p3, p3, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {p3}, Lcom/meizu/common/widget/ScrollTextView;->access$800(Lcom/meizu/common/widget/ScrollTextView;)I

    move-result p3

    if-le p1, p3, :cond_9b

    .line 1648
    iget-object p3, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    iget-object p3, p3, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {p3}, Lcom/meizu/common/widget/ScrollTextView;->access$800(Lcom/meizu/common/widget/ScrollTextView;)I

    move-result p3

    sub-int/2addr p1, p3

    goto :goto_af

    .line 1649
    :cond_9b
    iget-object p3, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    iget-object p3, p3, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {p3}, Lcom/meizu/common/widget/ScrollTextView;->access$800(Lcom/meizu/common/widget/ScrollTextView;)I

    move-result p3

    neg-int p3, p3

    if-ge p1, p3, :cond_af

    .line 1651
    iget-object p3, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    iget-object p3, p3, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-static {p3}, Lcom/meizu/common/widget/ScrollTextView;->access$800(Lcom/meizu/common/widget/ScrollTextView;)I

    move-result p3

    add-int/2addr p1, p3

    .line 1654
    :cond_af
    :goto_af
    iget-object p3, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    invoke-static {p3}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->access$1300(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)Landroid/widget/Scroller;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/widget/Scroller;->setFinalY(I)V

    .line 1662
    :cond_b8
    iget-object p0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    invoke-static {p0, p2}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->access$1400(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;I)V

    const/4 p0, 0x1

    return p0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    const/4 p0, 0x1

    return p0
.end method
