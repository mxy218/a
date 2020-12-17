.class public final Lcom/android/keyguard/clock/ClockPalette;
.super Ljava/lang/Object;
.source "ClockPalette.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nClockPalette.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClockPalette.kt\ncom/android/keyguard/clock/ClockPalette\n*L\n1#1,74:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0014\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\r\u001a\u00020\u0004J\u0006\u0010\u000e\u001a\u00020\u0004J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014J\u000e\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u0008R\u000e\u0010\u0003\u001a\u00020\u0004X\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\nX\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"
    }
    d2 = {
        "Lcom/android/keyguard/clock/ClockPalette;",
        "",
        "()V",
        "accentPrimary",
        "",
        "accentSecondaryDark",
        "accentSecondaryLight",
        "darkAmount",
        "",
        "darkHSV",
        "",
        "hsv",
        "lightHSV",
        "getPrimaryColor",
        "getSecondaryColor",
        "setColorPalette",
        "",
        "supportsDarkText",
        "",
        "colorPalette",
        "",
        "setDarkAmount",
        "name"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field private accentPrimary:I

.field private accentSecondaryDark:I

.field private accentSecondaryLight:I

.field private darkAmount:F

.field private final darkHSV:[F

.field private final hsv:[F

.field private final lightHSV:[F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lcom/android/keyguard/clock/ClockPalette;->accentPrimary:I

    .line 33
    iput v0, p0, Lcom/android/keyguard/clock/ClockPalette;->accentSecondaryLight:I

    const/high16 v0, -0x1000000

    .line 34
    iput v0, p0, Lcom/android/keyguard/clock/ClockPalette;->accentSecondaryDark:I

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 35
    iput-object v1, p0, Lcom/android/keyguard/clock/ClockPalette;->lightHSV:[F

    new-array v1, v0, [F

    .line 36
    iput-object v1, p0, Lcom/android/keyguard/clock/ClockPalette;->darkHSV:[F

    new-array v0, v0, [F

    .line 37
    iput-object v0, p0, Lcom/android/keyguard/clock/ClockPalette;->hsv:[F

    return-void
.end method


# virtual methods
.method public final getPrimaryColor()I
    .registers 1

    .line 41
    iget p0, p0, Lcom/android/keyguard/clock/ClockPalette;->accentPrimary:I

    return p0
.end method

.method public final getSecondaryColor()I
    .registers 6

    .line 46
    iget v0, p0, Lcom/android/keyguard/clock/ClockPalette;->accentSecondaryLight:I

    iget-object v1, p0, Lcom/android/keyguard/clock/ClockPalette;->lightHSV:[F

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 47
    iget v0, p0, Lcom/android/keyguard/clock/ClockPalette;->accentSecondaryDark:I

    iget-object v1, p0, Lcom/android/keyguard/clock/ClockPalette;->darkHSV:[F

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v0, 0x0

    :goto_f
    const/4 v1, 0x2

    if-gt v0, v1, :cond_27

    .line 49
    iget-object v1, p0, Lcom/android/keyguard/clock/ClockPalette;->hsv:[F

    iget-object v2, p0, Lcom/android/keyguard/clock/ClockPalette;->darkHSV:[F

    aget v2, v2, v0

    iget-object v3, p0, Lcom/android/keyguard/clock/ClockPalette;->lightHSV:[F

    aget v3, v3, v0

    iget v4, p0, Lcom/android/keyguard/clock/ClockPalette;->darkAmount:F

    invoke-static {v2, v3, v4}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 51
    :cond_27
    iget-object p0, p0, Lcom/android/keyguard/clock/ClockPalette;->hsv:[F

    invoke-static {p0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p0

    return p0
.end method

.method public final setColorPalette(Z[I)V
    .registers 6

    if-eqz p2, :cond_31

    .line 56
    array-length v0, p2

    const/4 v1, 0x0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    move v0, v1

    :goto_9
    if-eqz v0, :cond_c

    goto :goto_31

    .line 62
    :cond_c
    array-length v0, p2

    add-int/lit8 v2, v0, -0x5

    .line 63
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    aget v2, p2, v2

    iput v2, p0, Lcom/android/keyguard/clock/ClockPalette;->accentPrimary:I

    add-int/lit8 v2, v0, -0x2

    .line 64
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    aget v2, p2, v2

    iput v2, p0, Lcom/android/keyguard/clock/ClockPalette;->accentSecondaryLight:I

    if-eqz p1, :cond_26

    const/16 p1, 0x8

    goto :goto_27

    :cond_26
    const/4 p1, 0x2

    :goto_27
    sub-int/2addr v0, p1

    .line 65
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    aget p1, p2, p1

    iput p1, p0, Lcom/android/keyguard/clock/ClockPalette;->accentSecondaryDark:I

    return-void

    :cond_31
    :goto_31
    const/4 p2, -0x1

    .line 57
    iput p2, p0, Lcom/android/keyguard/clock/ClockPalette;->accentPrimary:I

    .line 58
    iput p2, p0, Lcom/android/keyguard/clock/ClockPalette;->accentSecondaryLight:I

    if-eqz p1, :cond_3a

    const/high16 p2, -0x1000000

    .line 59
    :cond_3a
    iput p2, p0, Lcom/android/keyguard/clock/ClockPalette;->accentSecondaryDark:I

    return-void
.end method

.method public final setDarkAmount(F)V
    .registers 2

    .line 71
    iput p1, p0, Lcom/android/keyguard/clock/ClockPalette;->darkAmount:F

    return-void
.end method
