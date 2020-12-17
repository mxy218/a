.class public Lcom/flyme/systemui/statusbar/policy/MzWifiIcons;
.super Ljava/lang/Object;
.source "MzWifiIcons.java"


# static fields
.field public static final QS_WIFI_4_SIGNAL_STRENGTH:[[I

.field public static final QS_WIFI_6_SIGNAL_STRENGTH:[[I

.field public static final QS_WIFI_NO_NETWORK:I

.field public static final WIFI_4_SIGNAL_STRENGTH:[[I

.field public static final WIFI_4_SIGNAL_STRENGTH_INOUT:[[I

.field public static final WIFI_6_SIGNAL_STRENGTH:[[I

.field public static final WIFI_6_SIGNAL_STRENGTH_INOUT:[[I

.field public static final WIFI_IN_CONNECTING:I

.field public static final WIFI_LEVEL_COUNT:I

.field public static final WIFI_NO_NETWORK:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v0, 0x2

    new-array v1, v0, [[I

    const/4 v2, 0x4

    new-array v3, v2, [I

    .line 22
    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_wifi_signal_2:I

    const/4 v5, 0x0

    aput v4, v3, v5

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_wifi_signal_3:I

    const/4 v6, 0x1

    aput v4, v3, v6

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_wifi_signal_4:I

    aput v4, v3, v0

    const/4 v7, 0x3

    aput v4, v3, v7

    aput-object v3, v1, v5

    new-array v3, v2, [I

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_wifi_signal_2_fully:I

    aput v4, v3, v5

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_wifi_signal_3_fully:I

    aput v4, v3, v6

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_wifi_signal_4_fully:I

    aput v4, v3, v0

    aput v4, v3, v7

    aput-object v3, v1, v6

    sput-object v1, Lcom/flyme/systemui/statusbar/policy/MzWifiIcons;->WIFI_4_SIGNAL_STRENGTH:[[I

    new-array v1, v0, [[I

    new-array v3, v2, [I

    .line 33
    sget v4, Lcom/android/systemui/R$drawable;->ic_qs_wifi_1:I

    aput v4, v3, v5

    sget v4, Lcom/android/systemui/R$drawable;->ic_qs_wifi_2:I

    aput v4, v3, v6

    sget v4, Lcom/android/systemui/R$drawable;->ic_qs_wifi_3:I

    aput v4, v3, v0

    sget v4, Lcom/android/systemui/R$drawable;->ic_qs_wifi_4:I

    aput v4, v3, v7

    aput-object v3, v1, v5

    new-array v3, v2, [I

    sget v4, Lcom/android/systemui/R$drawable;->ic_qs_wifi_full_1:I

    aput v4, v3, v5

    sget v4, Lcom/android/systemui/R$drawable;->ic_qs_wifi_full_2:I

    aput v4, v3, v6

    sget v4, Lcom/android/systemui/R$drawable;->ic_qs_wifi_full_3:I

    aput v4, v3, v0

    sget v4, Lcom/android/systemui/R$drawable;->ic_qs_wifi_full_4:I

    aput v4, v3, v7

    aput-object v3, v1, v6

    sput-object v1, Lcom/flyme/systemui/statusbar/policy/MzWifiIcons;->QS_WIFI_4_SIGNAL_STRENGTH:[[I

    .line 44
    sget v1, Lcom/android/systemui/R$drawable;->ic_qs_wifi_no_network:I

    sput v1, Lcom/flyme/systemui/statusbar/policy/MzWifiIcons;->QS_WIFI_NO_NETWORK:I

    .line 45
    sget v1, Lcom/android/systemui/R$drawable;->stat_sys_wifi_signal_null:I

    sput v1, Lcom/flyme/systemui/statusbar/policy/MzWifiIcons;->WIFI_NO_NETWORK:I

    .line 47
    sget-object v1, Lcom/flyme/systemui/statusbar/policy/MzWifiIcons;->WIFI_4_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, v5

    array-length v1, v1

    sput v1, Lcom/flyme/systemui/statusbar/policy/MzWifiIcons;->WIFI_LEVEL_COUNT:I

    .line 51
    sget v1, Lcom/android/systemui/R$drawable;->stat_sys_wifi_connecting_anim:I

    sput v1, Lcom/flyme/systemui/statusbar/policy/MzWifiIcons;->WIFI_IN_CONNECTING:I

    new-array v1, v2, [[I

    new-array v3, v2, [I

    .line 54
    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_wifi_signal_2_fully:I

    aput v4, v3, v5

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_wifi_signal_1_fully_in:I

    aput v4, v3, v6

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_wifi_signal_1_fully_out:I

    aput v4, v3, v0

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_wifi_signal_1_fully_inout:I

    aput v4, v3, v7

    aput-object v3, v1, v5

    new-array v3, v2, [I

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_wifi_signal_3_fully:I

    aput v4, v3, v5

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_wifi_signal_2_fully_in:I

    aput v4, v3, v6

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_wifi_signal_2_fully_out:I

    aput v4, v3, v0

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_wifi_signal_2_fully_inout:I

    aput v4, v3, v7

    aput-object v3, v1, v6

    new-array v3, v2, [I

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_wifi_signal_4_fully:I

    aput v4, v3, v5

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_wifi_signal_3_fully_in:I

    aput v4, v3, v6

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_wifi_signal_3_fully_out:I

    aput v4, v3, v0

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_wifi_signal_3_fully_inout:I

    aput v4, v3, v7

    aput-object v3, v1, v0

    new-array v3, v2, [I

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_wifi_signal_4_fully:I

    aput v4, v3, v5

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_wifi_signal_4_fully_in:I

    aput v4, v3, v6

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_wifi_signal_4_fully_out:I

    aput v4, v3, v0

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_wifi_signal_4_fully_inout:I

    aput v4, v3, v7

    aput-object v3, v1, v7

    sput-object v1, Lcom/flyme/systemui/statusbar/policy/MzWifiIcons;->WIFI_4_SIGNAL_STRENGTH_INOUT:[[I

    new-array v1, v0, [[I

    new-array v3, v2, [I

    .line 79
    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_wifi_6_signal_2:I

    aput v4, v3, v5

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_wifi_6_signal_3:I

    aput v4, v3, v6

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_wifi_6_signal_4:I

    aput v4, v3, v0

    aput v4, v3, v7

    aput-object v3, v1, v5

    new-array v3, v2, [I

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_wifi_6_signal_2:I

    aput v4, v3, v5

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_wifi_6_signal_3:I

    aput v4, v3, v6

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_wifi_6_signal_4:I

    aput v4, v3, v0

    aput v4, v3, v7

    aput-object v3, v1, v6

    sput-object v1, Lcom/flyme/systemui/statusbar/policy/MzWifiIcons;->WIFI_6_SIGNAL_STRENGTH:[[I

    new-array v1, v0, [[I

    new-array v3, v2, [I

    .line 90
    sget v4, Lcom/android/systemui/R$drawable;->ic_qs_wifi_6_1:I

    aput v4, v3, v5

    sget v4, Lcom/android/systemui/R$drawable;->ic_qs_wifi_6_2:I

    aput v4, v3, v6

    sget v4, Lcom/android/systemui/R$drawable;->ic_qs_wifi_6_3:I

    aput v4, v3, v0

    sget v4, Lcom/android/systemui/R$drawable;->ic_qs_wifi_6_4:I

    aput v4, v3, v7

    aput-object v3, v1, v5

    new-array v3, v2, [I

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_wifi_6_signal_2:I

    aput v4, v3, v5

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_wifi_6_signal_3:I

    aput v4, v3, v6

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_wifi_6_signal_4:I

    aput v4, v3, v0

    aput v4, v3, v7

    aput-object v3, v1, v6

    sput-object v1, Lcom/flyme/systemui/statusbar/policy/MzWifiIcons;->QS_WIFI_6_SIGNAL_STRENGTH:[[I

    new-array v1, v2, [[I

    new-array v3, v2, [I

    .line 102
    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_wifi_6_signal_2:I

    aput v4, v3, v5

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_wifi_6_signal_1_in:I

    aput v4, v3, v6

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_wifi_6_signal_1_out:I

    aput v4, v3, v0

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_wifi_6_signal_1_inout:I

    aput v4, v3, v7

    aput-object v3, v1, v5

    new-array v3, v2, [I

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_wifi_6_signal_3:I

    aput v4, v3, v5

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_wifi_6_signal_2_in:I

    aput v4, v3, v6

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_wifi_6_signal_2_out:I

    aput v4, v3, v0

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_wifi_6_signal_2_inout:I

    aput v4, v3, v7

    aput-object v3, v1, v6

    new-array v3, v2, [I

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_wifi_6_signal_4:I

    aput v4, v3, v5

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_wifi_6_signal_3_in:I

    aput v4, v3, v6

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_wifi_6_signal_3_out:I

    aput v4, v3, v0

    sget v4, Lcom/android/systemui/R$drawable;->stat_sys_wifi_6_signal_3_inout:I

    aput v4, v3, v7

    aput-object v3, v1, v0

    new-array v2, v2, [I

    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_wifi_6_signal_4:I

    aput v3, v2, v5

    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_wifi_6_signal_4_in:I

    aput v3, v2, v6

    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_wifi_6_signal_4_out:I

    aput v3, v2, v0

    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_wifi_6_signal_4_inout:I

    aput v0, v2, v7

    aput-object v2, v1, v7

    sput-object v1, Lcom/flyme/systemui/statusbar/policy/MzWifiIcons;->WIFI_6_SIGNAL_STRENGTH_INOUT:[[I

    return-void
.end method
