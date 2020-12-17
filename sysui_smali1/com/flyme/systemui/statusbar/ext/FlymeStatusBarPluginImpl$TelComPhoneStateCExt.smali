.class public Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$TelComPhoneStateCExt;
.super Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymePhoneStateExt;
.source "FlymeStatusBarPluginImpl.java"


# direct methods
.method public constructor <init>(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 864
    invoke-direct {p0, p1, v0}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymePhoneStateExt;-><init>(ZZ)V

    return-void
.end method


# virtual methods
.method public createSimViewGroup(Landroid/content/Context;ZI)Landroid/view/ViewGroup;
    .registers 4

    .line 869
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$layout;->mz_status_bar_mobile_signal_group_telecom_c:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getRoamingIconShowType()Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$RoamingIconShowType;
    .registers 1

    .line 875
    sget-object p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$RoamingIconShowType;->SHOW_IN_VOICE:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$RoamingIconShowType;

    return-object p0
.end method
