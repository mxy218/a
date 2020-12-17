.class Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings$8;
.super Lcom/meizu/settings/search/BaseSearchIndexProvider;
.source "FlymeDeviceInfoSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/deviceinfo/FlymeDeviceInfoSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 414
    invoke-direct {p0}, Lcom/meizu/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .registers 4
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

    .line 430
    invoke-super {p0, p1}, Lcom/meizu/settings/search/BaseSearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 431
    invoke-static {p1}, Lcom/meizu/settings/utils/MzUtils;->isGuestUser(Landroid/content/Context;)Z

    move-result p1

    .line 432
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v0

    if-eqz p1, :cond_13

    const-string v1, "device_name"

    .line 435
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    if-nez v0, :cond_1d

    .line 438
    invoke-static {}, Landroid/os/BuildExt;->isFlymeRom()Z

    move-result v1

    if-nez v1, :cond_1d

    if-eqz p1, :cond_29

    :cond_1d
    const-string/jumbo p1, "service_info"

    .line 439
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo p1, "user_help"

    .line 440
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_29
    if-nez v0, :cond_31

    .line 443
    invoke-static {}, Lcom/meizu/settings/utils/MzUtils;->showNAL()Z

    move-result p1

    if-nez p1, :cond_36

    :cond_31
    const-string p1, "network_access_license"

    .line 444
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    :cond_36
    invoke-static {}, Lcom/meizu/settings/utils/MzUtils;->isCTA()Z

    move-result p1

    if-nez p1, :cond_41

    const-string p1, "firmware_version"

    .line 448
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_41
    const-string p1, "build_number"

    .line 451
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo p1, "security_patch"

    .line 452
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    .line 418
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 421
    new-instance p2, Landroid/provider/SearchIndexableResource;

    invoke-direct {p2, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    const p1, 0x7f16009d

    .line 422
    iput p1, p2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 423
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
