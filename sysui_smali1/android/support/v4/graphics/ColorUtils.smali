.class public final Landroid/support/v4/graphics/ColorUtils;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# static fields
.field private static final TEMP_ARRAY:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[D>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 45
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/v4/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    return-void
.end method

.method static circularInterpolate(FFF)F
    .registers 5
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    sub-float v0, p1, p0

    .line 667
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43340000  # 180.0f

    cmpl-float v0, v0, v1

    const/high16 v1, 0x43b40000  # 360.0f

    if-lez v0, :cond_15

    cmpl-float v0, p1, p0

    if-lez v0, :cond_14

    add-float/2addr p0, v1

    goto :goto_15

    :cond_14
    add-float/2addr p1, v1

    :cond_15
    :goto_15
    sub-float/2addr p1, p0

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    rem-float/2addr p0, v1

    return p0
.end method

.method private static compositeAlpha(II)I
    .registers 2

    rsub-int p1, p1, 0xff

    rsub-int p0, p0, 0xff

    mul-int/2addr p1, p0

    .line 131
    div-int/lit16 p1, p1, 0xff

    rsub-int p0, p1, 0xff

    return p0
.end method

.method public static compositeColors(II)I
    .registers 8
    .param p0  # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1  # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 53
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 54
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 55
    invoke-static {v1, v0}, Landroid/support/v4/graphics/ColorUtils;->compositeAlpha(II)I

    move-result v2

    .line 57
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 58
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 57
    invoke-static {v3, v1, v4, v0, v2}, Landroid/support/v4/graphics/ColorUtils;->compositeComponent(IIIII)I

    move-result v3

    .line 59
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 60
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 59
    invoke-static {v4, v1, v5, v0, v2}, Landroid/support/v4/graphics/ColorUtils;->compositeComponent(IIIII)I

    move-result v4

    .line 61
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    .line 62
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 61
    invoke-static {p0, v1, p1, v0, v2}, Landroid/support/v4/graphics/ColorUtils;->compositeComponent(IIIII)I

    move-result p0

    .line 64
    invoke-static {v2, v3, v4, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private static compositeComponent(IIIII)I
    .registers 5

    if-nez p4, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    mul-int/lit16 p0, p0, 0xff

    mul-int/2addr p0, p1

    mul-int/2addr p2, p3

    rsub-int p1, p1, 0xff

    mul-int/2addr p2, p1

    add-int/2addr p0, p2

    mul-int/lit16 p4, p4, 0xff

    .line 136
    div-int/2addr p0, p4

    return p0
.end method

.method public static setAlphaComponent(II)I
    .registers 3
    .param p0  # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1  # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    if-ltz p1, :cond_e

    const/16 v0, 0xff

    if-gt p1, v0, :cond_e

    const v0, 0xffffff

    and-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0

    .line 366
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "alpha must be between 0 and 255."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
