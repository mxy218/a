.class public Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$TelComNetworkTypeIcon;
.super Ljava/lang/Object;
.source "FlymeStatusBarPluginImpl.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetworkTypeIcon;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNetworkTypeIcon(Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;ZIZ)I
    .registers 5

    if-eqz p2, :cond_5

    .line 590
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_roam:I

    return p0

    :cond_5
    const/4 p0, 0x0

    if-eqz p1, :cond_24

    .line 594
    sget-object p2, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$1;->$SwitchMap$com$flyme$systemui$statusbar$ext$FlymeNetworkType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    packed-switch p1, :pswitch_data_26

    goto :goto_24

    .line 602
    :pswitch_14  #0x5, 0x7
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_data_connected_3g_cdma:I

    goto :goto_24

    .line 598
    :pswitch_17  #0x3, 0x4, 0x6
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_data_connected_2g_cdma:I

    goto :goto_24

    .line 608
    :pswitch_1a  #0x2
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_network_type_4g_plus:I

    goto :goto_24

    :pswitch_1d  #0x1
    if-eqz p4, :cond_22

    .line 605
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_network_type_4g_plus:I

    goto :goto_24

    :cond_22
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_data_connected_4g_cdma:I

    :cond_24
    :goto_24
    return p0

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_1d  #00000001
        :pswitch_1a  #00000002
        :pswitch_17  #00000003
        :pswitch_17  #00000004
        :pswitch_14  #00000005
        :pswitch_17  #00000006
        :pswitch_14  #00000007
    .end packed-switch
.end method

.method public getVoiceTypeIcon(Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;ZZZ)I
    .registers 5

    const/4 p0, 0x0

    if-eqz p3, :cond_21

    if-eqz p1, :cond_21

    .line 623
    sget-object p2, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$1;->$SwitchMap$com$flyme$systemui$statusbar$ext$FlymeNetworkType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    packed-switch p1, :pswitch_data_22

    goto :goto_21

    .line 631
    :pswitch_11  #0x5
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_data_connected_3g_cdma:I

    goto :goto_21

    .line 628
    :pswitch_14  #0x3, 0x4, 0x6, 0x7
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_data_connected_2g_cdma:I

    goto :goto_21

    .line 637
    :pswitch_17  #0x2
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_network_type_4g_plus:I

    goto :goto_21

    :pswitch_1a  #0x1
    if-eqz p4, :cond_1f

    .line 634
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_network_type_4g_plus:I

    goto :goto_21

    :cond_1f
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_data_connected_4g_cdma:I

    :cond_21
    :goto_21
    return p0

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1a  #00000001
        :pswitch_17  #00000002
        :pswitch_14  #00000003
        :pswitch_14  #00000004
        :pswitch_11  #00000005
        :pswitch_14  #00000006
        :pswitch_14  #00000007
    .end packed-switch
.end method
