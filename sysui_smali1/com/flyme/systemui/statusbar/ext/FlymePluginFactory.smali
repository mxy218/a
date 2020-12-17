.class public Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;
.super Ljava/lang/Object;
.source "FlymePluginFactory.java"


# static fields
.field private static final CT_NUMERIC:[Ljava/lang/String;

.field private static DEBUG_CHINAMOBILE:Z = false

.field private static DEBUG_CHINAMOBILE_TEST:Z = false

.field private static DEBUG_CHINATELECOM:Z = false

.field private static DEBUG_CHINAUNICOM:Z = false

.field private static DEBUG_CTA:Z = false

.field private static DEBUG_INTERNATIONAL:Z = false

.field private static DEBUG_OP09A:Z = false

.field private static DEBUG_OPERATOR_TYPE:Z = true

.field private static DEBUG_SHOPDEMO:Z

.field private static IS_CHINAMOBILE:Z

.field private static IS_CHINAMOBILE_CUSTOMIZE_C:Z

.field private static IS_CHINAMOBILE_CUSTOMIZE_F:Z

.field private static IS_CHINAMOBILE_TEST:Z

.field private static IS_CHINATELECOM_A:Z

.field private static IS_CHINATELECOM_C:Z

.field private static IS_CHINATELECOM_CA:Z

.field private static IS_CHINAUNICOM:Z

.field private static IS_CTA:Z

.field public static IS_INTERNATIONAL:Z

.field private static IS_OP09A:Z

.field private static IS_SHOPDEMO:Z

.field private static PROPERTY_ICCID_SIM:[Ljava/lang/String;

.field public static ROAMING_DEBUG:Z

.field public static SHOW_VOICE_TYPE:Z

.field private static mActivityIcon:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IActivityIcon;

.field private static mBatteryHelper:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IBatteryHelper;

.field private static mNetWorkName:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetWorkName;

.field private static mNetworkTypeIcon:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetworkTypeIcon;

.field private static mNotificationPlugin:Lcom/flyme/systemui/statusbar/ext/FlymeNotificationPlugin;

.field private static mPhoneStateExt:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IPhoneStateExt;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 34
    invoke-static {}, Lcom/flyme/systemui/statusbar/ext/FlymeSupportUtils;->isOP09ASupport()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_f

    sget-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->DEBUG_OP09A:Z

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    move v0, v1

    goto :goto_10

    :cond_f
    :goto_f
    move v0, v2

    :goto_10
    sput-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_OP09A:Z

    .line 35
    sget-boolean v0, Landroid/os/BuildExt;->IS_CTA:Z

    if-nez v0, :cond_1d

    sget-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->DEBUG_CTA:Z

    if-eqz v0, :cond_1b

    goto :goto_1d

    :cond_1b
    move v0, v1

    goto :goto_1e

    :cond_1d
    :goto_1d
    move v0, v2

    :goto_1e
    sput-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CTA:Z

    .line 36
    sget-object v0, Landroid/os/BuildExt;->CUSTOMIZE_CHINAUNICOM:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2f

    sget-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->DEBUG_CHINAUNICOM:Z

    if-eqz v0, :cond_2d

    goto :goto_2f

    :cond_2d
    move v0, v1

    goto :goto_30

    :cond_2f
    :goto_2f
    move v0, v2

    :goto_30
    sput-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CHINAUNICOM:Z

    const-string v0, "ro.vendor.customize.isp"

    .line 37
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "chinamobile_c"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    sput-boolean v3, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CHINAMOBILE_CUSTOMIZE_C:Z

    .line 38
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "chinamobile_f"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CHINAMOBILE_CUSTOMIZE_F:Z

    .line 39
    sget-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CHINAMOBILE_CUSTOMIZE_F:Z

    if-nez v0, :cond_63

    sget-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CHINAMOBILE_CUSTOMIZE_C:Z

    if-nez v0, :cond_63

    sget-object v0, Landroid/os/BuildExt;->CUSTOMIZE_CHINAMOBILE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_63

    sget-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->DEBUG_CHINAMOBILE:Z

    if-eqz v0, :cond_61

    goto :goto_63

    :cond_61
    move v0, v1

    goto :goto_64

    :cond_63
    :goto_63
    move v0, v2

    :goto_64
    sput-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CHINAMOBILE:Z

    .line 40
    sget-object v0, Landroid/os/BuildExt;->CHINAMOBILE_TEST:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_75

    sget-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->DEBUG_CHINAMOBILE_TEST:Z

    if-eqz v0, :cond_73

    goto :goto_75

    :cond_73
    move v0, v1

    goto :goto_76

    :cond_75
    :goto_75
    move v0, v2

    :goto_76
    sput-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CHINAMOBILE_TEST:Z

    .line 41
    sget-object v0, Landroid/os/BuildExt;->CUSTOMIZE_CHINATELECOM:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_84

    sget-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->DEBUG_CHINATELECOM:Z

    if-eqz v0, :cond_8a

    :cond_84
    sget-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_OP09A:Z

    if-eqz v0, :cond_8a

    move v0, v2

    goto :goto_8b

    :cond_8a
    move v0, v1

    :goto_8b
    sput-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CHINATELECOM_A:Z

    .line 42
    sget-object v0, Landroid/os/BuildExt;->CUSTOMIZE_CHINATELECOM:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_99

    sget-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->DEBUG_CHINATELECOM:Z

    if-eqz v0, :cond_9f

    :cond_99
    sget-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_OP09A:Z

    if-nez v0, :cond_9f

    move v0, v2

    goto :goto_a0

    :cond_9f
    move v0, v1

    :goto_a0
    sput-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CHINATELECOM_C:Z

    .line 43
    sget-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CHINATELECOM_C:Z

    if-eqz v0, :cond_ac

    sget-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymeSupportUtils;->IS_SUPPORT_CA:Z

    if-eqz v0, :cond_ac

    move v0, v2

    goto :goto_ad

    :cond_ac
    move v0, v1

    :goto_ad
    sput-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CHINATELECOM_CA:Z

    .line 44
    sget-object v0, Landroid/os/BuildExt;->IS_SHOPDEMO:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_be

    sget-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->DEBUG_SHOPDEMO:Z

    if-eqz v0, :cond_bc

    goto :goto_be

    :cond_bc
    move v0, v1

    goto :goto_bf

    :cond_be
    :goto_be
    move v0, v2

    :goto_bf
    sput-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_SHOPDEMO:Z

    .line 45
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v0

    if-nez v0, :cond_ce

    sget-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->DEBUG_INTERNATIONAL:Z

    if-eqz v0, :cond_cc

    goto :goto_ce

    :cond_cc
    move v0, v1

    goto :goto_cf

    :cond_ce
    :goto_ce
    move v0, v2

    :goto_cf
    sput-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_INTERNATIONAL:Z

    .line 46
    sput-boolean v2, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->SHOW_VOICE_TYPE:Z

    .line 47
    sput-boolean v1, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->ROAMING_DEBUG:Z

    const-string v3, "45502"

    const-string v4, "45507"

    const-string v5, "46003"

    const-string v6, "46011"

    const-string v7, "46012"

    const-string v8, "46013"

    .line 49
    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->CT_NUMERIC:[Ljava/lang/String;

    const-string v0, "ril.iccid.sim1"

    const-string v1, "ril.iccid.sim2"

    const-string v2, "ril.iccid.sim3"

    const-string v3, "ril.iccid.sim4"

    .line 245
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActivityIconPlugin()Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IActivityIcon;
    .registers 2

    .line 69
    const-class v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;

    monitor-enter v0

    .line 70
    :try_start_3
    sget-object v1, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mActivityIcon:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IActivityIcon;

    if-nez v1, :cond_2b

    .line 71
    sget-boolean v1, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CTA:Z

    if-nez v1, :cond_24

    sget-boolean v1, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CHINAUNICOM:Z

    if-nez v1, :cond_24

    sget-boolean v1, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CHINAMOBILE:Z

    if-nez v1, :cond_24

    sget-boolean v1, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CHINATELECOM_A:Z

    if-nez v1, :cond_24

    sget-boolean v1, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_INTERNATIONAL:Z

    if-eqz v1, :cond_1c

    goto :goto_24

    .line 74
    :cond_1c
    new-instance v1, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$ActivityIconSingle;

    invoke-direct {v1}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$ActivityIconSingle;-><init>()V

    sput-object v1, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mActivityIcon:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IActivityIcon;

    goto :goto_2b

    .line 72
    :cond_24
    :goto_24
    new-instance v1, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$ActivityIconDouble;

    invoke-direct {v1}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$ActivityIconDouble;-><init>()V

    sput-object v1, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mActivityIcon:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IActivityIcon;

    .line 77
    :cond_2b
    :goto_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2f

    .line 78
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mActivityIcon:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IActivityIcon;

    return-object v0

    :catchall_2f
    move-exception v1

    .line 77
    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public static getBatteryHelper()Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IBatteryHelper;
    .registers 4

    .line 120
    const-class v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;

    monitor-enter v0

    .line 121
    :try_start_3
    sget-object v1, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mBatteryHelper:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IBatteryHelper;

    if-nez v1, :cond_20

    .line 122
    sget-boolean v1, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CTA:Z

    if-eqz v1, :cond_16

    .line 123
    new-instance v1, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeBatteryHelper;

    const/4 v2, 0x1

    sget-boolean v3, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CHINAMOBILE:Z

    invoke-direct {v1, v2, v3}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeBatteryHelper;-><init>(ZZ)V

    sput-object v1, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mBatteryHelper:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IBatteryHelper;

    goto :goto_20

    .line 125
    :cond_16
    new-instance v1, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeBatteryHelper;

    const/4 v2, 0x0

    sget-boolean v3, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CHINAMOBILE:Z

    invoke-direct {v1, v2, v3}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeBatteryHelper;-><init>(ZZ)V

    sput-object v1, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mBatteryHelper:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IBatteryHelper;

    .line 128
    :cond_20
    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_24

    .line 129
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mBatteryHelper:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IBatteryHelper;

    return-object v0

    :catchall_24
    move-exception v1

    .line 128
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public static getNetWorkNamePlugin(Landroid/content/Context;)Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetWorkName;
    .registers 6

    .line 82
    const-class v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;

    monitor-enter v0

    .line 83
    :try_start_3
    sget-object v1, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mNetWorkName:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetWorkName;

    if-nez v1, :cond_34

    .line 84
    sget-boolean v1, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CTA:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_14

    .line 85
    new-instance v1, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetWorkName;

    invoke-direct {v1, p0, v2, v2, v2}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetWorkName;-><init>(Landroid/content/Context;ZZZ)V

    sput-object v1, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mNetWorkName:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetWorkName;

    goto :goto_34

    .line 87
    :cond_14
    sget-boolean v1, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_SHOPDEMO:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_2b

    .line 88
    new-instance v1, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$ShopNetWorkName;

    sget-boolean v4, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CHINAMOBILE:Z

    if-nez v4, :cond_25

    sget-boolean v4, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CHINAUNICOM:Z

    if-eqz v4, :cond_24

    goto :goto_25

    :cond_24
    move v2, v3

    :cond_25
    :goto_25
    invoke-direct {v1, p0, v2, v3, v3}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$ShopNetWorkName;-><init>(Landroid/content/Context;ZZZ)V

    sput-object v1, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mNetWorkName:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetWorkName;

    goto :goto_34

    .line 90
    :cond_2b
    new-instance v1, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetWorkName;

    sget-boolean v2, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CHINAMOBILE:Z

    invoke-direct {v1, p0, v2, v3, v3}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetWorkName;-><init>(Landroid/content/Context;ZZZ)V

    sput-object v1, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mNetWorkName:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetWorkName;

    .line 94
    :cond_34
    :goto_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_38

    .line 95
    sget-object p0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mNetWorkName:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetWorkName;

    return-object p0

    :catchall_38
    move-exception p0

    .line 94
    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw p0
.end method

.method public static getNetworkTypeIconPlugin()Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetworkTypeIcon;
    .registers 4

    .line 99
    const-class v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;

    monitor-enter v0

    .line 100
    :try_start_3
    sget-object v1, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mNetworkTypeIcon:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetworkTypeIcon;

    if-nez v1, :cond_49

    .line 101
    sget-boolean v1, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CHINAUNICOM:Z

    const/4 v2, 0x0

    if-nez v1, :cond_3b

    sget-boolean v1, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CHINAMOBILE:Z

    if-nez v1, :cond_3b

    sget-boolean v1, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CTA:Z

    if-nez v1, :cond_3b

    sget-boolean v1, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_INTERNATIONAL:Z

    if-eqz v1, :cond_19

    goto :goto_3b

    .line 104
    :cond_19
    sget-boolean v1, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CHINATELECOM_A:Z

    if-eqz v1, :cond_25

    .line 105
    new-instance v1, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$TelComNetworkTypeIcon;

    invoke-direct {v1}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$TelComNetworkTypeIcon;-><init>()V

    sput-object v1, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mNetworkTypeIcon:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetworkTypeIcon;

    goto :goto_49

    .line 107
    :cond_25
    sget-boolean v1, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CHINATELECOM_C:Z

    if-eqz v1, :cond_33

    .line 108
    new-instance v1, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$TelComCNetworkTypeIcon;

    sget-boolean v3, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CHINATELECOM_CA:Z

    invoke-direct {v1, v2, v2, v3}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$TelComCNetworkTypeIcon;-><init>(ZZZ)V

    sput-object v1, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mNetworkTypeIcon:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetworkTypeIcon;

    goto :goto_49

    .line 110
    :cond_33
    new-instance v1, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetworkTypeIcon;

    invoke-direct {v1, v2, v2, v2}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetworkTypeIcon;-><init>(ZZZ)V

    sput-object v1, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mNetworkTypeIcon:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetworkTypeIcon;

    goto :goto_49

    .line 102
    :cond_3b
    :goto_3b
    new-instance v1, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$OperatorNetworkTypeIcon;

    sget-boolean v3, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CTA:Z

    if-nez v3, :cond_42

    const/4 v2, 0x1

    :cond_42
    sget-boolean v3, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CHINAUNICOM:Z

    invoke-direct {v1, v2, v3}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$OperatorNetworkTypeIcon;-><init>(ZZ)V

    sput-object v1, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mNetworkTypeIcon:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetworkTypeIcon;

    .line 115
    :cond_49
    :goto_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_4d

    .line 116
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mNetworkTypeIcon:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetworkTypeIcon;

    return-object v0

    :catchall_4d
    move-exception v1

    .line 115
    :try_start_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw v1
.end method

.method public static getNotificationPlugin()Lcom/flyme/systemui/statusbar/ext/FlymeNotificationPlugin;
    .registers 2

    .line 163
    const-class v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;

    monitor-enter v0

    .line 164
    :try_start_3
    sget-object v1, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mNotificationPlugin:Lcom/flyme/systemui/statusbar/ext/FlymeNotificationPlugin;

    if-nez v1, :cond_e

    .line 165
    new-instance v1, Lcom/flyme/systemui/statusbar/ext/FlymeNotificationPluginImpl;

    invoke-direct {v1}, Lcom/flyme/systemui/statusbar/ext/FlymeNotificationPluginImpl;-><init>()V

    sput-object v1, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mNotificationPlugin:Lcom/flyme/systemui/statusbar/ext/FlymeNotificationPlugin;

    .line 167
    :cond_e
    sget-object v1, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mNotificationPlugin:Lcom/flyme/systemui/statusbar/ext/FlymeNotificationPlugin;

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    .line 168
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public static getPhoneStateExt()Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IPhoneStateExt;
    .registers 5

    .line 133
    const-class v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;

    monitor-enter v0

    .line 134
    :try_start_3
    sget-object v1, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mPhoneStateExt:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IPhoneStateExt;

    if-nez v1, :cond_a1

    .line 135
    sget-boolean v1, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->DEBUG_OPERATOR_TYPE:Z

    if-eqz v1, :cond_55

    const-string v1, "FlymePluginFactory"

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPhoneStateExt: IS_CHINAUNICOM="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CHINAUNICOM:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",IS_CHINAMOBILE="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CHINAMOBILE:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",IS_CTA="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CTA:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",IS_INTERNATIONAL="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_INTERNATIONAL:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",IS_CHINATELECOM_A="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CHINATELECOM_A:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",IS_CHINATELECOM_C="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CHINATELECOM_C:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_55
    sget-boolean v1, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CHINAUNICOM:Z

    const/4 v2, 0x0

    if-nez v1, :cond_8b

    sget-boolean v1, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CHINAMOBILE:Z

    if-nez v1, :cond_8b

    sget-boolean v1, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CTA:Z

    if-nez v1, :cond_8b

    sget-boolean v1, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_INTERNATIONAL:Z

    if-eqz v1, :cond_67

    goto :goto_8b

    .line 147
    :cond_67
    sget-boolean v1, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CHINATELECOM_A:Z

    if-eqz v1, :cond_73

    .line 148
    new-instance v1, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$TelComPhoneStateExt;

    invoke-direct {v1}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$TelComPhoneStateExt;-><init>()V

    sput-object v1, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mPhoneStateExt:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IPhoneStateExt;

    goto :goto_a1

    .line 150
    :cond_73
    sget-boolean v1, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CHINATELECOM_C:Z

    if-eqz v1, :cond_81

    .line 151
    new-instance v1, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$TelComPhoneStateCExt;

    sget-boolean v2, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CHINATELECOM_CA:Z

    invoke-direct {v1, v2}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$TelComPhoneStateCExt;-><init>(Z)V

    sput-object v1, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mPhoneStateExt:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IPhoneStateExt;

    goto :goto_a1

    .line 153
    :cond_81
    new-instance v1, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymePhoneStateExt;

    sget-boolean v3, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_INTERNATIONAL:Z

    invoke-direct {v1, v2, v3}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymePhoneStateExt;-><init>(ZZ)V

    sput-object v1, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mPhoneStateExt:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IPhoneStateExt;

    goto :goto_a1

    .line 145
    :cond_8b
    :goto_8b
    new-instance v1, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$OperatorPhoneStateExt;

    sget-boolean v3, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CHINAUNICOM:Z

    sget-boolean v4, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CHINAUNICOM:Z

    if-nez v4, :cond_9b

    sget-boolean v4, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_INTERNATIONAL:Z

    if-nez v4, :cond_9b

    sget-boolean v4, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CTA:Z

    if-eqz v4, :cond_9c

    :cond_9b
    const/4 v2, 0x1

    :cond_9c
    invoke-direct {v1, v3, v2}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$OperatorPhoneStateExt;-><init>(ZZ)V

    sput-object v1, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mPhoneStateExt:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IPhoneStateExt;

    .line 158
    :cond_a1
    :goto_a1
    monitor-exit v0
    :try_end_a2
    .catchall {:try_start_3 .. :try_end_a2} :catchall_a5

    .line 159
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->mPhoneStateExt:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IPhoneStateExt;

    return-object v0

    :catchall_a5
    move-exception v1

    .line 158
    :try_start_a6
    monitor-exit v0
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_a5

    throw v1
.end method

.method public static getSubId0UsingSlotId(Landroid/content/Context;I)I
    .registers 2

    .line 290
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object p0

    if-eqz p0, :cond_11

    .line 291
    array-length p1, p0

    if-nez p1, :cond_d

    goto :goto_11

    :cond_d
    const/4 p1, 0x0

    .line 294
    aget p0, p0, p1

    return p0

    :cond_11
    :goto_11
    const/4 p0, -0x1

    return p0
.end method

.method public static isCTA()Z
    .registers 1

    .line 172
    sget-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CTA:Z

    return v0
.end method

.method private static isCTCardMz(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_76

    const-string v1, ""

    .line 209
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_76

    .line 210
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isCTCard]: isCTCard iccId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FlymePluginFactory"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "898603"

    .line 211
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_74

    const-string v1, "898611"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_74

    const-string v1, "898612"

    .line 212
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_74

    const-string v1, "898613"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_74

    const-string v1, "8985302"

    .line 213
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_74

    const-string v1, "8985307"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_74

    const-string v1, "8938000"

    .line 214
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_74

    const-string v1, "896209"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_74

    const-string v1, "899503"

    .line 215
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_74

    const-string v1, "897703"

    .line 216
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_73

    goto :goto_74

    :cond_73
    return v0

    :cond_74
    :goto_74
    const/4 p0, 0x1

    return p0

    :cond_76
    :goto_76
    return v0
.end method

.method public static isCTS()Z
    .registers 2

    const-string/jumbo v0, "vendor.meizu.sys.cts_state"

    const/4 v1, 0x0

    .line 176
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isChinaMobile()Z
    .registers 1

    .line 184
    sget-boolean v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->IS_CHINAMOBILE:Z

    return v0
.end method

.method public static isCtCard(I)Z
    .registers 1

    .line 205
    invoke-static {p0}, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->readIccIdUsingPhoneIdMz(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->isCTCardMz(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isCtSim(I)Z
    .registers 3

    .line 194
    invoke-static {}, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->isCTA()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 196
    :cond_8
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p0

    .line 197
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 198
    invoke-static {p0}, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->isCtCard(I)Z

    move-result v1

    :cond_16
    return v1
.end method

.method public static isQCOM(Landroid/content/Context;)Z
    .registers 2

    .line 271
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->mz_phone_platform:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "QCOM"

    .line 272
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isRadioOn(ILandroid/content/Context;)Z
    .registers 7

    .line 299
    invoke-static {p0, p1}, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->isValidSubId(ILandroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2c

    .line 300
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result p0

    .line 304
    invoke-static {p1}, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->isQCOM(Landroid/content/Context;)Z

    move-result v0

    const/4 v3, -0x1

    const-string v4, "msim_mode_setting"

    if-eqz v0, :cond_1e

    .line 305
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    goto :goto_26

    .line 308
    :cond_1e
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    :goto_26
    shl-int p0, v1, p0

    and-int/2addr p0, p1

    if-lez p0, :cond_2c

    move v2, v1

    :cond_2c
    return v2
.end method

.method public static isRadioPowerOn(Landroid/content/Context;I)Z
    .registers 4

    .line 283
    invoke-static {p0, p1}, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->getSubId0UsingSlotId(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0, p0}, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->isRadioOn(ILandroid/content/Context;)Z

    move-result p0

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRadioOn("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "):"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FlymePluginFactory"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static isValidSubId(ILandroid/content/Context;)Z
    .registers 5

    .line 326
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 327
    :goto_a
    array-length v2, p1

    if-ge v1, v2, :cond_16

    .line 328
    aget v2, p1, v1

    if-ne v2, p0, :cond_13

    const/4 v0, 0x1

    goto :goto_16

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_16
    :goto_16
    return v0
.end method

.method private static readIccIdUsingPhoneIdMz(I)Ljava/lang/String;
    .registers 4

    .line 223
    sget-object v0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->PROPERTY_ICCID_SIM:[Ljava/lang/String;

    aget-object v0, v0, p0

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ICCID for phone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "FlymePluginFactory"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method
