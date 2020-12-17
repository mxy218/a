.class public Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;
.super Landroid/text/method/LinkMovementMethod;
.source "FoldableTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/FoldableTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalLinkMovementMethod"
.end annotation


# static fields
.field static sInstance:Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;


# instance fields
.field public isLinkClick:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 730
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    const/4 v0, 0x0

    .line 732
    iput-boolean v0, p0, Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;->isLinkClick:Z

    return-void
.end method

.method public static getInstance()Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;
    .registers 1

    .line 735
    sget-object v0, Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;->sInstance:Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;

    if-nez v0, :cond_b

    .line 736
    new-instance v0, Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;

    invoke-direct {v0}, Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;-><init>()V

    sput-object v0, Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;->sInstance:Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;

    .line 737
    :cond_b
    sget-object v0, Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;->sInstance:Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;

    return-object v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .registers 10

    .line 742
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    .line 743
    iput-boolean v1, p0, Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;->isLinkClick:Z

    const/4 v2, 0x1

    if-eq v0, v2, :cond_12

    if-nez v0, :cond_d

    goto :goto_12

    .line 792
    :cond_d
    invoke-static {p1, p2, p3}, Landroid/text/method/Touch;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 745
    :cond_12
    :goto_12
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 746
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 748
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v5

    sub-int/2addr v3, v5

    .line 749
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    .line 751
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v5

    add-int/2addr v3, v5

    .line 752
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v5

    add-int/2addr v4, v5

    .line 754
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    if-nez v5, :cond_3b

    .line 756
    invoke-static {p1, p2, p3}, Landroid/text/method/Touch;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 757
    :cond_3b
    invoke-virtual {v5, v4}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v4

    int-to-float v3, v3

    .line 758
    invoke-virtual {v5, v4, v3}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v3

    .line 760
    const-class v4, Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;

    invoke-interface {p2, v3, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;

    .line 761
    const-class v5, Landroid/text/style/ClickableSpan;

    invoke-interface {p2, v3, v3, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/ClickableSpan;

    .line 763
    array-length v5, v4

    if-eqz v5, :cond_7a

    if-ne v0, v2, :cond_5f

    .line 765
    aget-object p0, v4, v1

    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/FoldableTextView$MoreClickSpan;->onClick(Landroid/view/View;)V

    goto :goto_70

    :cond_5f
    if-nez v0, :cond_70

    .line 767
    aget-object p0, v4, v1

    invoke-interface {p2, p0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result p0

    aget-object p3, v4, v1

    invoke-interface {p2, p3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result p3

    invoke-static {p2, p0, p3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 770
    :cond_70
    :goto_70
    instance-of p0, p1, Lcom/meizu/common/widget/FoldableTextView;

    if-eqz p0, :cond_79

    .line 771
    check-cast p1, Lcom/meizu/common/widget/FoldableTextView;

    invoke-static {p1, v2}, Lcom/meizu/common/widget/FoldableTextView;->access$1702(Lcom/meizu/common/widget/FoldableTextView;Z)Z

    :cond_79
    return v2

    .line 774
    :cond_7a
    array-length v4, v3

    if-eqz v4, :cond_a2

    if-ne v0, v2, :cond_87

    .line 776
    aget-object p2, v3, v1

    invoke-virtual {p2, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 777
    iput-boolean v2, p0, Lcom/meizu/common/widget/FoldableTextView$LocalLinkMovementMethod;->isLinkClick:Z

    goto :goto_98

    :cond_87
    if-nez v0, :cond_98

    .line 779
    aget-object p0, v3, v1

    invoke-interface {p2, p0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result p0

    aget-object p3, v3, v1

    invoke-interface {p2, p3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result p3

    invoke-static {p2, p0, p3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 782
    :cond_98
    :goto_98
    instance-of p0, p1, Lcom/meizu/common/widget/FoldableTextView;

    if-eqz p0, :cond_a1

    .line 783
    check-cast p1, Lcom/meizu/common/widget/FoldableTextView;

    invoke-static {p1, v2}, Lcom/meizu/common/widget/FoldableTextView;->access$1702(Lcom/meizu/common/widget/FoldableTextView;Z)Z

    :cond_a1
    return v2

    .line 787
    :cond_a2
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 788
    invoke-static {p1, p2, p3}, Landroid/text/method/Touch;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    return v1
.end method
