.class public Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$TelComCNetworkTypeIcon;
.super Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetworkTypeIcon;
.source "FlymeStatusBarPluginImpl.java"


# direct methods
.method public constructor <init>(ZZZ)V
    .registers 4

    .line 882
    invoke-direct {p0, p1, p2, p3}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetworkTypeIcon;-><init>(ZZZ)V

    return-void
.end method


# virtual methods
.method public getVoiceTypeIcon(Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;ZZZ)I
    .registers 5

    if-eqz p2, :cond_5

    .line 888
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_roam:I

    return p0

    .line 890
    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetworkTypeIcon;->getVoiceTypeIcon(Lcom/flyme/systemui/statusbar/ext/FlymeNetworkType;ZZZ)I

    move-result p0

    return p0
.end method
