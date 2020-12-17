.class public Lcom/flyme/systemuitools/aod/utils/PixelUtil;
.super Ljava/lang/Object;
.source "PixelUtil.java"


# direct methods
.method public static Dp2Px(Landroid/content/Context;F)F
    .registers 3

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method
