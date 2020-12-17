.class public Lcom/android/launcher3/icons/GraphicsUtils;
.super Ljava/lang/Object;
.source "GraphicsUtils.java"


# direct methods
.method public static getArea(Landroid/graphics/Region;)I
    .registers 5

    .line 68
    new-instance v0, Landroid/graphics/RegionIterator;

    invoke-direct {v0, p0}, Landroid/graphics/RegionIterator;-><init>(Landroid/graphics/Region;)V

    .line 70
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    .line 71
    :goto_b
    invoke-virtual {v0, p0}, Landroid/graphics/RegionIterator;->next(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 72
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    goto :goto_b

    :cond_1c
    return v1
.end method

.method public static setColorAlphaBound(II)I
    .registers 3
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    const/16 v0, 0xff

    if-gez p1, :cond_6

    const/4 p1, 0x0

    goto :goto_9

    :cond_6
    if-le p1, v0, :cond_9

    move p1, v0

    :cond_9
    :goto_9
    const v0, 0xffffff

    and-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method
