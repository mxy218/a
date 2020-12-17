.class public Lcom/android/systemui/statusbar/notification/TextViewTransformState;
.super Lcom/android/systemui/statusbar/notification/TransformState;
.source "TextViewTransformState.java"


# static fields
.field private static sInstancePool:Landroid/util/Pools$SimplePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SimplePool<",
            "Lcom/android/systemui/statusbar/notification/TextViewTransformState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 31
    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/TransformState;-><init>()V

    return-void
.end method

.method private getEllipsisCount()I
    .registers 3

    .line 123
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_14

    .line 125
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-lez v1, :cond_14

    .line 128
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result p0

    return p0

    :cond_14
    return v0
.end method

.method private hasSameSpans(Lcom/android/systemui/statusbar/notification/TextViewTransformState;)Z
    .registers 11

    .line 60
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    instance-of v0, p0, Landroid/text/Spanned;

    .line 61
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    instance-of v1, v1, Landroid/text/Spanned;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    return v2

    :cond_c
    const/4 v1, 0x1

    if-nez v0, :cond_10

    return v1

    .line 68
    :cond_10
    check-cast p0, Landroid/text/Spanned;

    .line 69
    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v0

    const-class v3, Ljava/lang/Object;

    invoke-interface {p0, v2, v0, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 70
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    check-cast p1, Landroid/text/Spanned;

    .line 71
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v3

    const-class v4, Ljava/lang/Object;

    invoke-interface {p1, v2, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 72
    array-length v4, v0

    array-length v5, v3

    if-eq v4, v5, :cond_2f

    return v2

    :cond_2f
    move v4, v2

    .line 75
    :goto_30
    array-length v5, v0

    if-ge v4, v5, :cond_5f

    .line 76
    aget-object v5, v0, v4

    .line 77
    aget-object v6, v3, v4

    .line 78
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_46

    return v2

    .line 81
    :cond_46
    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {p1, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    if-ne v7, v8, :cond_5e

    .line 82
    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {p1, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    if-eq v5, v6, :cond_5b

    goto :goto_5e

    :cond_5b
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    :cond_5e
    :goto_5e
    return v2

    :cond_5f
    return v1
.end method

.method public static obtain()Lcom/android/systemui/statusbar/notification/TextViewTransformState;
    .registers 1

    .line 135
    sget-object v0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v0}, Landroid/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;

    if-eqz v0, :cond_b

    return-object v0

    .line 139
    :cond_b
    new-instance v0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/TextViewTransformState;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected getViewHeight()I
    .registers 1

    .line 115
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result p0

    return p0
.end method

.method protected getViewWidth()I
    .registers 2

    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_f

    const/4 p0, 0x0

    .line 108
    invoke-virtual {v0, p0}, Landroid/text/Layout;->getLineWidth(I)F

    move-result p0

    float-to-int p0, p0

    return p0

    .line 110
    :cond_f
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->getViewWidth()I

    move-result p0

    return p0
.end method

.method public initFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)V
    .registers 3

    .line 37
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/TransformState;->initFrom(Landroid/view/View;Lcom/android/systemui/statusbar/notification/TransformState$TransformInfo;)V

    .line 38
    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    return-void
.end method

.method public recycle()V
    .registers 2

    .line 144
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->recycle()V

    .line 145
    sget-object v0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->sInstancePool:Landroid/util/Pools$SimplePool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method protected reset()V
    .registers 2

    .line 150
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/TransformState;->reset()V

    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    return-void
.end method

.method protected sameAs(Lcom/android/systemui/statusbar/notification/TransformState;)Z
    .registers 6

    .line 43
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/TransformState;->sameAs(Lcom/android/systemui/statusbar/notification/TransformState;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 46
    :cond_8
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/TextViewTransformState;

    const/4 v2, 0x0

    if-eqz v0, :cond_42

    .line 47
    check-cast p1, Lcom/android/systemui/statusbar/notification/TextViewTransformState;

    .line 48
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 49
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->getEllipsisCount()I

    move-result v0

    .line 50
    invoke-direct {p1}, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->getEllipsisCount()I

    move-result v3

    if-ne v0, v3, :cond_40

    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    .line 52
    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineCount()I

    move-result v3

    if-ne v0, v3, :cond_40

    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->hasSameSpans(Lcom/android/systemui/statusbar/notification/TextViewTransformState;)Z

    move-result p0

    if-eqz p0, :cond_40

    goto :goto_41

    :cond_40
    move v1, v2

    :goto_41
    return v1

    :cond_42
    return v2
.end method

.method protected transformScale(Lcom/android/systemui/statusbar/notification/TransformState;)Z
    .registers 6

    .line 91
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/TextViewTransformState;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 94
    :cond_6
    check-cast p1, Lcom/android/systemui/statusbar/notification/TextViewTransformState;

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    return v1

    .line 98
    :cond_1b
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_41

    .line 99
    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->mText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineCount()I

    move-result v3

    if-ne v0, v3, :cond_41

    .line 100
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->getEllipsisCount()I

    move-result v0

    invoke-direct {p1}, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->getEllipsisCount()I

    move-result v3

    if-ne v0, v3, :cond_41

    .line 101
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->getViewHeight()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/TextViewTransformState;->getViewHeight()I

    move-result p1

    if-eq p0, p1, :cond_41

    move v1, v2

    :cond_41
    return v1
.end method
