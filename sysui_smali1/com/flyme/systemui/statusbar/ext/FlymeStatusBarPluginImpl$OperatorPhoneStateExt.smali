.class public Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$OperatorPhoneStateExt;
.super Ljava/lang/Object;
.source "FlymeStatusBarPluginImpl.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IPhoneStateExt;


# instance fields
.field private mNetWorkIcons:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;

.field private mShowSimIndicator:Z


# direct methods
.method public constructor <init>(ZZ)V
    .registers 4

    .line 753
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 754
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$OperatorPhoneStateExt;->mShowSimIndicator:Z

    .line 755
    new-instance p1, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;

    invoke-direct {p1}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;-><init>()V

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$OperatorPhoneStateExt;->mNetWorkIcons:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;

    .line 756
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$OperatorPhoneStateExt;->mNetWorkIcons:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;

    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_g_double:I

    iput v0, p1, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;->ICON_G:I

    .line 757
    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_e_double:I

    iput v0, p1, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;->ICON_E:I

    if-eqz p2, :cond_21

    .line 759
    sget p2, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_h_double:I

    iput p2, p1, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;->ICON_H:I

    .line 760
    sget p2, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_h_plus_double:I

    iput p2, p1, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;->ICON_H_PLUS:I

    goto :goto_27

    .line 762
    :cond_21
    sget p2, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_3g_double:I

    iput p2, p1, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;->ICON_H:I

    .line 763
    iput p2, p1, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;->ICON_H_PLUS:I

    .line 765
    :goto_27
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$OperatorPhoneStateExt;->mNetWorkIcons:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;

    sget p1, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_3g_double:I

    iput p1, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;->ICON_3G:I

    .line 766
    sget p1, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_4g_double:I

    iput p1, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;->ICON_4G:I

    .line 767
    sget p1, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_1x:I

    iput p1, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;->ICON_1X:I

    .line 768
    sget p1, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_4g_plus_double:I

    iput p1, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;->ICON_4G_PLUS:I

    return-void
.end method


# virtual methods
.method public createSimViewGroup(Landroid/content/Context;ZI)Landroid/view/ViewGroup;
    .registers 5

    .line 773
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$layout;->mz_status_bar_mobile_signal_group_operator:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 775
    sget p2, Lcom/android/systemui/R$id;->sim_indicator:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 776
    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$OperatorPhoneStateExt;->mShowSimIndicator:Z

    if-eqz p0, :cond_28

    .line 777
    invoke-static {p3}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result p0

    if-nez p0, :cond_22

    .line 778
    sget p0, Lcom/android/systemui/R$drawable;->mz_stat_sys_sim1:I

    goto :goto_24

    .line 779
    :cond_22
    sget p0, Lcom/android/systemui/R$drawable;->mz_stat_sys_sim2:I

    .line 778
    :goto_24
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2d

    :cond_28
    const/16 p0, 0x8

    .line 781
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2d
    return-object p1
.end method

.method public getNetWorkIcons()Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;
    .registers 1

    .line 788
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$OperatorPhoneStateExt;->mNetWorkIcons:Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$NetWorkIcons;

    return-object p0
.end method

.method public getRoamingIconShowType()Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$RoamingIconShowType;
    .registers 1

    .line 803
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

    const/4 p0, 0x0

    return p0
.end method
