.class Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings$1;
.super Lcom/meizu/settings/search/BaseSearchIndexProvider;
.source "FlymeNavigationAndRecentsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 314
    invoke-direct {p0}, Lcom/meizu/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 326
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 328
    invoke-static {}, Lcom/meizu/settings/utils/MzUtils;->hasHardwareMainKeys()Z

    move-result v0

    .line 329
    invoke-static {p1}, Lcom/meizu/settings/utils/MzUtils;->isGuestUser(Landroid/content/Context;)Z

    move-result v1

    .line 330
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v2

    const-string v3, "com.meizu.voiceassistant"

    .line 331
    invoke-static {p1, v3}, Lcom/meizu/settings/utils/MzUtils;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_24

    const-string v3, "com.google.android.googlequicksearchbox"

    .line 332
    invoke-static {p1, v3}, Lcom/meizu/settings/utils/MzUtils;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_24

    :cond_22
    const/4 v3, 0x0

    goto :goto_25

    :cond_24
    :goto_24
    const/4 v3, 0x1

    :goto_25
    const-string v4, "home_long_press"

    if-eqz v3, :cond_2b

    if-eqz v1, :cond_2e

    .line 334
    :cond_2b
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2e
    if-nez v1, :cond_32

    if-nez v0, :cond_3a

    :cond_32
    const-string v3, "home_double_click"

    .line 338
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3a
    if-nez v1, :cond_3e

    if-eqz v0, :cond_43

    :cond_3e
    const-string v0, "power_double_click"

    .line 343
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_43
    if-nez v1, :cond_4b

    .line 347
    invoke-static {p1}, Lcom/meizu/settings/utils/MzUtils;->isEasyModeOpened(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_50

    :cond_4b
    const-string p1, "quick_wakeup"

    .line 348
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_50
    if-nez v1, :cond_54

    if-eqz v2, :cond_59

    :cond_54
    const-string p1, "app_small_window"

    .line 353
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_59
    return-object p0
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .line 319
    new-instance p0, Landroid/provider/SearchIndexableResource;

    invoke-direct {p0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    const p1, 0x7f16006c

    .line 320
    iput p1, p0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/provider/SearchIndexableResource;

    const/4 p2, 0x0

    aput-object p0, p1, p2

    .line 321
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
