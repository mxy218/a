.class public Lcom/android/systemui/statusbar/policy/WifiIcons;
.super Ljava/lang/Object;
.source "WifiIcons.java"


# static fields
.field public static final QS_WIFI_4_SIGNAL_STRENGTH:[[I

.field public static final QS_WIFI_5_SIGNAL_STRENGTH:[[I

.field public static final QS_WIFI_6_SIGNAL_STRENGTH:[[I

.field public static final QS_WIFI_SIGNAL_STRENGTH:[[I

.field static final WIFI_4_FULL_ICONS:[I

.field private static final WIFI_4_NO_INTERNET_ICONS:[I

.field static final WIFI_4_SIGNAL_STRENGTH:[[I

.field static final WIFI_5_FULL_ICONS:[I

.field private static final WIFI_5_NO_INTERNET_ICONS:[I

.field static final WIFI_5_SIGNAL_STRENGTH:[[I

.field static final WIFI_6_FULL_ICONS:[I

.field private static final WIFI_6_NO_INTERNET_ICONS:[I

.field static final WIFI_6_SIGNAL_STRENGTH:[[I

.field static final WIFI_FULL_ICONS:[I

.field static final WIFI_LEVEL_COUNT:I

.field private static final WIFI_NO_INTERNET_ICONS:[I

.field static final WIFI_SIGNAL_STRENGTH:[[I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 23
    fill-array-data v1, :array_ca

    sput-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_FULL_ICONS:[I

    new-array v1, v0, [I

    .line 31
    sget v2, Lcom/android/systemui/R$drawable;->ic_qs_wifi_0:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->ic_qs_wifi_1:I

    const/4 v4, 0x1

    aput v2, v1, v4

    sget v2, Lcom/android/systemui/R$drawable;->ic_qs_wifi_2:I

    const/4 v5, 0x2

    aput v2, v1, v5

    sget v2, Lcom/android/systemui/R$drawable;->ic_qs_wifi_3:I

    const/4 v6, 0x3

    aput v2, v1, v6

    sget v2, Lcom/android/systemui/R$drawable;->ic_qs_wifi_4:I

    const/4 v7, 0x4

    aput v2, v1, v7

    sput-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_NO_INTERNET_ICONS:[I

    new-array v1, v0, [I

    .line 39
    fill-array-data v1, :array_d8

    sput-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_4_FULL_ICONS:[I

    new-array v1, v0, [I

    .line 47
    sget v2, Lcom/android/systemui/R$drawable;->ic_qs_wifi_4_0:I

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->ic_qs_wifi_4_1:I

    aput v2, v1, v4

    sget v2, Lcom/android/systemui/R$drawable;->ic_qs_wifi_4_2:I

    aput v2, v1, v5

    sget v2, Lcom/android/systemui/R$drawable;->ic_qs_wifi_4_3:I

    aput v2, v1, v6

    sget v2, Lcom/android/systemui/R$drawable;->ic_qs_wifi_4_4:I

    aput v2, v1, v7

    sput-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_4_NO_INTERNET_ICONS:[I

    new-array v1, v0, [I

    .line 55
    fill-array-data v1, :array_e6

    sput-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_5_FULL_ICONS:[I

    new-array v1, v0, [I

    .line 63
    sget v2, Lcom/android/systemui/R$drawable;->ic_qs_wifi_5_0:I

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->ic_qs_wifi_5_1:I

    aput v2, v1, v4

    sget v2, Lcom/android/systemui/R$drawable;->ic_qs_wifi_5_2:I

    aput v2, v1, v5

    sget v2, Lcom/android/systemui/R$drawable;->ic_qs_wifi_5_3:I

    aput v2, v1, v6

    sget v2, Lcom/android/systemui/R$drawable;->ic_qs_wifi_5_4:I

    aput v2, v1, v7

    sput-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_5_NO_INTERNET_ICONS:[I

    new-array v1, v0, [I

    .line 71
    fill-array-data v1, :array_f4

    sput-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_6_FULL_ICONS:[I

    new-array v0, v0, [I

    .line 79
    sget v1, Lcom/android/systemui/R$drawable;->ic_qs_wifi_6_0:I

    aput v1, v0, v3

    sget v1, Lcom/android/systemui/R$drawable;->ic_qs_wifi_6_1:I

    aput v1, v0, v4

    sget v1, Lcom/android/systemui/R$drawable;->ic_qs_wifi_6_2:I

    aput v1, v0, v5

    sget v1, Lcom/android/systemui/R$drawable;->ic_qs_wifi_6_3:I

    aput v1, v0, v6

    sget v1, Lcom/android/systemui/R$drawable;->ic_qs_wifi_6_4:I

    aput v1, v0, v7

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_6_NO_INTERNET_ICONS:[I

    new-array v0, v5, [[I

    .line 87
    sget-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_NO_INTERNET_ICONS:[I

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_FULL_ICONS:[I

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    .line 92
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    new-array v0, v5, [[I

    .line 94
    sget-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_4_NO_INTERNET_ICONS:[I

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_4_FULL_ICONS:[I

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_4_SIGNAL_STRENGTH:[[I

    .line 99
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_4_SIGNAL_STRENGTH:[[I

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_4_SIGNAL_STRENGTH:[[I

    new-array v0, v5, [[I

    .line 101
    sget-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_5_NO_INTERNET_ICONS:[I

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_5_FULL_ICONS:[I

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_5_SIGNAL_STRENGTH:[[I

    .line 106
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_5_SIGNAL_STRENGTH:[[I

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_5_SIGNAL_STRENGTH:[[I

    new-array v0, v5, [[I

    .line 108
    sget-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_6_NO_INTERNET_ICONS:[I

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_6_FULL_ICONS:[I

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_6_SIGNAL_STRENGTH:[[I

    .line 113
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_6_SIGNAL_STRENGTH:[[I

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_6_SIGNAL_STRENGTH:[[I

    .line 119
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    aget-object v0, v0, v3

    array-length v0, v0

    sput v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    return-void

    :array_ca
    .array-data 4
        0x108054d
        0x108054e
        0x108054f
        0x1080550
        0x1080551
    .end array-data

    :array_d8
    .array-data 4
        0x108053d
        0x108053e
        0x108053f
        0x1080540
        0x1080541
    .end array-data

    :array_e6
    .array-data 4
        0x1080542
        0x1080543
        0x1080544
        0x1080545
        0x1080546
    .end array-data

    :array_f4
    .array-data 4
        0x1080547
        0x1080548
        0x1080549
        0x108054a
        0x108054b
    .end array-data
.end method
