.class public Lcom/android/systemui/util/leak/RotationUtils;
.super Ljava/lang/Object;
.source "RotationUtils.java"


# direct methods
.method public static getExactRotation(Landroid/content/Context;)I
    .registers 3

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    .line 44
    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x258

    if-ge v0, v1, :cond_22

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1a

    return v0

    :cond_1a
    const/4 v0, 0x2

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1f

    return v0

    :cond_1f
    if-ne p0, v0, :cond_22

    return v1

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method public static getRotation(Landroid/content/Context;)I
    .registers 3

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    .line 31
    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x258

    if-ge v0, v1, :cond_1f

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1a

    return v0

    :cond_1a
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1f

    const/4 p0, 0x2

    return p0

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method
