.class public Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$OperatorNetworkTypeIcon;
.super Ljava/lang/Object;
.source "FlymeStatusBarPluginImpl.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$INetworkTypeIcon;


# instance fields
.field private mNoDataShowG:Z

.field private mShowAll:Z


# direct methods
.method public constructor <init>(ZZ)V
    .registers 4

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 458
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$OperatorNetworkTypeIcon;->mShowAll:Z

    .line 459
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$OperatorNetworkTypeIcon;->mNoDataShowG:Z

    .line 462
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$OperatorNetworkTypeIcon;->mShowAll:Z

    .line 463
    iput-boolean p2, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$OperatorNetworkTypeIcon;->mNoDataShowG:Z

    return-void
.end method


# virtual methods
.method public getNetworkTypeIcon(Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;ZIZ)I
    .registers 5

    const/4 p2, 0x0

    if-lez p3, :cond_4

    return p2

    :cond_4
    if-eqz p1, :cond_3c

    .line 501
    sget-object p3, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$1;->$SwitchMap$com$flyme$systemui$statusbar$ext$FlymeNetworkType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p3, p1

    packed-switch p1, :pswitch_data_3e

    goto :goto_3c

    .line 518
    :pswitch_12  #0x7
    sget p2, Lcom/android/systemui/R$drawable;->stat_sys_network_type_3g_double:I

    goto :goto_3c

    .line 515
    :pswitch_15  #0x6
    sget p2, Lcom/android/systemui/R$drawable;->stat_sys_network_type_g_double:I

    goto :goto_3c

    .line 509
    :pswitch_18  #0x5
    sget p2, Lcom/android/systemui/R$drawable;->stat_sys_network_type_3g_double:I

    goto :goto_3c

    .line 506
    :pswitch_1b  #0x4
    iget-boolean p1, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$OperatorNetworkTypeIcon;->mShowAll:Z

    if-eqz p1, :cond_3c

    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$OperatorNetworkTypeIcon;->mNoDataShowG:Z

    if-eqz p0, :cond_26

    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_network_type_g_double:I

    goto :goto_28

    :cond_26
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_network_type_e_double:I

    :goto_28
    move p2, p0

    goto :goto_3c

    .line 503
    :pswitch_2a  #0x3
    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$OperatorNetworkTypeIcon;->mShowAll:Z

    if-eqz p0, :cond_3c

    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_network_type_g_double:I

    goto :goto_28

    .line 521
    :pswitch_31  #0x2
    sget p2, Lcom/android/systemui/R$drawable;->stat_sys_network_type_4g_plus_double:I

    goto :goto_3c

    :pswitch_34  #0x1
    if-eqz p4, :cond_39

    .line 512
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_network_type_4g_plus_double:I

    goto :goto_28

    :cond_39
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_network_type_4g_double:I

    goto :goto_28

    :cond_3c
    :goto_3c
    return p2

    nop

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_34  #00000001
        :pswitch_31  #00000002
        :pswitch_2a  #00000003
        :pswitch_1b  #00000004
        :pswitch_18  #00000005
        :pswitch_15  #00000006
        :pswitch_12  #00000007
    .end packed-switch
.end method

.method public getVoiceTypeIcon(Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;ZZZ)I
    .registers 5

    if-eqz p2, :cond_5

    .line 533
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_roam:I

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method
