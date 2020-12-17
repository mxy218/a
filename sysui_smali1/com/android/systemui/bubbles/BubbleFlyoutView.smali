.class public Lcom/android/systemui/bubbles/BubbleFlyoutView;
.super Landroid/widget/FrameLayout;
.source "BubbleFlyoutView.java"


# instance fields
.field private final mArgbEvaluator:Landroid/animation/ArgbEvaluator;

.field private mArrowPointingLeft:Z

.field private final mBgPaint:Landroid/graphics/Paint;

.field private final mBgRect:Landroid/graphics/RectF;

.field private mBgTranslationX:F

.field private mBgTranslationY:F

.field private final mBubbleElevation:I

.field private final mBubbleIconBitmapSize:I

.field private final mBubbleIconTopPadding:F

.field private final mBubbleSize:I

.field private final mCornerRadius:F

.field private mDotCenter:[F

.field private mDotColor:I

.field private final mFloatingBackgroundColor:I

.field private final mFlyoutElevation:I

.field private final mFlyoutPadding:I

.field private final mFlyoutSpaceFromBubble:I

.field private final mFlyoutText:Landroid/widget/TextView;

.field private final mFlyoutTextContainer:Landroid/view/ViewGroup;

.field private mFlyoutToDotHeightDelta:F

.field private mFlyoutToDotWidthDelta:F

.field private final mLeftTriangleShape:Landroid/graphics/drawable/ShapeDrawable;

.field private final mNewDotRadius:F

.field private final mNewDotSize:F

.field private mOnHide:Ljava/lang/Runnable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mOriginalDotSize:F

.field private mPercentStillFlyout:F

.field private mPercentTransitionedToDot:F

.field private final mPointerSize:I

.field private mRestingTranslationX:F

.field private final mRightTriangleShape:Landroid/graphics/drawable/ShapeDrawable;

.field private mTranslationXWhenDot:F

.field private mTranslationYWhenDot:F

.field private final mTriangleOutline:Landroid/graphics/Outline;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 141
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 79
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBgPaint:Landroid/graphics/Paint;

    .line 80
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mArrowPointingLeft:Z

    .line 96
    new-instance v1, Landroid/graphics/Outline;

    invoke-direct {v1}, Landroid/graphics/Outline;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mTriangleOutline:Landroid/graphics/Outline;

    .line 99
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBgRect:Landroid/graphics/RectF;

    const/high16 v1, 0x3f800000  # 1.0f

    .line 106
    iput v1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    const/4 v2, 0x0

    .line 107
    iput v2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPercentStillFlyout:F

    .line 113
    iput v2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutToDotWidthDelta:F

    .line 114
    iput v2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutToDotHeightDelta:F

    .line 117
    iput v2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mTranslationXWhenDot:F

    .line 118
    iput v2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mTranslationYWhenDot:F

    .line 130
    iput v2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mRestingTranslationX:F

    .line 142
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v2, Lcom/android/systemui/R$layout;->bubble_flyout:I

    invoke-virtual {p1, v2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 144
    sget p1, Lcom/android/systemui/R$id;->bubble_flyout_text_container:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutTextContainer:Landroid/view/ViewGroup;

    .line 145
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutTextContainer:Landroid/view/ViewGroup;

    sget v2, Lcom/android/systemui/R$id;->bubble_flyout_text:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutText:Landroid/widget/TextView;

    .line 147
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 148
    sget v2, Lcom/android/systemui/R$dimen;->bubble_flyout_padding_x:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutPadding:I

    .line 149
    sget v2, Lcom/android/systemui/R$dimen;->bubble_flyout_space_from_bubble:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutSpaceFromBubble:I

    .line 150
    sget v2, Lcom/android/systemui/R$dimen;->bubble_flyout_pointer_size:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPointerSize:I

    .line 152
    sget v2, Lcom/android/systemui/R$dimen;->individual_bubble_size:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBubbleSize:I

    .line 153
    sget v2, Lcom/android/systemui/R$dimen;->bubble_icon_bitmap_size:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBubbleIconBitmapSize:I

    .line 154
    iget v2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBubbleSize:I

    iget v3, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBubbleIconBitmapSize:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000  # 2.0f

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBubbleIconTopPadding:F

    .line 156
    sget v2, Lcom/android/systemui/R$dimen;->bubble_elevation:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBubbleElevation:I

    .line 157
    sget v2, Lcom/android/systemui/R$dimen;->bubble_flyout_elevation:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutElevation:I

    .line 159
    iget p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBubbleIconBitmapSize:I

    int-to-float p1, p1

    const v2, 0x3e6978d5  # 0.228f

    mul-float/2addr p1, v2

    iput p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mOriginalDotSize:F

    .line 160
    iget p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mOriginalDotSize:F

    mul-float/2addr p1, v1

    div-float/2addr p1, v3

    iput p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mNewDotRadius:F

    .line 161
    iget p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mNewDotRadius:F

    mul-float/2addr p1, v3

    iput p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mNewDotSize:F

    .line 163
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_130

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 167
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFloatingBackgroundColor:I

    .line 168
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mCornerRadius:F

    .line 169
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 172
    iget p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPointerSize:I

    invoke-virtual {p0, p1, v1, p1, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 173
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 174
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 175
    iget p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutElevation:I

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationZ(F)V

    .line 176
    new-instance p1, Lcom/android/systemui/bubbles/BubbleFlyoutView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/bubbles/BubbleFlyoutView$1;-><init>(Lcom/android/systemui/bubbles/BubbleFlyoutView;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 183
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBgPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFloatingBackgroundColor:I

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 185
    new-instance p1, Landroid/graphics/drawable/ShapeDrawable;

    iget v2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPointerSize:I

    int-to-float v3, v2

    int-to-float v2, v2

    .line 186
    invoke-static {v3, v2, v0}, Lcom/android/systemui/recents/TriangleShape;->createHorizontal(FFZ)Lcom/android/systemui/recents/TriangleShape;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mLeftTriangleShape:Landroid/graphics/drawable/ShapeDrawable;

    .line 188
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mLeftTriangleShape:Landroid/graphics/drawable/ShapeDrawable;

    iget v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPointerSize:I

    invoke-virtual {p1, v1, v1, v0, v0}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    .line 189
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mLeftTriangleShape:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    iget v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFloatingBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 191
    new-instance p1, Landroid/graphics/drawable/ShapeDrawable;

    iget v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPointerSize:I

    int-to-float v2, v0

    int-to-float v0, v0

    .line 192
    invoke-static {v2, v0, v1}, Lcom/android/systemui/recents/TriangleShape;->createHorizontal(FFZ)Lcom/android/systemui/recents/TriangleShape;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mRightTriangleShape:Landroid/graphics/drawable/ShapeDrawable;

    .line 194
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mRightTriangleShape:Landroid/graphics/drawable/ShapeDrawable;

    iget v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPointerSize:I

    invoke-virtual {p1, v1, v1, v0, v0}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    .line 195
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mRightTriangleShape:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    iget p0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFloatingBackgroundColor:I

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    nop

    :array_130
    .array-data 4
        0x10104e2
        0x1010571
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/bubbles/BubbleFlyoutView;Landroid/graphics/Outline;)V
    .registers 2

    .line 51
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleFlyoutView;->getOutline(Landroid/graphics/Outline;)V

    return-void
.end method

.method private clampPercentage(F)F
    .registers 2

    const/4 p0, 0x0

    .line 310
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method private getOutline(Landroid/graphics/Outline;)V
    .registers 7

    .line 387
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mTriangleOutline:Landroid/graphics/Outline;

    invoke-virtual {v0}, Landroid/graphics/Outline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6c

    .line 389
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 390
    iget v1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mNewDotRadius:F

    iget v2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    mul-float/2addr v1, v2

    iget v3, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mCornerRadius:F

    const/high16 v4, 0x3f800000  # 1.0f

    sub-float v2, v4, v2

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    .line 392
    iget-object v2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBgRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v1, v1, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 394
    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    .line 397
    iget v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPercentStillFlyout:F

    const/high16 v1, 0x3f000000  # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_35

    .line 398
    iget-object v0, p1, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mTriangleOutline:Landroid/graphics/Outline;

    iget-object v1, v1, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 402
    :cond_35
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 403
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBgTranslationX:F

    add-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBgTranslationY:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 409
    iget v1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    const v2, 0x3f7ae148  # 0.98f

    cmpl-float v3, v1, v2

    if-lez v3, :cond_67

    sub-float/2addr v1, v2

    const v2, 0x3ca3d70a  # 0.02f

    div-float/2addr v1, v2

    sub-float/2addr v4, v1

    .line 414
    iget p0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mNewDotRadius:F

    mul-float v2, p0, v1

    mul-float/2addr p0, v1

    invoke-virtual {v0, v2, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 417
    invoke-virtual {v0, v4, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 420
    :cond_67
    iget-object p0, p1, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :cond_6c
    return-void
.end method

.method private renderBackground(Landroid/graphics/Canvas;)V
    .registers 10

    .line 320
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutToDotWidthDelta:F

    iget v2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 321
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutToDotHeightDelta:F

    iget v3, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 322
    iget v2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mNewDotRadius:F

    mul-float/2addr v2, v3

    iget v4, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mCornerRadius:F

    const/high16 v5, 0x3f800000  # 1.0f

    sub-float/2addr v5, v3

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    .line 326
    iget v4, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mTranslationXWhenDot:F

    mul-float/2addr v4, v3

    iput v4, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBgTranslationX:F

    .line 327
    iget v4, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mTranslationYWhenDot:F

    mul-float/2addr v4, v3

    iput v4, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBgTranslationY:F

    .line 334
    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBgRect:Landroid/graphics/RectF;

    iget v4, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPointerSize:I

    int-to-float v5, v4

    iget v6, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPercentStillFlyout:F

    mul-float/2addr v5, v6

    int-to-float v4, v4

    mul-float/2addr v4, v6

    sub-float v4, v0, v4

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v4, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 340
    iget-object v3, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBgPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    iget v5, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    iget v6, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFloatingBackgroundColor:I

    .line 342
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mDotColor:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 341
    invoke-virtual {v4, v5, v6, v7}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 340
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 344
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 345
    iget v3, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBgTranslationX:F

    iget v4, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBgTranslationY:F

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 346
    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/bubbles/BubbleFlyoutView;->renderPointerTriangle(Landroid/graphics/Canvas;FF)V

    .line 347
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBgRect:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 348
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private renderPointerTriangle(Landroid/graphics/Canvas;FF)V
    .registers 8

    .line 354
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 358
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mArrowPointingLeft:Z

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, -0x1

    :goto_a
    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    iget v2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPointerSize:I

    int-to-float v3, v2

    mul-float/2addr v1, v3

    const/high16 v3, 0x40000000  # 2.0f

    mul-float/2addr v1, v3

    mul-float/2addr v0, v1

    .line 363
    iget-boolean v1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mArrowPointingLeft:Z

    if-eqz v1, :cond_1a

    goto :goto_1d

    :cond_1a
    int-to-float v1, v2

    sub-float/2addr p2, v1

    add-float/2addr v0, p2

    :goto_1d
    div-float/2addr p3, v3

    .line 368
    iget p2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPointerSize:I

    int-to-float p2, p2

    div-float/2addr p2, v3

    sub-float/2addr p3, p2

    .line 372
    iget-boolean p2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mArrowPointingLeft:Z

    if-eqz p2, :cond_2a

    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mLeftTriangleShape:Landroid/graphics/drawable/ShapeDrawable;

    goto :goto_2c

    :cond_2a
    iget-object p2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mRightTriangleShape:Landroid/graphics/drawable/ShapeDrawable;

    .line 373
    :goto_2c
    invoke-virtual {p1, v0, p3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v1, 0x437f0000  # 255.0f

    .line 374
    iget v2, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPercentStillFlyout:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/ShapeDrawable;->setAlpha(I)V

    .line 375
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 379
    iget-object v1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mTriangleOutline:Landroid/graphics/Outline;

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/ShapeDrawable;->getOutline(Landroid/graphics/Outline;)V

    .line 380
    iget-object p0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mTriangleOutline:Landroid/graphics/Outline;

    float-to-int p2, v0

    float-to-int p3, p3

    invoke-virtual {p0, p2, p3}, Landroid/graphics/Outline;->offset(II)V

    .line 382
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method


# virtual methods
.method getRestingTranslationX()F
    .registers 1

    .line 305
    iget p0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mRestingTranslationX:F

    return p0
.end method

.method hideFlyout()V
    .registers 2

    .line 269
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mOnHide:Ljava/lang/Runnable;

    if-eqz v0, :cond_a

    .line 270
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 271
    iput-object v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mOnHide:Ljava/lang/Runnable;

    :cond_a
    const/16 v0, 0x8

    .line 274
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$setupFlyoutStartingAsDot$0$BubbleFlyoutView(Landroid/graphics/PointF;Ljava/lang/Runnable;)V
    .registers 10

    .line 228
    iget-object v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, 0x40000000  # 2.0f

    if-le v0, v1, :cond_10

    .line 229
    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBubbleIconTopPadding:F

    goto :goto_1d

    .line 232
    :cond_10
    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBubbleSize:I

    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutTextContainer:Landroid/view/ViewGroup;

    .line 233
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v2

    :goto_1d
    add-float/2addr v0, v3

    .line 235
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 239
    iget-boolean v3, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mArrowPointingLeft:Z

    if-eqz v3, :cond_30

    .line 240
    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget v4, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBubbleSize:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutSpaceFromBubble:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    goto :goto_3c

    .line 241
    :cond_30
    iget v3, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutSpaceFromBubble:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    :goto_3c
    iput v3, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mRestingTranslationX:F

    .line 245
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mNewDotSize:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutToDotWidthDelta:F

    .line 246
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mNewDotSize:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutToDotHeightDelta:F

    .line 249
    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mDotCenter:[F

    const/4 v5, 0x0

    aget v5, v4, v5

    add-float/2addr v3, v5

    iget v5, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mOriginalDotSize:F

    div-float v6, v5, v2

    sub-float/2addr v3, v6

    .line 250
    iget p1, p1, Landroid/graphics/PointF;->y:F

    aget v1, v4, v1

    add-float/2addr p1, v1

    div-float/2addr v5, v2

    sub-float/2addr p1, v5

    .line 252
    iget v1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mRestingTranslationX:F

    sub-float/2addr v1, v3

    sub-float/2addr v0, p1

    neg-float p1, v1

    .line 255
    iput p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mTranslationXWhenDot:F

    neg-float p1, v0

    .line 256
    iput p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mTranslationYWhenDot:F

    if-eqz p2, :cond_75

    .line 258
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_75
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 200
    invoke-direct {p0, p1}, Lcom/android/systemui/bubbles/BubbleFlyoutView;->renderBackground(Landroid/graphics/Canvas;)V

    .line 201
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    .line 202
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method setCollapsePercent(F)V
    .registers 4

    .line 282
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000  # 1.0f

    .line 286
    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    .line 287
    iget p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    sub-float/2addr v1, p1

    iput v1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPercentStillFlyout:F

    .line 290
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutText:Landroid/widget/TextView;

    .line 291
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mArrowPointingLeft:Z

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    neg-int v0, v0

    goto :goto_29

    :cond_25
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    :goto_29
    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    mul-float/2addr v0, v1

    .line 290
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 292
    iget-object p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutText:Landroid/widget/TextView;

    iget v0, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPercentStillFlyout:F

    const/high16 v1, 0x3f400000  # 0.75f

    sub-float/2addr v0, v1

    const/high16 v1, 0x3e800000  # 0.25f

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/systemui/bubbles/BubbleFlyoutView;->clampPercentage(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 297
    iget p1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutElevation:I

    int-to-float v0, p1

    iget v1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mBubbleElevation:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    iget v1, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mPercentTransitionedToDot:F

    mul-float/2addr p1, v1

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationZ(F)V

    .line 300
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method setupFlyoutStartingAsDot(Ljava/lang/CharSequence;Landroid/graphics/PointF;FZILjava/lang/Runnable;Ljava/lang/Runnable;[F)V
    .registers 9
    .param p6  # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7  # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 210
    iput-boolean p4, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mArrowPointingLeft:Z

    .line 211
    iput p5, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mDotColor:I

    .line 212
    iput-object p7, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mOnHide:Ljava/lang/Runnable;

    .line 213
    iput-object p8, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mDotCenter:[F

    const/high16 p4, 0x3f800000  # 1.0f

    .line 215
    invoke-virtual {p0, p4}, Lcom/android/systemui/bubbles/BubbleFlyoutView;->setCollapsePercent(F)V

    .line 220
    iget-object p4, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutText:Landroid/widget/TextView;

    const p5, 0x3f19999a  # 0.6f

    mul-float/2addr p3, p5

    float-to-int p3, p3

    iget p5, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutPadding:I

    mul-int/lit8 p5, p5, 0x2

    sub-int/2addr p3, p5

    invoke-virtual {p4, p3}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 222
    iget-object p3, p0, Lcom/android/systemui/bubbles/BubbleFlyoutView;->mFlyoutText:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    new-instance p1, Lcom/android/systemui/bubbles/-$$Lambda$BubbleFlyoutView$uiE_eB5rfJqPQTRnM4IXJFU-4Tg;

    invoke-direct {p1, p0, p2, p6}, Lcom/android/systemui/bubbles/-$$Lambda$BubbleFlyoutView$uiE_eB5rfJqPQTRnM4IXJFU-4Tg;-><init>(Lcom/android/systemui/bubbles/BubbleFlyoutView;Landroid/graphics/PointF;Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
