.class public Lcom/android/systemui/screenshot/ScreenshotThumbnailView;
.super Landroid/view/View;
.source "ScreenshotThumbnailView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# instance fields
.field private deleteLeft:F

.field private inLeft:F

.field private inTop:F

.field private isLandscape:Z

.field private left:F

.field private mBackroundPaint:Landroid/graphics/Paint;

.field private mBackroundRect:Landroid/graphics/RectF;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:F

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mBitmapRect:Landroid/graphics/RectF;

.field private mBitmapWidth:F

.field private mCallback:Lcom/android/systemui/screenshot/ScreenshotTouchHandler$ScreenshotCallback;

.field private mContext:Landroid/content/Context;

.field private mDeleteBtnPaint:Landroid/graphics/Paint;

.field private mDeleteButton:Landroid/graphics/Bitmap;

.field private mDeleteButtonRect:Landroid/graphics/RectF;

.field private mInitBackroundRect:Landroid/graphics/RectF;

.field private mInitBitmapRect:Landroid/graphics/RectF;

.field private mInitInsideRect:Landroid/graphics/RectF;

.field private mInitRoundRect:Landroid/graphics/RectF;

.field private mInitShareButtonRect:Landroid/graphics/RectF;

.field private mInsidePaint:Landroid/graphics/Paint;

.field private mInsideRect:Landroid/graphics/RectF;

.field private mRadius:I

.field private mRoundPaint:Landroid/graphics/Paint;

.field private mRoundRect:Landroid/graphics/Rect;

.field private mScreenHeight:F

.field private mScreenWidth:F

.field mShadowDrawble:Landroid/graphics/drawable/NinePatchDrawable;

.field private mShareBtnPaint:Landroid/graphics/Paint;

.field private mShareButton:Landroid/graphics/Bitmap;

.field private mShareButtonRect:Landroid/graphics/RectF;

.field private mSubtractLeft:I

.field private mSubtractTop:I

.field private mTouchHandler:Lcom/android/systemui/screenshot/ScreenshotTouchHandler;

.field private mValue:F

.field private mViewHeight:F

.field private mViewWidth:F

.field private roundBottom:F

.field private roundLeft:F

.field private roundTop:F

.field private scaleBottom:F

.field private scaleLeft:F

.field private scaleRight:F

.field private scaleTop:F

.field private shareHeight:F

.field private shareLeft:F

.field private shareTop:F

.field private shareWidth:F

.field private top:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 101
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mRoundRect:Landroid/graphics/Rect;

    .line 43
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mBackroundRect:Landroid/graphics/RectF;

    .line 44
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mInsideRect:Landroid/graphics/RectF;

    .line 45
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mBitmapRect:Landroid/graphics/RectF;

    .line 46
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mShareButtonRect:Landroid/graphics/RectF;

    .line 47
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mDeleteButtonRect:Landroid/graphics/RectF;

    .line 49
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mInitRoundRect:Landroid/graphics/RectF;

    .line 50
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mInitBackroundRect:Landroid/graphics/RectF;

    .line 51
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mInitInsideRect:Landroid/graphics/RectF;

    .line 52
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mInitBitmapRect:Landroid/graphics/RectF;

    .line 53
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mInitShareButtonRect:Landroid/graphics/RectF;

    .line 55
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mRoundPaint:Landroid/graphics/Paint;

    .line 56
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mBackroundPaint:Landroid/graphics/Paint;

    .line 57
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mInsidePaint:Landroid/graphics/Paint;

    .line 58
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 59
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mShareBtnPaint:Landroid/graphics/Paint;

    .line 60
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mDeleteBtnPaint:Landroid/graphics/Paint;

    .line 102
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mContext:Landroid/content/Context;

    .line 103
    new-instance p2, Lcom/android/systemui/screenshot/ScreenshotTouchHandler;

    invoke-direct {p2, p1}, Lcom/android/systemui/screenshot/ScreenshotTouchHandler;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mTouchHandler:Lcom/android/systemui/screenshot/ScreenshotTouchHandler;

    .line 105
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 106
    sget p2, Lcom/android/systemui/R$dimen;->mz_screenshot_subtract_left:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mSubtractLeft:I

    .line 107
    sget p2, Lcom/android/systemui/R$dimen;->mz_screenshot_subtract_top:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mSubtractTop:I

    .line 108
    sget p2, Lcom/android/systemui/R$dimen;->recents_task_view_rounded_corners_radius:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mRadius:I

    .line 109
    iget-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mRoundPaint:Landroid/graphics/Paint;

    sget v0, Lcom/android/systemui/R$color;->screenshot_round_line_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    iget-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mRoundPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 111
    iget-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mRoundPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 112
    iget-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mRoundPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 113
    iget-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mBitmapPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    iget-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mBackroundPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/systemui/R$color;->screenshot_back_color:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 116
    iget-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mInsidePaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/systemui/R$color;->screenshot_insert_line_color:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 117
    iget-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mInsidePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000  # 2.0f

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 118
    iget-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mInsidePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 119
    iget-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mInsidePaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 120
    iget-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mInsidePaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 121
    sget p2, Lcom/android/systemui/R$drawable;->ic_share_bg:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mShareButton:Landroid/graphics/Bitmap;

    .line 122
    sget p2, Lcom/android/systemui/R$drawable;->ic_delete_bg:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mDeleteButton:Landroid/graphics/Bitmap;

    .line 125
    sget p2, Lcom/android/systemui/R$drawable;->mz_screenshot_bg:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mShadowDrawble:Landroid/graphics/drawable/NinePatchDrawable;

    .line 126
    sget p2, Lcom/android/systemui/R$dimen;->screenshot_thumview_round_left:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->roundLeft:F

    .line 127
    sget p2, Lcom/android/systemui/R$dimen;->screenshot_thumview_round_top:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->roundTop:F

    .line 128
    sget p2, Lcom/android/systemui/R$dimen;->screenshot_thumview_round_bottom:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->roundBottom:F

    .line 130
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->refreshValues()V

    const/4 p1, 0x0

    .line 131
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->refreshRects(F)V

    return-void
.end method

.method private getScaledRect(F)Landroid/graphics/RectF;
    .registers 6

    .line 344
    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->scaleLeft:F

    mul-float v1, v0, p1

    sub-float/2addr v0, v1

    .line 345
    iget v1, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->scaleTop:F

    mul-float v2, v1, p1

    sub-float/2addr v1, v2

    .line 346
    iget v2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->scaleRight:F

    iget v3, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mScreenWidth:F

    sub-float/2addr v3, v2

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    .line 347
    iget v3, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->scaleBottom:F

    iget p0, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mScreenHeight:F

    sub-float/2addr p0, v3

    mul-float/2addr p0, p1

    add-float/2addr v3, p0

    .line 348
    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p0
.end method

.method private initRects()V
    .registers 8

    .line 174
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mRoundRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->inLeft:F

    iget v2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->roundLeft:F

    sub-float v3, v1, v2

    float-to-int v3, v3

    iget v4, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->inTop:F

    iget v5, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->roundTop:F

    sub-float v5, v4, v5

    float-to-int v5, v5

    iget v6, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mBitmapWidth:F

    add-float/2addr v1, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mBitmapHeight:F

    add-float/2addr v4, v2

    iget v2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->roundBottom:F

    add-float/2addr v4, v2

    float-to-int v2, v4

    invoke-virtual {v0, v3, v5, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 175
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mBackroundRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->left:F

    const/high16 v2, 0x3f800000  # 1.0f

    add-float v3, v1, v2

    iget v4, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->top:F

    add-float v5, v4, v2

    iget v6, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mViewWidth:F

    add-float/2addr v1, v6

    sub-float/2addr v1, v2

    iget v6, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mViewHeight:F

    add-float/2addr v4, v6

    sub-float/2addr v4, v2

    invoke-virtual {v0, v3, v5, v1, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 176
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mBitmapRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->inLeft:F

    iget v2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->inTop:F

    iget v3, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mBitmapWidth:F

    add-float/2addr v3, v1

    iget v4, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mBitmapHeight:F

    add-float/2addr v4, v2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 177
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mInsideRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->inLeft:F

    iget v2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->inTop:F

    iget v3, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mBitmapWidth:F

    add-float/2addr v3, v1

    iget v4, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mBitmapHeight:F

    add-float/2addr v4, v2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 178
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mShareButtonRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->shareLeft:F

    iget v2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->shareTop:F

    iget v3, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->shareWidth:F

    add-float/2addr v3, v1

    iget v4, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->shareHeight:F

    add-float/2addr v4, v2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 179
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mDeleteButtonRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->deleteLeft:F

    iget v2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->shareTop:F

    iget v3, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->shareWidth:F

    add-float/2addr v3, v1

    iget v4, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->shareHeight:F

    add-float/2addr v4, v2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 180
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mShadowDrawble:Landroid/graphics/drawable/NinePatchDrawable;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mRoundRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method private neerDelete(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 263
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mDeleteButtonRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_32

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mDeleteButtonRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_32

    .line 264
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mDeleteButtonRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_32

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mDeleteButtonRect:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float p0, p1, p0

    if-gez p0, :cond_32

    const/4 p0, 0x1

    return p0

    :cond_32
    const/4 p0, 0x0

    return p0
.end method

.method private neerShare(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 255
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mShareButtonRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_32

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mShareButtonRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_32

    .line 256
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mShareButtonRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_32

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mShareButtonRect:Landroid/graphics/RectF;

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float p0, p1, p0

    if-gez p0, :cond_32

    const/4 p0, 0x1

    return p0

    :cond_32
    const/4 p0, 0x0

    return p0
.end method

.method private refreshRects(F)V
    .registers 9

    .line 184
    iput p1, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mValue:F

    .line 186
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mRoundRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->inLeft:F

    iget v2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->roundLeft:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->inTop:F

    const/high16 v3, 0x3f800000  # 1.0f

    sub-float v4, v3, p1

    iget v5, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mScreenHeight:F

    iget v6, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->top:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v4

    add-float/2addr v2, v5

    float-to-int v2, v2

    int-to-float v2, v2

    iget v5, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->roundTop:F

    sub-float/2addr v2, v5

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 187
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mBackroundRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->top:F

    add-float/2addr v3, v2

    iget v5, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mScreenHeight:F

    sub-float/2addr v5, v2

    mul-float/2addr v5, v4

    add-float/2addr v3, v5

    invoke-virtual {v0, v1, v3}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 188
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mBitmapRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->inLeft:F

    iget v2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->inTop:F

    iget v3, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mScreenHeight:F

    iget v5, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->top:F

    sub-float/2addr v3, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 189
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mInsideRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->inLeft:F

    iget v2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->inTop:F

    iget v3, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mScreenHeight:F

    iget v5, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->top:F

    sub-float/2addr v3, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 190
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mShareButtonRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->shareLeft:F

    iget v2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->shareTop:F

    iget v3, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mScreenHeight:F

    iget v5, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->top:F

    sub-float/2addr v3, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 191
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mDeleteButtonRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->deleteLeft:F

    iget v2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->shareTop:F

    iget v3, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mScreenHeight:F

    iget v5, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->top:F

    sub-float/2addr v3, v5

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 192
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mShadowDrawble:Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mRoundRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 193
    new-instance v0, Ljava/math/BigDecimal;

    float-to-double v1, p1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    .line 194
    new-instance p1, Ljava/math/BigDecimal;

    const-wide v1, 0x3ff19999a0000000L  # 1.100000023841858

    invoke-direct {p1, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    .line 196
    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p1

    if-nez p1, :cond_9e

    .line 197
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mBitmapRect:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->scaleLeft:F

    .line 198
    iget v0, p1, Landroid/graphics/RectF;->top:F

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->scaleTop:F

    .line 199
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->scaleRight:F

    .line 200
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iput p1, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->scaleBottom:F

    :cond_9e
    return-void
.end method


# virtual methods
.method public getBitmapRect()Landroid/graphics/Rect;
    .registers 5

    .line 340
    new-instance v0, Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mBitmapRect:Landroid/graphics/RectF;

    iget v1, p0, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p0, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v3, p0, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    float-to-int p0, p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getValue()F
    .registers 1

    .line 356
    iget p0, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mValue:F

    return p0
.end method

.method public onAnimationUpdate(F)V
    .registers 4

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenshotThumbnailView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->refreshRects(F)V

    .line 310
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 224
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 225
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v0, 0x0

    .line 226
    invoke-direct {p0, v0}, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->refreshRects(F)V

    return-void
.end method

.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .registers 6

    const/4 v0, 0x3

    .line 231
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 232
    iget-object p1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mRoundRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget p0, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->shareHeight:F

    add-float/2addr v0, p0

    float-to-int p0, v0

    invoke-virtual {p1, v1, v2, v3, p0}, Landroid/graphics/Region;->set(IIII)Z

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 361
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 362
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mCallback:Lcom/android/systemui/screenshot/ScreenshotTouchHandler$ScreenshotCallback;

    if-eqz p0, :cond_a

    .line 363
    invoke-interface {p0}, Lcom/android/systemui/screenshot/ScreenshotTouchHandler$ScreenshotCallback;->hide()V

    :cond_a
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    .line 206
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 207
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mShadowDrawble:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 208
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 209
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 211
    :cond_2b
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mInsideRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mInsidePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 212
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mShareButton:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4c

    .line 213
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mShareButton:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mShareButtonRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mShareBtnPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 216
    :cond_4c
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mDeleteButton:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_66

    .line 217
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mDeleteButton:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mDeleteButtonRect:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mDeleteBtnPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_66
    return-void
.end method

.method public onFadeAnimUpdate(F)V
    .registers 4

    .line 323
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    const v0, 0x3ca3d70a  # 0.02f

    mul-float/2addr p1, v0

    const v0, 0x3f7ae148  # 0.98f

    add-float/2addr p1, v0

    .line 325
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 326
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 327
    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mScreenHeight:F

    const/high16 v1, 0x3f800000  # 1.0f

    sub-float/2addr v1, p1

    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mRoundRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v1, p1

    mul-float/2addr v0, v1

    iget p1, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mScreenHeight:F

    iget v1, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->top:F

    sub-float/2addr p1, v1

    div-float/2addr v0, p1

    const/high16 p1, 0x40000000  # 2.0f

    div-float/2addr v0, p1

    .line 328
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onRefreshThumb()V
    .registers 2

    .line 281
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->refreshValues()V

    const v0, 0x3f8ccccd  # 1.1f

    .line 282
    invoke-direct {p0, v0}, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->refreshRects(F)V

    .line 283
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    .line 238
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mTouchHandler:Lcom/android/systemui/screenshot/ScreenshotTouchHandler;

    invoke-virtual {p1, p2}, Lcom/android/systemui/screenshot/ScreenshotTouchHandler;->onTouch(Landroid/view/MotionEvent;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    return v0

    .line 241
    :cond_a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_18

    .line 242
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_35

    .line 243
    :cond_18
    invoke-direct {p0, p2}, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->neerShare(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 244
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mCallback:Lcom/android/systemui/screenshot/ScreenshotTouchHandler$ScreenshotCallback;

    invoke-interface {p0}, Lcom/android/systemui/screenshot/ScreenshotTouchHandler$ScreenshotCallback;->onShareClicked()V

    goto :goto_35

    .line 245
    :cond_24
    invoke-direct {p0, p2}, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->neerDelete(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 246
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mCallback:Lcom/android/systemui/screenshot/ScreenshotTouchHandler$ScreenshotCallback;

    invoke-interface {p0}, Lcom/android/systemui/screenshot/ScreenshotTouchHandler$ScreenshotCallback;->onDeleteClicked()V

    goto :goto_35

    .line 248
    :cond_30
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mCallback:Lcom/android/systemui/screenshot/ScreenshotTouchHandler$ScreenshotCallback;

    invoke-interface {p0}, Lcom/android/systemui/screenshot/ScreenshotTouchHandler$ScreenshotCallback;->enterGallery()V

    :cond_35
    :goto_35
    return v0
.end method

.method public onTouchYUpdate(F)V
    .registers 8

    .line 294
    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mScreenHeight:F

    iget v1, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->top:F

    sub-float/2addr v0, v1

    div-float v0, p1, v0

    const/high16 v1, 0x3f800000  # 1.0f

    sub-float/2addr v1, v0

    float-to-double v2, v1

    const-wide v4, 0x3ff199999999999aL  # 1.1

    cmpl-double v0, v2, v4

    if-lez v0, :cond_17

    const v1, 0x3f8ccccd  # 1.1f

    .line 298
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "y = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", value = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ScreenshotThumbnailView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-direct {p0, v1}, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->refreshRects(F)V

    .line 300
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    const/4 p1, 0x0

    .line 301
    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_4a

    .line 302
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mContext:Landroid/content/Context;

    const-string p1, "1"

    invoke-static {p0, p1}, Lcom/flyme/systemui/utils/SystemUIMobEventUtils;->collectScreenshotWindow(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4a
    return-void
.end method

.method public final refreshValues()V
    .registers 10

    .line 136
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 137
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 138
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 139
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 141
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_28

    const/4 v2, 0x1

    goto :goto_29

    :cond_28
    const/4 v2, 0x0

    :goto_29
    iput-boolean v2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->isLandscape:Z

    .line 143
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    iput v2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mScreenWidth:F

    .line 144
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mScreenHeight:F

    .line 146
    iget v1, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mScreenWidth:F

    const/high16 v2, 0x3e800000  # 0.25f

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mViewWidth:F

    .line 147
    iget v2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mScreenHeight:F

    const v3, 0x3e73b646  # 0.238f

    mul-float/2addr v3, v2

    iput v3, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mViewHeight:F

    const v3, 0x3e6b851f  # 0.23f

    mul-float/2addr v1, v3

    .line 148
    iput v1, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mBitmapWidth:F

    mul-float/2addr v2, v3

    .line 149
    iput v2, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mBitmapHeight:F

    .line 150
    sget v1, Lcom/android/systemui/R$dimen;->screenshot_thumview_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 151
    sget v2, Lcom/android/systemui/R$dimen;->screenshot_thumview_share_top:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 153
    iget-boolean v3, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->isLandscape:Z

    if-eqz v3, :cond_60

    sget v3, Lcom/android/systemui/R$dimen;->screenshot_thumview_land_delete_left:I

    goto :goto_62

    :cond_60
    sget v3, Lcom/android/systemui/R$dimen;->screenshot_thumview_delete_left:I

    :goto_62
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 154
    iget-boolean v4, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->isLandscape:Z

    if-eqz v4, :cond_6d

    sget v4, Lcom/android/systemui/R$dimen;->screenshot_thumview_land_share_left:I

    goto :goto_6f

    :cond_6d
    sget v4, Lcom/android/systemui/R$dimen;->screenshot_thumview_share_left:I

    :goto_6f
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 156
    iget v4, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mScreenWidth:F

    iget v5, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mViewWidth:F

    sub-float v5, v4, v5

    const/high16 v6, 0x40000000  # 2.0f

    div-float/2addr v5, v6

    iget v7, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mSubtractLeft:I

    int-to-float v7, v7

    sub-float/2addr v5, v7

    iput v5, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->left:F

    .line 157
    iget v5, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mScreenHeight:F

    const v7, 0x3f29ba5e  # 0.663f

    mul-float/2addr v7, v5

    iget v8, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mSubtractTop:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    int-to-float v1, v1

    sub-float/2addr v7, v1

    iput v7, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->top:F

    .line 158
    iget v7, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mBitmapWidth:F

    sub-float/2addr v4, v7

    div-float/2addr v4, v6

    iput v4, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->inLeft:F

    const v4, 0x3f333333  # 0.7f

    mul-float/2addr v5, v4

    sub-float/2addr v5, v1

    .line 159
    iput v5, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->inTop:F

    .line 160
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mShareButton:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->shareWidth:F

    .line 161
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mShareButton:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->shareHeight:F

    .line 162
    iget v1, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->left:F

    int-to-float v0, v0

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->shareLeft:F

    .line 163
    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mViewWidth:F

    add-float/2addr v1, v0

    int-to-float v0, v3

    sub-float/2addr v1, v0

    float-to-int v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->deleteLeft:F

    .line 164
    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->inTop:F

    iget v1, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mBitmapHeight:F

    add-float/2addr v0, v1

    int-to-float v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->shareTop:F

    .line 165
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->initRects()V

    return-void
.end method

.method public setCallback(Lcom/android/systemui/screenshot/ScreenshotTouchHandler$ScreenshotCallback;)V
    .registers 2

    .line 274
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mCallback:Lcom/android/systemui/screenshot/ScreenshotTouchHandler$ScreenshotCallback;

    .line 275
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mTouchHandler:Lcom/android/systemui/screenshot/ScreenshotTouchHandler;

    if-eqz p0, :cond_9

    .line 276
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotTouchHandler;->setCallback(Lcom/android/systemui/screenshot/ScreenshotTouchHandler$ScreenshotCallback;)V

    :cond_9
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 271
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setShadowAlpha(I)V
    .registers 3

    .line 315
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mShadowDrawble:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 316
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mShareBtnPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 317
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mDeleteBtnPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 318
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public updateScale(F)V
    .registers 4

    const v0, 0x3f666666  # 0.9f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_a

    const p1, 0x3f6e147b  # 0.93f

    .line 334
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scale = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenshotThumbnailView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->mBitmapRect:Landroid/graphics/RectF;

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotThumbnailView;->getScaledRect(F)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 336
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
