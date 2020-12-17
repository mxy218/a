.class public Lcom/meizu/settings/language/FlymeRegion;
.super Ljava/lang/Object;
.source "FlymeRegion.java"


# direct methods
.method public static getCountryName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 47
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    .line 48
    new-instance v0, Ljava/util/Locale;

    const-string v1, "zh"

    invoke-direct {v0, v1, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0, p0}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCurrentCountryCode(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_region"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {p0}, Lcom/meizu/settings/language/FlymeRegion;->getDefaultCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_14
    return-object v0
.end method

.method public static getCurrentCountryName(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 42
    invoke-static {p0}, Lcom/meizu/settings/language/FlymeRegion;->getCurrentCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-static {p0, v0}, Lcom/meizu/settings/language/FlymeRegion;->getCountryName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDefaultCode(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 60
    invoke-static {}, Lcom/meizu/settings/utils/MzUtils;->isAboveAndroidM()Z

    move-result p0

    const-string v0, "CN"

    if-eqz p0, :cond_24

    const-string p0, "ro.product.locale"

    const-string v1, "zh-CN"

    .line 61
    invoke-static {p0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const-string v1, "-"

    .line 62
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_23

    .line 63
    array-length v1, p0

    const/4 v2, 0x1

    if-le v1, v2, :cond_23

    .line 64
    aget-object p0, p0, v2

    return-object p0

    :cond_23
    return-object v0

    :cond_24
    const-string p0, "ro.product.locale.region"

    .line 69
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static initDefaultCountValue(Landroid/content/Context;)V
    .registers 3

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_region"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 55
    invoke-static {p0}, Lcom/meizu/settings/language/FlymeRegion;->getDefaultCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/meizu/settings/language/FlymeRegion;->setCountry(Landroid/content/Context;Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method public static setCountry(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "mz_region"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 30
    sget-object p0, Landroid/os/BuildExt;->IS_SHOPDEMO:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1c

    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result p0

    if-eqz p0, :cond_1c

    const-string p0, "persist.sys.meizu.region"

    .line 31
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    return-void
.end method
