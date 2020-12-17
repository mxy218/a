.class Lcom/android/systemui/statusbar/policy/TelephonyIcons;
.super Ljava/lang/Object;
.source "TelephonyIcons.java"


# static fields
.field static final AOSP_ICON_1X:I

.field static final AOSP_ICON_3G:I

.field static final AOSP_ICON_4G:I

.field static final AOSP_ICON_4G_PLUS:I

.field static final AOSP_ICON_5G:I

.field static final AOSP_ICON_5G_BASIC:I

.field static final AOSP_ICON_5G_E:I

.field static final AOSP_ICON_5G_PLUS:I

.field static final AOSP_ICON_5G_SA:I

.field static final AOSP_ICON_5G_UWB:I

.field static final AOSP_ICON_E:I

.field static final AOSP_ICON_G:I

.field static final AOSP_ICON_H:I

.field static final AOSP_ICON_H_PLUS:I

.field static final AOSP_ICON_LTE:I

.field static final AOSP_ICON_LTE_PLUS:I

.field static final CARRIER_NETWORK_CHANGE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FIVE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FIVE_G_BASIC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FIVE_G_SA:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FIVE_G_UWB:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FLIGHT_MODE_ICON:I

.field static final FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final H_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final ICON_1X:I

.field static final ICON_3G:I

.field static final ICON_4G:I

.field static final ICON_4G_PLUS:I

.field static final ICON_5G:I

.field static final ICON_5G_BASIC:I

.field static final ICON_5G_E:I

.field static final ICON_5G_PLUS:I

.field static final ICON_5G_SA:I

.field static final ICON_5G_UWB:I

.field static final ICON_E:I

.field static final ICON_G:I

.field static final ICON_H:I

.field static final ICON_H_PLUS:I

.field static final ICON_LTE:I

.field static final ICON_LTE_PLUS:I

.field static final ICON_NAME_TO_ICON:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;",
            ">;"
        }
    .end annotation
.end field

.field static final ICON_ROAMING:I

.field static final LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final LTE_CA_5G_E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final NOT_DEFAULT_DATA:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final NR_5G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final NR_5G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final NetWorkIcons:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;

.field static final ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final ROAMING:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final TELEPHONY_NO_NETWORK:I

.field static final TELEPHONY_SIGNAL_STRENGTH:[[I

.field static final TELEPHONY_SIGNAL_STRENGTH_ROAMING_FULL:[[I

.field static final THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field static final WFC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;


# direct methods
.method static constructor <clinit>()V
    .registers 36

    .line 29
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_airplane_mode:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FLIGHT_MODE_ICON:I

    .line 31
    sget v0, Lcom/android/systemui/R$drawable;->ic_lte_mobiledata:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->AOSP_ICON_LTE:I

    .line 32
    sget v0, Lcom/android/systemui/R$drawable;->ic_lte_plus_mobiledata:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->AOSP_ICON_LTE_PLUS:I

    .line 33
    sget v0, Lcom/android/systemui/R$drawable;->ic_g_mobiledata:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->AOSP_ICON_G:I

    .line 34
    sget v0, Lcom/android/systemui/R$drawable;->ic_e_mobiledata:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->AOSP_ICON_E:I

    .line 35
    sget v0, Lcom/android/systemui/R$drawable;->ic_h_mobiledata:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->AOSP_ICON_H:I

    .line 36
    sget v0, Lcom/android/systemui/R$drawable;->ic_h_plus_mobiledata:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->AOSP_ICON_H_PLUS:I

    .line 37
    sget v0, Lcom/android/systemui/R$drawable;->ic_3g_mobiledata:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->AOSP_ICON_3G:I

    .line 38
    sget v0, Lcom/android/systemui/R$drawable;->ic_4g_mobiledata:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->AOSP_ICON_4G:I

    .line 39
    sget v0, Lcom/android/systemui/R$drawable;->ic_4g_plus_mobiledata:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->AOSP_ICON_4G_PLUS:I

    .line 40
    sget v0, Lcom/android/systemui/R$drawable;->ic_5g_e_mobiledata:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->AOSP_ICON_5G_E:I

    .line 41
    sget v0, Lcom/android/systemui/R$drawable;->ic_1x_mobiledata:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->AOSP_ICON_1X:I

    .line 42
    sget v0, Lcom/android/systemui/R$drawable;->ic_5g_mobiledata:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->AOSP_ICON_5G:I

    .line 43
    sget v0, Lcom/android/systemui/R$drawable;->ic_5g_plus_mobiledata:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->AOSP_ICON_5G_PLUS:I

    .line 44
    sget v0, Lcom/android/systemui/R$drawable;->ic_5g_mobiledata:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->AOSP_ICON_5G_SA:I

    .line 45
    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->AOSP_ICON_5G_BASIC:I

    .line 46
    sget v0, Lcom/android/systemui/R$drawable;->ic_5g_uwb_mobiledata:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->AOSP_ICON_5G_UWB:I

    .line 49
    invoke-static {}, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->getPhoneStateExt()Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IPhoneStateExt;

    move-result-object v0

    invoke-interface {v0}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IPhoneStateExt;->getNetWorkIcons()Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->NetWorkIcons:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;

    .line 50
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->NetWorkIcons:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;

    iget v1, v0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;->ICON_G:I

    sput v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_G:I

    .line 51
    iget v1, v0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;->ICON_E:I

    sput v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_E:I

    .line 52
    iget v1, v0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;->ICON_H:I

    sput v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_H:I

    .line 53
    iget v1, v0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;->ICON_H_PLUS:I

    sput v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_H_PLUS:I

    .line 54
    iget v1, v0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;->ICON_3G:I

    sput v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_3G:I

    .line 55
    iget v1, v0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;->ICON_4G:I

    sput v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_4G:I

    .line 56
    iget v1, v0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;->ICON_4G_PLUS:I

    sput v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_4G_PLUS:I

    .line 57
    iget v0, v0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;->ICON_1X:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_1X:I

    .line 59
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_roam:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_ROAMING:I

    .line 60
    sget v0, Lcom/android/systemui/R$drawable;->ic_lte_mobiledata:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_LTE:I

    .line 61
    sget v0, Lcom/android/systemui/R$drawable;->ic_lte_plus_mobiledata:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_LTE_PLUS:I

    .line 62
    sget v0, Lcom/android/systemui/R$drawable;->ic_5g_e_mobiledata:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G_E:I

    .line 63
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_connected_5g_cdma:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G:I

    .line 64
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_5g_plus:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G_PLUS:I

    .line 65
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_connected_5g_cdma:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G_SA:I

    .line 66
    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G_BASIC:I

    .line 67
    sget v0, Lcom/android/systemui/R$drawable;->ic_5g_uwb_mobiledata:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G_UWB:I

    .line 69
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_signal_null:I

    sput v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    const/4 v0, 0x2

    new-array v1, v0, [[I

    const/4 v2, 0x6

    new-array v3, v2, [I

    .line 71
    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_signal_0:I

    const/4 v5, 0x0

    aput v4, v3, v5

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_signal_1:I

    const/4 v6, 0x1

    aput v4, v3, v6

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_signal_2:I

    aput v4, v3, v0

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_signal_3:I

    const/4 v7, 0x3

    aput v4, v3, v7

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_signal_4:I

    const/4 v8, 0x4

    aput v4, v3, v8

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_signal_5:I

    const/4 v9, 0x5

    aput v4, v3, v9

    aput-object v3, v1, v5

    new-array v3, v2, [I

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_signal_0_fully:I

    aput v4, v3, v5

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_signal_1_fully:I

    aput v4, v3, v6

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_signal_2_fully:I

    aput v4, v3, v0

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_signal_3_fully:I

    aput v4, v3, v7

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_signal_4_fully:I

    aput v4, v3, v8

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_signal_5_fully:I

    aput v4, v3, v9

    aput-object v3, v1, v6

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    new-array v1, v0, [[I

    new-array v3, v2, [I

    .line 88
    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_r_signal_0_fully:I

    aput v4, v3, v5

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_r_signal_1_fully:I

    aput v4, v3, v6

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_r_signal_2_fully:I

    aput v4, v3, v0

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_r_signal_3_fully:I

    aput v4, v3, v7

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_r_signal_4_fully:I

    aput v4, v3, v8

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_r_signal_5_fully:I

    aput v4, v3, v9

    aput-object v3, v1, v5

    new-array v2, v2, [I

    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_r_signal_0_fully:I

    aput v3, v2, v5

    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_r_signal_1_fully:I

    aput v3, v2, v6

    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_r_signal_2_fully:I

    aput v3, v2, v0

    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_r_signal_3_fully:I

    aput v0, v2, v7

    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_r_signal_4_fully:I

    aput v0, v2, v8

    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_r_signal_5_fully:I

    aput v0, v2, v9

    aput-object v2, v1, v6

    sput-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING_FULL:[[I

    .line 105
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v12, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    sget-object v14, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget v17, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    aget v19, v14, v5

    sget v21, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_ROAMING:I

    const-string v11, "Roaming"

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v22}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ROAMING:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 136
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v25, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    sget-object v27, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget v30, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    aget v32, v27, v5

    sget v33, Lcom/android/systemui/R$string;->carrier_network_change_mode:I

    const-string v24, "CARRIER_NETWORK_CHANGE"

    const/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v23, v0

    invoke-direct/range {v23 .. v35}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->CARRIER_NETWORK_CHANGE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 149
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    sget-object v10, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget v13, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    aget v15, v10, v5

    sget v16, Lcom/android/systemui/R$string;->data_connection_3g:I

    sget v17, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_3G:I

    const-string v7, "3G"

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x1

    move-object v6, v0

    invoke-direct/range {v6 .. v18}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 162
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v21, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    sget-object v23, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    aget v28, v23, v5

    const-string v20, "WFC"

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v30, 0x0

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v31}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->WFC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 173
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    sget-object v10, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget v13, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    aget v15, v10, v5

    const-string v7, "Unknown"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v18}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 184
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v21, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    sget-object v23, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    aget v28, v23, v5

    sget v29, Lcom/android/systemui/R$string;->data_connection_edge:I

    sget v30, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_E:I

    const-string v20, "E"

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v31}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 197
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    sget-object v10, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget v13, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    aget v15, v10, v5

    sget v16, Lcom/android/systemui/R$string;->data_connection_cdma:I

    sget v17, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_1X:I

    const-string v7, "1X"

    const/16 v18, 0x1

    move-object v6, v0

    invoke-direct/range {v6 .. v18}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 210
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v21, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    sget-object v23, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    aget v28, v23, v5

    sget v29, Lcom/android/systemui/R$string;->data_connection_gprs:I

    sget v30, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_G:I

    const-string v20, "G"

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v31}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 223
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    sget-object v10, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget v13, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    aget v15, v10, v5

    sget v16, Lcom/android/systemui/R$string;->data_connection_3_5g:I

    sget v17, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_H:I

    const-string v7, "H"

    const/16 v18, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v18}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 236
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v21, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    sget-object v23, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    aget v28, v23, v5

    sget v29, Lcom/android/systemui/R$string;->data_connection_3_5g_plus:I

    sget v30, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_H_PLUS:I

    const-string v20, "H+"

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v31}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 249
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    sget-object v10, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget v13, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    aget v15, v10, v5

    sget v16, Lcom/android/systemui/R$string;->data_connection_4g:I

    sget v17, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_4G:I

    const-string v7, "4G"

    const/16 v18, 0x1

    move-object v6, v0

    invoke-direct/range {v6 .. v18}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 262
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v21, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    sget-object v23, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    aget v28, v23, v5

    sget v29, Lcom/android/systemui/R$string;->data_connection_4g_plus:I

    sget v30, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_4G_PLUS:I

    const-string v20, "4G+"

    const/16 v31, 0x1

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v31}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 275
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    sget-object v10, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget v13, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    aget v15, v10, v5

    sget v16, Lcom/android/systemui/R$string;->data_connection_lte:I

    sget v17, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_LTE:I

    const-string v7, "LTE"

    move-object v6, v0

    invoke-direct/range {v6 .. v18}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 288
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v21, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    sget-object v23, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    aget v28, v23, v5

    sget v29, Lcom/android/systemui/R$string;->data_connection_lte_plus:I

    sget v30, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_LTE_PLUS:I

    const-string v20, "LTE+"

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v31}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 301
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    sget-object v10, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget v13, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    aget v15, v10, v5

    sget v16, Lcom/android/systemui/R$string;->data_connection_5ge_html:I

    sget v17, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G_E:I

    const-string v7, "5Ge"

    move-object v6, v0

    invoke-direct/range {v6 .. v18}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_CA_5G_E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 314
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v21, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    sget-object v23, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    aget v28, v23, v5

    sget v29, Lcom/android/systemui/R$string;->data_connection_5g:I

    sget v30, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G:I

    const-string v20, "5G"

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v31}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->NR_5G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 328
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    sget-object v10, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget v13, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    aget v15, v10, v5

    sget v16, Lcom/android/systemui/R$string;->data_connection_5g_plus:I

    sget v17, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G_PLUS:I

    const-string v7, "5G_PLUS"

    move-object v6, v0

    invoke-direct/range {v6 .. v18}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->NR_5G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 342
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v21, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    sget-object v23, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    aget v28, v23, v5

    sget v29, Lcom/android/systemui/R$string;->cell_data_off_content_description:I

    const-string v20, "DataDisabled"

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v31}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 355
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    sget-object v10, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget v13, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    aget v15, v10, v5

    sget v16, Lcom/android/systemui/R$string;->not_default_data_content_description:I

    const-string v7, "NotDefaultData"

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v18}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->NOT_DEFAULT_DATA:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 371
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v21, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    sget-object v23, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    aget v28, v23, v5

    sget v29, Lcom/android/systemui/R$string;->data_connection_5g:I

    sget v30, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G:I

    const-string v20, "5G"

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v31}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FIVE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 384
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    sget-object v10, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget v13, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    aget v15, v10, v5

    sget v16, Lcom/android/systemui/R$string;->data_connection_5g_basic:I

    sget v17, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G_BASIC:I

    const-string v7, "5GBasic"

    move-object v6, v0

    invoke-direct/range {v6 .. v18}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FIVE_G_BASIC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 397
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v21, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    sget-object v23, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    aget v28, v23, v5

    sget v29, Lcom/android/systemui/R$string;->data_connection_5g_uwb:I

    sget v30, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G_UWB:I

    const-string v20, "5GUWB"

    move-object/from16 v19, v0

    invoke-direct/range {v19 .. v31}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FIVE_G_UWB:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 410
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v8, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    sget-object v10, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget v13, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    aget v15, v10, v5

    sget v16, Lcom/android/systemui/R$string;->data_connection_5g_sa:I

    sget v17, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_5G_SA:I

    const-string v7, "5GSA"

    move-object v6, v0

    invoke-direct/range {v6 .. v18}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FIVE_G_SA:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 426
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    .line 427
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->CARRIER_NETWORK_CHANGE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "carrier_network_change"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "3g"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->WFC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v2, "wfc"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string/jumbo v2, "unknown"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "e"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "1x"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "g"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "h"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "h+"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "4g"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "4g+"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_CA_5G_E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "5ge"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "lte"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "lte+"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->NR_5G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "5g"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->NR_5G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "5g_plus"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FIVE_G_UWB:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "5guwb"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "datadisable"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ICON_NAME_TO_ICON:Ljava/util/Map;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->NOT_DEFAULT_DATA:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const-string v2, "notdefaultdata"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static createRoamingIconGroup(I)Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .registers 15

    .line 120
    new-instance v13, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH_ROAMING_FULL:[[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    sget v7, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_NO_NETWORK:I

    const/4 v0, 0x0

    aget v9, v4, v0

    const-string v1, "Roaming"

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v0, v13

    move v11, p0

    invoke-direct/range {v0 .. v12}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIIIIIZ)V

    return-object v13
.end method
