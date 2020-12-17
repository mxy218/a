.class public Lcom/android/systemui/bubbles/BadgedImageView;
.super Landroid/widget/ImageView;
.source "BadgedImageView.java"


# instance fields
.field private mDotColor:I

.field private mDotRenderer:Lcom/android/launcher3/icons/DotRenderer;

.field private mDotScale:F

.field private mDrawParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

.field private mIconBitmapSize:I

.field private mOnLeft:Z

.field private mShowDot:Z

.field private mTempBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/bubbles/BadgedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/bubbles/BadgedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/bubbles/BadgedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 35
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mTempBounds:Landroid/graphics/Rect;

    const/4 p2, 0x0

    .line 41
    iput p2, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mDotScale:F

    .line 63
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/systemui/R$dimen;->bubble_icon_bitmap_size:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mIconBitmapSize:I

    .line 64
    new-instance p2, Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    invoke-direct {p2}, Lcom/android/launcher3/icons/DotRenderer$DrawParams;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mDrawParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    const/4 p0, 0x1

    new-array p0, p0, [I

    const/4 p2, 0x0

    const p3, 0x10104e2

    aput p3, p0, p2

    .line 66
    invoke-virtual {p1, p0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 68
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public drawDot(Landroid/graphics/Path;)V
    .registers 5

    .line 132
    new-instance v0, Lcom/android/launcher3/icons/DotRenderer;

    iget v1, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mIconBitmapSize:I

    const/16 v2, 0x64

    invoke-direct {v0, v1, p1, v2}, Lcom/android/launcher3/icons/DotRenderer;-><init>(ILandroid/graphics/Path;I)V

    iput-object v0, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mDotRenderer:Lcom/android/launcher3/icons/DotRenderer;

    .line 133
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method getDotCenter()[F
    .registers 5

    .line 149
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mOnLeft:Z

    if-eqz v0, :cond_b

    .line 150
    iget-object v0, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mDotRenderer:Lcom/android/launcher3/icons/DotRenderer;

    invoke-virtual {v0}, Lcom/android/launcher3/icons/DotRenderer;->getLeftDotPosition()[F

    move-result-object v0

    goto :goto_11

    .line 152
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mDotRenderer:Lcom/android/launcher3/icons/DotRenderer;

    invoke-virtual {v0}, Lcom/android/launcher3/icons/DotRenderer;->getRightDotPosition()[F

    move-result-object v0

    .line 154
    :goto_11
    iget-object v1, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mTempBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 155
    iget-object v1, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mTempBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    aget v3, v0, v2

    mul-float/2addr v1, v3

    .line 156
    iget-object p0, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mTempBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    const/4 v3, 0x1

    aget v0, v0, v3

    mul-float/2addr p0, v0

    const/4 v0, 0x2

    new-array v0, v0, [F

    aput v1, v0, v2

    aput p0, v0, v3

    return-object v0
.end method

.method getDotOnLeft()Z
    .registers 1

    .line 102
    iget-boolean p0, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mOnLeft:Z

    return p0
.end method

.method isShowingDot()Z
    .registers 1

    .line 117
    iget-boolean p0, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mShowDot:Z

    return p0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 73
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 74
    iget-boolean v0, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mShowDot:Z

    if-nez v0, :cond_8

    return-void

    .line 77
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mTempBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 79
    iget-object v0, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mDrawParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    iget v1, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mDotColor:I

    iput v1, v0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->color:I

    .line 80
    iget-object v1, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mTempBounds:Landroid/graphics/Rect;

    iput-object v1, v0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->iconBounds:Landroid/graphics/Rect;

    .line 81
    iget-boolean v1, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mOnLeft:Z

    iput-boolean v1, v0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->leftAlign:Z

    .line 82
    iget v1, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mDotScale:F

    iput v1, v0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    .line 84
    iget-object v0, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mDotRenderer:Lcom/android/launcher3/icons/DotRenderer;

    if-nez v0, :cond_3a

    .line 85
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/high16 v1, 0x42480000  # 50.0f

    .line 87
    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v1, v1, v2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 88
    new-instance v1, Lcom/android/launcher3/icons/DotRenderer;

    iget v2, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mIconBitmapSize:I

    const/16 v3, 0x64

    invoke-direct {v1, v2, v0, v3}, Lcom/android/launcher3/icons/DotRenderer;-><init>(ILandroid/graphics/Path;I)V

    iput-object v1, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mDotRenderer:Lcom/android/launcher3/icons/DotRenderer;

    .line 90
    :cond_3a
    iget-object v0, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mDotRenderer:Lcom/android/launcher3/icons/DotRenderer;

    iget-object p0, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mDrawParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    invoke-virtual {v0, p1, p0}, Lcom/android/launcher3/icons/DotRenderer;->draw(Landroid/graphics/Canvas;Lcom/android/launcher3/icons/DotRenderer$DrawParams;)V

    return-void
.end method

.method public setDotColor(I)V
    .registers 3

    const/16 v0, 0xff

    .line 124
    invoke-static {p1, v0}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mDotColor:I

    .line 125
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method setDotOnLeft(Z)V
    .registers 2

    .line 97
    iput-boolean p1, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mOnLeft:Z

    .line 98
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method setDotScale(F)V
    .registers 2

    .line 140
    iput p1, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mDotScale:F

    .line 141
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method setShowDot(Z)V
    .registers 2

    .line 109
    iput-boolean p1, p0, Lcom/android/systemui/bubbles/BadgedImageView;->mShowDot:Z

    .line 110
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method
