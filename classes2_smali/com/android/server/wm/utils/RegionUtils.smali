.class public Lcom/android/server/wm/utils/RegionUtils;
.super Ljava/lang/Object;
.source "RegionUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forEachRectReverse(Landroid/graphics/Region;Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Region;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 59
    new-instance v0, Landroid/graphics/RegionIterator;

    invoke-direct {v0, p0}, Landroid/graphics/RegionIterator;-><init>(Landroid/graphics/Region;)V

    .line 60
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 62
    :goto_f
    invoke-virtual {v0, v1}, Landroid/graphics/RegionIterator;->next(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 63
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 67
    :cond_1e
    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 68
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 69
    return-void
.end method

.method public static rectListToRegion(Ljava/util/List;Landroid/graphics/Region;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;",
            "Landroid/graphics/Region;",
            ")V"
        }
    .end annotation

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Region;->setEmpty()V

    .line 44
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 45
    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_16

    .line 46
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 48
    :cond_16
    return-void
.end method
