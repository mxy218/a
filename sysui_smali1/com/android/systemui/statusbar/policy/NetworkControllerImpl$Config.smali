.class Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;
.super Ljava/lang/Object;
.source "NetworkControllerImpl.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Config"
.end annotation


# static fields
.field private static final NR_STATUS_STRING_TO_INDEX:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field alwaysShowCdmaRssi:Z

.field alwaysShowDataRatIcon:Z

.field alwaysShowNetworkTypeIcon:Z

.field cdmaCTVolteEnable:Z

.field hideLtePlus:Z

.field hideNoInternetState:Z

.field hspaDataDistinguishable:Z

.field inflateSignalStrengths:Z

.field listenForCapabilitiesStatusChanged:Z

.field nr5GIconMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;",
            ">;"
        }
    .end annotation
.end field

.field public nrIconDisplayGracePeriodMs:J

.field public patternOfCarrierSpecificDataIcon:Ljava/lang/String;

.field show4gFor3g:Z

.field show4gForLte:Z

.field showAtLeast3G:Z

.field showRsrpSignalLevelforLTE:Z

.field showVolteIcon:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1277
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->NR_STATUS_STRING_TO_INDEX:Ljava/util/Map;

    .line 1278
    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->NR_STATUS_STRING_TO_INDEX:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "connected_mmwave"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1279
    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->NR_STATUS_STRING_TO_INDEX:Ljava/util/Map;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "connected"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1280
    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->NR_STATUS_STRING_TO_INDEX:Ljava/util/Map;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "not_restricted_rrc_idle"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1281
    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->NR_STATUS_STRING_TO_INDEX:Ljava/util/Map;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "not_restricted_rrc_con"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1282
    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->NR_STATUS_STRING_TO_INDEX:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "restricted"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .line 1241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1248
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nr5GIconMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 1250
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showAtLeast3G:Z

    .line 1251
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->show4gFor3g:Z

    .line 1252
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowCdmaRssi:Z

    .line 1253
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->show4gForLte:Z

    .line 1254
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->hideLtePlus:Z

    .line 1256
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->inflateSignalStrengths:Z

    .line 1257
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowDataRatIcon:Z

    const-string v1, ""

    .line 1258
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->patternOfCarrierSpecificDataIcon:Ljava/lang/String;

    .line 1261
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showRsrpSignalLevelforLTE:Z

    .line 1262
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->hideNoInternetState:Z

    .line 1263
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showVolteIcon:Z

    .line 1264
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowNetworkTypeIcon:Z

    return-void
.end method

.method static add5GIconMapping(Ljava/lang/String;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1350
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1352
    array-length v1, v0

    const-string v2, "NetworkController"

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2d

    .line 1353
    sget-boolean p1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz p1, :cond_2c

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid 5G icon configuration, config = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    return-void

    :cond_2d
    const/4 p0, 0x0

    .line 1357
    aget-object p0, v0, p0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string v1, "none"

    .line 1360
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    return-void

    .line 1362
    :cond_3c
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_78

    .line 1363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add5GIconMapping: key="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",value="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",containKey="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->NR_STATUS_STRING_TO_INDEX:Ljava/util/Map;

    .line 1365
    invoke-interface {v3, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",containValue="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    .line 1366
    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1363
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    :cond_78
    sget-object v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->NR_STATUS_STRING_TO_INDEX:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9d

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    .line 1369
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 1370
    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nr5GIconMap:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->NR_STATUS_STRING_TO_INDEX:Ljava/util/Map;

    .line 1371
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    .line 1372
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 1370
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9d
    return-void
.end method

.method static readConfig(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;
    .registers 7

    .line 1286
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;-><init>()V

    .line 1287
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1289
    sget v2, Lcom/android/systemui/R$bool;->config_showMin3G:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showAtLeast3G:Z

    const v2, 0x111001e

    .line 1291
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowCdmaRssi:Z

    .line 1292
    sget v2, Lcom/android/systemui/R$bool;->config_hspa_data_distinguishable:I

    .line 1293
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->hspaDataDistinguishable:Z

    const v2, 0x111008c

    .line 1294
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->inflateSignalStrengths:Z

    .line 1298
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$bool;->config_alwaysShowTypeIcon:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowNetworkTypeIcon:Z

    .line 1299
    sget v2, Lcom/android/systemui/R$bool;->config_showRsrpSignalLevelforLTE:I

    .line 1300
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showRsrpSignalLevelforLTE:Z

    .line 1301
    sget v2, Lcom/android/systemui/R$bool;->config_hideNoInternetState:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->hideNoInternetState:Z

    .line 1302
    sget v2, Lcom/android/systemui/R$bool;->config_display_volte:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showVolteIcon:Z

    const-string v2, "carrier_config"

    .line 1305
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CarrierConfigManager;

    .line 1307
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    .line 1308
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p0

    .line 1309
    invoke-virtual {v2, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz p0, :cond_a9

    const-string v3, "always_show_data_rat_icon_bool"

    .line 1311
    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowDataRatIcon:Z

    const-string/jumbo v3, "show_4g_for_lte_data_icon_bool"

    .line 1313
    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->show4gForLte:Z

    const-string v3, "hide_lte_plus_data_icon_bool"

    .line 1317
    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->hideLtePlus:Z

    const-string/jumbo v3, "show_carrier_data_icon_pattern_string"

    .line 1319
    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->patternOfCarrierSpecificDataIcon:Ljava/lang/String;

    const-string v3, "5g_icon_configuration_string"

    .line 1322
    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1323
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a9

    .line 1324
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1325
    array-length v3, p0

    move v4, v2

    :goto_9f
    if-ge v4, v3, :cond_a9

    aget-object v5, p0, v4

    .line 1326
    invoke-static {v5, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->add5GIconMapping(Ljava/lang/String;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_9f

    .line 1335
    :cond_a9
    sget p0, Lcom/android/systemui/R$bool;->config_mz_cdma_ct_volte_enable:I

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_b8

    invoke-static {}, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->isCTA()Z

    move-result p0

    if-nez p0, :cond_b8

    const/4 v2, 0x1

    :cond_b8
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->cdmaCTVolteEnable:Z

    .line 1336
    sget p0, Lcom/android/systemui/R$bool;->config_mz_listen_for_capabilities_status_changed:I

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->listenForCapabilitiesStatusChanged:Z

    return-object v0
.end method

.method static setDisplayGraceTime(ILcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    int-to-long v0, p0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 1386
    iput-wide v0, p1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->nrIconDisplayGracePeriodMs:J

    return-void
.end method
