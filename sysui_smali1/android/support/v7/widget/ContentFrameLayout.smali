.class public Landroid/support/v7/widget/ContentFrameLayout;
.super Landroid/widget/FrameLayout;
.source "ContentFrameLayout.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ContentFrameLayout$OnAttachListener;
    }
.end annotation


# instance fields
.field private mAttachListener:Landroid/support/v7/widget/ContentFrameLayout$OnAttachListener;

.field private final mDecorPadding:Landroid/graphics/Rect;

.field private mFixedHeightMajor:Landroid/util/TypedValue;

.field private mFixedHeightMinor:Landroid/util/TypedValue;

.field private mFixedWidthMajor:Landroid/util/TypedValue;

.field private mFixedWidthMinor:Landroid/util/TypedValue;

.field private mMinWidthMajor:Landroid/util/TypedValue;

.field private mMinWidthMinor:Landroid/util/TypedValue;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/ContentFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/ContentFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public dispatchFitSystemWindows(Landroid/graphics/Rect;)V
    .registers 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 76
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    return-void
.end method

.method public getFixedHeightMajor()Landroid/util/TypedValue;
    .registers 2

    .line 195
    iget-object v0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mFixedHeightMajor:Landroid/util/TypedValue;

    if-nez v0, :cond_b

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 196
    :cond_b
    iget-object p0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mFixedHeightMajor:Landroid/util/TypedValue;

    return-object p0
.end method

.method public getFixedHeightMinor()Landroid/util/TypedValue;
    .registers 2

    .line 200
    iget-object v0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mFixedHeightMinor:Landroid/util/TypedValue;

    if-nez v0, :cond_b

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mFixedHeightMinor:Landroid/util/TypedValue;

    .line 201
    :cond_b
    iget-object p0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mFixedHeightMinor:Landroid/util/TypedValue;

    return-object p0
.end method

.method public getFixedWidthMajor()Landroid/util/TypedValue;
    .registers 2

    .line 185
    iget-object v0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mFixedWidthMajor:Landroid/util/TypedValue;

    if-nez v0, :cond_b

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mFixedWidthMajor:Landroid/util/TypedValue;

    .line 186
    :cond_b
    iget-object p0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mFixedWidthMajor:Landroid/util/TypedValue;

    return-object p0
.end method

.method public getFixedWidthMinor()Landroid/util/TypedValue;
    .registers 2

    .line 190
    iget-object v0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mFixedWidthMinor:Landroid/util/TypedValue;

    if-nez v0, :cond_b

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 191
    :cond_b
    iget-object p0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mFixedWidthMinor:Landroid/util/TypedValue;

    return-object p0
.end method

.method public getMinWidthMajor()Landroid/util/TypedValue;
    .registers 2

    .line 175
    iget-object v0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mMinWidthMajor:Landroid/util/TypedValue;

    if-nez v0, :cond_b

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mMinWidthMajor:Landroid/util/TypedValue;

    .line 176
    :cond_b
    iget-object p0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mMinWidthMajor:Landroid/util/TypedValue;

    return-object p0
.end method

.method public getMinWidthMinor()Landroid/util/TypedValue;
    .registers 2

    .line 180
    iget-object v0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mMinWidthMinor:Landroid/util/TypedValue;

    if-nez v0, :cond_b

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mMinWidthMinor:Landroid/util/TypedValue;

    .line 181
    :cond_b
    iget-object p0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mMinWidthMinor:Landroid/util/TypedValue;

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .line 206
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 207
    iget-object p0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mAttachListener:Landroid/support/v7/widget/ContentFrameLayout$OnAttachListener;

    if-eqz p0, :cond_a

    .line 208
    invoke-interface {p0}, Landroid/support/v7/widget/ContentFrameLayout$OnAttachListener;->onAttachedFromWindow()V

    :cond_a
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .line 214
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 215
    iget-object p0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mAttachListener:Landroid/support/v7/widget/ContentFrameLayout$OnAttachListener;

    if-eqz p0, :cond_a

    .line 216
    invoke-interface {p0}, Landroid/support/v7/widget/ContentFrameLayout$OnAttachListener;->onDetachedFromWindow()V

    :cond_a
    return-void
.end method

.method protected onMeasure(II)V
    .registers 16

    .line 99
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 100
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ge v1, v2, :cond_16

    move v1, v3

    goto :goto_17

    :cond_16
    move v1, v4

    .line 102
    :goto_17
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 103
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    const/4 v6, 0x6

    const/4 v7, 0x5

    const/high16 v8, -0x80000000

    const/high16 v9, 0x40000000  # 2.0f

    if-ne v2, v8, :cond_61

    if-eqz v1, :cond_2c

    .line 107
    iget-object v10, p0, Landroid/support/v7/widget/ContentFrameLayout;->mFixedWidthMinor:Landroid/util/TypedValue;

    goto :goto_2e

    :cond_2c
    iget-object v10, p0, Landroid/support/v7/widget/ContentFrameLayout;->mFixedWidthMajor:Landroid/util/TypedValue;

    :goto_2e
    if-eqz v10, :cond_61

    .line 108
    iget v11, v10, Landroid/util/TypedValue;->type:I

    if-eqz v11, :cond_61

    if-ne v11, v7, :cond_3c

    .line 111
    invoke-virtual {v10, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v10

    :goto_3a
    float-to-int v10, v10

    goto :goto_48

    :cond_3c
    if-ne v11, v6, :cond_47

    .line 113
    iget v11, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v12, v11

    int-to-float v11, v11

    invoke-virtual {v10, v12, v11}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v10

    goto :goto_3a

    :cond_47
    move v10, v4

    :goto_48
    if-lez v10, :cond_61

    .line 116
    iget-object v11, p0, Landroid/support/v7/widget/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    iget v12, v11, Landroid/graphics/Rect;->left:I

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v11

    sub-int/2addr v10, v12

    .line 117
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 119
    invoke-static {v10, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 118
    invoke-static {p1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    move v10, p1

    move p1, v3

    goto :goto_63

    :cond_61
    move v10, p1

    move p1, v4

    :goto_63
    if-ne v5, v8, :cond_9c

    if-eqz v1, :cond_6a

    .line 126
    iget-object v5, p0, Landroid/support/v7/widget/ContentFrameLayout;->mFixedHeightMajor:Landroid/util/TypedValue;

    goto :goto_6c

    :cond_6a
    iget-object v5, p0, Landroid/support/v7/widget/ContentFrameLayout;->mFixedHeightMinor:Landroid/util/TypedValue;

    :goto_6c
    if-eqz v5, :cond_9c

    .line 127
    iget v11, v5, Landroid/util/TypedValue;->type:I

    if-eqz v11, :cond_9c

    if-ne v11, v7, :cond_7a

    .line 130
    invoke-virtual {v5, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v5

    :goto_78
    float-to-int v5, v5

    goto :goto_86

    :cond_7a
    if-ne v11, v6, :cond_85

    .line 132
    iget v11, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v12, v11

    int-to-float v11, v11

    invoke-virtual {v5, v12, v11}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v5

    goto :goto_78

    :cond_85
    move v5, v4

    :goto_86
    if-lez v5, :cond_9c

    .line 135
    iget-object v11, p0, Landroid/support/v7/widget/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    iget v12, v11, Landroid/graphics/Rect;->top:I

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v12, v11

    sub-int/2addr v5, v12

    .line 136
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 138
    invoke-static {v5, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 137
    invoke-static {p2, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 143
    :cond_9c
    invoke-super {p0, v10, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 145
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    .line 148
    invoke-static {v5, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    if-nez p1, :cond_dd

    if-ne v2, v8, :cond_dd

    if-eqz v1, :cond_b0

    .line 151
    iget-object p1, p0, Landroid/support/v7/widget/ContentFrameLayout;->mMinWidthMinor:Landroid/util/TypedValue;

    goto :goto_b2

    :cond_b0
    iget-object p1, p0, Landroid/support/v7/widget/ContentFrameLayout;->mMinWidthMajor:Landroid/util/TypedValue;

    :goto_b2
    if-eqz p1, :cond_dd

    .line 152
    iget v1, p1, Landroid/util/TypedValue;->type:I

    if-eqz v1, :cond_dd

    if-ne v1, v7, :cond_c0

    .line 155
    invoke-virtual {p1, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result p1

    :goto_be
    float-to-int p1, p1

    goto :goto_cc

    :cond_c0
    if-ne v1, v6, :cond_cb

    .line 157
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p1

    goto :goto_be

    :cond_cb
    move p1, v4

    :goto_cc
    if-lez p1, :cond_d6

    .line 160
    iget-object v0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    sub-int/2addr p1, v1

    :cond_d6
    if-ge v5, p1, :cond_dd

    .line 163
    invoke-static {p1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    goto :goto_de

    :cond_dd
    move v3, v4

    :goto_de
    if-eqz v3, :cond_e3

    .line 170
    invoke-super {p0, v10, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :cond_e3
    return-void
.end method

.method public setAttachListener(Landroid/support/v7/widget/ContentFrameLayout$OnAttachListener;)V
    .registers 2

    .line 80
    iput-object p1, p0, Landroid/support/v7/widget/ContentFrameLayout;->mAttachListener:Landroid/support/v7/widget/ContentFrameLayout$OnAttachListener;

    return-void
.end method

.method public setDecorPadding(IIII)V
    .registers 6
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Landroid/support/v7/widget/ContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 92
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 93
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_e
    return-void
.end method
