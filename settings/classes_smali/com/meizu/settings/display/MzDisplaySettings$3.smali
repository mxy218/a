.class Lcom/meizu/settings/display/MzDisplaySettings$3;
.super Lcom/meizu/settings/search/BaseSearchIndexProvider;
.source "MzDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/display/MzDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 526
    invoke-direct {p0}, Lcom/meizu/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .registers 5
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

    .line 542
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 543
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/display/MzDisplaySettings;->access$200(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "automatic_brightnessr_meizu"

    .line 544
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    const-string v0, "blur_view_effect"

    .line 546
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    invoke-static {p1}, Lcom/meizu/settings/utils/MzUtils;->isGuestUser(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v1, "font_and_screen_zoom"

    .line 551
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_24
    if-nez v0, :cond_36

    .line 554
    invoke-static {p1}, Lcom/meizu/settings/utils/FlymeLabHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/utils/FlymeLabHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/settings/utils/FlymeLabHelper;->hasRaiseFlipFeature()Z

    move-result v1

    if-nez v1, :cond_36

    .line 555
    invoke-static {p1}, Lcom/meizu/settings/utils/MzUtils;->supportRaiseFlipFeature(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3c

    :cond_36
    const-string/jumbo v1, "raise_flip"

    .line 556
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3c
    if-nez v0, :cond_5a

    .line 559
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "flyme.hardware.aod"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5a

    const-string v1, "M1822"

    .line 560
    invoke-static {v1}, Lcom/meizu/settings/utils/MzUtils;->checkProductModel(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5a

    const-string v1, "M1852"

    invoke-static {v1}, Lcom/meizu/settings/utils/MzUtils;->checkProductModel(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5f

    :cond_5a
    const-string v1, "aod_switch"

    .line 561
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5f
    if-eqz v0, :cond_66

    const-string v1, "color_temperature_flyme"

    .line 565
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    :cond_66
    invoke-static {p1}, Lcom/meizu/settings/display/MzDisplayModeSettings$DisplayModeUtils;->supportDisplayMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_71

    const-string v1, "display_mode"

    .line 568
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    :cond_71
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "flyme.hardware.screen.bluelightreduction"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_83

    invoke-static {p1}, Lcom/meizu/settings/utils/MzUtils;->isGuestUser(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_88

    :cond_83
    const-string v1, "bluelight_reduction_fragment"

    .line 572
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    :cond_88
    invoke-static {p1}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleVisible(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_93

    const-string v1, "auto_rotate"

    .line 576
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_93
    const-string v1, "com.meizu.flyme.easylauncher"

    .line 579
    invoke-static {p1, v1}, Lcom/meizu/settings/utils/MzUtils;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 580
    invoke-static {p1}, Lcom/meizu/settings/utils/MzUtils;->isPowerSuperSavingMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_a3

    if-eqz v0, :cond_a8

    :cond_a3
    const-string v1, "easy_mode"

    .line 581
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a8
    const-string v1, "hide_fringe"

    .line 585
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_b5

    .line 588
    invoke-static {}, Lcom/meizu/settings/display/RAngleAdjust/FlymeRAngleAdjustController;->isRAngleFeatureSupport()Z

    move-result v0

    if-nez v0, :cond_bb

    :cond_b5
    const-string/jumbo v0, "r_angle_adjust"

    .line 589
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    :cond_bb
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v0

    if-eqz v0, :cond_c6

    const-string v0, "deep_color_mode"

    .line 593
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c6
    const-string/jumbo v0, "window"

    .line 596
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 597
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 598
    invoke-virtual {p1}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object p1

    if-eqz p1, :cond_dd

    .line 599
    array-length p1, p1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_e3

    :cond_dd
    const-string/jumbo p1, "screen_refresh_rate"

    .line 600
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e3
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

    .line 530
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 533
    new-instance p2, Landroid/provider/SearchIndexableResource;

    invoke-direct {p2, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    const p1, 0x7f16009e

    .line 534
    iput p1, p2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 535
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
