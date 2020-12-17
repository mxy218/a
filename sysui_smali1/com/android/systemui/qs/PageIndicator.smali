.class public Lcom/android/systemui/qs/PageIndicator;
.super Landroid/view/ViewGroup;
.source "PageIndicator.java"


# instance fields
.field private mAnimating:Z

.field private final mAnimationDone:Ljava/lang/Runnable;

.field private final mPageDotWidth:I

.field private final mPageIndicatorHeight:I

.field private final mPageIndicatorWidth:I

.field private mPosition:I

.field private final mQueuedPositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/PageIndicator;->mQueuedPositions:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 35
    iput p1, p0, Lcom/android/systemui/qs/PageIndicator;->mPosition:I

    .line 223
    new-instance p1, Lcom/android/systemui/qs/PageIndicator$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/PageIndicator$1;-><init>(Lcom/android/systemui/qs/PageIndicator;)V

    iput-object p1, p0, Lcom/android/systemui/qs/PageIndicator;->mAnimationDone:Ljava/lang/Runnable;

    .line 40
    iget-object p1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->qs_page_indicator_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorWidth:I

    .line 42
    iget-object p1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->qs_page_indicator_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorHeight:I

    .line 44
    iget p1, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorWidth:I

    int-to-float p1, p1

    const p2, 0x3ecccccd  # 0.4f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/android/systemui/qs/PageIndicator;->mPageDotWidth:I

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/PageIndicator;Z)Z
    .registers 2

    .line 17
    iput-boolean p1, p0, Lcom/android/systemui/qs/PageIndicator;->mAnimating:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/PageIndicator;)Ljava/util/ArrayList;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/android/systemui/qs/PageIndicator;->mQueuedPositions:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/PageIndicator;I)V
    .registers 2

    .line 17
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/PageIndicator;->setPosition(I)V

    return-void
.end method

.method private animate(II)V
    .registers 9

    shr-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x1

    .line 120
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/PageIndicator;->setIndex(I)V

    and-int/lit8 v2, p1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_f

    move v2, v4

    goto :goto_10

    :cond_f
    move v2, v3

    :goto_10
    if-eqz v2, :cond_15

    if-le p1, p2, :cond_19

    goto :goto_17

    :cond_15
    if-ge p1, p2, :cond_19

    :goto_17
    move p1, v4

    goto :goto_1a

    :cond_19
    move p1, v3

    .line 124
    :goto_1a
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 125
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-ne v0, p2, :cond_26

    add-int/lit8 v0, v0, 0x1

    .line 129
    :cond_26
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 130
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz p2, :cond_61

    if-nez v0, :cond_37

    goto :goto_61

    .line 136
    :cond_37
    invoke-virtual {p2}, Landroid/widget/ImageView;->getX()F

    move-result v1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getX()F

    move-result v5

    sub-float/2addr v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 138
    invoke-direct {p0, v2, p1, v3}, Lcom/android/systemui/qs/PageIndicator;->getTransition(ZZZ)I

    move-result v1

    invoke-direct {p0, p2, v1}, Lcom/android/systemui/qs/PageIndicator;->playAnimation(Landroid/widget/ImageView;I)V

    .line 139
    invoke-direct {p0, v3}, Lcom/android/systemui/qs/PageIndicator;->getAlpha(Z)F

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 141
    invoke-direct {p0, v2, p1, v4}, Lcom/android/systemui/qs/PageIndicator;->getTransition(ZZZ)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/qs/PageIndicator;->playAnimation(Landroid/widget/ImageView;I)V

    .line 142
    invoke-direct {p0, v4}, Lcom/android/systemui/qs/PageIndicator;->getAlpha(Z)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 144
    iput-boolean v4, p0, Lcom/android/systemui/qs/PageIndicator;->mAnimating:Z

    :cond_61
    :goto_61
    return-void
.end method

.method private getAlpha(Z)F
    .registers 2

    if-eqz p1, :cond_5

    const/high16 p0, 0x3f800000  # 1.0f

    goto :goto_8

    :cond_5
    const p0, 0x3ed70a3d  # 0.42f

    :goto_8
    return p0
.end method

.method private getTransition(ZZZ)I
    .registers 4

    if-eqz p3, :cond_14

    if-eqz p1, :cond_c

    if-eqz p2, :cond_9

    .line 165
    sget p0, Lcom/android/systemui/R$drawable;->major_b_a_animation:I

    return p0

    .line 167
    :cond_9
    sget p0, Lcom/android/systemui/R$drawable;->major_b_c_animation:I

    return p0

    :cond_c
    if-eqz p2, :cond_11

    .line 171
    sget p0, Lcom/android/systemui/R$drawable;->major_a_b_animation:I

    return p0

    .line 173
    :cond_11
    sget p0, Lcom/android/systemui/R$drawable;->major_c_b_animation:I

    return p0

    :cond_14
    if-eqz p1, :cond_1e

    if-eqz p2, :cond_1b

    .line 179
    sget p0, Lcom/android/systemui/R$drawable;->minor_b_c_animation:I

    return p0

    .line 181
    :cond_1b
    sget p0, Lcom/android/systemui/R$drawable;->minor_b_a_animation:I

    return p0

    :cond_1e
    if-eqz p2, :cond_23

    .line 185
    sget p0, Lcom/android/systemui/R$drawable;->minor_c_b_animation:I

    return p0

    .line 187
    :cond_23
    sget p0, Lcom/android/systemui/R$drawable;->minor_a_b_animation:I

    return p0
.end method

.method private playAnimation(Landroid/widget/ImageView;I)V
    .registers 5

    .line 152
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 153
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    invoke-virtual {p2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->forceAnimationOnUI()V

    .line 155
    invoke-virtual {p2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 158
    iget-object p1, p0, Lcom/android/systemui/qs/PageIndicator;->mAnimationDone:Ljava/lang/Runnable;

    const-wide/16 v0, 0xfa

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setIndex(I)V
    .registers 7

    .line 102
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_26

    .line 104
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const/4 v4, 0x0

    .line 106
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 107
    sget v4, Lcom/android/systemui/R$drawable;->major_a_b:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    if-ne v2, p1, :cond_1b

    const/4 v4, 0x1

    goto :goto_1c

    :cond_1b
    move v4, v1

    .line 108
    :goto_1c
    invoke-direct {p0, v4}, Lcom/android/systemui/qs/PageIndicator;->getAlpha(Z)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_26
    return-void
.end method

.method private setPosition(I)V
    .registers 4

    .line 91
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/android/systemui/qs/PageIndicator;->mPosition:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 92
    iget v0, p0, Lcom/android/systemui/qs/PageIndicator;->mPosition:I

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/qs/PageIndicator;->animate(II)V

    goto :goto_1b

    :cond_16
    shr-int/lit8 v0, p1, 0x1

    .line 96
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/PageIndicator;->setIndex(I)V

    .line 98
    :goto_1b
    iput p1, p0, Lcom/android/systemui/qs/PageIndicator;->mPosition:I

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 8

    .line 213
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    const/4 p2, 0x0

    move p3, p2

    :goto_9
    if-ge p3, p1, :cond_20

    .line 218
    iget p4, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorWidth:I

    iget p5, p0, Lcom/android/systemui/qs/PageIndicator;->mPageDotWidth:I

    sub-int/2addr p4, p5

    mul-int/2addr p4, p3

    .line 219
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    iget v0, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorWidth:I

    add-int/2addr v0, p4

    iget v1, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorHeight:I

    invoke-virtual {p5, p4, p2, v0, v1}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_9

    :cond_20
    return-void
.end method

.method protected onMeasure(II)V
    .registers 6

    .line 195
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_a

    .line 197
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    return-void

    .line 200
    :cond_a
    iget p1, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorWidth:I

    const/high16 p2, 0x40000000  # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 202
    iget v1, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorHeight:I

    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    const/4 v1, 0x0

    :goto_19
    if-ge v1, v0, :cond_25

    .line 205
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->measure(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 207
    :cond_25
    iget p1, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorWidth:I

    iget p2, p0, Lcom/android/systemui/qs/PageIndicator;->mPageDotWidth:I

    sub-int/2addr p1, p2

    add-int/lit8 v0, v0, -0x1

    mul-int/2addr p1, v0

    add-int/2addr p1, p2

    .line 208
    iget p2, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorHeight:I

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public setLocation(F)V
    .registers 9

    float-to-int v0, p1

    .line 71
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->accessibility_quick_settings_page:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    add-int/lit8 v4, v0, 0x1

    .line 72
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 71
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    shl-int/lit8 v1, v0, 0x1

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_2d

    move v5, v6

    :cond_2d
    or-int p1, v1, v5

    .line 76
    iget v0, p0, Lcom/android/systemui/qs/PageIndicator;->mPosition:I

    .line 77
    iget-object v1, p0, Lcom/android/systemui/qs/PageIndicator;->mQueuedPositions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_4a

    .line 78
    iget-object v0, p0, Lcom/android/systemui/qs/PageIndicator;->mQueuedPositions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_4a
    if-ne p1, v0, :cond_4d

    return-void

    .line 81
    :cond_4d
    iget-boolean v0, p0, Lcom/android/systemui/qs/PageIndicator;->mAnimating:Z

    if-eqz v0, :cond_5b

    .line 83
    iget-object p0, p0, Lcom/android/systemui/qs/PageIndicator;->mQueuedPositions:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 87
    :cond_5b
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/PageIndicator;->setPosition(I)V

    return-void
.end method

.method public setNumPages(I)V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p1, v1, :cond_6

    move v2, v0

    goto :goto_8

    :cond_6
    const/16 v2, 0x8

    .line 48
    :goto_8
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 49
    iget-boolean v2, p0, Lcom/android/systemui/qs/PageIndicator;->mAnimating:Z

    if-eqz v2, :cond_17

    const-string v2, "PageIndicator"

    const-string/jumbo v3, "setNumPages during animation"

    .line 50
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_17
    :goto_17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge p1, v2, :cond_26

    .line 53
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    goto :goto_17

    .line 55
    :cond_26
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    new-array v3, v1, [I

    const v4, 0x101042a

    aput v4, v3, v0

    invoke-virtual {v2, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 57
    invoke-virtual {v2, v0, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 58
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    :goto_3c
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-le p1, v2, :cond_62

    .line 60
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 61
    sget v3, Lcom/android/systemui/R$drawable;->minor_a_b:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 62
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 63
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    iget v4, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorWidth:I

    iget v5, p0, Lcom/android/systemui/qs/PageIndicator;->mPageIndicatorHeight:I

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3c

    .line 66
    :cond_62
    iget p1, p0, Lcom/android/systemui/qs/PageIndicator;->mPosition:I

    shr-int/2addr p1, v1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/PageIndicator;->setIndex(I)V

    return-void
.end method
