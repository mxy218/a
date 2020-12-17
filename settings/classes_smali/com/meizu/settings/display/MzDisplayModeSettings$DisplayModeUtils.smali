.class public Lcom/meizu/settings/display/MzDisplayModeSettings$DisplayModeUtils;
.super Ljava/lang/Object;
.source "MzDisplayModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/display/MzDisplayModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayModeUtils"
.end annotation


# direct methods
.method public static getCurrentDisplayMode(Landroid/content/Context;)I
    .registers 3

    .line 158
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "mz_display_lut_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getDisplayModeFragment()Ljava/lang/String;
    .registers 1

    .line 179
    const-class v0, Lcom/meizu/settings/display/FlymeDisplayModeUseLutFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayModeValuesArray()I
    .registers 1

    const v0, 0x7f030072

    return v0
.end method

.method public static supportDisplayMode(Landroid/content/Context;)Z
    .registers 1

    .line 190
    invoke-static {p0}, Lcom/meizu/settings/utils/MzUtils;->isGuestUser(Landroid/content/Context;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
