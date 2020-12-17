.class public Lcom/android/systemui/util/AutoMarqueeTextView;
.super Landroid/widget/TextView;
.source "AutoMarqueeTextView.java"


# instance fields
.field private mAggregatedVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/android/systemui/util/AutoMarqueeTextView;->mAggregatedVisible:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/android/systemui/util/AutoMarqueeTextView;->mAggregatedVisible:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/android/systemui/util/AutoMarqueeTextView;->mAggregatedVisible:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/android/systemui/util/AutoMarqueeTextView;->mAggregatedVisible:Z

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 2

    .line 58
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 59
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 64
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .line 53
    invoke-virtual {p0}, Landroid/widget/TextView;->isVisibleToUser()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/AutoMarqueeTextView;->onVisibilityAggregated(Z)V

    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .registers 3

    .line 70
    invoke-super {p0, p1}, Landroid/widget/TextView;->onVisibilityAggregated(Z)V

    .line 71
    iget-boolean v0, p0, Lcom/android/systemui/util/AutoMarqueeTextView;->mAggregatedVisible:Z

    if-ne p1, v0, :cond_8

    return-void

    .line 73
    :cond_8
    iput-boolean p1, p0, Lcom/android/systemui/util/AutoMarqueeTextView;->mAggregatedVisible:Z

    .line 74
    iget-boolean p1, p0, Lcom/android/systemui/util/AutoMarqueeTextView;->mAggregatedVisible:Z

    if-eqz p1, :cond_14

    .line 75
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_19

    .line 77
    :cond_14
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_19
    return-void
.end method
