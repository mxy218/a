.class public Lcom/android/launcher3/icons/BaseIconFactory;
.super Ljava/lang/Object;
.source "BaseIconFactory.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/icons/BaseIconFactory$FixedSizeBitmapDrawable;
    }
.end annotation


# static fields
.field static final ATLEAST_OREO:Z

.field static final ATLEAST_P:Z


# instance fields
.field private final mCanvas:Landroid/graphics/Canvas;

.field private final mColorExtractor:Lcom/android/launcher3/icons/ColorExtractor;

.field protected final mContext:Landroid/content/Context;

.field private mDisableColorExtractor:Z

.field protected final mFillResIconDpi:I

.field protected final mIconBitmapSize:I

.field private mNormalizer:Lcom/android/launcher3/icons/IconNormalizer;

.field private final mOldBounds:Landroid/graphics/Rect;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mShapeDetection:Z

.field private mWrapperBackgroundColor:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    :goto_b
    sput-boolean v0, Lcom/android/launcher3/icons/BaseIconFactory;->ATLEAST_OREO:Z

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v0, v3, :cond_14

    goto :goto_15

    :cond_14
    move v1, v2

    :goto_15
    sput-boolean v1, Lcom/android/launcher3/icons/BaseIconFactory;->ATLEAST_P:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;II)V
    .registers 5

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/icons/BaseIconFactory;-><init>(Landroid/content/Context;IIZ)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;IIZ)V
    .registers 6

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mOldBounds:Landroid/graphics/Rect;

    const/4 v0, -0x1

    .line 53
    iput v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWrapperBackgroundColor:I

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    .line 58
    iput-boolean p4, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mShapeDetection:Z

    .line 59
    iput p2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mFillResIconDpi:I

    .line 60
    iput p3, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    .line 62
    iget-object p1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mPm:Landroid/content/pm/PackageManager;

    .line 63
    new-instance p1, Lcom/android/launcher3/icons/ColorExtractor;

    invoke-direct {p1}, Lcom/android/launcher3/icons/ColorExtractor;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mColorExtractor:Lcom/android/launcher3/icons/ColorExtractor;

    .line 65
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    .line 66
    iget-object p1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    new-instance p2, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 p3, 0x4

    const/4 p4, 0x2

    invoke-direct {p2, p3, p4}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/launcher3/icons/BaseIconFactory;->clear()V

    return-void
.end method

.method private convertDrawableToBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;
    .registers 5
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 374
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez p1, :cond_9

    return-object v0

    .line 378
    :cond_9
    iget-object v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    .line 379
    invoke-virtual {p1, v1, v1, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 380
    iget-object p2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 382
    iget-object p0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private createIconBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;
    .registers 4

    .line 272
    iget v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;FI)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private normalizeAndWrapToAdaptiveIcon(Landroid/graphics/drawable/Drawable;ZLandroid/graphics/RectF;[F)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-object p1
.end method


# virtual methods
.method public badgeWithDrawable(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 256
    iget-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 257
    iget-object p1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/icons/BaseIconFactory;->badgeWithDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V

    .line 258
    iget-object p0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public badgeWithDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .line 265
    iget-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/icons/R$dimen;->profile_badge_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 266
    iget p0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    sub-int v1, p0, v0

    sub-int v0, p0, v0

    invoke-virtual {p2, v1, v0, p0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 268
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected clear()V
    .registers 2

    const/4 v0, -0x1

    .line 75
    iput v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mWrapperBackgroundColor:I

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mDisableColorExtractor:Z

    return-void
.end method

.method public close()V
    .registers 1

    .line 335
    invoke-virtual {p0}, Lcom/android/launcher3/icons/BaseIconFactory;->clear()V

    return-void
.end method

.method public createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Z)Lcom/android/launcher3/icons/BitmapInfo;
    .registers 10

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 121
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/icons/BaseIconFactory;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;ZZ[F)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method

.method public createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;ZZ[F)Lcom/android/launcher3/icons/BitmapInfo;
    .registers 9
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p5, :cond_5

    const/4 p5, 0x1

    new-array p5, p5, [F

    :cond_5
    const/high16 v0, 0x3f800000  # 1.0f

    const/4 v1, 0x0

    .line 164
    aput v0, p5, v1

    const/4 v2, 0x0

    .line 166
    invoke-direct {p0, p1, p3, v2, p5}, Lcom/android/launcher3/icons/BaseIconFactory;->normalizeAndWrapToAdaptiveIcon(Landroid/graphics/drawable/Drawable;ZLandroid/graphics/RectF;[F)Landroid/graphics/drawable/Drawable;

    .line 167
    aget p3, p5, v1

    invoke-direct {p0, p1, p3}, Lcom/android/launcher3/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 169
    sget-boolean p5, Lcom/android/launcher3/icons/BaseIconFactory;->ATLEAST_OREO:Z

    if-eqz p5, :cond_26

    instance-of p1, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz p1, :cond_26

    .line 170
    iget-object p1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 174
    iget-object p1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_26
    if-eqz p4, :cond_33

    .line 178
    iget-object p1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    sget p4, Lcom/android/launcher3/icons/R$drawable;->ic_instant_app_badge:I

    invoke-virtual {p1, p4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/android/launcher3/icons/BaseIconFactory;->badgeWithDrawable(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V

    :cond_33
    if-eqz p2, :cond_4f

    .line 181
    new-instance p1, Lcom/android/launcher3/icons/BaseIconFactory$FixedSizeBitmapDrawable;

    invoke-direct {p1, p3}, Lcom/android/launcher3/icons/BaseIconFactory$FixedSizeBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 182
    iget-object p3, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p3, p1, p2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 183
    instance-of p2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p2, :cond_4b

    .line 184
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p3

    goto :goto_4f

    .line 186
    :cond_4b
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/icons/BaseIconFactory;->createIconBitmap(Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 189
    :cond_4f
    :goto_4f
    iget-boolean p1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mDisableColorExtractor:Z

    if-eqz p1, :cond_54

    goto :goto_56

    :cond_54
    iget-object v2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mColorExtractor:Lcom/android/launcher3/icons/ColorExtractor;

    :goto_56
    invoke-static {p3, v2}, Lcom/android/launcher3/icons/BitmapInfo;->fromBitmap(Landroid/graphics/Bitmap;Lcom/android/launcher3/icons/ColorExtractor;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p0

    return-object p0
.end method

.method public createIconBitmap(Landroid/graphics/drawable/Drawable;FI)Landroid/graphics/Bitmap;
    .registers 4
    .param p1  # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 282
    invoke-direct {p0, p1, p3}, Lcom/android/launcher3/icons/BaseIconFactory;->convertDrawableToBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getNormalizer()Lcom/android/launcher3/icons/IconNormalizer;
    .registers 5

    .line 87
    iget-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mNormalizer:Lcom/android/launcher3/icons/IconNormalizer;

    if-nez v0, :cond_11

    .line 88
    new-instance v0, Lcom/android/launcher3/icons/IconNormalizer;

    iget-object v1, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mIconBitmapSize:I

    iget-boolean v3, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mShapeDetection:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/icons/IconNormalizer;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mNormalizer:Lcom/android/launcher3/icons/IconNormalizer;

    .line 90
    :cond_11
    iget-object p0, p0, Lcom/android/launcher3/icons/BaseIconFactory;->mNormalizer:Lcom/android/launcher3/icons/IconNormalizer;

    return-object p0
.end method
