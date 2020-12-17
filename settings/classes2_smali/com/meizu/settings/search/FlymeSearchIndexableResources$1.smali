.class Lcom/meizu/settings/search/FlymeSearchIndexableResources$1;
.super Lcom/meizu/settings/search/BaseSearchIndexProvider;
.source "FlymeSearchIndexableResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/search/FlymeSearchIndexableResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 260
    invoke-direct {p0}, Lcom/meizu/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/meizu/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .line 263
    invoke-static {p1}, Lcom/meizu/settings/utils/MzUtils;->isGuestUser(Landroid/content/Context;)Z

    move-result p0

    .line 265
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_190

    const-string p0, "com.meizu.account.ACCOUNTCENTER"

    const-string v0, "com.meizu.account"

    .line 267
    invoke-static {p1, v0, p0}, Lcom/meizu/settings/utils/MzUtils;->isPackageExistAndHasAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 270
    new-instance v0, Lcom/meizu/settings/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/meizu/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string v1, "flyme_account"

    .line 271
    iput-object v1, v0, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    const v1, 0x7f1208aa

    .line 272
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/meizu/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 273
    iget-object v1, v0, Lcom/meizu/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/meizu/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 274
    iput-object p0, v0, Landroid/provider/SearchIndexableData;->intentAction:Ljava/lang/String;

    const p0, 0x7f080478

    .line 275
    iput p0, v0, Landroid/provider/SearchIndexableData;->iconResId:I

    const/16 p0, 0xd

    .line 276
    iput p0, v0, Landroid/provider/SearchIndexableData;->rank:I

    .line 277
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_39
    new-instance p0, Lcom/meizu/settings/search/SearchIndexableRaw;

    invoke-direct {p0, p1}, Lcom/meizu/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string v0, "battery_settings"

    .line 281
    iput-object v0, p0, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    const v0, 0x7f121036

    .line 282
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 283
    iget-object v0, p0, Lcom/meizu/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    const-string v0, "com.meizu.power.POWER_UI_MAIN"

    .line 284
    iput-object v0, p0, Landroid/provider/SearchIndexableData;->intentAction:Ljava/lang/String;

    const v1, 0x7f08046c

    .line 285
    iput v1, p0, Landroid/provider/SearchIndexableData;->iconResId:I

    const/16 v1, 0xf

    .line 286
    iput v1, p0, Landroid/provider/SearchIndexableData;->rank:I

    const-string v1, "com.meizu.battery"

    .line 287
    invoke-static {p1, v1, v0}, Lcom/meizu/settings/utils/MzUtils;->isPackageExistAndHasAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 289
    iput-object v1, p0, Landroid/provider/SearchIndexableData;->intentTargetPackage:Ljava/lang/String;

    goto :goto_71

    :cond_67
    const-string v1, "com.meizu.safe"

    .line 290
    invoke-static {p1, v1, v0}, Lcom/meizu/settings/utils/MzUtils;->isPackageExistAndHasAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 292
    iput-object v1, p0, Landroid/provider/SearchIndexableData;->intentTargetPackage:Ljava/lang/String;

    .line 295
    :cond_71
    :goto_71
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    new-instance p0, Lcom/meizu/settings/search/SearchIndexableRaw;

    invoke-direct {p0, p1}, Lcom/meizu/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string v0, "system_upgrade"

    .line 298
    iput-object v0, p0, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    const v0, 0x7f1215b2

    .line 299
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 300
    iget-object v0, p0, Lcom/meizu/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    const-string v0, "flyme.settings.SYSTEM_UPDATE_SETTINGS"

    .line 301
    iput-object v0, p0, Landroid/provider/SearchIndexableData;->intentAction:Ljava/lang/String;

    const v0, 0x7f0807a1

    .line 302
    iput v0, p0, Landroid/provider/SearchIndexableData;->iconResId:I

    .line 303
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "com.meizu.flymelab"

    .line 305
    invoke-static {p1, p0}, Lcom/meizu/settings/utils/MzUtils;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c0

    .line 306
    new-instance p0, Lcom/meizu/settings/search/SearchIndexableRaw;

    invoke-direct {p0, p1}, Lcom/meizu/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string v0, "flyme_lab"

    .line 307
    iput-object v0, p0, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    const v0, 0x7f1208b7

    .line 308
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 309
    iget-object v0, p0, Lcom/meizu/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    const-string v0, "com.meizu.flymelab.SHOW_FEATURES"

    .line 310
    iput-object v0, p0, Landroid/provider/SearchIndexableData;->intentAction:Ljava/lang/String;

    const v0, 0x7f080494

    .line 311
    iput v0, p0, Landroid/provider/SearchIndexableData;->iconResId:I

    .line 312
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_c0
    new-instance p0, Lcom/meizu/settings/search/SearchIndexableRaw;

    invoke-direct {p0, p1}, Lcom/meizu/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string v0, "sos_settings"

    .line 316
    iput-object v0, p0, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    const v0, 0x7f12146d

    .line 317
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 318
    iget-object v0, p0, Lcom/meizu/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    const-string v0, "com.meizu.contacts.action.SOS_SETTINGS"

    .line 319
    iput-object v0, p0, Landroid/provider/SearchIndexableData;->intentAction:Ljava/lang/String;

    const v0, 0x7f080786

    .line 320
    iput v0, p0, Landroid/provider/SearchIndexableData;->iconResId:I

    .line 321
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "com.meizu.customizecenter"

    .line 323
    invoke-static {p1, p0}, Lcom/meizu/settings/utils/MzUtils;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10c

    .line 324
    new-instance p0, Lcom/meizu/settings/search/SearchIndexableRaw;

    invoke-direct {p0, p1}, Lcom/meizu/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string v0, "customize_center"

    .line 325
    iput-object v0, p0, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    const v0, 0x7f1215d7

    .line 326
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 327
    iget-object v0, p0, Lcom/meizu/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    const-string v0, "com.meizu.settings.MZWALLPAPERTYPE_SETTINGS"

    .line 328
    iput-object v0, p0, Landroid/provider/SearchIndexableData;->intentAction:Ljava/lang/String;

    const v0, 0x7f08048c

    .line 329
    iput v0, p0, Landroid/provider/SearchIndexableData;->iconResId:I

    .line 330
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    :cond_10c
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.nfc"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_142

    .line 334
    new-instance p0, Lcom/meizu/settings/search/SearchIndexableRaw;

    invoke-direct {p0, p1}, Lcom/meizu/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string v0, "toggle_nfc"

    .line 335
    iput-object v0, p0, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    const v0, 0x7f120ecd

    .line 336
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 337
    iget-object v0, p0, Lcom/meizu/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/meizu/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    const-string v0, "android.intent.action.VIEW"

    .line 338
    iput-object v0, p0, Landroid/provider/SearchIndexableData;->intentAction:Ljava/lang/String;

    const-string v0, "com.meizu.connectivitysettings"

    .line 339
    iput-object v0, p0, Landroid/provider/SearchIndexableData;->intentTargetPackage:Ljava/lang/String;

    const-string v0, "com.meizu.connectivitysettings.Settings$NfcSettingsActivity"

    .line 340
    iput-object v0, p0, Landroid/provider/SearchIndexableData;->intentTargetClass:Ljava/lang/String;

    const v0, 0x7f08074b

    .line 341
    iput v0, p0, Landroid/provider/SearchIndexableData;->iconResId:I

    .line 342
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_142
    const-string p0, "com.meizu.sceneinfo"

    .line 345
    invoke-static {p1, p0}, Lcom/meizu/settings/utils/MzUtils;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    const v0, 0x7f080467

    const v1, 0x7f1206ea

    const-string v2, "digital_health"

    if-eqz p0, :cond_16c

    .line 346
    new-instance p0, Lcom/meizu/settings/search/SearchIndexableRaw;

    invoke-direct {p0, p1}, Lcom/meizu/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 347
    iput-object v2, p0, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 348
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 349
    iget-object v3, p0, Lcom/meizu/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    iput-object v3, p0, Lcom/meizu/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    const-string v3, "com.meizu.digitalwellbeing.VIEW"

    .line 350
    iput-object v3, p0, Landroid/provider/SearchIndexableData;->intentAction:Ljava/lang/String;

    .line 351
    iput v0, p0, Landroid/provider/SearchIndexableData;->iconResId:I

    .line 352
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_16c
    const-string p0, "com.google.android.apps.wellbeing"

    .line 355
    invoke-static {p1, p0}, Lcom/meizu/settings/utils/MzUtils;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_190

    .line 356
    new-instance v3, Lcom/meizu/settings/search/SearchIndexableRaw;

    invoke-direct {v3, p1}, Lcom/meizu/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 357
    iput-object v2, v3, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 358
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v3, Lcom/meizu/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 359
    iget-object p1, v3, Lcom/meizu/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    iput-object p1, v3, Lcom/meizu/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    const-string p1, "com.google.android.apps.wellbeing.action.HOME"

    .line 360
    iput-object p1, v3, Landroid/provider/SearchIndexableData;->intentAction:Ljava/lang/String;

    .line 361
    iput-object p0, v3, Landroid/provider/SearchIndexableData;->intentTargetPackage:Ljava/lang/String;

    .line 362
    iput v0, v3, Landroid/provider/SearchIndexableData;->iconResId:I

    .line 363
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_190
    return-object p2
.end method
