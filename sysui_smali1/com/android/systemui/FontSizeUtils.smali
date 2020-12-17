.class public Lcom/android/systemui/FontSizeUtils;
.super Ljava/lang/Object;
.source "FontSizeUtils.java"


# direct methods
.method public static restoreTypeface(Landroid/widget/TextView;)V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 62
    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;Z)V

    return-void
.end method

.method public static updateFontFamily(Landroid/view/View;ILandroid/graphics/Typeface;)V
    .registers 3

    .line 65
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-static {p0, p2}, Lcom/android/systemui/FontSizeUtils;->updateFontFamily(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    return-void
.end method

.method public static updateFontFamily(Landroid/widget/TextView;Landroid/graphics/Typeface;)V
    .registers 2

    if-eqz p0, :cond_b

    if-nez p1, :cond_8

    .line 53
    invoke-static {p0}, Lcom/android/systemui/FontSizeUtils;->restoreTypeface(Landroid/widget/TextView;)V

    goto :goto_b

    .line 55
    :cond_8
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_b
    :goto_b
    return-void
.end method

.method public static updateFontSize(Landroid/view/View;II)V
    .registers 3

    .line 32
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-static {p0, p2}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    return-void
.end method

.method public static updateFontSize(Landroid/widget/TextView;I)V
    .registers 4

    if-eqz p0, :cond_f

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    .line 37
    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_f
    return-void
.end method
