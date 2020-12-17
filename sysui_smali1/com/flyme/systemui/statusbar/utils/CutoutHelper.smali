.class public Lcom/flyme/systemui/statusbar/utils/CutoutHelper;
.super Ljava/lang/Object;
.source "CutoutHelper.java"


# direct methods
.method public static getFilterHeaderMarginTop(Landroid/content/res/Resources;I)I
    .registers 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_a

    .line 48
    sget p1, Lcom/android/systemui/R$dimen;->filter_header_margin_top_landscape:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 50
    :cond_a
    invoke-static {}, Lcom/flyme/systemui/statusbar/utils/CutoutHelper;->isCutoutScreen()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 51
    sget p1, Lcom/android/systemui/R$dimen;->filter_header_margin_top_portrait_cutout:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 53
    :cond_17
    sget p1, Lcom/android/systemui/R$dimen;->filter_header_margin_top_portrait:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getQsPeekHeight(Landroid/content/res/Resources;I)I
    .registers 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_a

    .line 36
    sget p1, Lcom/android/systemui/R$dimen;->qs_peek_height_landscape:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 38
    :cond_a
    invoke-static {}, Lcom/flyme/systemui/statusbar/utils/CutoutHelper;->isCutoutScreen()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 39
    sget p1, Lcom/android/systemui/R$dimen;->qs_peek_height_portrait_cutout:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    .line 41
    :cond_17
    sget p1, Lcom/android/systemui/R$dimen;->qs_peek_height_portrait:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static isCutoutScreen()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method
