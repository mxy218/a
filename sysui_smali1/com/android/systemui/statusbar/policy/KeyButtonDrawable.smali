.class public Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "KeyButtonDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;
    }
.end annotation


# static fields
.field public static final KEY_DRAWABLE_ROTATE:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_DRAWABLE_TRANSLATE_Y:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private final mIconPaint:Landroid/graphics/Paint;

.field private final mShadowPaint:Landroid/graphics/Paint;

.field private final mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 53
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$1;

    const-string v1, "KeyButtonRotation"

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->KEY_DRAWABLE_ROTATE:Landroid/util/FloatProperty;

    .line 66
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$2;

    const-string v1, "KeyButtonTranslateY"

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->KEY_DRAWABLE_TRANSLATE_Y:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;IIZLandroid/graphics/Color;)V
    .registers 13

    .line 86
    new-instance v6, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    instance-of v3, p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    move-object v0, v6

    move v1, p2

    move v2, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;-><init>(IIZZLandroid/graphics/Color;)V

    invoke-direct {p0, p1, v6}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;-><init>(Landroid/graphics/drawable/Drawable;Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;)V

    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/Drawable;Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;)V
    .registers 5

    .line 90
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 79
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mIconPaint:Landroid/graphics/Paint;

    .line 80
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mShadowPaint:Landroid/graphics/Paint;

    .line 91
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    if-eqz p1, :cond_36

    .line 93
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p2, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mBaseHeight:I

    .line 94
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p2, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mBaseWidth:I

    .line 95
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iput v0, p2, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mChangingConfigurations:I

    .line 96
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    iput-object p1, p2, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mChildState:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 98
    :cond_36
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->canAnimate()Z

    move-result p1

    if-eqz p1, :cond_51

    .line 99
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mChildState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 100
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setDrawableBounds(Landroid/graphics/drawable/Drawable;)V

    :cond_51
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/Drawable;Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$1;)V
    .registers 4

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;-><init>(Landroid/graphics/drawable/Drawable;Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;)V

    return-void
.end method

.method public static create(Landroid/content/Context;IIIZLandroid/graphics/Color;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .registers 16

    .line 471
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 472
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_12

    move v1, v3

    goto :goto_13

    :cond_12
    move v1, v2

    .line 473
    :goto_13
    invoke-virtual {p0, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 474
    new-instance p3, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    if-eqz v1, :cond_23

    .line 475
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result v1

    if-eqz v1, :cond_23

    move v8, v3

    goto :goto_24

    :cond_23
    move v8, v2

    :goto_24
    move-object v4, p3

    move v6, p1

    move v7, p2

    move-object v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIZLandroid/graphics/Color;)V

    if-eqz p4, :cond_48

    .line 477
    sget p1, Lcom/android/systemui/R$dimen;->nav_key_button_shadow_offset_x:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 478
    sget p2, Lcom/android/systemui/R$dimen;->nav_key_button_shadow_offset_y:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 479
    sget p4, Lcom/android/systemui/R$dimen;->nav_key_button_shadow_radius:I

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    .line 480
    sget p5, Lcom/android/systemui/R$color;->nav_key_button_shadow_color:I

    invoke-virtual {p0, p5}, Landroid/content/Context;->getColor(I)I

    move-result p0

    .line 481
    invoke-virtual {p3, p1, p2, p4, p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setShadowProperties(IIII)V

    :cond_48
    return-object p3
.end method

.method public static create(Landroid/content/Context;IZ)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .registers 4

    const/4 v0, 0x0

    .line 449
    invoke-static {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->create(Landroid/content/Context;IZLandroid/graphics/Color;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/content/Context;IZLandroid/graphics/Color;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .registers 7

    .line 435
    sget v0, Lcom/android/systemui/R$attr;->darkIconTheme:I

    invoke-static {p0, v0}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v0

    .line 436
    sget v1, Lcom/android/systemui/R$attr;->lightIconTheme:I

    invoke-static {p0, v1}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v1

    .line 437
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 438
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, p0, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 439
    invoke-static {v2, v1, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->create(Landroid/content/Context;Landroid/content/Context;IZLandroid/graphics/Color;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/content/Context;Landroid/content/Context;IZLandroid/graphics/Color;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .registers 12

    .line 458
    sget v0, Lcom/android/systemui/R$attr;->singleToneColor:I

    .line 459
    invoke-static {p0, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v2

    sget v0, Lcom/android/systemui/R$attr;->singleToneColor:I

    .line 460
    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v3

    move-object v1, p0

    move v4, p2

    move v5, p3

    move-object v6, p4

    .line 458
    invoke-static/range {v1 .. v6}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->create(Landroid/content/Context;IIIZLandroid/graphics/Color;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object p0

    return-object p0
.end method

.method private regenerateBitmapIconCache()V
    .registers 9

    .line 293
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getIntrinsicWidth()I

    move-result v0

    .line 294
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getIntrinsicHeight()I

    move-result v1

    .line 295
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 296
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 299
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mChildState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 300
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setDrawableBounds(Landroid/graphics/drawable/Drawable;)V

    .line 301
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 302
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mHorizontalFlip:Z

    if-eqz v5, :cond_38

    const/high16 v5, -0x40800000  # -1.0f

    const/high16 v6, 0x3f800000  # 1.0f

    int-to-float v0, v0

    const/high16 v7, 0x3f000000  # 0.5f

    mul-float/2addr v0, v7

    int-to-float v1, v1

    mul-float/2addr v1, v7

    .line 303
    invoke-virtual {v3, v5, v6, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 305
    :cond_38
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 306
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 308
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mIsHardwareBitmap:Z

    if-eqz v0, :cond_4b

    .line 309
    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 311
    :cond_4b
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mLastDrawnIcon:Landroid/graphics/Bitmap;

    return-void
.end method

.method private regenerateBitmapShadowCache()V
    .registers 10

    .line 315
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v1, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 317
    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mLastDrawnIcon:Landroid/graphics/Bitmap;

    return-void

    .line 321
    :cond_a
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getIntrinsicWidth()I

    move-result v0

    .line 322
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getIntrinsicHeight()I

    move-result v1

    .line 323
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 324
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 327
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget-object v5, v5, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mChildState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 328
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setDrawableBounds(Landroid/graphics/drawable/Drawable;)V

    .line 329
    invoke-virtual {v4}, Landroid/graphics/Canvas;->save()I

    .line 330
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget-boolean v6, v6, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mHorizontalFlip:Z

    if-eqz v6, :cond_42

    const/high16 v6, -0x40800000  # -1.0f

    const/high16 v7, 0x3f800000  # 1.0f

    int-to-float v0, v0

    const/high16 v8, 0x3f000000  # 0.5f

    mul-float/2addr v0, v8

    int-to-float v1, v1

    mul-float/2addr v1, v8

    .line 331
    invoke-virtual {v4, v6, v7, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 333
    :cond_42
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 334
    invoke-virtual {v4}, Landroid/graphics/Canvas;->restore()V

    .line 337
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 338
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v5, v5, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    int-to-float v5, v5

    sget-object v6, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v5, v6}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 340
    invoke-virtual {v3, v0, v1}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 341
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    const/4 v2, 0x0

    .line 342
    invoke-virtual {v3, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 343
    aget v6, v1, v2

    int-to-float v6, v6

    const/4 v7, 0x1

    aget v1, v1, v7

    int-to-float v1, v1

    invoke-virtual {v4, v5, v6, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 345
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mIsHardwareBitmap:Z

    if-eqz v0, :cond_81

    .line 346
    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 348
    :cond_81
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mLastDrawnShadow:Landroid/graphics/Bitmap;

    return-void
.end method

.method private setDrawableBounds(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .line 367
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v1, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    iget v0, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetX:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr v1, v0

    .line 368
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v2, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    iget v0, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetY:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr v2, v0

    .line 369
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getIntrinsicWidth()I

    move-result v0

    sub-int/2addr v0, v1

    .line 370
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getIntrinsicHeight()I

    move-result p0

    sub-int/2addr p0, v2

    .line 369
    invoke-virtual {p1, v1, v2, v0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method private updateShadowAlpha()V
    .registers 5

    .line 357
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 358
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mShadowPaint:Landroid/graphics/Paint;

    int-to-float v0, v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mAlpha:I

    int-to-float v2, v2

    const/high16 v3, 0x437f0000  # 255.0f

    div-float/2addr v2, v3

    mul-float/2addr v0, v2

    iget p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mDarkIntensity:F

    const/high16 v2, 0x3f800000  # 1.0f

    sub-float/2addr v2, p0

    mul-float/2addr v0, v2

    .line 359
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 358
    invoke-virtual {v1, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method


# virtual methods
.method public canAnimate()Z
    .registers 1

    .line 216
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mSupportsAnimation:Z

    return p0
.end method

.method public canApplyTheme()Z
    .registers 1

    .line 281
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->canApplyTheme()Z

    move-result p0

    return p0
.end method

.method public clearAnimationCallbacks()V
    .registers 1

    .line 232
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz p0, :cond_7

    .line 233
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->clearAnimationCallbacks()V

    :cond_7
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 12

    .line 239
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 240
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    return-void

    .line 244
    :cond_b
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v1, :cond_14

    .line 245
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_bf

    .line 249
    :cond_14
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mIsHardwareBitmap:Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v2

    if-eq v1, v2, :cond_20

    const/4 v1, 0x1

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    if-eqz v1, :cond_2b

    .line 251
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mIsHardwareBitmap:Z

    .line 253
    :cond_2b
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mLastDrawnIcon:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_33

    if-eqz v1, :cond_36

    .line 254
    :cond_33
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->regenerateBitmapIconCache()V

    .line 256
    :cond_36
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 257
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v3, v2, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mTranslationX:F

    iget v2, v2, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mTranslationY:F

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 258
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mRotateDegrees:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->getIntrinsicHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 260
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v3, v2, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    if-lez v3, :cond_b2

    .line 261
    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mLastDrawnShadow:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_63

    if-eqz v1, :cond_66

    .line 262
    :cond_63
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->regenerateBitmapShadowCache()V

    .line 266
    :cond_66
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mRotateDegrees:F

    float-to-double v1, v1

    const-wide v3, 0x400921fb54442d18L  # Math.PI

    mul-double/2addr v1, v3

    const-wide v3, 0x4066800000000000L  # 180.0

    div-double/2addr v1, v3

    double-to-float v1, v1

    float-to-double v1, v1

    .line 267
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v5, v5, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetY:I

    int-to-double v5, v5

    mul-double/2addr v3, v5

    .line 268
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v8, v7, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetX:I

    int-to-double v8, v8

    mul-double/2addr v5, v8

    add-double/2addr v3, v5

    double-to-float v3, v3

    iget v4, v7, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mTranslationX:F

    sub-float/2addr v3, v4

    .line 269
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v6, v6, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetY:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    .line 270
    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v7, v6, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetX:I

    int-to-double v7, v7

    mul-double/2addr v1, v7

    sub-double/2addr v4, v1

    double-to-float v1, v4

    iget v2, v6, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mTranslationY:F

    sub-float/2addr v1, v2

    .line 271
    iget-object v2, v6, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mLastDrawnShadow:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 274
    :cond_b2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mLastDrawnIcon:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 275
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_bf
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .registers 1

    .line 197
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    return-object p0
.end method

.method public getDarkIntensity()F
    .registers 1

    .line 180
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mDarkIntensity:F

    return p0
.end method

.method getDrawableBackgroundColor()I
    .registers 1

    .line 285
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mOvalBackgroundColor:Landroid/graphics/Color;

    invoke-virtual {p0}, Landroid/graphics/Color;->toArgb()I

    move-result p0

    return p0
.end method

.method public getIntrinsicHeight()I
    .registers 3

    .line 207
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mBaseHeight:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    iget p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetY:I

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    add-int/2addr v1, p0

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 3

    .line 212
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mBaseWidth:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    iget p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetX:I

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    add-int/2addr v1, p0

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public getOpacity()I
    .registers 1

    const/4 p0, -0x3

    return p0
.end method

.method public getRotation()F
    .registers 1

    .line 184
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mRotateDegrees:F

    return p0
.end method

.method public getTranslationY()F
    .registers 1

    .line 192
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mTranslationY:F

    return p0
.end method

.method hasOvalBg()Z
    .registers 1

    .line 289
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mOvalBackgroundColor:Landroid/graphics/Color;

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public resetAnimation()V
    .registers 1

    .line 226
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz p0, :cond_7

    .line 227
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->reset()V

    :cond_7
    return-void
.end method

.method public setAlpha(I)V
    .registers 3

    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mAlpha:I

    .line 160
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 161
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->updateShadowAlpha()V

    .line 162
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 5

    .line 167
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mIconPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_25

    .line 169
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->hasOvalBg()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 170
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mLightColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_25

    .line 173
    :cond_20
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 176
    :cond_25
    :goto_25
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setDarkIntensity(F)V
    .registers 5

    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mDarkIntensity:F

    .line 106
    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mLightColor:I

    .line 107
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mDarkColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 106
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 108
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->updateShadowAlpha()V

    .line 109
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setRotation(F)V
    .registers 4

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 117
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v1, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mRotateDegrees:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_14

    .line 118
    iput p1, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mRotateDegrees:F

    .line 119
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_14
    return-void
.end method

.method public setShadowProperties(IIII)V
    .registers 7

    .line 140
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 144
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v1, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetX:I

    if-ne v1, p1, :cond_19

    iget v1, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetY:I

    if-ne v1, p2, :cond_19

    iget v1, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    if-ne v1, p3, :cond_19

    iget v0, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowColor:I

    if-eq v0, p4, :cond_37

    .line 146
    :cond_19
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetX:I

    .line 147
    iput p2, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowOffsetY:I

    .line 148
    iput p3, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowSize:I

    .line 149
    iput p4, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowColor:I

    .line 150
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mShadowPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    iget p3, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mShadowColor:I

    sget-object p4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3, p4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 152
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->updateShadowAlpha()V

    .line 153
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_37
    return-void
.end method

.method public setTranslation(FF)V
    .registers 5

    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v1, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mTranslationX:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_e

    iget v0, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mTranslationY:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_17

    .line 133
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mTranslationX:F

    .line 134
    iput p2, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mTranslationY:F

    .line 135
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_17
    return-void
.end method

.method public setTranslationY(F)V
    .registers 3

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mState:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable$ShadowDrawableState;->mTranslationX:F

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->setTranslation(FF)V

    return-void
.end method

.method public startAnimation()V
    .registers 1

    .line 220
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->mAnimatedDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz p0, :cond_7

    .line 221
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :cond_7
    return-void
.end method
