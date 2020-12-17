.class public Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$TelComPhoneStateExt;
.super Ljava/lang/Object;
.source "FlymeStatusBarPluginImpl.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IPhoneStateExt;


# instance fields
.field private mNetWorkIcons:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 815
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 816
    new-instance v0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;

    invoke-direct {v0}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$TelComPhoneStateExt;->mNetWorkIcons:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;

    .line 817
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$TelComPhoneStateExt;->mNetWorkIcons:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;

    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_connected_2g:I

    iput v0, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;->ICON_G:I

    .line 818
    iput v0, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;->ICON_E:I

    .line 819
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_connected_3g:I

    iput v0, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;->ICON_H:I

    .line 820
    iput v0, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;->ICON_3G:I

    .line 821
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_connected_4g:I

    iput v0, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;->ICON_4G:I

    .line 822
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_connected_2g:I

    iput v0, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;->ICON_1X:I

    .line 823
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_3g:I

    iput v0, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;->ICON_H_PLUS:I

    .line 824
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_4g_plus:I

    iput v0, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;->ICON_4G_PLUS:I

    return-void
.end method


# virtual methods
.method public createSimViewGroup(Landroid/content/Context;ZI)Landroid/view/ViewGroup;
    .registers 4

    .line 829
    sget-boolean p0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->SHOW_VOICE_TYPE:Z

    if-eqz p0, :cond_8

    if-eqz p2, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    .line 830
    :goto_9
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    if-eqz p0, :cond_12

    .line 831
    sget p0, Lcom/android/systemui/R$layout;->mz_status_bar_mobile_signal_group_telecom:I

    goto :goto_14

    .line 832
    :cond_12
    sget p0, Lcom/android/systemui/R$layout;->mz_status_bar_mobile_signal_group_single:I

    :goto_14
    const/4 p2, 0x0

    .line 830
    invoke-virtual {p1, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getNetWorkIcons()Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;
    .registers 1

    .line 837
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$TelComPhoneStateExt;->mNetWorkIcons:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;

    return-object p0
.end method

.method public getRoamingIconShowType()Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$RoamingIconShowType;
    .registers 1

    .line 852
    sget-object p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$RoamingIconShowType;->SHOW_IN_VOICE:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$RoamingIconShowType;

    return-object p0
.end method

.method public isAnotherCardCalling(ILandroid/util/SparseArray;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/statusbar/policy/MobileSignalController;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public isShowVoice()Z
    .registers 1

    .line 842
    sget-boolean p0, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->SHOW_VOICE_TYPE:Z

    return p0
.end method
