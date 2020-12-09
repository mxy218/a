.class Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CarUserSwitchingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/CarUserSwitchingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CircleFramedDrawable"
.end annotation


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private mDstRect:Landroid/graphics/RectF;

.field private final mPaint:Landroid/graphics/Paint;

.field private mScale:F

.field private final mSize:I

.field private mSrcRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .registers 10

    .line 118
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 119
    iput p2, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mSize:I

    .line 121
    iget p2, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mSize:I

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 122
    new-instance p2, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 124
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 125
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 126
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 128
    new-instance v3, Landroid/graphics/Rect;

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-direct {v3, v0, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 130
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mSize:I

    int-to-float v2, v1

    int-to-float v1, v1

    const/4 v4, 0x0

    invoke-direct {v0, v4, v4, v2, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 132
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 133
    const/high16 v2, 0x43b40000  # 360.0f

    invoke-virtual {v1, v0, v4, v2}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 135
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v5, 0x0

    invoke-virtual {p2, v5, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 138
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    .line 139
    iget-object v2, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 140
    iget-object v2, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 v6, -0x1000000

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    iget-object v2, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 142
    iget-object v2, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 145
    iget-object v1, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 146
    iget-object v1, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v3, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 149
    iget-object p1, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 151
    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mScale:F

    .line 153
    new-instance p1, Landroid/graphics/Rect;

    iget p2, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mSize:I

    invoke-direct {p1, v5, v5, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mSrcRect:Landroid/graphics/Rect;

    .line 154
    new-instance p1, Landroid/graphics/RectF;

    iget p2, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mSize:I

    int-to-float v0, p2

    int-to-float p2, p2

    invoke-direct {p1, v4, v4, v0, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mDstRect:Landroid/graphics/RectF;

    .line 155
    return-void
.end method

.method public static getInstance(Landroid/graphics/Bitmap;F)Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;
    .registers 3

    .line 113
    new-instance v0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;

    float-to-int p1, p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;-><init>(Landroid/graphics/Bitmap;I)V

    .line 114
    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 159
    iget v0, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mScale:F

    iget v1, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mSize:I

    int-to-float v2, v1

    mul-float/2addr v0, v2

    .line 160
    int-to-float v2, v1

    sub-float/2addr v2, v0

    const/high16 v0, 0x40000000  # 2.0f

    div-float/2addr v2, v0

    .line 162
    iget-object v0, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mDstRect:Landroid/graphics/RectF;

    int-to-float v3, v1

    sub-float/2addr v3, v2

    int-to-float v1, v1

    sub-float/2addr v1, v2

    invoke-virtual {v0, v2, v2, v3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 163
    iget-object v0, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mSrcRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/am/CarUserSwitchingDialog$CircleFramedDrawable;->mDstRect:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 164
    return-void
.end method

.method public getOpacity()I
    .registers 2

    .line 168
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .registers 2

    .line 174
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    .line 179
    return-void
.end method
