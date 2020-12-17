.class public Lcom/android/launcher3/icons/IconNormalizer;
.super Ljava/lang/Object;
.source "IconNormalizer.java"


# instance fields
.field private final mAdaptiveIconBounds:Landroid/graphics/RectF;

.field private mAdaptiveIconScale:F

.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mBounds:Landroid/graphics/Rect;

.field private final mCanvas:Landroid/graphics/Canvas;

.field private mEnableShapeDetection:Z

.field private final mLeftBorder:[F

.field private final mMatrix:Landroid/graphics/Matrix;

.field private final mMaxSize:I

.field private final mPaintMaskShape:Landroid/graphics/Paint;

.field private final mPaintMaskShapeOutline:Landroid/graphics/Paint;

.field private final mPixels:[B

.field private final mRightBorder:[F

.field private final mShapePath:Landroid/graphics/Path;


# direct methods
.method constructor <init>(Landroid/content/Context;IZ)V
    .registers 6

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    mul-int/lit8 p2, p2, 0x2

    .line 90
    iput p2, p0, Lcom/android/launcher3/icons/IconNormalizer;->mMaxSize:I

    .line 91
    iget p2, p0, Lcom/android/launcher3/icons/IconNormalizer;->mMaxSize:I

    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/icons/IconNormalizer;->mBitmap:Landroid/graphics/Bitmap;

    .line 92
    new-instance p2, Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/android/launcher3/icons/IconNormalizer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p2, p0, Lcom/android/launcher3/icons/IconNormalizer;->mCanvas:Landroid/graphics/Canvas;

    .line 93
    iget p2, p0, Lcom/android/launcher3/icons/IconNormalizer;->mMaxSize:I

    mul-int v0, p2, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/launcher3/icons/IconNormalizer;->mPixels:[B

    .line 94
    new-array v0, p2, [F

    iput-object v0, p0, Lcom/android/launcher3/icons/IconNormalizer;->mLeftBorder:[F

    .line 95
    new-array p2, p2, [F

    iput-object p2, p0, Lcom/android/launcher3/icons/IconNormalizer;->mRightBorder:[F

    .line 96
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/icons/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    .line 97
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/icons/IconNormalizer;->mAdaptiveIconBounds:Landroid/graphics/RectF;

    .line 99
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/icons/IconNormalizer;->mPaintMaskShape:Landroid/graphics/Paint;

    .line 100
    iget-object p2, p0, Lcom/android/launcher3/icons/IconNormalizer;->mPaintMaskShape:Landroid/graphics/Paint;

    const/high16 v0, -0x10000

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    iget-object p2, p0, Lcom/android/launcher3/icons/IconNormalizer;->mPaintMaskShape:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 102
    iget-object p2, p0, Lcom/android/launcher3/icons/IconNormalizer;->mPaintMaskShape:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 104
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/icons/IconNormalizer;->mPaintMaskShapeOutline:Landroid/graphics/Paint;

    .line 105
    iget-object p2, p0, Lcom/android/launcher3/icons/IconNormalizer;->mPaintMaskShapeOutline:Landroid/graphics/Paint;

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x40000000  # 2.0f

    mul-float/2addr p1, v0

    .line 105
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 107
    iget-object p1, p0, Lcom/android/launcher3/icons/IconNormalizer;->mPaintMaskShapeOutline:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 108
    iget-object p1, p0, Lcom/android/launcher3/icons/IconNormalizer;->mPaintMaskShapeOutline:Landroid/graphics/Paint;

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    iget-object p1, p0, Lcom/android/launcher3/icons/IconNormalizer;->mPaintMaskShapeOutline:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 111
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/icons/IconNormalizer;->mShapePath:Landroid/graphics/Path;

    .line 112
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/icons/IconNormalizer;->mMatrix:Landroid/graphics/Matrix;

    const/4 p1, 0x0

    .line 113
    iput p1, p0, Lcom/android/launcher3/icons/IconNormalizer;->mAdaptiveIconScale:F

    .line 114
    iput-boolean p3, p0, Lcom/android/launcher3/icons/IconNormalizer;->mEnableShapeDetection:Z

    return-void
.end method

.method private static convertToConvexArray([FIII)V
    .registers 12

    .line 360
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 362
    new-array v0, v0, [F

    add-int/lit8 v1, p2, 0x1

    const v2, 0x7f7fffff  # Float.MAX_VALUE

    const/4 v3, -0x1

    move v4, v3

    move v3, v2

    :goto_d
    if-gt v1, p3, :cond_62

    .line 370
    aget v5, p0, v1

    const/high16 v6, -0x40800000  # -1.0f

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_18

    goto :goto_5f

    :cond_18
    cmpl-float v5, v3, v2

    if-nez v5, :cond_1e

    move v4, p2

    goto :goto_44

    .line 378
    :cond_1e
    aget v5, p0, v1

    aget v6, p0, v4

    sub-float/2addr v5, v6

    sub-int v6, v1, v4

    int-to-float v6, v6

    div-float/2addr v5, v6

    sub-float/2addr v5, v3

    int-to-float v3, p1

    mul-float/2addr v5, v3

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_44

    :cond_2f
    if-le v4, p2, :cond_44

    add-int/lit8 v4, v4, -0x1

    .line 385
    aget v5, p0, v1

    aget v7, p0, v4

    sub-float/2addr v5, v7

    sub-int v7, v1, v4

    int-to-float v7, v7

    div-float/2addr v5, v7

    .line 386
    aget v7, v0, v4

    sub-float/2addr v5, v7

    mul-float/2addr v5, v3

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_2f

    .line 394
    :cond_44
    :goto_44
    aget v3, p0, v1

    aget v5, p0, v4

    sub-float/2addr v3, v5

    sub-int v5, v1, v4

    int-to-float v5, v5

    div-float/2addr v3, v5

    move v5, v4

    :goto_4e
    if-ge v5, v1, :cond_5e

    .line 397
    aput v3, v0, v5

    .line 398
    aget v6, p0, v4

    sub-int v7, v5, v4

    int-to-float v7, v7

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    aput v6, p0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4e

    :cond_5e
    move v4, v1

    :goto_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_62
    return-void
.end method

.method private static getScale(FFF)F
    .registers 6

    div-float p1, p0, p1

    const v0, 0x3f490fdb

    cmpg-float v0, p1, v0

    const/high16 v1, 0x3f800000  # 1.0f

    if-gez v0, :cond_f

    const p1, 0x3f28e38e

    goto :goto_19

    :cond_f
    const v0, 0x3f26aaab

    const v2, 0x3d25ae4f

    sub-float p1, v1, p1

    mul-float/2addr p1, v2

    add-float/2addr p1, v0

    :goto_19
    div-float/2addr p0, p2

    cmpl-float p2, p0, p1

    if-lez p2, :cond_25

    div-float/2addr p1, p0

    float-to-double p0, p1

    .line 128
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float v1, p0

    :cond_25
    return v1
.end method

.method private isShape(Landroid/graphics/Path;)Z
    .registers 5

    .line 167
    iget-object v0, p0, Lcom/android/launcher3/icons/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/icons/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000  # 1.0f

    sub-float/2addr v0, v1

    .line 168
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3d4ccccd  # 0.05f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1f

    const/4 p0, 0x0

    return p0

    .line 180
    :cond_1f
    iget-object v0, p0, Lcom/android/launcher3/icons/IconNormalizer;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 181
    iget-object v0, p0, Lcom/android/launcher3/icons/IconNormalizer;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/launcher3/icons/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher3/icons/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 182
    iget-object v0, p0, Lcom/android/launcher3/icons/IconNormalizer;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/launcher3/icons/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 183
    iget-object v0, p0, Lcom/android/launcher3/icons/IconNormalizer;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/launcher3/icons/IconNormalizer;->mShapePath:Landroid/graphics/Path;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 186
    iget-object p1, p0, Lcom/android/launcher3/icons/IconNormalizer;->mCanvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/android/launcher3/icons/IconNormalizer;->mShapePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/launcher3/icons/IconNormalizer;->mPaintMaskShape:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 189
    iget-object p1, p0, Lcom/android/launcher3/icons/IconNormalizer;->mCanvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/android/launcher3/icons/IconNormalizer;->mShapePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/launcher3/icons/IconNormalizer;->mPaintMaskShapeOutline:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 192
    invoke-direct {p0}, Lcom/android/launcher3/icons/IconNormalizer;->isTransparentBitmap()Z

    move-result p0

    return p0
.end method

.method private isTransparentBitmap()Z
    .registers 9

    .line 199
    iget-object v0, p0, Lcom/android/launcher3/icons/IconNormalizer;->mPixels:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 201
    iget-object v1, p0, Lcom/android/launcher3/icons/IconNormalizer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 203
    iget-object v0, p0, Lcom/android/launcher3/icons/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 205
    iget v2, p0, Lcom/android/launcher3/icons/IconNormalizer;->mMaxSize:I

    mul-int v3, v1, v2

    .line 207
    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v0

    const/4 v0, 0x0

    move v4, v3

    move v3, v0

    .line 210
    :goto_1c
    iget-object v5, p0, Lcom/android/launcher3/icons/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    if-ge v1, v6, :cond_40

    .line 211
    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    .line 212
    :goto_25
    iget-object v6, p0, Lcom/android/launcher3/icons/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    if-ge v5, v6, :cond_3c

    .line 213
    iget-object v6, p0, Lcom/android/launcher3/icons/IconNormalizer;->mPixels:[B

    aget-byte v6, v6, v4

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x28

    if-le v6, v7, :cond_37

    add-int/lit8 v3, v3, 0x1

    :cond_37
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    :cond_3c
    add-int/2addr v4, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_40
    int-to-float v1, v3

    .line 221
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object p0, p0, Lcom/android/launcher3/icons/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    mul-int/2addr v2, p0

    int-to-float p0, v2

    div-float/2addr v1, p0

    const p0, 0x3ba3d70a  # 0.005f

    cmpg-float p0, v1, p0

    if-gez p0, :cond_56

    const/4 v0, 0x1

    :cond_56
    return v0
.end method

.method public static normalizeAdaptiveIcon(Landroid/graphics/drawable/Drawable;ILandroid/graphics/RectF;)F
    .registers 11
    .param p2  # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 137
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    .line 138
    invoke-virtual {p0, v1, v1, p1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 140
    move-object v2, p0

    check-cast v2, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIconMask()Landroid/graphics/Path;

    move-result-object v2

    .line 141
    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    .line 142
    new-instance v4, Landroid/graphics/Region;

    invoke-direct {v4, v1, v1, p1, p1}, Landroid/graphics/Region;-><init>(IIII)V

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 144
    invoke-virtual {v3}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 145
    invoke-static {v3}, Lcom/android/launcher3/icons/GraphicsUtils;->getArea(Landroid/graphics/Region;)I

    move-result v2

    if-eqz p2, :cond_44

    int-to-float v3, p1

    .line 149
    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    div-float/2addr v4, v3

    iget v5, v1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    div-float/2addr v5, v3

    iget v6, v1, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    div-float/2addr v6, v3

    const/high16 v7, 0x3f800000  # 1.0f

    sub-float v6, v7, v6

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    sub-float/2addr v7, v1

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 155
    :cond_44
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    int-to-float p0, v2

    mul-int/2addr p1, p1

    int-to-float p1, p1

    .line 156
    invoke-static {p0, p0, p1}, Lcom/android/launcher3/icons/IconNormalizer;->getScale(FFF)F

    move-result p0

    return p0
.end method


# virtual methods
.method public declared-synchronized getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F
    .registers 22
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # Landroid/graphics/Path;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4  # [Z
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    monitor-enter p0

    .line 241
    :try_start_9
    sget-boolean v4, Lcom/android/launcher3/icons/BaseIconFactory;->ATLEAST_OREO:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_2d

    instance-of v4, v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v4, :cond_2d

    .line 242
    iget v3, v1, Lcom/android/launcher3/icons/IconNormalizer;->mAdaptiveIconScale:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_22

    .line 243
    iget v3, v1, Lcom/android/launcher3/icons/IconNormalizer;->mMaxSize:I

    iget-object v4, v1, Lcom/android/launcher3/icons/IconNormalizer;->mAdaptiveIconBounds:Landroid/graphics/RectF;

    invoke-static {v0, v3, v4}, Lcom/android/launcher3/icons/IconNormalizer;->normalizeAdaptiveIcon(Landroid/graphics/drawable/Drawable;ILandroid/graphics/RectF;)F

    move-result v0

    iput v0, v1, Lcom/android/launcher3/icons/IconNormalizer;->mAdaptiveIconScale:F

    :cond_22
    if-eqz v2, :cond_29

    .line 246
    iget-object v0, v1, Lcom/android/launcher3/icons/IconNormalizer;->mAdaptiveIconBounds:Landroid/graphics/RectF;

    invoke-virtual {v2, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 248
    :cond_29
    iget v0, v1, Lcom/android/launcher3/icons/IconNormalizer;->mAdaptiveIconScale:F
    :try_end_2b
    .catchall {:try_start_9 .. :try_end_2b} :catchall_155

    monitor-exit p0

    return v0

    .line 250
    :cond_2d
    :try_start_2d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 251
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    if-lez v4, :cond_51

    if-gtz v6, :cond_3a

    goto :goto_51

    .line 255
    :cond_3a
    iget v7, v1, Lcom/android/launcher3/icons/IconNormalizer;->mMaxSize:I

    if-gt v4, v7, :cond_42

    iget v7, v1, Lcom/android/launcher3/icons/IconNormalizer;->mMaxSize:I

    if-le v6, v7, :cond_61

    .line 256
    :cond_42
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 257
    iget v8, v1, Lcom/android/launcher3/icons/IconNormalizer;->mMaxSize:I

    mul-int/2addr v8, v4

    div-int v4, v8, v7

    .line 258
    iget v8, v1, Lcom/android/launcher3/icons/IconNormalizer;->mMaxSize:I

    mul-int/2addr v8, v6

    div-int v6, v8, v7

    goto :goto_61

    :cond_51
    :goto_51
    if-lez v4, :cond_57

    .line 253
    iget v7, v1, Lcom/android/launcher3/icons/IconNormalizer;->mMaxSize:I

    if-le v4, v7, :cond_59

    :cond_57
    iget v4, v1, Lcom/android/launcher3/icons/IconNormalizer;->mMaxSize:I

    :cond_59
    if-lez v6, :cond_5f

    .line 254
    iget v7, v1, Lcom/android/launcher3/icons/IconNormalizer;->mMaxSize:I

    if-le v6, v7, :cond_61

    :cond_5f
    iget v6, v1, Lcom/android/launcher3/icons/IconNormalizer;->mMaxSize:I

    .line 261
    :cond_61
    :goto_61
    iget-object v7, v1, Lcom/android/launcher3/icons/IconNormalizer;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 262
    invoke-virtual {v0, v8, v8, v4, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 263
    iget-object v7, v1, Lcom/android/launcher3/icons/IconNormalizer;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 265
    iget-object v0, v1, Lcom/android/launcher3/icons/IconNormalizer;->mPixels:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 266
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 267
    iget-object v7, v1, Lcom/android/launcher3/icons/IconNormalizer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 272
    iget v0, v1, Lcom/android/launcher3/icons/IconNormalizer;->mMaxSize:I

    const/4 v7, 0x1

    add-int/2addr v0, v7

    .line 282
    iget v9, v1, Lcom/android/launcher3/icons/IconNormalizer;->mMaxSize:I

    sub-int/2addr v9, v4

    const/4 v10, -0x1

    move v15, v0

    move v0, v8

    move v14, v0

    move v11, v10

    move v12, v11

    move v13, v12

    :goto_8b
    if-ge v0, v6, :cond_ce

    move v5, v10

    move/from16 v16, v14

    move v14, v8

    move v8, v5

    :goto_92
    if-ge v14, v4, :cond_aa

    .line 289
    iget-object v7, v1, Lcom/android/launcher3/icons/IconNormalizer;->mPixels:[B

    aget-byte v7, v7, v16

    and-int/lit16 v7, v7, 0xff

    const/16 v3, 0x28

    if-le v7, v3, :cond_a2

    if-ne v5, v10, :cond_a1

    move v5, v14

    :cond_a1
    move v8, v14

    :cond_a2
    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, p4

    const/4 v7, 0x1

    goto :goto_92

    :cond_aa
    add-int v14, v16, v9

    .line 299
    iget-object v3, v1, Lcom/android/launcher3/icons/IconNormalizer;->mLeftBorder:[F

    int-to-float v7, v5

    aput v7, v3, v0

    .line 300
    iget-object v3, v1, Lcom/android/launcher3/icons/IconNormalizer;->mRightBorder:[F

    int-to-float v7, v8

    aput v7, v3, v0

    if-eq v5, v10, :cond_c6

    if-ne v11, v10, :cond_bb

    move v11, v0

    .line 309
    :cond_bb
    invoke-static {v15, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 310
    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v13, v0

    move v15, v3

    move v12, v5

    :cond_c6
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, p4

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    goto :goto_8b

    :cond_ce
    const/high16 v0, 0x3f800000  # 1.0f

    if-eq v11, v10, :cond_153

    if-ne v12, v10, :cond_d6

    goto/16 :goto_153

    .line 319
    :cond_d6
    iget-object v3, v1, Lcom/android/launcher3/icons/IconNormalizer;->mLeftBorder:[F

    const/4 v5, 0x1

    invoke-static {v3, v5, v11, v13}, Lcom/android/launcher3/icons/IconNormalizer;->convertToConvexArray([FIII)V

    .line 320
    iget-object v3, v1, Lcom/android/launcher3/icons/IconNormalizer;->mRightBorder:[F

    invoke-static {v3, v10, v11, v13}, Lcom/android/launcher3/icons/IconNormalizer;->convertToConvexArray([FIII)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_e3
    if-ge v3, v6, :cond_fe

    .line 325
    iget-object v7, v1, Lcom/android/launcher3/icons/IconNormalizer;->mLeftBorder:[F

    aget v7, v7, v3

    const/high16 v8, -0x40800000  # -1.0f

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_f0

    goto :goto_fb

    .line 328
    :cond_f0
    iget-object v7, v1, Lcom/android/launcher3/icons/IconNormalizer;->mRightBorder:[F

    aget v7, v7, v3

    iget-object v8, v1, Lcom/android/launcher3/icons/IconNormalizer;->mLeftBorder:[F

    aget v8, v8, v3

    sub-float/2addr v7, v8

    add-float/2addr v7, v0

    add-float/2addr v5, v7

    :goto_fb
    add-int/lit8 v3, v3, 0x1

    goto :goto_e3

    .line 331
    :cond_fe
    iget-object v3, v1, Lcom/android/launcher3/icons/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iput v15, v3, Landroid/graphics/Rect;->left:I

    .line 332
    iget-object v3, v1, Lcom/android/launcher3/icons/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iput v12, v3, Landroid/graphics/Rect;->right:I

    .line 334
    iget-object v3, v1, Lcom/android/launcher3/icons/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iput v11, v3, Landroid/graphics/Rect;->top:I

    .line 335
    iget-object v3, v1, Lcom/android/launcher3/icons/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iput v13, v3, Landroid/graphics/Rect;->bottom:I

    if-eqz v2, :cond_130

    .line 338
    iget-object v3, v1, Lcom/android/launcher3/icons/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    int-to-float v7, v4

    div-float/2addr v3, v7

    iget-object v8, v1, Lcom/android/launcher3/icons/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    int-to-float v9, v6

    div-float/2addr v8, v9

    iget-object v10, v1, Lcom/android/launcher3/icons/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    div-float/2addr v10, v7

    sub-float v7, v0, v10

    iget-object v10, v1, Lcom/android/launcher3/icons/IconNormalizer;->mBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    div-float/2addr v10, v9

    sub-float/2addr v0, v10

    invoke-virtual {v2, v3, v8, v7, v0}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_130
    move-object/from16 v0, p4

    if-eqz v0, :cond_144

    .line 342
    iget-boolean v2, v1, Lcom/android/launcher3/icons/IconNormalizer;->mEnableShapeDetection:Z

    if-eqz v2, :cond_144

    array-length v2, v0

    if-lez v2, :cond_144

    move-object/from16 v2, p3

    .line 343
    invoke-direct {v1, v2}, Lcom/android/launcher3/icons/IconNormalizer;->isShape(Landroid/graphics/Path;)Z

    move-result v2

    const/4 v3, 0x0

    aput-boolean v2, v0, v3

    :cond_144
    const/4 v0, 0x1

    add-int/2addr v13, v0

    sub-int/2addr v13, v11

    add-int/2addr v12, v0

    sub-int/2addr v12, v15

    mul-int/2addr v13, v12

    int-to-float v0, v13

    mul-int/2addr v4, v6

    int-to-float v2, v4

    .line 347
    invoke-static {v5, v0, v2}, Lcom/android/launcher3/icons/IconNormalizer;->getScale(FFF)F

    move-result v0
    :try_end_151
    .catchall {:try_start_2d .. :try_end_151} :catchall_155

    monitor-exit p0

    return v0

    .line 316
    :cond_153
    :goto_153
    monitor-exit p0

    return v0

    :catchall_155
    move-exception v0

    monitor-exit p0

    throw v0
.end method
